/* lemma_probe.c -- probe the mechanism behind the Lemma:
 *   (0,0)(0,1)(0,2)(1,0)(1,2)(2,0) all cross, (1,1) misses  ==>  (2,1) misses.
 * For every witness labelling satisfying the hypothesis (with (2,1),(2,2)
 * free), compute:
 *   caseA = [u1==u2]   (P1-line: q1,q2 same side of line p1p2)
 *   caseB = [w1==w2]   (Q1-line: p1,p2 same side of line q1q2)
 *   mechX = [x1==x2]   (P2-line: q1,q2 same side of line p2p3) -- would give
 *                        (2,1) miss via the P2 side
 *   mechW = [w2==w3]   (Q1-line: p2,p3 same side of line q1q2) -- would give
 *                        (2,1) miss via the Q1 side
 *   cross21 = does (2,1) actually cross
 * and tally the joint histogram of (caseA,caseB,mechX,mechW,cross21).
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

/* hypothesis: (0,0)(0,1)(0,2)(1,0)(1,2)(2,0) = X, (1,1) = miss, (2,1)/(2,2) free */
static int want[3][3] = {{1,1,1},{1,-1,1},{1,-1,-1}};

static int perm[N], used[N], assigned[N];

static int chk(int i,int j){
  if(want[i][j]<0) return 1;
  return cross(perm[i],perm[i+1],perm[4+j],perm[5+j])==want[i][j];
}

static const int ORDER[N] = {1,2,4,5,3,6,0,7};

static long long tally[2][2][2][2][2]; /* caseA caseB mechX mechW cross21 */
static long long hits;

static void rec(int depth){
  if(depth==N){
    hits++;
    int p0=perm[0],p1=perm[1],p2=perm[2],p3=perm[3];
    int q0=perm[4],q1=perm[5],q2=perm[6],q3=perm[7];
    int u1 = S[p1][p2][q1], u2 = S[p1][p2][q2];
    int w1 = S[q1][q2][p1], w2 = S[q1][q2][p2], w3 = S[q1][q2][p3];
    int x1 = S[p2][p3][q1], x2 = S[p2][p3][q2];
    int caseA = (u1==u2);
    int caseB = (w1==w2);
    int mechX = (x1==x2);
    int mechW = (w2==w3);
    int c21 = cross(p2,p3,q1,q2);
    tally[caseA][caseB][mechX][mechW][c21]++;
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
  printf("order types: %d realizing, total labellings %lld\n", otcount, totalhits);
  printf("caseA caseB mechX mechW cross21 : count\n");
  for(int a=0;a<2;a++)for(int b=0;b<2;b++)for(int x=0;x<2;x++)for(int w=0;w<2;w++)for(int c=0;c<2;c++)
    if(tally[a][b][x][w][c])
      printf("  %d %d %d %d %d : %lld\n",a,b,x,w,c,tally[a][b][x][w][c]);
  return 0;
}
