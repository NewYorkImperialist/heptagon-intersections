/* Is Pi_14's residue an EIGHT-POINT statement?
 * Slots 0..7 -> V1,V2,V3,V4,V7,V8,V9,V10.
 * Every Pi_14 condition whose four vertices lie in that set:
 *   (1,2)x(3,4)  NOT cross     <- the target, h1_3
 *   (1,2)x(7,8)  cross
 *   (1,2)x(8,9)  NOT cross
 *   (1,2)x(9,10) cross
 *   (2,3)x(7,8)  cross
 *   (2,3)x(8,9)  cross
 *   (3,4)x(7,8)  cross
 *   (3,4)x(8,9)  cross
 *   (3,4)x(9,10) cross
 *   (7,8)x(9,10) NOT cross
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#define N 8
static int S[N][N][N];
static int sgn(long v){return (v>0)-(v<0);}
static int cr(int a,int b,int c,int d){
  return S[a][b][c]!=S[a][b][d] && S[c][d][a]!=S[c][d][b];
}
int main(void){
  const char*R="/Users/jaydenlin/dev/lean/heptagon-intersections/independent/order_type_audit/external/otypes08.b08";
  FILE*f=fopen(R,"rb"); fseek(f,0,SEEK_END); long sz=ftell(f); fseek(f,0,SEEK_SET);
  int NOT=sz/(2*N); unsigned char (*pts)[N][2]=malloc(sz);
  if(fread(pts,1,sz,f)!=(size_t)sz){perror("read");return 1;} fclose(f);
  long long full=0, noTarget=0, sameSide=0, oppSide=0;
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
      int rest = cr(V1,V2,V7,V8) && !cr(V1,V2,V8,V9) && cr(V1,V2,V9,V10)
              && cr(V2,V3,V7,V8) && cr(V2,V3,V8,V9)
              && cr(V3,V4,V7,V8) && cr(V3,V4,V8,V9) && cr(V3,V4,V9,V10)
              && !cr(V7,V8,V9,V10);
      if(rest){
        noTarget++;
        if(!cr(V1,V2,V3,V4)) full++;            /* all ten conditions */
        /* the residual inequality: V1,V2 same side of line V3V4 ? */
        if(S[V3][V4][V1]*S[V3][V4][V2] > 0) sameSide++; else oppSide++;
      }
      while(i<N){ if(c_[i]<i){int k=(i%2)?c_[i]:0;int tm=perm[k];perm[k]=perm[i];perm[i]=tm;c_[i]++;i=0;break;}
                  else {c_[i]=0;i++;} }
      if(i>=N) break;
    }
  }
  printf("nine conditions (all but h1_3) hold on : %lld labellings\n", noTarget);
  printf("  ... and h1_3 too (all ten)           : %lld\n", full);
  printf("  V1,V2 SAME side of line V3V4         : %lld   <- the surviving disjunct\n", sameSide);
  printf("  V1,V2 OPPOSITE sides                 : %lld\n", oppSide);
  return 0;
}
