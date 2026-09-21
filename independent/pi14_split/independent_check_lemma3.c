/* Independent check of LEMMA 3, written from the statement alone.
 * Slots 0..7 -> V0,V1,V2,V3,V7,V8,V9,V10.
 * Hypotheses (Lemma 1's seven): P0xQ1,P0xQ2,P1xQ0,P1xQ2,P2xQ0,P2xQ1 all cross,
 *   plus the first disjunct of P1 not-cross Q1: or(1,2,8)*or(1,2,9) > 0.
 * Claim: P0 does NOT cross Q0, and P2 does NOT cross Q2.
 *   P0=(V0,V1) Q0=(V7,V8)   P2=(V2,V3) Q2=(V9,V10)
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
  long long nHyp=0,badA=0,badB=0,nCtl=0,ctlA=0,ctlB=0;
  int perm[N],c_[N];
  for(int t=0;t<NOT;t++){
    for(int a=0;a<N;a++)for(int b=0;b<N;b++)for(int c=0;c<N;c++)
      S[a][b][c]=(a==b||b==c||a==c)?0:
        sgn((long)(pts[t][b][0]-pts[t][a][0])*(pts[t][c][1]-pts[t][a][1])
           -(long)(pts[t][b][1]-pts[t][a][1])*(pts[t][c][0]-pts[t][a][0]));
    for(int i=0;i<N;i++)perm[i]=i;
    memset(c_,0,sizeof c_); int i=0;
    for(;;){
      int V0=perm[0],V1=perm[1],V2=perm[2],V3=perm[3];
      int V7=perm[4],V8=perm[5],V9=perm[6],V10=perm[7];
      int six = cross(V0,V1,V8,V9) && cross(V0,V1,V9,V10)
             && cross(V1,V2,V7,V8) && cross(V1,V2,V9,V10)
             && cross(V2,V3,V7,V8) && cross(V2,V3,V8,V9);
      if(six){
        int A = S[V1][V2][V8]*S[V1][V2][V9] > 0;   /* the disjunct */
        if(A){
          nHyp++;
          if(cross(V0,V1,V7,V8)) badA++;           /* want: P0 misses Q0 */
          if(cross(V2,V3,V9,V10)) badB++;          /* want: P2 misses Q2 */
        } else {
          nCtl++;                                   /* CONTROL: drop the disjunct */
          if(cross(V0,V1,V7,V8)) ctlA++;
          if(cross(V2,V3,V9,V10)) ctlB++;
        }
      }
      while(i<N){ if(c_[i]<i){int k=(i%2)?c_[i]:0;int tm=perm[k];perm[k]=perm[i];perm[i]=tm;c_[i]++;i=0;break;}
                  else {c_[i]=0;i++;} }
      if(i>=N) break;
    }
  }
  printf("LEMMA 3 hypotheses (six crossings + disjunct) : %lld labellings\n", nHyp);
  printf("  P0 x Q0 crosses anyway (violations)         : %lld   <- want 0\n", badA);
  printf("  P2 x Q2 crosses anyway (violations)         : %lld   <- want 0\n", badB);
  printf("\nCONTROL, disjunct FALSE                       : %lld labellings\n", nCtl);
  printf("  P0 x Q0 crosses                             : %lld   <- want LARGE\n", ctlA);
  printf("  P2 x Q2 crosses                             : %lld   <- want LARGE\n", ctlB);
  return 0;
}
