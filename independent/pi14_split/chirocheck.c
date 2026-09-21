/* chirocheck.c  -- solver-free exact-arithmetic discovery of FORCED orientation
 * signs under a prescribed hypothesis set on the eleven Pi_14 vertices.
 *
 * Same hill-climber as sampler.c (exact long-long arithmetic, no floating
 * point, no solver).  For every configuration found it records the sign of all
 * C(11,3)=165 orientation triples, NORMALISED by eta = sgn(or(1,2,8)) so that
 * the record is invariant under reflection (reflection flips every orientation
 * and preserves every crossing, so only EVEN products can be forced --
 * pi8_human/forced2.c).
 *
 * usage: ./chirocheck <mode> <seconds> <seed>
 *   mode = thm      13 crossings + P0 /x P2 + P1 /x Q1   (the Theorem's hyps)
 *          lemma1   the 7 conditions of LEMMA 1
 *          core12   ASYMMETRY.md CORE0's 12 conditions
 *          thmA     thm + or(8,9,10)*or(8,9,11) > 0      (negation of half the
 *                                                         Theorem; must find 0)
 *          thmB     thm + or(8,9,11)*or(8,9,12) > 0
 *          control  the f(7,7)>=38 certificate's own 21-cell pattern
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
enum {CROSS, SAMEAB, SAMECD, NOCROSS};
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

static void add_xs13(void){
  int xs[13][4]={{0,1,8,9},{0,1,9,10},{0,1,11,12},{1,2,7,8},{1,2,9,10},
    {1,2,10,11},{1,2,11,12},{2,3,7,8},{2,3,8,9},{2,3,11,12},{3,4,7,8},
    {3,4,8,9},{3,4,9,10}};
  for(int i=0;i<13;i++) add(CROSS,xs[i][0],xs[i][1],xs[i][2],xs[i][3]);
}

/* extra conclusion-side conditions (checked, not assumed) */
static int extraty=0;   /* 0 none, 1 = or(8,9,10)*or(8,9,11)>0, 2 = or(8,9,11)*or(8,9,12)>0 */

int main(int argc,char**argv){
  const char*mode = argc>1?argv[1]:"thm";
  double secs = argc>2?atof(argv[2]):20.0;
  rs = (argc>3?strtoull(argv[3],0,10):12345ULL) | 1;

  if(!strcmp(mode,"lemma1")){
    add(CROSS,0,1,8,9); add(CROSS,0,1,9,10);
    add(CROSS,1,2,7,8); add(CROSS,1,2,9,10);
    add(CROSS,2,3,7,8); add(CROSS,2,3,8,9);
    add(SAMEAB,1,2,8,9);
  } else if(!strcmp(mode,"core12")){
    add(SAMEAB,0,1,2,3);
    add(CROSS,0,1,8,9); add(CROSS,0,1,9,10); add(CROSS,0,1,11,12);
    add(CROSS,1,2,7,8); add(SAMEAB,1,2,8,9);
    add(CROSS,1,2,9,10); add(CROSS,1,2,10,11); add(CROSS,1,2,11,12);
    add(CROSS,2,3,7,8); add(CROSS,2,3,8,9); add(CROSS,2,3,11,12);
  } else if(!strcmp(mode,"thm")){
    add_xs13(); add(NOCROSS,0,1,2,3); add(NOCROSS,1,2,8,9);
  } else if(!strcmp(mode,"thmA")){
    add_xs13(); add(NOCROSS,0,1,2,3); add(NOCROSS,1,2,8,9);
    add(SAMEAB,8,9,10,11); extraty=1;
  } else if(!strcmp(mode,"thmB")){
    add_xs13(); add(NOCROSS,0,1,2,3); add(NOCROSS,1,2,8,9);
    add(SAMEAB,8,9,11,12); extraty=2;
  } else if(!strcmp(mode,"xs13")){
    add_xs13();                       /* crossings only -- non-vacuity control */
  } else if(!strcmp(mode,"thmq")){
    /* the Theorem's 15 + Q0 /x Q2 -- LEMMA 4's hypothesis set inside Pi_14 */
    add_xs13(); add(NOCROSS,0,1,2,3); add(NOCROSS,1,2,8,9);
    add(NOCROSS,7,8,9,10);
  } else if(!strcmp(mode,"thm3")){
    /* the Theorem's 15 + the two Q-Q non-crossings that define the 64
       branches still open.  Their bit-0 disjuncts are refuted by the
       Theorem, so here they can only take bit 1. */
    add_xs13(); add(NOCROSS,0,1,2,3); add(NOCROSS,1,2,8,9);
    add(NOCROSS,8,9,10,11); add(NOCROSS,8,9,11,12);
  } else if(!strncmp(mode,"drop",4)){
    /* the full 21-condition Pi_14 with condition k omitted */
    int dk = atoi(mode+4);
    int pr[21][4]={{0,1,2,3},{0,1,3,4},{0,1,8,9},{0,1,9,10},{0,1,11,12},
      {1,2,3,4},{1,2,7,8},{1,2,8,9},{1,2,9,10},{1,2,10,11},{1,2,11,12},
      {2,3,7,8},{2,3,8,9},{2,3,11,12},{3,4,7,8},{3,4,8,9},{3,4,9,10},
      {7,8,9,10},{7,8,10,11},{8,9,10,11},{8,9,11,12}};
    int want[21]={0,0,1,1,1, 0,1,0,1,1,1, 1,1,1, 1,1,1, 0,0,0,0};
    for(int i=0;i<21;i++){ if(i==dk) continue;
      add(want[i]?CROSS:NOCROSS,pr[i][0],pr[i][1],pr[i][2],pr[i][3]); }
  } else if(!strcmp(mode,"corex")){
    /* the 12-condition minimal core of LEMMA 2, found by core_q1q3.py */
    add(NOCROSS,0,1,2,3);
    add(CROSS,0,1,8,9); add(CROSS,0,1,9,10); add(CROSS,0,1,11,12);
    add(CROSS,1,2,7,8); add(NOCROSS,1,2,8,9);
    add(CROSS,1,2,9,10); add(CROSS,1,2,10,11); add(CROSS,1,2,11,12);
    add(CROSS,2,3,7,8); add(CROSS,2,3,8,9); add(CROSS,2,3,11,12);
  } else {
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
  /* always use the full eleven vertices so the chirotope table is comparable */
  {int all[11]={0,1,2,3,4,7,8,9,10,11,12};
   for(int i=0;i<11;i++) USED[all[i]]=1;}
  NU=0; for(int i=0;i<NV;i++) if(USED[i]) UL[NU++]=i;

  /* triple table */
  static int TA[300],TB[300],TC[300]; int NT=0;
  for(int i=0;i<NU;i++)for(int j=i+1;j<NU;j++)for(int k=j+1;k<NU;k++){
    TA[NT]=UL[i];TB[NT]=UL[j];TC[NT]=UL[k];NT++; }
  static int seen_p[300], seen_m[300];
  memset(seen_p,0,sizeof seen_p); memset(seen_m,0,sizeof seen_m);
  /* all 20 P x Q cells, the 3 P-P pairs and the 6 Q-Q pairs */
  static int CA[40],CB[40],CC[40],CD[40]; int NC=0;
  for(int pi=0;pi<4;pi++) for(int qj=0;qj<5;qj++){
    CA[NC]=pi;CB[NC]=pi+1;CC[NC]=7+qj;CD[NC]=8+qj;NC++; }
  {int pp[3][4]={{0,1,2,3},{0,1,3,4},{1,2,3,4}};
   for(int i=0;i<3;i++){CA[NC]=pp[i][0];CB[NC]=pp[i][1];CC[NC]=pp[i][2];CD[NC]=pp[i][3];NC++;}}
  {int qq[6][4]={{7,8,9,10},{7,8,10,11},{7,8,11,12},{8,9,10,11},{8,9,11,12},{9,10,11,12}};
   for(int i=0;i<6;i++){CA[NC]=qq[i][0];CB[NC]=qq[i][1];CC[NC]=qq[i][2];CD[NC]=qq[i][3];NC++;}}
  static long long cell_x[40], cell_n[40];
  memset(cell_x,0,sizeof cell_x); memset(cell_n,0,sizeof cell_n);

  printf("mode=%s  conditions=%d  vertices=%d  triples=%d\n", mode, NH, NU, NT);

  long long found=0, restarts=0;
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
      int eta = sgn(orient(1,2,8));
      for(int t=0;t<NT;t++){
        int s = eta*sgn(orient(TA[t],TB[t],TC[t]));
        if(s>0) seen_p[t]++; else seen_m[t]++;
      }
      for(int c=0;c<NC;c++){ if(cross(CA[c],CB[c],CC[c],CD[c])) cell_x[c]++; else cell_n[c]++; }
      for(int i=0;i<NU;i++){ X[UL[i]] += (long long)(rnd()%41)-20; Y[UL[i]] += (long long)(rnd()%41)-20; }
    }
  }
  printf("restarts=%lld   configurations satisfying ALL hypotheses = %lld\n", restarts, found);
  if(!found) return 0;
  int nforced=0;
  printf("FORCED (eta-normalised sign constant over all %lld configurations):\n", found);
  for(int t=0;t<NT;t++){
    if(seen_p[t] && seen_m[t]) continue;
    nforced++;
    printf("  or(%d,%d,%d) = %+d * eta\n", TA[t],TB[t],TC[t], seen_p[t]?+1:-1);
  }
  printf("forced %d of %d triples; free %d\n", nforced, NT, NT-nforced);
  printf("CELLS (X=always crosses, .=always misses, ?=both seen):\n");
  for(int c=0;c<NC;c++){
    const char*st = (cell_x[c]&&cell_n[c])?"?":(cell_x[c]?"X":".");
    char nm[40];
    if(CA[c]<5) snprintf(nm,sizeof nm,"P%d x Q%d",CA[c],CC[c]-7);
    else        snprintf(nm,sizeof nm,"Q%d x Q%d",CA[c]-7,CC[c]-7);
    if(CA[c]<5 && CC[c]<5) snprintf(nm,sizeof nm,"P%d x P%d",CA[c],CC[c]);
    printf("  %-9s %s   (cross %lld / miss %lld)\n", nm, st, cell_x[c], cell_n[c]);
  }
  if(extraty) printf("NOTE: mode %s asserts the NEGATION of part of the Theorem; "
                     "%lld configurations found (expected 0).\n", mode, found);
  return 0;
}
