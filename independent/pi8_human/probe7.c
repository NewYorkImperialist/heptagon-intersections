/* probe7.c: search for XOR-pairs of orientation triples (among 8 pts) that
 * always equal x2 (i.e. sign1*sign2 == x2 always), within the 1651 hypothesis.
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define N 8
static int NT;
static unsigned char (*pts)[N][2];
static int S[N][N][N];
static int orient(int ax,int ay,int bx,int by,int cx,int cy){
  int v=(bx-ax)*(cy-ay)-(by-ay)*(cx-ax);
  return v>0?1:(v<0?-1:0);
}
static inline int cross(int a,int b,int c,int d){
  return S[a][b][c]!=S[a][b][d] && S[c][d][a]!=S[c][d][b];
}
static int want[3][3] = {{1,1,1},{1,0,1},{1,-1,-1}};
static int perm[N], used[N], assigned[N];
static int chk(int i,int j){
  if(want[i][j]<0) return 1;
  return cross(perm[i],perm[i+1],perm[4+j],perm[5+j])==want[i][j];
}
static const int ORDER[N] = {1,2,4,5,3,6,0,7};
static long long hits;
#define NTRIP 56
static int triA[NTRIP],triB[NTRIP],triC[NTRIP],ntrip=0;
static long long agree[NTRIP][NTRIP], disagree[NTRIP][NTRIP];
static int sigs[NTRIP];
static void rec(int depth){
  if(depth==N){
    hits++;
    for(int i=0;i<ntrip;i++) sigs[i]=S[perm[triA[i]]][perm[triB[i]]][perm[triC[i]]];
    int x2 = S[perm[2]][perm[3]][perm[6]];
    for(int i=0;i<ntrip;i++){
      if(sigs[i]==0) continue;
      for(int j=i+1;j<ntrip;j++){
        if(sigs[j]==0) continue;
        int prod = sigs[i]*sigs[j]; /* +1 or -1 times magnitude, but sign is what matters: sigs are +-1 */
        int predict = prod; /* since sigs in {-1,1}, product in {-1,1} */
        if(predict==x2) agree[i][j]++; else disagree[i][j]++;
      }
    }
    return;
  }
  int slot=ORDER[depth];
  for(int v=0;v<N;v++){
    if(used[v])continue;
    used[v]=1; perm[slot]=v; assigned[slot]=1;
    int ok=1;
    for(int a=0;a<3&&ok;a++){
      if(!assigned[a]||!assigned[a+1])continue;
      for(int j=0;j<3&&ok;j++){
        if(!assigned[4+j]||!assigned[5+j])continue;
        if(!chk(a,j)) ok=0;
      }
    }
    if(ok) rec(depth+1);
    used[v]=0; assigned[slot]=0;
  }
}
int main(void){
  for(int a=0;a<N;a++)for(int b=a+1;b<N;b++)for(int c=b+1;c<N;c++){
    triA[ntrip]=a;triB[ntrip]=b;triC[ntrip]=c;ntrip++;
  }
  const char*R="/Users/jaydenlin/dev/lean/heptagon-intersections/independent/order_type_audit/external/otypes08.b08";
  FILE*f=fopen(R,"rb"); if(!f){perror("open");return 1;}
  fseek(f,0,SEEK_END); long sz=ftell(f); fseek(f,0,SEEK_SET);
  NT=sz/(2*N); pts=malloc(sz);
  if(fread(pts,1,sz,f)!=(size_t)sz){perror("read");return 1;}
  fclose(f);
  long long totalhits=0; int otcount=0;
  for(int t=0;t<NT;t++){
    for(int a=0;a<N;a++)for(int b=0;b<N;b++)for(int c=0;c<N;c++)
      S[a][b][c]= (a==b||b==c||a==c)?0:
        orient(pts[t][a][0],pts[t][a][1],pts[t][b][0],pts[t][b][1],
               pts[t][c][0],pts[t][c][1]);
    hits=0;
    memset(used,0,sizeof used); memset(assigned,0,sizeof assigned);
    rec(0);
    if(hits){ otcount++; totalhits+=hits; }
  }
  const char* nm[N]={"p0","p1","p2","p3","q0","q1","q2","q3"};
  printf("OTs=%d labellings=%lld\n",otcount,totalhits);
  int found=0;
  for(int i=0;i<ntrip;i++)for(int j=i+1;j<ntrip;j++){
    long long A=agree[i][j], D=disagree[i][j];
    if(D==0 && A>1000){
      printf("  or(%s,%s,%s)*or(%s,%s,%s) ALWAYS == x2 (n=%lld)\n",
        nm[triA[i]],nm[triB[i]],nm[triC[i]], nm[triA[j]],nm[triB[j]],nm[triC[j]], A);
      found++;
      if(found>20) goto done;
    }
  }
  done:
  printf("found=%d (capped at 20 shown)\n",found);
  return 0;
}
