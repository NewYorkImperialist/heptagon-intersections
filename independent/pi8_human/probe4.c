/* probe4.c: hypothesis row0-full + (1,0)+(1,2). For each realization, compute
 * u0 = sign(or(p1,p2,q0)) and ALL 35 triple-orientation signs among the 7
 * points {p0,p1,p2,q0,q1,q2,q3}. Report which triples have sign always equal
 * to u0, or always equal to -u0, across every realization (perfect predictor).
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
static int want[3][3] = {{1,1,1},{1,-1,1},{-1,-1,-1}};
static int perm[N], used[N], assigned[N];
static int chk(int i,int j){
  if(want[i][j]<0) return 1;
  return cross(perm[i],perm[i+1],perm[4+j],perm[5+j])==want[i][j];
}
static const int ORDER[N] = {1,2,4,5,3,6,0,7};
static long long hits;
#define NP 7
static const char* names[NP] = {"p0","p1","p2","q0","q1","q2","q3"};
static long long agree[NP][NP][NP], disagree[NP][NP][NP];

static void rec(int depth){
  if(depth==N){
    hits++;
    int idx[NP] = {perm[0],perm[1],perm[2],perm[4],perm[5],perm[6],perm[7]};
    int u0 = S[perm[1]][perm[2]][perm[4]];
    for(int a=0;a<NP;a++)for(int b=a+1;b<NP;b++)for(int c=b+1;c<NP;c++){
      int s = S[idx[a]][idx[b]][idx[c]];
      if(s==0) continue;
      if(s==u0) agree[a][b][c]++; else disagree[a][b][c]++;
    }
    return;
  }
  int slot=ORDER[depth];
  for(int v=0;v<N;v++){
    if(used[v])continue;
    used[v]=1; perm[slot]=v; assigned[slot]=1;
    int ok=1;
    for(int i=0;i<3&&ok;i++){
      if(!assigned[i]||!assigned[i+1])continue;
      for(int j=0;j<3&&ok;j++){
        if(!assigned[4+j]||!assigned[5+j])continue;
        if(!chk(i,j)) ok=0;
      }
    }
    if(ok) rec(depth+1);
    used[v]=0; assigned[slot]=0;
  }
}
int main(void){
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
  printf("OTs=%d labellings=%lld\n",otcount,totalhits);
  for(int a=0;a<NP;a++)for(int b=a+1;b<NP;b++)for(int c=b+1;c<NP;c++){
    long long A=agree[a][b][c], D=disagree[a][b][c];
    if(D==0 && A>0) printf("  or(%s,%s,%s) ALWAYS == u0   (n=%lld)\n",names[a],names[b],names[c],A);
    if(A==0 && D>0) printf("  or(%s,%s,%s) ALWAYS == -u0  (n=%lld)\n",names[a],names[b],names[c],D);
  }
  return 0;
}
