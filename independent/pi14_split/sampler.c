/* Randomised integer-coordinate search for point configurations realising a
 * prescribed set of crossing / sign conditions on up to 12 labelled points,
 * used to test universally-quantified claims that involve more than the eight
 * points of the order-type database.
 *
 * All arithmetic is exact (long long on integer coordinates); there is no
 * floating point and no solver anywhere in this file.
 *
 * Vertex numbering matches Pi_14:  0..4 are P's vertices, 7..12 are Q's.
 *
 * usage:  ./sampler <mode> <seconds> <seed>
 *   mode = core12    hypotheses = the 12-condition CORE12 of ASYMMETRY.md
 *          lemma1    hypotheses = the 7 conditions of LEMMA 1
 *          control   hypotheses = the pattern the f(7,7)>=38 certificate
 *                    realises on the same 21 cells (must be findable)
 */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <time.h>

#define NV 13
static long long X[NV], Y[NV];
static int USED[NV], NU, UL[NV];

static long long orient(int a,int b,int c){
  return (X[b]-X[a])*(Y[c]-Y[a]) - (Y[b]-Y[a])*(X[c]-X[a]);
}
static int sgn(long long v){return (v>0)-(v<0);}
static int cross(int a,int b,int c,int d){
  return sgn(orient(a,b,c))*sgn(orient(a,b,d))<0 && sgn(orient(c,d,a))*sgn(orient(c,d,b))<0;
}
/* condition types */
enum {CROSS, SAMEAB, SAMECD, NOCROSS};   /* SAMEAB: or(a,b,c)*or(a,b,d)>0  (disjunct 0)
                                   SAMECD: or(c,d,a)*or(c,d,b)>0  (disjunct 1) */
typedef struct {int ty,a,b,c,d;} Cond;
static Cond H[40]; static int NH;
static void add(int ty,int a,int b,int c,int d){H[NH].ty=ty;H[NH].a=a;H[NH].b=b;H[NH].c=c;H[NH].d=d;NH++;}

static int holds(Cond*h){
  switch(h->ty){
    case CROSS:  return cross(h->a,h->b,h->c,h->d);
    case NOCROSS: return !cross(h->a,h->b,h->c,h->d);
    case SAMEAB: return sgn(orient(h->a,h->b,h->c))*sgn(orient(h->a,h->b,h->d))>0;
    default:     return sgn(orient(h->c,h->d,h->a))*sgn(orient(h->c,h->d,h->b))>0;
  }
}
static int score(void){int s=0;for(int i=0;i<NH;i++)s+=holds(&H[i]);return s;}

static unsigned long long rs;
static unsigned long long rnd(void){rs^=rs<<13;rs^=rs>>7;rs^=rs<<17;return rs;}
static long long G = 4000;

static int degenerate(void){
  for(int i=0;i<NU;i++)for(int j=i+1;j<NU;j++)for(int k=j+1;k<NU;k++)
    if(orient(UL[i],UL[j],UL[k])==0) return 1;
  return 0;
}

int main(int argc,char**argv){
  const char*mode = argc>1?argv[1]:"core12";
  double secs = argc>2?atof(argv[2]):20.0;
  rs = (argc>3?strtoull(argv[3],0,10):12345ULL) | 1;

  if(!strcmp(mode,"lemma1")){
    add(CROSS,0,1,8,9); add(CROSS,0,1,9,10);
    add(CROSS,1,2,7,8); add(CROSS,1,2,9,10);
    add(CROSS,2,3,7,8); add(CROSS,2,3,8,9);
    add(SAMEAB,1,2,8,9);
  } else if(!strcmp(mode,"core12")){
    add(SAMEAB,0,1,2,3);                                   /* P0 /x P2, bit 0 */
    add(CROSS,0,1,8,9); add(CROSS,0,1,9,10); add(CROSS,0,1,11,12);
    add(CROSS,1,2,7,8); add(SAMEAB,1,2,8,9);               /* P1 /x Q1, bit 0 */
    add(CROSS,1,2,9,10); add(CROSS,1,2,10,11); add(CROSS,1,2,11,12);
    add(CROSS,2,3,7,8); add(CROSS,2,3,8,9); add(CROSS,2,3,11,12);
  } else if(!strcmp(mode,"pi14")){
    /* the FULL Pi_14 pattern, non-crossings as genuine non-crossings.
       A single configuration here would REFUTE Pi_14's impossibility. */
    int pr[21][4]={{0,1,2,3},{0,1,3,4},{0,1,8,9},{0,1,9,10},{0,1,11,12},
      {1,2,3,4},{1,2,7,8},{1,2,8,9},{1,2,9,10},{1,2,10,11},{1,2,11,12},
      {2,3,7,8},{2,3,8,9},{2,3,11,12},{3,4,7,8},{3,4,8,9},{3,4,9,10},
      {7,8,9,10},{7,8,10,11},{8,9,10,11},{8,9,11,12}};
    int want[21]={0,0,1,1,1, 0,1,0,1,1,1, 1,1,1, 1,1,1, 0,0,0,0};
    for(int i=0;i<21;i++)
      add(want[i]?CROSS:NOCROSS,pr[i][0],pr[i][1],pr[i][2],pr[i][3]);
  } else if(!strncmp(mode,"flip",4)){
    /* Pi_14 with exactly one of the 21 cells flipped: a capability control.
       If the search finds those but not Pi_14 itself, the search is not the
       bottleneck. */
    int fl = atoi(mode+4);
    int pr[21][4]={{0,1,2,3},{0,1,3,4},{0,1,8,9},{0,1,9,10},{0,1,11,12},
      {1,2,3,4},{1,2,7,8},{1,2,8,9},{1,2,9,10},{1,2,10,11},{1,2,11,12},
      {2,3,7,8},{2,3,8,9},{2,3,11,12},{3,4,7,8},{3,4,8,9},{3,4,9,10},
      {7,8,9,10},{7,8,10,11},{8,9,10,11},{8,9,11,12}};
    int want[21]={0,0,1,1,1, 0,1,0,1,1,1, 1,1,1, 1,1,1, 0,0,0,0};
    want[fl] = !want[fl];
    for(int i=0;i<21;i++)
      add(want[i]?CROSS:NOCROSS,pr[i][0],pr[i][1],pr[i][2],pr[i][3]);
  } else if(!strcmp(mode,"thm")){
    /* the 13 prescribed crossings + the two non-crossings, as genuine
       DISJUNCTIONS (no disjunct picked).  Conclusion: or(8,9,10), or(8,9,11),
       or(8,9,12) alternate in sign. */
    int xs[13][4]={{0,1,8,9},{0,1,9,10},{0,1,11,12},{1,2,7,8},{1,2,9,10},
      {1,2,10,11},{1,2,11,12},{2,3,7,8},{2,3,8,9},{2,3,11,12},{3,4,7,8},
      {3,4,8,9},{3,4,9,10}};
    for(int i=0;i<13;i++) add(CROSS,xs[i][0],xs[i][1],xs[i][2],xs[i][3]);
    add(NOCROSS,0,1,2,3);      /* P0 /x P2 */
    add(NOCROSS,1,2,8,9);      /* P1 /x Q1 */
  } else { /* control: the 21 Pi_14 cells with the certificate's own truth values */
    long long cx[13]={373,132,369,88,327, 0,0, 344,89,345,373,270,325};
    long long cy[13]={157,5,182,157,282, 0,0, 24,303,19,214,338,93};
    int pr[21][4]={{0,1,2,3},{0,1,3,4},{0,1,8,9},{0,1,9,10},{0,1,11,12},
      {1,2,3,4},{1,2,7,8},{1,2,8,9},{1,2,9,10},{1,2,10,11},{1,2,11,12},
      {2,3,7,8},{2,3,8,9},{2,3,11,12},{3,4,7,8},{3,4,8,9},{3,4,9,10},
      {7,8,9,10},{7,8,10,11},{8,9,10,11},{8,9,11,12}};
    for(int i=0;i<13;i++){X[i]=cx[i];Y[i]=cy[i];}
    for(int i=0;i<21;i++){
      int a=pr[i][0],b=pr[i][1],c=pr[i][2],d=pr[i][3];
      if(cross(a,b,c,d)) add(CROSS,a,b,c,d);
      else if(sgn(orient(a,b,c))*sgn(orient(a,b,d))>0) add(SAMEAB,a,b,c,d);
      else add(SAMECD,a,b,c,d);
    }
  }
  memset(USED,0,sizeof USED);
  for(int i=0;i<NH;i++){USED[H[i].a]=USED[H[i].b]=USED[H[i].c]=USED[H[i].d]=1;}
  NU=0; for(int i=0;i<NV;i++) if(USED[i]) UL[NU++]=i;
  printf("mode=%s  conditions=%d  vertices=%d (", mode, NH, NU);
  for(int i=0;i<NU;i++) printf("%d%s",UL[i],i+1<NU?" ":"");
  printf(")\n");

  long long found=0, viol10_11=0, viol11_12=0, viol_eps=0, fires=0, restarts=0;
  clock_t t0=clock();
  while((double)(clock()-t0)/CLOCKS_PER_SEC < secs){
    restarts++;
    for(int i=0;i<NU;i++){X[UL[i]]=rnd()%G; Y[UL[i]]=rnd()%G;}
    int cur=score();
    for(int step=0; step<40000 && cur<NH; step++){
      int v=UL[rnd()%NU];
      long long ox=X[v], oy=Y[v];
      if(rnd()&1){X[v]=rnd()%G; Y[v]=rnd()%G;}
      else {long long r=1+rnd()%200; X[v]+= (long long)(rnd()%(2*r))-r; Y[v]+=(long long)(rnd()%(2*r))-r;
            if(X[v]<0)X[v]=0; if(Y[v]<0)Y[v]=0; if(X[v]>=G)X[v]=G-1; if(Y[v]>=G)Y[v]=G-1;}
      int ns=score();
      if(ns>=cur) cur=ns; else {X[v]=ox;Y[v]=oy;}
    }
    if(cur==NH && !degenerate()){
      found++;
      /* the conclusions under test, on the line V8V9 */
      if(strcmp(mode,"control") && strcmp(mode,"pi14") && strncmp(mode,"flip",4)){
        int e = sgn(orient(8,9,1));
        fires++;
        if(sgn(orient(8,9,10))!=e) viol_eps++;
        if(!strcmp(mode,"core12") || !strcmp(mode,"thm")){
          if(sgn(orient(8,9,10))*sgn(orient(8,9,11))>0) viol10_11++;
          if(sgn(orient(8,9,11))*sgn(orient(8,9,12))>0) viol11_12++;
        }
      }
      /* jitter to move on to a different solution */
      for(int i=0;i<NU;i++){ X[UL[i]] += (long long)(rnd()%41)-20; Y[UL[i]] += (long long)(rnd()%41)-20; }
    }
  }
  printf("restarts=%lld   configurations satisfying ALL hypotheses = %lld\n", restarts, found);
  if(strcmp(mode,"control") && strcmp(mode,"pi14") && strncmp(mode,"flip",4)){
    printf("  claim or(8,9,10) = or(8,9,1)            : %lld cases, %lld violations\n", fires, viol_eps);
    if(!strcmp(mode,"core12") || !strcmp(mode,"thm")){
      printf("  claim or(8,9,10)*or(8,9,11) < 0         : %lld cases, %lld violations\n", fires, viol10_11);
      printf("  claim or(8,9,11)*or(8,9,12) < 0         : %lld cases, %lld violations\n", fires, viol11_12);
    }
  }
  return 0;
}
