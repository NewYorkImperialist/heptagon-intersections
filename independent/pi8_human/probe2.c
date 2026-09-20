/* probe2.c -- like lemma_probe but pattern from argv, tallies caseA (u1==u2) only */
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
static int want[3][3];
static int perm[N], used[N], assigned[N];
static int chk(int i,int j){
  if(want[i][j]<0) return 1;
  return cross(perm[i],perm[i+1],perm[4+j],perm[5+j])==want[i][j];
}
static const int ORDER[N] = {1,2,4,5,3,6,0,7};
static long long hits, caseA_count;
static void rec(int depth){
  if(depth==N){
    hits++;
    int p1=perm[1],p2=perm[2];
    int q1=perm[5],q2=perm[6];
    int u1 = S[p1][p2][q1], u2 = S[p1][p2][q2];
    if(u1==u2) caseA_count++;
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
int main(int argc,char**argv){
  const char*R="/Users/jaydenlin/dev/lean/heptagon-intersections/independent/order_type_audit/external/otypes08.b08";
  FILE*f=fopen(R,"rb"); if(!f){perror("open");return 1;}
  fseek(f,0,SEEK_END); long sz=ftell(f); fseek(f,0,SEEK_SET);
  NT=sz/(2*N); pts=malloc(sz);
  if(fread(pts,1,sz,f)!=(size_t)sz){perror("read");return 1;}
  fclose(f);
  const char*pat = argc>1?argv[1]:"XXXX?X???";
  for(int i=0;i<3;i++)for(int j=0;j<3;j++){
    char c=pat[3*i+j];
    want[i][j]= c=='X'?1: c=='.'?0: -1;
  }
  long long totalhits=0, totalA=0; int otcount=0;
  for(int t=0;t<NT;t++){
    for(int a=0;a<N;a++)for(int b=0;b<N;b++)for(int c=0;c<N;c++)
      S[a][b][c]= (a==b||b==c||a==c)?0:
        orient(pts[t][a][0],pts[t][a][1],pts[t][b][0],pts[t][b][1],
               pts[t][c][0],pts[t][c][1]);
    hits=0; caseA_count=0;
    memset(used,0,sizeof used); memset(assigned,0,sizeof assigned);
    rec(0);
    if(hits){ otcount++; totalhits+=hits; totalA += caseA_count; }
  }
  printf("pattern %s : OTs=%d labellings=%lld caseA(u1==u2) count=%lld\n",pat,otcount,totalhits,totalA);
  return 0;
}
