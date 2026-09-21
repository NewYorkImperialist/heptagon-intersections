/* Leave-one-out non-vacuity control for LEMMA 3.
 *
 * LEMMA 3 says: LEMMA 1's H1..H7 force the two FREE cells P0 x Q0 and
 * P2 x Q2 of Pi_14 to MISS.  A conclusion of the form "cell C misses" is
 * worthless unless cell C can cross at all under nearby hypotheses, so this
 * program drops each hypothesis in turn and counts how often the conclusion
 * then fails.  A hypothesis whose removal leaves 0 failures is NOT needed.
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
  long long n[8]={0},ba[8]={0},bb[8]={0};   /* index 0 = nothing dropped */
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
      int H[8];
      H[1]=cross(V0,V1,V8,V9); H[2]=cross(V0,V1,V9,V10);
      H[3]=cross(V1,V2,V7,V8); H[4]=cross(V1,V2,V9,V10);
      H[5]=cross(V2,V3,V7,V8); H[6]=cross(V2,V3,V8,V9);
      H[7]=(S[V1][V2][V8]==S[V1][V2][V9]);
      int ca=cross(V0,V1,V7,V8), cb=cross(V2,V3,V9,V10);
      for(int d=0;d<8;d++){            /* d=0: drop nothing; d=k: drop H[k] */
        int ok=1;
        for(int k=1;k<8;k++) if(k!=d && !H[k]) {ok=0;break;}
        if(!ok) continue;
        n[d]++; if(ca) ba[d]++; if(cb) bb[d]++;
      }
      while(i<N){ if(c_[i]<i){int k=(i%2)?c_[i]:0;int tm=perm[k];perm[k]=perm[i];perm[i]=tm;c_[i]++;i=0;break;}
                  else {c_[i]=0;i++;} }
      if(i>=N) break;
    }
  }
  const char*nm[8]={"(none dropped)","H1 P0xQ1","H2 P0xQ2","H3 P1xQ0","H4 P1xQ2",
                    "H5 P2xQ0","H6 P2xQ1","H7 disjunct"};
  printf("%-16s %12s %12s %12s\n","dropped","cases","P0 x Q0","P2 x Q2");
  for(int d=0;d<8;d++)
    printf("%-16s %12lld %12lld %12lld\n", nm[d], n[d], ba[d], bb[d]);
  return 0;
}
