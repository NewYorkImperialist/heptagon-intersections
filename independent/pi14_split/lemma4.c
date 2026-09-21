/* LEMMA 4, exhaustive over all 3,315 eight-point order types and all 8!
 * labellings.  Eight vertices: V1 V2 V3 V4 V7 V8 V9 V10.
 *
 * The convex-quadrilateral tool of SYNTHETIC.md, run with the roles of P and Q
 * exchanged: Q0, Q1, Q2 and the line M = V1V2 cut a second convex
 * quadrilateral  t0 -> V8 -> V9 -> t2  out of the same wedge, where
 * t0 = P1 n Q0 and t2 = P1 n Q2.  It is simple because Q0 /x Q2.  P3 crosses
 * Q0, Q1 and Q2, i.e. three of its four sides -- so P3 cannot lie inside the
 * half-plane above M, and V4 must be strictly below it.
 *
 * HYPOTHESES
 *   A  or(8,9,1) = or(8,9,2)     (imported from LEMMA 1)
 *   B  or(1,2,8) = or(1,2,9)     (the P1 /x Q1 disjunct)
 *   C  P1 x Q0        D  P1 x Q2      I  P2 x Q1
 *   E  P3 x Q0        F  P3 x Q1      G  P3 x Q2
 *   H  Q0 /x Q2
 * CONCLUSION
 *   or(1,2,4) = -or(1,2,8)       (V4 strictly on V7/V10's side of the line V1V2)
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
  long long n[10]={0}, bad[10]={0};   /* 0 = nothing dropped, k = drop Hk */
  int perm[N],c_[N];
  for(int t=0;t<NOT;t++){
    for(int a=0;a<N;a++)for(int b=0;b<N;b++)for(int c=0;c<N;c++)
      S[a][b][c]=(a==b||b==c||a==c)?0:
        sgn((long)(pts[t][b][0]-pts[t][a][0])*(pts[t][c][1]-pts[t][a][1])
           -(long)(pts[t][b][1]-pts[t][a][1])*(pts[t][c][0]-pts[t][a][0]));
    for(int i=0;i<N;i++)perm[i]=i;
    memset(c_,0,sizeof c_); int i=0;
    for(;;){
      int V1=perm[0],V2=perm[1],V3=perm[2],V4=perm[3];
      int V7=perm[4],V8=perm[5],V9=perm[6],V10=perm[7];
      int H[10];
      H[1]=(S[V8][V9][V1]==S[V8][V9][V2]);
      H[2]=(S[V1][V2][V8]==S[V1][V2][V9]);
      H[3]=cross(V1,V2,V7,V8);
      H[4]=cross(V1,V2,V9,V10);
      H[5]=cross(V2,V3,V8,V9);
      H[6]=cross(V3,V4,V7,V8);
      H[7]=cross(V3,V4,V8,V9);
      H[8]=cross(V3,V4,V9,V10);
      H[9]=!cross(V7,V8,V9,V10);
      int viol = (S[V1][V2][V4] != -S[V1][V2][V8]);
      for(int d=0;d<10;d++){
        int ok=1;
        for(int k=1;k<10;k++) if(k!=d && !H[k]) {ok=0;break;}
        if(!ok) continue;
        n[d]++; if(viol) bad[d]++;
      }
      while(i<N){ if(c_[i]<i){int k=(i%2)?c_[i]:0;int tm=perm[k];perm[k]=perm[i];perm[i]=tm;c_[i]++;i=0;break;}
                  else {c_[i]=0;i++;} }
      if(i>=N) break;
    }
  }
  const char*nm[10]={"(none dropped)","A or(8,9,1)=or(8,9,2)","B P1/xQ1 disjunct",
                     "C P1xQ0","D P1xQ2","I P2xQ1","E P3xQ0","F P3xQ1","G P3xQ2","H Q0/xQ2"};
  printf("%-24s %14s %14s\n","dropped","cases","violations");
  for(int d=0;d<10;d++) printf("%-24s %14lld %14lld\n", nm[d], n[d], bad[d]);
  return 0;
}
