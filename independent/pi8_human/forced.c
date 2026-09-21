/* Phase 2: find orientation triples whose sign is FORCED (constant) on
 *   A = H && (x1 != x2)     4842 labellings
 *   B = H && (w2 != w3)      330 labellings
 * A forced sign is a lemma "H and <side condition> implies or(...) = c".
 * If some triple is forced to opposite values on A and B, the two sides are
 * separated and the theorem follows.
 *
 * H = cells (0,0)(0,1)(0,2)(1,0)(1,2)(2,0) cross, (1,1) misses.
 * slots 0..3 = p0..p3, 4..7 = q0..q3.
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
static int T[56][3], NT3;
/* seen[set][t] : bit0 = saw -1, bit1 = saw +1 */
static unsigned char seen[3][56];
static long long cnt[3];
static const char *SN[3]={"H","H & x1!=x2","H & w2!=w3"};

int main(void){
  for(int a=0;a<N;a++)for(int b=a+1;b<N;b++)for(int c=b+1;c<N;c++){
    T[NT3][0]=a;T[NT3][1]=b;T[NT3][2]=c;NT3++; }
  const char*R="/Users/jaydenlin/dev/lean/heptagon-intersections/independent/order_type_audit/external/otypes08.b08";
  FILE*f=fopen(R,"rb"); fseek(f,0,SEEK_END); long sz=ftell(f); fseek(f,0,SEEK_SET);
  int NOT=sz/(2*N); unsigned char (*pts)[N][2]=malloc(sz);
  if(fread(pts,1,sz,f)!=(size_t)sz){perror("read");return 1;} fclose(f);
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
      if(cross(p0,p1,q0,q1)&&cross(p0,p1,q1,q2)&&cross(p0,p1,q2,q3)
       &&cross(p1,p2,q0,q1)&&cross(p1,p2,q2,q3)&&cross(p2,p3,q0,q1)
       &&!cross(p1,p2,q1,q2)){
        int x1=S[p2][p3][q1],x2=S[p2][p3][q2];
        int w2=S[q1][q2][p2],w3=S[q1][q2][p3];
        int set[3]={1, x1!=x2, w2!=w3};
        for(int k=0;k<3;k++){
          if(!set[k])continue;
          cnt[k]++;
          for(int r=0;r<NT3;r++){
            int v=S[perm[T[r][0]]][perm[T[r][1]]][perm[T[r][2]]];
            seen[k][r] |= (v<0)?1:2;
          }
        }
      }
      while(i<N){ if(c_[i]<i){int k=(i%2)?c_[i]:0;int tm=perm[k];perm[k]=perm[i];perm[i]=tm;c_[i]++;i=0;break;}
                  else {c_[i]=0;i++;} }
      if(i>=N) break;
    }
  }
  const char*NM[N]={"p0","p1","p2","p3","q0","q1","q2","q3"};
  for(int k=0;k<3;k++){
    printf("\n=== %s   (%lld labellings) ===\n", SN[k], cnt[k]);
    int n=0;
    for(int r=0;r<NT3;r++)
      if(seen[k][r]==1||seen[k][r]==2){
        printf("   or(%s,%s,%s) = %+d   FORCED\n",
          NM[T[r][0]],NM[T[r][1]],NM[T[r][2]], seen[k][r]==2?1:-1);
        n++;
      }
    if(!n) printf("   (no triple has a forced sign)\n");
  }
  /* separation: forced opposite on A and B */
  printf("\n=== triples forced to OPPOSITE signs on the two subsets ===\n");
  int sep=0;
  for(int r=0;r<NT3;r++){
    int a=seen[1][r], b=seen[2][r];
    if((a==1||a==2)&&(b==1||b==2)&&a!=b){
      printf("   or(%s,%s,%s): %+d on (x1!=x2) but %+d on (w2!=w3)  <- SEPARATES\n",
        NM[T[r][0]],NM[T[r][1]],NM[T[r][2]], a==2?1:-1, b==2?1:-1); sep++; }
  }
  if(!sep) printf("   none\n");
  return 0;
}
