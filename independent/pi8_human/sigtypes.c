/* sigtypes.c -- for the 5-condition hypothesis (row0 full + (1,0)+(1,2)),
 * enumerate distinct abstract sign patterns (chirotopes) on the 7 points
 * p0,p1,p2,q0,q1,q2,q3 (35 triple orientations), to see how many
 * combinatorially different pictures occur. Also print counts.
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
/* row0 full + (1,0)+(1,2); (2,*) all free (irrelevant, p3 unused) */
static int want[3][3] = {{1,1,1},{1,-1,1},{-1,-1,-1}};
static int perm[N], used[N], assigned[N];
static int chk(int i,int j){
  if(want[i][j]<0) return 1;
  return cross(perm[i],perm[i+1],perm[4+j],perm[5+j])==want[i][j];
}
static const int ORDER[N] = {1,2,4,5,3,6,0,7};

#define MAXSIG 2000
static long long sigs[MAXSIG]; static long long sigcount[MAXSIG]; static int nsig=0;
static long long hits;

static void rec(int depth){
  if(depth==N){ /* only need p0,p1,p2,q0,q1,q2,q3 = slots 0,1,2,4,5,6,7 */
    hits++;
    int idx[7]={perm[0],perm[1],perm[2],perm[4],perm[5],perm[6],perm[7]};
    long long sig=0; int bit=0;
    for(int a=0;a<7;a++)for(int b=a+1;b<7;b++)for(int c=b+1;c<7;c++){
      int s = S[idx[a]][idx[b]][idx[c]];
      if(s>0) sig |= (1LL<<bit);
      bit++;
    }
    /* linear scan dedupe (small counts expected) */
    int found=0;
    for(int i=0;i<nsig;i++) if(sigs[i]==sig){ sigcount[i]++; found=1; break; }
    if(!found && nsig<MAXSIG){ sigs[nsig]=sig; sigcount[nsig]=1; nsig++; }
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
    /* only need slots 0,1,2,4,5,6,7 assigned; slot 3 (p3) irrelevant, but
       recursion order includes it (ORDER has 3 at position... check) we stop
       recursion at depth==7 before assigning p3 if ORDER visits it last.
       ORDER = {1,2,4,5,3,6,0,7}: depth indices 0..7 correspond to slot
       1,2,4,5,3,6,0,7. slot 3(p3) is visited at depth 4 (5th), before 6,0,7.
       That means p3 WOULD be assigned before depth 7. Need custom order. */
    rec(0);
    if(hits){ otcount++; totalhits+=hits; }
  }
  printf("NOTE: check ORDER handles p3 prematurely -- see stderr\n");
  printf("OTs=%d labellings=%lld distinct 7-point sign patterns=%d\n",otcount,totalhits,nsig);
  for(int i=0;i<nsig && i<50;i++) printf("  sig#%d count=%lld\n", i, sigcount[i]);
  return 0;
}
