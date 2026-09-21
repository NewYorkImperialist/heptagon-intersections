/* Exhaustive check, over all 3,315 eight-point order types and all 8!
 * labellings, of the SMALL steps of the synthetic proof of the V11/V12 half
 * of the Theorem (SYNTHETIC.md, 2026-09-21), plus LEMMA 3.
 *
 * Every statement below lives on at most eight of the eleven Pi_14 vertices,
 * so the TU Graz order-type database certifies it exhaustively.  The one step
 * that needs TEN points (LEMMA 2's conclusion or(8,9,11) = -or(8,9,1)) is NOT
 * here; it is checked by chirocheck.c / z3.
 *
 * Role assignment inside each 8! labelling (all injections are covered):
 *   group A : V0 V1 V2 V3 V7 V8 V9 V10 = perm[0..7]
 *   group B : V11 = perm[0]  (with V1,V2,V8,V9,V10 = perm[1],[2],[5],[6],[7])
 *   group C : V11 = perm[0], V12 = perm[3]  (with V1,V2,V8,V9 as above)
 *
 * STATEMENTS
 *  S1  P0xQ1 & or(1,2,8)=or(1,2,9)            => or(1,2,0)  = or(1,2,8)
 *  S2  P2xQ1 & or(1,2,8)=or(1,2,9)            => or(1,2,3)  = or(1,2,8)
 *  S3  P1xQ2 & P1xQ3 & or(1,2,8)=or(1,2,9)    => or(1,2,11) = or(1,2,8)
 *  S5  or(8,9,1)=or(8,9,2) & P1xQ4            => NOT (or(8,9,11)=or(8,9,12)=-or(8,9,1))
 *  L3  LEMMA 1's H1..H7 & P0 /x P2            => P0 /x Q0  AND  P2 /x Q2
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
  FILE*f=fopen(R,"rb"); if(!f){perror("open");return 1;}
  fseek(f,0,SEEK_END); long sz=ftell(f); fseek(f,0,SEEK_SET);
  int NOT=sz/(2*N); unsigned char (*pts)[N][2]=malloc(sz);
  if(fread(pts,1,sz,f)!=(size_t)sz){perror("read");return 1;} fclose(f);
  printf("order types read: %d\n\n", NOT);

  long long n1=0,b1=0, n2=0,b2=0, n3=0,b3=0, n5=0,b5=0;
  long long n1c=0,b1c=0;                    /* S1 without the disjunct       */
  long long n3c=0,b3c=0;                    /* S3 without the disjunct       */
  long long n5c=0,b5c=0;                    /* S5 without or(8,9,1)=or(8,9,2)*/
  long long nL3=0,bL3a=0,bL3b=0;            /* LEMMA 3                       */
  long long nL3c=0,bL3ca=0,bL3cb=0;         /* LEMMA 3 control: drop P0 /x P2*/
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
      int V11=perm[0], V12=perm[3];         /* groups B and C */
      int H7 = (S[V1][V2][V8]==S[V1][V2][V9]);

      /* S1 */
      if(cross(V0,V1,V8,V9)){
        if(H7){ n1++; if(S[V1][V2][V0]!=S[V1][V2][V8]) b1++; }
        else  { n1c++; if(S[V1][V2][V0]!=S[V1][V2][V8]) b1c++; }
      }
      /* S2 */
      if(cross(V2,V3,V8,V9) && H7){ n2++; if(S[V1][V2][V3]!=S[V1][V2][V8]) b2++; }
      /* S3 */
      if(cross(V1,V2,V9,V10) && cross(V1,V2,V10,V11)){
        if(H7){ n3++; if(S[V1][V2][V11]!=S[V1][V2][V8]) b3++; }
        else  { n3c++; if(S[V1][V2][V11]!=S[V1][V2][V8]) b3c++; }
      }
      /* S5 */
      if(cross(V1,V2,V11,V12)){
        int bad = (S[V8][V9][V11]==S[V8][V9][V12] && S[V8][V9][V11]==-S[V8][V9][V1]);
        if(S[V8][V9][V1]==S[V8][V9][V2]){ n5++; if(bad) b5++; }
        else                            { n5c++; if(bad) b5c++; }
      }
      /* LEMMA 3 */
      {
        int H1=cross(V0,V1,V8,V9), H2=cross(V0,V1,V9,V10);
        int H3=cross(V1,V2,V7,V8), H4=cross(V1,V2,V9,V10);
        int H5=cross(V2,V3,V7,V8), H6=cross(V2,V3,V8,V9);
        if(H1&&H2&&H3&&H4&&H5&&H6&&H7){
          if(!cross(V0,V1,V2,V3)){
            nL3++;
            if(cross(V0,V1,V7,V8))   bL3a++;   /* P0 x Q0 would violate */
            if(cross(V2,V3,V9,V10))  bL3b++;   /* P2 x Q2 would violate */
          } else {
            nL3c++;
            if(cross(V0,V1,V7,V8))   bL3ca++;
            if(cross(V2,V3,V9,V10))  bL3cb++;
          }
        }
      }
      while(i<N){ if(c_[i]<i){int k=(i%2)?c_[i]:0;int tm=perm[k];perm[k]=perm[i];perm[i]=tm;c_[i]++;i=0;break;}
                  else {c_[i]=0;i++;} }
      if(i>=N) break;
    }
  }
  printf("S1  P0xQ1 & disj  => or(1,2,0)=or(1,2,8)   : %12lld cases, %lld violations\n", n1,b1);
  printf("    CONTROL  P0xQ1 & NOT disj             : %12lld cases, %lld with or(1,2,0)!=or(1,2,8)\n", n1c,b1c);
  printf("S2  P2xQ1 & disj  => or(1,2,3)=or(1,2,8)   : %12lld cases, %lld violations\n", n2,b2);
  printf("S3  P1xQ2,P1xQ3 & disj => or(1,2,11)=or(1,2,8): %9lld cases, %lld violations\n", n3,b3);
  printf("    CONTROL  same without disj            : %12lld cases, %lld failures\n", n3c,b3c);
  printf("S5  or(8,9,1)=or(8,9,2) & P1xQ4 => not both V11,V12 on the far side\n");
  printf("                                           : %12lld cases, %lld violations\n", n5,b5);
  printf("    CONTROL  or(8,9,1)!=or(8,9,2) & P1xQ4  : %12lld cases, %lld with both on the far side\n", n5c,b5c);
  printf("L3  LEMMA1 H1..H7 & P0/xP2  => P0 /x Q0    : %12lld cases, %lld violations\n", nL3,bL3a);
  printf("L3  LEMMA1 H1..H7 & P0/xP2  => P2 /x Q2    : %12lld cases, %lld violations\n", nL3,bL3b);
  printf("    CONTROL  LEMMA1 H1..H7 & P0 x P2       : %12lld cases, P0xQ0 in %lld, P2xQ2 in %lld\n", nL3c,bL3ca,bL3cb);
  return 0;
}
