#define rand	pan_rand
#if defined(HAS_CODE) && defined(VERBOSE)
	cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
#endif
	switch (t->forw) {
	default: Uerror("bad forward move");
	case 0:	/* if without executable clauses */
		continue;
	case 1: /* generic 'goto' or 'skip' */
		IfNotBlocked
		_m = 3; goto P999;
	case 2: /* generic 'else' */
		IfNotBlocked
		if (trpt->o_pm&1) continue;
		_m = 3; goto P999;

		 /* CLAIM complete */
	case 3: /* STATE 1 - _spin_nvr.tmp:3 - [((!(!((counter==-(5))))&&!((counter==5))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported1)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][1] = 1;
		if (!(( !( !((now.counter== -(5))))&& !((now.counter==5)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 3 - _spin_nvr.tmp:4 - [((!(!((SafetyAlley[0]._p==entry)))&&!((SafetyAlley[0]._p==alley))))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported3 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported3)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported3 = 0;
			if (verbose && !reported3)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported3 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][3] = 1;
		if (!(( !( !((((int)((P0 *)Pptr(BASE+0))->_p)==2)))&& !((((int)((P0 *)Pptr(BASE+0))->_p)==13)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 9 - _spin_nvr.tmp:9 - [(!((counter==5)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported9 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported9)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported9 = 0;
			if (verbose && !reported9)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported9 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][9] = 1;
		if (!( !((now.counter==5))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: /* STATE 13 - _spin_nvr.tmp:13 - [(!((SafetyAlley[0]._p==alley)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported13 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported13)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported13 = 0;
			if (verbose && !reported13)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported13 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][13] = 1;
		if (!( !((((int)((P0 *)Pptr(BASE+0))->_p)==13))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 17 - _spin_nvr.tmp:15 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported17 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported17)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported17 = 0;
			if (verbose && !reported17)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported17 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][17] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Alley */
	case 8: /* STATE 1 - SafetyAlley.pml:44 - [(enter[i])] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][1] = 1;
		if (!(((int)now.enter[ Index(((P1 *)this)->_2_i, 8) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 2 - SafetyAlley.pml:45 - [(((i<4)&&(counter<0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][2] = 1;
		if (!(((((P1 *)this)->_2_i<4)&&(now.counter<0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: /* STATE 3 - SafetyAlley.pml:45 - [enter[i] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = ((int)now.enter[ Index(((P1 *)this)->_2_i, 8) ]);
		now.enter[ Index(((P1 *)this)->_2_i, 8) ] = 0;
#ifdef VAR_RANGES
		logval("enter[Alley:i]", ((int)now.enter[ Index(((P1 *)this)->_2_i, 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 4 - SafetyAlley.pml:46 - [counterCC = (counterCC-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = now.counterCC;
		now.counterCC = (now.counterCC-1);
#ifdef VAR_RANGES
		logval("counterCC", now.counterCC);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 5 - SafetyAlley.pml:47 - [counter = (counter-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = now.counter;
		now.counter = (now.counter-1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: /* STATE 6 - SafetyAlley.pml:48 - [inAlley[i] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 8) ]);
		now.inAlley[ Index(((P1 *)this)->_2_i, 8) ] = 1;
#ifdef VAR_RANGES
		logval("inAlley[Alley:i]", ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 8 - SafetyAlley.pml:51 - [(((i>=4)&&(counter>0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][8] = 1;
		if (!(((((P1 *)this)->_2_i>=4)&&(now.counter>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 9 - SafetyAlley.pml:51 - [enter[i] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][9] = 1;
		(trpt+1)->bup.oval = ((int)now.enter[ Index(((P1 *)this)->_2_i, 8) ]);
		now.enter[ Index(((P1 *)this)->_2_i, 8) ] = 0;
#ifdef VAR_RANGES
		logval("enter[Alley:i]", ((int)now.enter[ Index(((P1 *)this)->_2_i, 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 16: /* STATE 10 - SafetyAlley.pml:52 - [counter = (counter+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][10] = 1;
		(trpt+1)->bup.oval = now.counter;
		now.counter = (now.counter+1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 11 - SafetyAlley.pml:53 - [inAlley[i] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][11] = 1;
		(trpt+1)->bup.oval = ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 8) ]);
		now.inAlley[ Index(((P1 *)this)->_2_i, 8) ] = 1;
#ifdef VAR_RANGES
		logval("inAlley[Alley:i]", ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 13 - SafetyAlley.pml:56 - [((((i>=4)&&(mutex==1))&&(counter==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][13] = 1;
		if (!((((((P1 *)this)->_2_i>=4)&&(now.mutex==1))&&(now.counter==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 14 - SafetyAlley.pml:56 - [enter[i] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][14] = 1;
		(trpt+1)->bup.oval = ((int)now.enter[ Index(((P1 *)this)->_2_i, 8) ]);
		now.enter[ Index(((P1 *)this)->_2_i, 8) ] = 0;
#ifdef VAR_RANGES
		logval("enter[Alley:i]", ((int)now.enter[ Index(((P1 *)this)->_2_i, 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: /* STATE 15 - SafetyAlley.pml:57 - [mutex = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][15] = 1;
		(trpt+1)->bup.oval = now.mutex;
		now.mutex = 0;
#ifdef VAR_RANGES
		logval("mutex", now.mutex);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 16 - SafetyAlley.pml:58 - [counter = (counter+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][16] = 1;
		(trpt+1)->bup.oval = now.counter;
		now.counter = (now.counter+1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: /* STATE 17 - SafetyAlley.pml:59 - [inAlley[i] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][17] = 1;
		(trpt+1)->bup.oval = ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 8) ]);
		now.inAlley[ Index(((P1 *)this)->_2_i, 8) ] = 1;
#ifdef VAR_RANGES
		logval("inAlley[Alley:i]", ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: /* STATE 19 - SafetyAlley.pml:62 - [(((i<4)&&(mutexCC==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][19] = 1;
		if (!(((((P1 *)this)->_2_i<4)&&(now.mutexCC==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 24: /* STATE 20 - SafetyAlley.pml:62 - [mutexCC = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][20] = 1;
		(trpt+1)->bup.oval = now.mutexCC;
		now.mutexCC = 0;
#ifdef VAR_RANGES
		logval("mutexCC", now.mutexCC);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: /* STATE 21 - SafetyAlley.pml:64 - [(((counterCC==0)&&(mutex==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][21] = 1;
		if (!(((now.counterCC==0)&&(now.mutex==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: /* STATE 22 - SafetyAlley.pml:64 - [enter[i] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][22] = 1;
		(trpt+1)->bup.oval = ((int)now.enter[ Index(((P1 *)this)->_2_i, 8) ]);
		now.enter[ Index(((P1 *)this)->_2_i, 8) ] = 0;
#ifdef VAR_RANGES
		logval("enter[Alley:i]", ((int)now.enter[ Index(((P1 *)this)->_2_i, 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: /* STATE 23 - SafetyAlley.pml:65 - [counterCC = (counterCC-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][23] = 1;
		(trpt+1)->bup.oval = now.counterCC;
		now.counterCC = (now.counterCC-1);
#ifdef VAR_RANGES
		logval("counterCC", now.counterCC);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: /* STATE 24 - SafetyAlley.pml:66 - [mutex = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][24] = 1;
		(trpt+1)->bup.oval = now.mutex;
		now.mutex = 0;
#ifdef VAR_RANGES
		logval("mutex", now.mutex);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: /* STATE 25 - SafetyAlley.pml:67 - [counter = (counter-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][25] = 1;
		(trpt+1)->bup.oval = now.counter;
		now.counter = (now.counter-1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: /* STATE 26 - SafetyAlley.pml:68 - [inAlley[i] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][26] = 1;
		(trpt+1)->bup.oval = ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 8) ]);
		now.inAlley[ Index(((P1 *)this)->_2_i, 8) ] = 1;
#ifdef VAR_RANGES
		logval("inAlley[Alley:i]", ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: /* STATE 27 - SafetyAlley.pml:70 - [(((counterCC<0)&&(counter<0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][27] = 1;
		if (!(((now.counterCC<0)&&(now.counter<0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: /* STATE 28 - SafetyAlley.pml:70 - [enter[i] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][28] = 1;
		(trpt+1)->bup.oval = ((int)now.enter[ Index(((P1 *)this)->_2_i, 8) ]);
		now.enter[ Index(((P1 *)this)->_2_i, 8) ] = 0;
#ifdef VAR_RANGES
		logval("enter[Alley:i]", ((int)now.enter[ Index(((P1 *)this)->_2_i, 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: /* STATE 29 - SafetyAlley.pml:71 - [counterCC = (counterCC-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][29] = 1;
		(trpt+1)->bup.oval = now.counterCC;
		now.counterCC = (now.counterCC-1);
#ifdef VAR_RANGES
		logval("counterCC", now.counterCC);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: /* STATE 30 - SafetyAlley.pml:72 - [counter = (counter-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][30] = 1;
		(trpt+1)->bup.oval = now.counter;
		now.counter = (now.counter-1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 35: /* STATE 31 - SafetyAlley.pml:73 - [inAlley[i] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][31] = 1;
		(trpt+1)->bup.oval = ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 8) ]);
		now.inAlley[ Index(((P1 *)this)->_2_i, 8) ] = 1;
#ifdef VAR_RANGES
		logval("inAlley[Alley:i]", ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 36: /* STATE 36 - SafetyAlley.pml:76 - [mutexCC = 1] (0:0:1 - 4) */
		IfNotBlocked
		reached[1][36] = 1;
		(trpt+1)->bup.oval = now.mutexCC;
		now.mutexCC = 1;
#ifdef VAR_RANGES
		logval("mutexCC", now.mutexCC);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: /* STATE 40 - SafetyAlley.pml:79 - [(exit[i])] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][40] = 1;
		if (!(((int)now.exit[ Index(((P1 *)this)->_2_i, 8) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 38: /* STATE 41 - SafetyAlley.pml:80 - [((i<4))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][41] = 1;
		if (!((((P1 *)this)->_2_i<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: /* STATE 42 - SafetyAlley.pml:80 - [counter = (counter+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][42] = 1;
		(trpt+1)->bup.oval = now.counter;
		now.counter = (now.counter+1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: /* STATE 43 - SafetyAlley.pml:81 - [counterCC = (counterCC+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][43] = 1;
		(trpt+1)->bup.oval = now.counterCC;
		now.counterCC = (now.counterCC+1);
#ifdef VAR_RANGES
		logval("counterCC", now.counterCC);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 41: /* STATE 44 - SafetyAlley.pml:82 - [((i>=4))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][44] = 1;
		if (!((((P1 *)this)->_2_i>=4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 42: /* STATE 45 - SafetyAlley.pml:82 - [counter = (counter-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][45] = 1;
		(trpt+1)->bup.oval = now.counter;
		now.counter = (now.counter-1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: /* STATE 48 - SafetyAlley.pml:84 - [inAlley[i] = 0] (0:0:1 - 3) */
		IfNotBlocked
		reached[1][48] = 1;
		(trpt+1)->bup.oval = ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 8) ]);
		now.inAlley[ Index(((P1 *)this)->_2_i, 8) ] = 0;
#ifdef VAR_RANGES
		logval("inAlley[Alley:i]", ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 44: /* STATE 49 - SafetyAlley.pml:86 - [((counter==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][49] = 1;
		if (!((now.counter==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 45: /* STATE 50 - SafetyAlley.pml:86 - [mutex = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][50] = 1;
		(trpt+1)->bup.oval = now.mutex;
		now.mutex = 1;
#ifdef VAR_RANGES
		logval("mutex", now.mutex);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: /* STATE 53 - SafetyAlley.pml:88 - [exit[i] = 0] (0:0:1 - 2) */
		IfNotBlocked
		reached[1][53] = 1;
		(trpt+1)->bup.oval = ((int)now.exit[ Index(((P1 *)this)->_2_i, 8) ]);
		now.exit[ Index(((P1 *)this)->_2_i, 8) ] = 0;
#ifdef VAR_RANGES
		logval("exit[Alley:i]", ((int)now.exit[ Index(((P1 *)this)->_2_i, 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 47: /* STATE 58 - SafetyAlley.pml:92 - [assert(((counter>-(5))&&(counter<5)))] (0:0:0 - 12) */
		IfNotBlocked
		reached[1][58] = 1;
		spin_assert(((now.counter> -(5))&&(now.counter<5)), "((counter> -(5))&&(counter<5))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 48: /* STATE 59 - SafetyAlley.pml:93 - [i = ((i+1)%8)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][59] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_i;
		((P1 *)this)->_2_i = ((((P1 *)this)->_2_i+1)%8);
#ifdef VAR_RANGES
		logval("Alley:i", ((P1 *)this)->_2_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: /* STATE 63 - SafetyAlley.pml:95 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][63] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC SafetyAlley */
	case 50: /* STATE 2 - SafetyAlley.pml:22 - [enter[pid] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)now.enter[ Index(((int)((P0 *)this)->_pid), 8) ]);
		now.enter[ Index(((P0 *)this)->_pid, 8) ] = 1;
#ifdef VAR_RANGES
		logval("enter[pid]", ((int)now.enter[ Index(((int)((P0 *)this)->_pid), 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: /* STATE 3 - SafetyAlley.pml:23 - [assert(((counter>-(5))&&(counter<5)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		spin_assert(((now.counter> -(5))&&(now.counter<5)), "((counter> -(5))&&(counter<5))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 52: /* STATE 4 - SafetyAlley.pml:24 - [(inAlley[pid])] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][4] = 1;
		if (!(((int)now.inAlley[ Index(((int)((P0 *)this)->_pid), 8) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: /* STATE 5 - SafetyAlley.pml:27 - [((pid>=4))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((int)((P0 *)this)->_pid)>=4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: /* STATE 6 - SafetyAlley.pml:27 - [assert((((!(inAlley[3])&&!(inAlley[2]))&&!(inAlley[1]))&&!(inAlley[0])))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][6] = 1;
		spin_assert(((( !(((int)now.inAlley[3]))&& !(((int)now.inAlley[2])))&& !(((int)now.inAlley[1])))&& !(((int)now.inAlley[0]))), "((( !(inAlley[3])&& !(inAlley[2]))&& !(inAlley[1]))&& !(inAlley[0]))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 55: /* STATE 7 - SafetyAlley.pml:28 - [assert(((counter>-(5))&&(counter<5)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][7] = 1;
		spin_assert(((now.counter> -(5))&&(now.counter<5)), "((counter> -(5))&&(counter<5))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 56: /* STATE 8 - SafetyAlley.pml:29 - [exit[pid] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.oval = ((int)now.exit[ Index(((int)((P0 *)this)->_pid), 8) ]);
		now.exit[ Index(((P0 *)this)->_pid, 8) ] = 1;
#ifdef VAR_RANGES
		logval("exit[pid]", ((int)now.exit[ Index(((int)((P0 *)this)->_pid), 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 57: /* STATE 9 - SafetyAlley.pml:31 - [((pid<4))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((int)((P0 *)this)->_pid)<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: /* STATE 10 - SafetyAlley.pml:31 - [assert((((!(inAlley[4])&&!(inAlley[5]))&&!(inAlley[6]))&&!(inAlley[7])))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][10] = 1;
		spin_assert(((( !(((int)now.inAlley[4]))&& !(((int)now.inAlley[5])))&& !(((int)now.inAlley[6])))&& !(((int)now.inAlley[7]))), "((( !(inAlley[4])&& !(inAlley[5]))&& !(inAlley[6]))&& !(inAlley[7]))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 59: /* STATE 11 - SafetyAlley.pml:32 - [assert(((counter>-(5))&&(counter<5)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][11] = 1;
		spin_assert(((now.counter> -(5))&&(now.counter<5)), "((counter> -(5))&&(counter<5))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 60: /* STATE 12 - SafetyAlley.pml:33 - [exit[pid] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.oval = ((int)now.exit[ Index(((int)((P0 *)this)->_pid), 8) ]);
		now.exit[ Index(((P0 *)this)->_pid, 8) ] = 1;
#ifdef VAR_RANGES
		logval("exit[pid]", ((int)now.exit[ Index(((int)((P0 *)this)->_pid), 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 61: /* STATE 15 - SafetyAlley.pml:35 - [(!(inAlley[pid]))] (0:0:0 - 3) */
		IfNotBlocked
		reached[0][15] = 1;
		if (!( !(((int)now.inAlley[ Index(((int)((P0 *)this)->_pid), 8) ]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 62: /* STATE 19 - SafetyAlley.pml:37 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][19] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */
	case  _T5:	/* np_ */
		if (!((!(trpt->o_pm&4) && !(trpt->tau&128))))
			continue;
		/* else fall through */
	case  _T2:	/* true */
		_m = 3; goto P999;
#undef rand
	}

