/* pat.c -- exhaustive pattern search over the 3315 eight-point order types.
 *
 * Labelling: p0 p1 p2 p3 q0 q1 q2 q3  = indices 0..7 of a permutation of the
 * 8 database points.  Sides  P_i=[p_i,p_{i+1}],  Q_j=[q_j,q_{j+1}].
 *
 * usage:  ./pat  PATTERN          PATTERN = 9 chars, row-major (i=0,1,2),
 *                                 'X'=cross  '.'=miss  '?'=unconstrained
 *         ./pat  --diag           histogram of diagonal patterns given all
 *                                 six off-diagonal cells cross
 *         ./pat  PATTERN --first  print one witness labelling
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

#define N 8
static int NT;
static unsigned char (*pts)[N][2];
static int S[N][N][N];          /* orientation sign of current order type */

static int orient(int ax,int ay,int bx,int by,int cx,int cy){
  int v=(bx-ax)*(cy-ay)-(by-ay)*(cx-ax);
  return v>0?1:(v<0?-1:0);
}
static inline int cross(int a,int b,int c,int d){
  return S[a][b][c]!=S[a][b][d] && S[c][d][a]!=S[c][d][b];
}

static int want[3][3];          /* 1 cross, 0 miss, -1 free */
static int perm[N], used[N];
static long long hits;
static int firstonly, gotfirst, witness[N];
static long long diaghist[8];
static int diagseen_this;       /* bitmask of diag patterns seen in this OT */

/* slot order chosen for early pruning */
static const int ORDER[N] = {1,2,4,5,3,6,0,7};
/* slots: 0..3 = p0..p3, 4..7 = q0..q3 */

static int chk(int i,int j){
  if(want[i][j]<0) return 1;
  return cross(perm[i],perm[i+1],perm[4+j],perm[5+j])==want[i][j];
}
static int have(int s){ return used[N+s]; } /* not used */

static int assigned[N];

static void rec(int depth){
  if(firstonly && gotfirst) return;
  if(depth==N){
    if(want[0][0]<0||want[1][1]<0||want[2][2]<0){
      /* diag mode: record */
      int m=0;
      if(cross(perm[0],perm[1],perm[4],perm[5])) m|=1;
      if(cross(perm[1],perm[2],perm[5],perm[6])) m|=2;
      if(cross(perm[2],perm[3],perm[6],perm[7])) m|=4;
      diagseen_this|=1<<m;
    }
    hits++;
    if(firstonly&&!gotfirst){gotfirst=1;memcpy(witness,perm,sizeof perm);}
    return;
  }
  int slot=ORDER[depth];
  for(int v=0;v<N;v++){
    if(used[v])continue;
    used[v]=1; perm[slot]=v; assigned[slot]=1;
    /* check every constraint whose four endpoints are all assigned */
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

  int diagmode=0; const char*pat="XXXX.XXX?";
  for(int i=1;i<argc;i++){
    if(!strcmp(argv[i],"--diag")) diagmode=1;
    else if(!strcmp(argv[i],"--first")) firstonly=1;
    else pat=argv[i];
  }
  if(diagmode) pat="?XXX?XXX?";
  if(strlen(pat)!=9){fprintf(stderr,"pattern must be 9 chars\n");return 1;}
  for(int i=0;i<3;i++)for(int j=0;j<3;j++){
    char c=pat[3*i+j];
    want[i][j]= c=='X'?1: c=='.'?0: -1;
  }
  fprintf(stderr,"order types: %d  pattern: %s\n",NT,pat);

  long long otcount=0, totalhits=0;
  int firstOT=-1;
  long long globaldiag[8]; memset(globaldiag,0,sizeof globaldiag);
  int diagOTcount[8]; memset(diagOTcount,0,sizeof diagOTcount);
  for(int t=0;t<NT;t++){
    for(int a=0;a<N;a++)for(int b=0;b<N;b++)for(int c=0;c<N;c++)
      S[a][b][c]= (a==b||b==c||a==c)?0:
        orient(pts[t][a][0],pts[t][a][1],pts[t][b][0],pts[t][b][1],
               pts[t][c][0],pts[t][c][1]);
    hits=0; gotfirst=0; diagseen_this=0;
    memset(used,0,sizeof used); memset(assigned,0,sizeof assigned);
    rec(0);
    if(hits){ otcount++; totalhits+=hits; if(firstOT<0){firstOT=t;
        if(firstonly){printf("witness OT %d: p=%d %d %d %d  q=%d %d %d %d\n",t,
          witness[0],witness[1],witness[2],witness[3],witness[4],witness[5],witness[6],witness[7]);
        for(int k=0;k<8;k++)printf("   pt%d = (%d,%d)\n",k,pts[t][k][0],pts[t][k][1]);}
      } }
    if(diagmode) for(int m=0;m<8;m++) if(diagseen_this>>m&1) diagOTcount[m]++;
  }
  printf("order types realizing: %lld / %d   (total labellings %lld)\n",otcount,NT,totalhits);
  if(firstOT>=0) printf("first at order type %d\n",firstOT);
  if(diagmode){
    printf("diagonal histogram (bit0=(0,0) bit1=(1,1) bit2=(2,2); 1=cross):\n");
    for(int m=0;m<8;m++)
      printf("  (%c,%c,%c) : %d order types\n",
        m&1?'X':'.', m&2?'X':'.', m&4?'X':'.', diagOTcount[m]);
  }
  return 0;
}
