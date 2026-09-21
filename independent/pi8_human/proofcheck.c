/* Check each step of a candidate COMPLETE proof of the (0,0)-crosses branch.
 *
 *   v_k = or(q0,q1,p_k)    w_k = or(q1,q2,p_k)
 *
 * A. cells (0,0),(0,1) cross  =>  v1 = -w1   [Core Lemma at vertex q1, wrt P0]
 * B. cells (2,0),(2,1) cross  =>  v2 = -w2   [Core Lemma at vertex q1, wrt P2]
 * C. cell  (1,0) crosses      =>  v1 != v2   [straddle half of the crossing]
 * => w1 != w2.
 * E. five conditions force u1 != u2, so (1,1) missing forces w1 = w2.
 * A+B+C contradict E.  Each step is checked on ITS OWN hypothesis set.
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define N 8
static int S[N][N][N];
static int sgn(long v){return (v>0)-(v<0);}
static int cross(int a,int b,int c,int d){
  return S[a][b][c]!=S[a][b][d] && S[c][d][a]!=S[c][d][b];
}
int main(void){
  const char*R="/Users/jaydenlin/dev/lean/heptagon-intersections/independent/order_type_audit/external/otypes08.b08";
  FILE*f=fopen(R,"rb"); fseek(f,0,SEEK_END); long sz=ftell(f); fseek(f,0,SEEK_SET);
  int NOT=sz/(2*N); unsigned char (*pts)[N][2]=malloc(sz);
  if(fread(pts,1,sz,f)!=(size_t)sz){perror("read");return 1;} fclose(f);
  long long nA=0,bA=0,nB=0,bB=0,nC=0,bC=0,nD=0,bD=0,nFull=0;
  long long nChain=0,bChain=0;
  int perm[N],c_[N];
  for(int t=0;t<NOT;t++){
    for(int a=0;a<N;a++)for(int b=0;b<N;b++)for(int c=0;c<N;c++)
      S[a][b][c]=(a==b||b==c||a==c)?0:
        sgn((long)(pts[t][b][0]-pts[t][a][0])*(pts[t][c][1]-pts[t][a][1])
           -(long)(pts[t][b][1]-pts[t][a][1])*(pts[t][c][0]-pts[t][a][0]));
    for(int i=0;i<N;i++)perm[i]=i;
    memset(c_,0,sizeof c_); int i=0;
    for(;;){
      int p0=perm[0],p1=perm[1],p2=perm[2],p3=perm[3];
      int q0=perm[4],q1=perm[5],q2=perm[6],q3=perm[7];
      int P[3][2]={{p0,p1},{p1,p2},{p2,p3}};
      int Q[3][2]={{q0,q1},{q1,q2},{q2,q3}};
      #define C(i,j) cross(P[i][0],P[i][1],Q[j][0],Q[j][1])
      int v1=S[q0][q1][p1], v2=S[q0][q1][p2];
      int w1=S[q1][q2][p1], w2=S[q1][q2][p2];
      /* A */
      if(C(0,0)&&C(0,1)){ nA++; if(v1 != -w1) bA++; }
      /* B */
      if(C(2,0)&&C(2,1)){ nB++; if(v2 != -w2) bB++; }
      /* C */
      if(C(1,0)){ nC++; if(v1 == v2) bC++; }
      /* D: the five conditions force u1 != u2 */
      if(C(0,0)&&C(0,1)&&C(0,2)&&C(1,0)&&C(1,2)){
        nD++; if(S[p1][p2][q1]==S[p1][p2][q2]) bD++; }
      /* the chain's own conclusion, on the union of A,B,C hypotheses */
      if(C(0,0)&&C(0,1)&&C(2,0)&&C(2,1)&&C(1,0)){
        nChain++; if(w1 == w2) bChain++; }
      /* the full pattern: all six off-diagonals + (0,0) cross + (1,1) miss */
      if(C(0,0)&&C(0,1)&&C(0,2)&&C(1,0)&&C(1,2)&&C(2,0)&&C(2,1)&&!C(1,1)) nFull++;
      while(i<N){ if(c_[i]<i){int k=(i%2)?c_[i]:0;int tm=perm[k];perm[k]=perm[i];perm[i]=tm;c_[i]++;i=0;break;}
                  else {c_[i]=0;i++;} }
      if(i>=N) break;
    }
  }
  printf("A  (0,0)&(0,1) cross  => v1 = -w1 : %10lld cases, %lld violations\n",nA,bA);
  printf("B  (2,0)&(2,1) cross  => v2 = -w2 : %10lld cases, %lld violations\n",nB,bB);
  printf("C  (1,0) crosses      => v1 != v2 : %10lld cases, %lld violations\n",nC,bC);
  printf("D  five conditions    => u1 != u2 : %10lld cases, %lld violations\n",nD,bD);
  printf("\nchain A&B&C hypotheses => w1 != w2: %10lld cases, %lld violations\n",nChain,bChain);
  printf("full pattern (should be 0)        : %10lld\n",nFull);
  return 0;
}
