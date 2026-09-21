/* Independent check of the pi14 agent's LEMMA 1 and the P1xQ1 disjunct
 * equivalence, written from the statement alone.
 * Slots 0..7 map to vertices V0,V1,V2,V3,V7,V8,V9,V10.
 * P_i = (V_i,V_{i+1});  Q_j = (V_{7+j},V_{8+j}).
 * Hypotheses: P0xQ1, P0xQ2, P1xQ0, P1xQ2, P2xQ0, P2xQ1 all cross,
 *             plus disjunct A: or(1,2,8)*or(1,2,9) > 0.
 * Conclusions: or(8,9,1)=or(8,9,2)=or(8,9,7)=or(8,9,10)=e
 *              or(8,9,0)=or(8,9,3)=-e         where e = or(8,9,1).
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
/* slot indices */
enum { s0=0, s1=1, s2=2, s3=3, s7=4, s8=5, s9=6, s10=7 };
int main(void){
  const char*R="/Users/jaydenlin/dev/lean/heptagon-intersections/independent/order_type_audit/external/otypes08.b08";
  FILE*f=fopen(R,"rb"); fseek(f,0,SEEK_END); long sz=ftell(f); fseek(f,0,SEEK_SET);
  int NOT=sz/(2*N); unsigned char (*pts)[N][2]=malloc(sz);
  if(fread(pts,1,sz,f)!=(size_t)sz){perror("read");return 1;} fclose(f);
  long long nHyp=0,bad[5]={0},nSix=0,badEq=0,nNoDisj=0,badNoDisj=0;
  int perm[N],c_[N];
  for(int t=0;t<NOT;t++){
    for(int a=0;a<N;a++)for(int b=0;b<N;b++)for(int c=0;c<N;c++)
      S[a][b][c]=(a==b||b==c||a==c)?0:
        sgn((long)(pts[t][b][0]-pts[t][a][0])*(pts[t][c][1]-pts[t][a][1])
           -(long)(pts[t][b][1]-pts[t][a][1])*(pts[t][c][0]-pts[t][a][0]));
    for(int i=0;i<N;i++)perm[i]=i;
    memset(c_,0,sizeof c_); int i=0;
    for(;;){
      int V0=perm[s0],V1=perm[s1],V2=perm[s2],V3=perm[s3];
      int V7=perm[s7],V8=perm[s8],V9=perm[s9],V10=perm[s10];
      int six = cross(V0,V1,V8,V9) && cross(V0,V1,V9,V10)
             && cross(V1,V2,V7,V8) && cross(V1,V2,V9,V10)
             && cross(V2,V3,V7,V8) && cross(V2,V3,V8,V9);
      if(six){
        nSix++;
        int A = S[V1][V2][V8]*S[V1][V2][V9] > 0;   /* disjunct A */
        int B = S[V8][V9][V1]*S[V8][V9][V2] > 0;   /* disjunct B */
        if(A!=B) badEq++;
        if(A){
          nHyp++;
          int e = S[V8][V9][V1];
          if(S[V8][V9][V2]  != e) bad[0]++;
          if(S[V8][V9][V7]  != e) bad[1]++;
          if(S[V8][V9][V10] != e) bad[2]++;
          if(S[V8][V9][V0]  != -e) bad[3]++;
          if(S[V8][V9][V3]  != -e) bad[4]++;
        } else {
          /* CONTROL: drop the disjunct -- does the conclusion still hold? */
          nNoDisj++;
          int e = S[V8][V9][V1];
          if(S[V8][V9][V2]!=e || S[V8][V9][V7]!=e || S[V8][V9][V10]!=e
             || S[V8][V9][V0]!=-e || S[V8][V9][V3]!=-e) badNoDisj++;
        }
      }
      while(i<N){ if(c_[i]<i){int k=(i%2)?c_[i]:0;int tm=perm[k];perm[k]=perm[i];perm[i]=tm;c_[i]++;i=0;break;}
                  else {c_[i]=0;i++;} }
      if(i>=N) break;
    }
  }
  printf("six crossings hold                       : %lld labellings\n", nSix);
  printf("  disjunct A != disjunct B (equivalence) : %lld  <- want 0\n", badEq);
  printf("\nLEMMA 1 hypotheses (six + disjunct A)     : %lld labellings\n", nHyp);
  const char*nm[5]={"or(8,9,2)=e","or(8,9,7)=e","or(8,9,10)=e","or(8,9,0)=-e","or(8,9,3)=-e"};
  for(int k=0;k<5;k++) printf("  %-16s violations            : %lld\n", nm[k], bad[k]);
  printf("\nCONTROL, disjunct A FALSE                 : %lld labellings\n", nNoDisj);
  printf("  conclusion fails                       : %lld  <- want LARGE (non-vacuous)\n", badNoDisj);
  return 0;
}
