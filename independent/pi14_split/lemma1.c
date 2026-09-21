/* Exhaustive check of LEMMA 1 over all 3,315 eight-point order types and all
 * 8! labellings, in the style of pi8_human/proofcheck.c.
 *
 * Pi_14 vertices used (8 of the 11):  V0 V1 V2 V3  V7 V8 V9 V10
 * named here                          a0 a1 a2 a3  b0 b1 b2 b3
 *
 * HYPOTHESES (7 of Pi_14's 21 conditions):
 *   H1  ProperCross(V0,V1,V8,V9)      P0 x Q1
 *   H2  ProperCross(V0,V1,V9,V10)     P0 x Q2
 *   H3  ProperCross(V1,V2,V7,V8)      P1 x Q0
 *   H4  ProperCross(V1,V2,V9,V10)     P1 x Q2
 *   H5  ProperCross(V2,V3,V7,V8)      P2 x Q0
 *   H6  ProperCross(V2,V3,V8,V9)      P2 x Q1
 *   H7  or(V1,V2,V8) = or(V1,V2,V9)   first disjunct of  P1 /x Q1
 *
 * CONCLUSIONS, all about the side of the line V8V9:
 *   C1  or(8,9,1)  =  or(8,9,2)      <- the SECOND disjunct of P1 /x Q1
 *   C2  or(8,9,7)  =  or(8,9,1)
 *   C3  or(8,9,10) =  or(8,9,1)
 *   C4  or(8,9,0)  = -or(8,9,1)      (immediate from H1)
 *   C5  or(8,9,3)  = -or(8,9,2)      (immediate from H6)
 *
 * Intermediate steps of the synthetic proof, checked separately:
 *   S1  or(7,8,1)  = -or(7,8,2)   and   or(9,10,1) = -or(9,10,2)   (from H3,H4)
 *   S2  or(7,8,2)  = -or(8,9,2)   (Core Lemma at V8, from H5,H6)
 *   S3  or(8,9,1)  = -or(9,10,1)  (Core Lemma at V9, from H1,H2)
 *   S4  or(7,8,1)  =  or(9,10,2)  (the monotonicity step, from H3,H4,H7)
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
  long long nH=0,bC1=0,bC2=0,bC3=0,bC4=0,bC5=0;
  long long nS1=0,bS1=0,nS2=0,bS2=0,nS3=0,bS3=0,nS4=0,bS4=0;
  long long nH6=0; long long nC1only=0,nH7only=0,nBoth=0; long long nE1=0,bE1=0,nE2=0,bE2=0;   /* hypotheses minus H7, for contrast */
  long long bC1_noH7=0;
  int perm[N],c_[N];
  for(int t=0;t<NOT;t++){
    for(int a=0;a<N;a++)for(int b=0;b<N;b++)for(int c=0;c<N;c++)
      S[a][b][c]=(a==b||b==c||a==c)?0:
        sgn((long)(pts[t][b][0]-pts[t][a][0])*(pts[t][c][1]-pts[t][a][1])
           -(long)(pts[t][b][1]-pts[t][a][1])*(pts[t][c][0]-pts[t][a][0]));
    for(int i=0;i<N;i++)perm[i]=i;
    memset(c_,0,sizeof c_); int i=0;
    for(;;){
      int a0=perm[0],a1=perm[1],a2=perm[2],a3=perm[3];
      int b0=perm[4],b1=perm[5],b2=perm[6],b3=perm[7];
      int H1=cross(a0,a1,b1,b2), H2=cross(a0,a1,b2,b3);
      int H3=cross(a1,a2,b0,b1), H4=cross(a1,a2,b2,b3);
      int H5=cross(a2,a3,b0,b1), H6=cross(a2,a3,b1,b2);
      int H7=(S[a1][a2][b1]==S[a1][a2][b2]);
      /* intermediate steps on their own hypothesis sets */
      if(H3&&H4){ nS1++; if(!(S[b0][b1][a1]==-S[b0][b1][a2] &&
                              S[b2][b3][a1]==-S[b2][b3][a2])) bS1++; }
      if(H5&&H6){ nS2++; if(S[b0][b1][a2]!=-S[b1][b2][a2]) bS2++; }
      if(H1&&H2){ nS3++; if(S[b1][b2][a1]!=-S[b2][b3][a1]) bS3++; }
      if(H3&&H4&&H7){ nS4++; if(S[b0][b1][a1]!=S[b2][b3][a2]) bS4++; }
      /* the two 'endpoint on the line' steps, on their own hypotheses */
      { int C1=(S[b1][b2][a1]==S[b1][b2][a2]);
        if(H3&&C1){ nE1++; if(S[b1][b2][b0]!=S[b1][b2][a1]) bE1++; }
        if(H4&&C1){ nE2++; if(S[b1][b2][b3]!=S[b1][b2][a1]) bE2++; } }
      if(H1&&H2&&H3&&H4&&H5&&H6){
        nH6++;
        if(S[b1][b2][a1]!=S[b1][b2][a2]) bC1_noH7++;
        { int c1=(S[b1][b2][a1]==S[b1][b2][a2]);
          if(c1&&H7) nBoth++; else if(c1) nC1only++; else if(H7) nH7only++; }
        if(H7){
          nH++;
          if(S[b1][b2][a1]!=S[b1][b2][a2]) bC1++;
          if(S[b1][b2][b0]!=S[b1][b2][a1]) bC2++;
          if(S[b1][b2][b3]!=S[b1][b2][a1]) bC3++;
          if(S[b1][b2][a0]!=-S[b1][b2][a1]) bC4++;
          if(S[b1][b2][a3]!=-S[b1][b2][a2]) bC5++;
        }
      }
      while(i<N){ if(c_[i]<i){int k=(i%2)?c_[i]:0;int tm=perm[k];perm[k]=perm[i];perm[i]=tm;c_[i]++;i=0;break;}
                  else {c_[i]=0;i++;} }
      if(i>=N) break;
    }
  }
  printf("S1  H3,H4        => or(7,8,1)=-or(7,8,2) & or(9,10,1)=-or(9,10,2) : %12lld cases, %lld violations\n",nS1,bS1);
  printf("S2  H5,H6        => or(7,8,2) = -or(8,9,2)   [Core Lemma at V8]   : %12lld cases, %lld violations\n",nS2,bS2);
  printf("S3  H1,H2        => or(8,9,1) = -or(9,10,1)  [Core Lemma at V9]   : %12lld cases, %lld violations\n",nS3,bS3);
  printf("S4  H3,H4,H7     => or(7,8,1) =  or(9,10,2)  [monotonicity]       : %12lld cases, %lld violations\n",nS4,bS4);
  printf("E1  P1xQ0 + C1    => or(8,9,7)  = or(8,9,1)  [V8 on the line]     : %12lld cases, %lld violations\n",nE1,bE1);
  printf("E2  P1xQ2 + C1    => or(8,9,10) = or(8,9,1)  [V9 on the line]     : %12lld cases, %lld violations\n",nE2,bE2);
  printf("\nfull hypotheses H1..H7                                          : %12lld cases\n",nH);
  printf("C1  or(8,9,1)  =  or(8,9,2)   (2nd disjunct of P1 /x Q1)          : %lld violations\n",bC1);
  printf("C2  or(8,9,7)  =  or(8,9,1)                                       : %lld violations\n",bC2);
  printf("C3  or(8,9,10) =  or(8,9,1)                                       : %lld violations\n",bC3);
  printf("C4  or(8,9,0)  = -or(8,9,1)                                       : %lld violations\n",bC4);
  printf("C5  or(8,9,3)  = -or(8,9,2)                                       : %lld violations\n",bC5);
  printf("\nCONTROL: H1..H6 WITHOUT H7                                       : %12lld cases\n",nH6);
  printf("         H7 only: %lld   C1 only: %lld   both: %lld  (0 and 0 => EQUIVALENT)\n",nH7only,nC1only,nBoth);
  printf("         C1 fails there in                                        : %lld  (so H7 is doing real work)\n",bC1_noH7);
  return 0;
}
