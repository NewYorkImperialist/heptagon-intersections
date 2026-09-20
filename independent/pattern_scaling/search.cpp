#include <algorithm>
#include <array>
#include <cassert>
#include <cstdint>
#include <fstream>
#include <iostream>
#include <numeric>
#include <random>
#include <set>
#include <vector>
using namespace std;
struct Cell {int i,j,v;};
using Pattern=vector<Cell>;
Pattern pat[2]; vector<Pattern> pool;
vector<unsigned char> lut[2]; int widths[2];
int mod(int x,int n){return (x%n+n)%n;}
// Rotation on vertices: side i -> i+k. Reflection: side i -> k-i-1.
int side(int i,int k,int sign,int n){return mod(sign==1?i+k:k-i-1,n);}
bool direct(const vector<int>&s,const Pattern&p){
 int n=s.size();
 for(int a=0;a<7;a++)for(int b=0;b<n;b++)for(int u:{1,-1})for(int v:{1,-1}){
  bool ok=true;
  for(auto c:p)if((s[side(c.j,b,v,n)]==side(c.i,a,u,7))!=bool(c.v)){ok=false;break;}
  if(ok)return true;
 }return false;
}
void make_lut(int t){
 int w=0;for(auto c:pat[t])w=max(w,c.j+1); widths[t]=w;
 int size=1;for(int j=0;j<w;j++)size*=7;lut[t].resize(size);
 for(int code=0;code<size;code++){
  vector<int>s(w);int x=code;for(int j=0;j<w;j++){s[j]=x%7;x/=7;}
  bool found=false;
  for(int a=0;a<7;a++)for(int u:{1,-1})for(int v:{1,-1}){
   bool ok=true;for(auto c:pat[t]){
    int j=v==1?c.j:w-1-c.j;
    if((s[j]==side(c.i,a,u,7))!=bool(c.v)){ok=false;break;}
   }found|=ok;
  }lut[t][code]=found;
 }
}
bool fast(const vector<int>&s,int t){
 int n=s.size(),w=widths[t];
 for(int b=0;b<n;b++){
  int code=0,mul=1;for(int j=0;j<w;j++){code+=s[(b+j)%n]*mul;mul*=7;}
  if(lut[t][code])return true;
 }return false;
}
// Pool: use every source cyclic cut, then embed in seven consecutive Q sides.
// P retains its cyclic seven-side indices. No transpose or P/Q exchange.
vector<array<int,7>> pool_allowed;
void prepare_pool(){
 set<array<int,7>> unique;
 for(auto &p:pool)for(int cut=0;cut<7;cut++)for(int a=0;a<7;a++)for(int u:{1,-1})for(int v:{1,-1}){
  array<int,7> allow;allow.fill(127);
  for(auto c:p){
   int j=mod(c.j-cut,7);if(v==-1)j=6-j;
   int bit=1<<side(c.i,a,u,7);
   allow[j]&=c.v?bit:127^bit;
  }
  if(all_of(allow.begin(),allow.end(),[](int x){return x!=0;}))unique.insert(allow);
 }
 pool_allowed.assign(unique.begin(),unique.end());
 cout<<"Pool distinct compatible local templates: "<<pool_allowed.size()<<endl;
}
bool pool_hit(const vector<int>&s){
 int n=s.size();for(int b=0;b<n;b++)for(auto &allow:pool_allowed){
  bool ok=true;for(int j=0;j<7;j++)if(!(allow[j]&(1<<s[(b+j)%n]))){ok=false;break;}
  if(ok)return true;
 }return false;
}
struct Counts {uint64_t total=0,a=0,b=0,either=0,escape=0,residual=0,reps=0;};
Counts cnt;int n;vector<int>s;int shown=0;
void count_one(uint64_t weight){
 bool a=fast(s,0),b=fast(s,1);cnt.reps++;cnt.total+=weight;cnt.a+=weight*a;cnt.b+=weight*b;cnt.either+=weight*(a||b);
 if(!a&&!b){cnt.escape+=weight;bool h=pool_hit(s);cnt.residual+=weight*!h;
  if(shown<5){cout<<"Escape n="<<n<<" sigma=";for(int x:s)cout<<x;cout<<" orbit_weight="<<weight<<" pool_hit="<<h<<endl;shown++;}
 }
}
// Normalize P rotation by first value; retain both P signs and both Q signs.
// Canonical representatives under D7 x Dn. Count stabilizers exactly.
uint64_t orbit_weight(){
 int stabilizer=0;
 for(int b=0;b<n;b++)for(int v:{1,-1})for(int u:{1,-1}){
  int base=s[b],cmp=0;
  for(int j=1;j<n;j++){
   int x=mod(u*(s[mod(b+v*j,n)]-base),7);
   if(x!=s[j]){cmp=x<s[j]?-1:1;break;}
  }
  if(cmp<0)return 0;if(cmp==0)stabilizer++;
 }
 assert(stabilizer && (28*n)%stabilizer==0);return 28*n/stabilizer;
}
void enumerate(int pos,int mask,bool nonzero){
 if(7-__builtin_popcount((unsigned)mask)>n-pos)return;
 if(pos==n){if(mask==127){auto w=orbit_weight();if(w)count_one(w);}return;}
 for(int x=0;x<7;x++){
  // Reflection normalized around zero: first nonzero belongs to {1,2,3}.
  if(!nonzero&&x>3)continue;
  s[pos]=x;enumerate(pos+1,mask|(1<<x),nonzero||x!=0);
 }
}
uint64_t total_surj(int n){
 int comb[8]={1,7,21,35,35,21,7,1};int64_t sum=0;
 for(int k=0;k<=7;k++){int64_t power=1;for(int j=0;j<n;j++)power*=7-k;sum+=(k%2?-1:1)*comb[k]*power;}return sum;
}
// Exact uniform draw by rejection from mt19937 words; no real distributions.
mt19937 rng(20260917);
int draw7(){uint32_t x;do{x=rng();}while(x>=4294967292U);return x%7;}
void report(const char*mode){
 cout<<"RESULT n="<<n<<" mode="<<mode<<" total="<<cnt.total<<" representatives_or_draws="<<cnt.reps
 <<" Pi8="<<cnt.a<<" Pi14="<<cnt.b<<" either="<<cnt.either<<" escape="<<cnt.escape<<" pool_residual="<<cnt.residual<<endl;
 vector<int>d(n);for(int j=0;j<n;j++)d[j]=j%7;
 cout<<"DIAGONAL n="<<n<<" Pi8="<<fast(d,0)<<" Pi14="<<fast(d,1)<<" escapes="<<(!fast(d,0)&&!fast(d,1))<<" pool_hit="<<pool_hit(d)<<endl;
}
int main(int argc,char**argv){
 assert(argc==2);ifstream in(argv[1]);auto read=[&](){int m;in>>m;Pattern p(m);for(auto &c:p)in>>c.i>>c.j>>c.v;return p;};
 for(auto &p:pat)p=read();int m;in>>m;assert(m==148);for(int k=0;k<m;k++)pool.push_back(read());assert(in);
 for(int t=0;t<2;t++)make_lut(t);prepare_pool();
 n=7;s={0,1,2,3,4,5,6};int controls=0,escapes=0;
 do{for(int t=0;t<2;t++)assert(fast(s,t)==direct(s,pat[t]));escapes+=!fast(s,0)&&!fast(s,1);controls++;}while(next_permutation(s.begin(),s.end()));
 cout<<"CONTROL n=7 matchings="<<controls<<" escapers="<<escapes<<" direct_vs_lookup=PASS"<<endl;assert(controls==5040&&escapes==0);
 // All-crossing matrix has no required noncrossing cell, so cannot match.
 vector<int>allcross(9,-1);for(int t=0;t<2;t++)assert(!direct(allcross,pat[t]));
 // Constant random row: a positive cell in the negative cell's row conflicts.
 int row=draw7();vector<int>constant(9,row);for(int t=0;t<2;t++)assert(!fast(constant,t)&&!direct(constant,pat[t]));
 int negative[2]={0,0};
 for(int len:{7,9,11,13})for(int k=0;k<200;k++){
  vector<int>z(len);for(int &x:z)x=draw7();for(int t=0;t<2;t++){bool d=direct(z,pat[t]);assert(fast(z,t)==d);negative[t]+=!d;}
 }
 cout<<"SANITY all-crossing and constant-row "<<row<<" negative controls PASS; 800 random matrices direct-vs-lookup PASS; negatives Pi8="<<negative[0]<<" Pi14="<<negative[1]<<endl;
 for(int len:{9,11}){
  n=len;s.assign(n,0);cnt={};shown=0;enumerate(1,1,false);assert(cnt.total==total_surj(n));report("exhaustive");
 }
 n=13;s.assign(n,0);cnt={};shown=0;uint64_t proposals=0;
 while(cnt.total<1000000){int mask=0;for(int &x:s){x=draw7();mask|=1<<x;}proposals++;if(mask==127)count_one(1);}
 report("uniform_sample_with_replacement");cout<<"SAMPLE seed=20260917 accepted=1000000 proposals="<<proposals<<" generator=mt19937 integer_rejection"<<endl;
}
