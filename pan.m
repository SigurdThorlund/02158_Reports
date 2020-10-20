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

		 /* CLAIM fair */
	case 3: /* STATE 1 - _spin_nvr.tmp:3 - [((!(!((SafetyAlley[0]._p==entry)))&&!((SafetyAlley[0]._p==alley))))] (0:0:0 - 1) */
		
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
		if (!(( !( !((((int)((P0 *)Pptr(BASE+0))->_p)==2)))&& !((((int)((P0 *)Pptr(BASE+0))->_p)==16)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 7 - _spin_nvr.tmp:8 - [(!((SafetyAlley[0]._p==alley)))] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported7 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported7)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported7 = 0;
			if (verbose && !reported7)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported7 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][7] = 1;
		if (!( !((((int)((P0 *)Pptr(BASE+0))->_p)==16))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 5: /* STATE 11 - _spin_nvr.tmp:10 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported11)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC EnterExit */
	case 6: /* STATE 1 - SafetyAlley.pml:46 - [(enter[i])] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][1] = 1;
		if (!(((int)now.enter[ Index(((P1 *)this)->_2_i, 8) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 2 - SafetyAlley.pml:47 - [(((mutex==1)&&(counter==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][2] = 1;
		if (!(((now.mutex==1)&&(now.counter==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 3 - SafetyAlley.pml:47 - [mutex = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = now.mutex;
		now.mutex = 0;
#ifdef VAR_RANGES
		logval("mutex", now.mutex);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 4 - SafetyAlley.pml:48 - [inAlley[i] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 8) ]);
		now.inAlley[ Index(((P1 *)this)->_2_i, 8) ] = 1;
#ifdef VAR_RANGES
		logval("inAlley[EnterExit:i]", ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: /* STATE 5 - SafetyAlley.pml:49 - [((((i>3)&&(counter>0))&&(mutex==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][5] = 1;
		if (!((((((P1 *)this)->_2_i>3)&&(now.counter>0))&&(now.mutex==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 6 - SafetyAlley.pml:49 - [inAlley[i] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 8) ]);
		now.inAlley[ Index(((P1 *)this)->_2_i, 8) ] = 1;
#ifdef VAR_RANGES
		logval("inAlley[EnterExit:i]", ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 7 - SafetyAlley.pml:50 - [((((i<4)&&(counter<0))&&(mutex==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][7] = 1;
		if (!((((((P1 *)this)->_2_i<4)&&(now.counter<0))&&(now.mutex==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 13: /* STATE 8 - SafetyAlley.pml:50 - [inAlley[i] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][8] = 1;
		(trpt+1)->bup.oval = ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 8) ]);
		now.inAlley[ Index(((P1 *)this)->_2_i, 8) ] = 1;
#ifdef VAR_RANGES
		logval("inAlley[EnterExit:i]", ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 11 - SafetyAlley.pml:52 - [enter[i] = 0] (0:0:1 - 4) */
		IfNotBlocked
		reached[1][11] = 1;
		(trpt+1)->bup.oval = ((int)now.enter[ Index(((P1 *)this)->_2_i, 8) ]);
		now.enter[ Index(((P1 *)this)->_2_i, 8) ] = 0;
#ifdef VAR_RANGES
		logval("enter[EnterExit:i]", ((int)now.enter[ Index(((P1 *)this)->_2_i, 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 12 - SafetyAlley.pml:53 - [(exit[i])] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][12] = 1;
		if (!(((int)now.exit[ Index(((P1 *)this)->_2_i, 8) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: /* STATE 13 - SafetyAlley.pml:53 - [inAlley[i] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][13] = 1;
		(trpt+1)->bup.oval = ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 8) ]);
		now.inAlley[ Index(((P1 *)this)->_2_i, 8) ] = 0;
#ifdef VAR_RANGES
		logval("inAlley[EnterExit:i]", ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 14 - SafetyAlley.pml:54 - [exit[i] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][14] = 1;
		(trpt+1)->bup.oval = ((int)now.exit[ Index(((P1 *)this)->_2_i, 8) ]);
		now.exit[ Index(((P1 *)this)->_2_i, 8) ] = 0;
#ifdef VAR_RANGES
		logval("exit[EnterExit:i]", ((int)now.exit[ Index(((P1 *)this)->_2_i, 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 15 - SafetyAlley.pml:56 - [((i>3))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][15] = 1;
		if (!((((P1 *)this)->_2_i>3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 16 - SafetyAlley.pml:56 - [counter = (counter-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][16] = 1;
		(trpt+1)->bup.oval = now.counter;
		now.counter = (now.counter-1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: /* STATE 17 - SafetyAlley.pml:57 - [((i<4))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][17] = 1;
		if (!((((P1 *)this)->_2_i<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 18 - SafetyAlley.pml:57 - [counter = (counter+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][18] = 1;
		(trpt+1)->bup.oval = now.counter;
		now.counter = (now.counter+1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: /* STATE 21 - SafetyAlley.pml:60 - [((counter==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][21] = 1;
		if (!((now.counter==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: /* STATE 22 - SafetyAlley.pml:60 - [mutex = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][22] = 1;
		(trpt+1)->bup.oval = now.mutex;
		now.mutex = 1;
#ifdef VAR_RANGES
		logval("mutex", now.mutex);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: /* STATE 23 - SafetyAlley.pml:61 - [(1)] (31:0:1 - 1) */
		IfNotBlocked
		reached[1][23] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(31, 25, 31) */
		reached[1][25] = 1;
		;
		/* merge: .(goto)(31, 29, 31) */
		reached[1][29] = 1;
		;
		/* merge: i = ((i+1)%8)(31, 30, 31) */
		reached[1][30] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_i;
		((P1 *)this)->_2_i = ((((P1 *)this)->_2_i+1)%8);
#ifdef VAR_RANGES
		logval("EnterExit:i", ((P1 *)this)->_2_i);
#endif
		;
		/* merge: .(goto)(0, 32, 31) */
		reached[1][32] = 1;
		;
		_m = 3; goto P999; /* 4 */
	case 25: /* STATE 27 - SafetyAlley.pml:63 - [(1)] (31:0:1 - 1) */
		IfNotBlocked
		reached[1][27] = 1;
		if (!(1))
			continue;
		/* merge: .(goto)(31, 29, 31) */
		reached[1][29] = 1;
		;
		/* merge: i = ((i+1)%8)(31, 30, 31) */
		reached[1][30] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_i;
		((P1 *)this)->_2_i = ((((P1 *)this)->_2_i+1)%8);
#ifdef VAR_RANGES
		logval("EnterExit:i", ((P1 *)this)->_2_i);
#endif
		;
		/* merge: .(goto)(0, 32, 31) */
		reached[1][32] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 26: /* STATE 30 - SafetyAlley.pml:65 - [i = ((i+1)%8)] (0:31:1 - 6) */
		IfNotBlocked
		reached[1][30] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_i;
		((P1 *)this)->_2_i = ((((P1 *)this)->_2_i+1)%8);
#ifdef VAR_RANGES
		logval("EnterExit:i", ((P1 *)this)->_2_i);
#endif
		;
		/* merge: .(goto)(0, 32, 31) */
		reached[1][32] = 1;
		;
		_m = 3; goto P999; /* 1 */
	case 27: /* STATE 34 - SafetyAlley.pml:67 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][34] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC SafetyAlley */
	case 28: /* STATE 2 - SafetyAlley.pml:22 - [enter[pid] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)now.enter[ Index(((int)((P0 *)this)->_pid), 8) ]);
		now.enter[ Index(((P0 *)this)->_pid, 8) ] = 1;
#ifdef VAR_RANGES
		logval("enter[pid]", ((int)now.enter[ Index(((int)((P0 *)this)->_pid), 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: /* STATE 3 - SafetyAlley.pml:23 - [(inAlley[pid])] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		if (!(((int)now.inAlley[ Index(((int)((P0 *)this)->_pid), 8) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 30: /* STATE 4 - SafetyAlley.pml:26 - [((pid>3))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][4] = 1;
		if (!((((int)((P0 *)this)->_pid)>3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 31: /* STATE 5 - SafetyAlley.pml:26 - [counter = (counter+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][5] = 1;
		(trpt+1)->bup.oval = now.counter;
		now.counter = (now.counter+1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: /* STATE 6 - SafetyAlley.pml:27 - [assert(!(inAlley[3]))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][6] = 1;
		spin_assert( !(((int)now.inAlley[3])), " !(inAlley[3])", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 33: /* STATE 7 - SafetyAlley.pml:28 - [assert(!(inAlley[2]))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][7] = 1;
		spin_assert( !(((int)now.inAlley[2])), " !(inAlley[2])", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 34: /* STATE 8 - SafetyAlley.pml:29 - [assert(!(inAlley[1]))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][8] = 1;
		spin_assert( !(((int)now.inAlley[1])), " !(inAlley[1])", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 35: /* STATE 9 - SafetyAlley.pml:30 - [assert(!(inAlley[0]))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][9] = 1;
		spin_assert( !(((int)now.inAlley[0])), " !(inAlley[0])", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 36: /* STATE 10 - SafetyAlley.pml:31 - [((pid<4))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][10] = 1;
		if (!((((int)((P0 *)this)->_pid)<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 37: /* STATE 11 - SafetyAlley.pml:31 - [counter = (counter-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][11] = 1;
		(trpt+1)->bup.oval = now.counter;
		now.counter = (now.counter-1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: /* STATE 12 - SafetyAlley.pml:32 - [assert(!(inAlley[4]))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][12] = 1;
		spin_assert( !(((int)now.inAlley[4])), " !(inAlley[4])", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 39: /* STATE 13 - SafetyAlley.pml:33 - [assert(!(inAlley[5]))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][13] = 1;
		spin_assert( !(((int)now.inAlley[5])), " !(inAlley[5])", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 40: /* STATE 14 - SafetyAlley.pml:34 - [assert(!(inAlley[6]))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][14] = 1;
		spin_assert( !(((int)now.inAlley[6])), " !(inAlley[6])", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 41: /* STATE 15 - SafetyAlley.pml:35 - [assert(!(inAlley[7]))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][15] = 1;
		spin_assert( !(((int)now.inAlley[7])), " !(inAlley[7])", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 42: /* STATE 18 - SafetyAlley.pml:37 - [exit[pid] = 1] (0:0:1 - 3) */
		IfNotBlocked
		reached[0][18] = 1;
		(trpt+1)->bup.oval = ((int)now.exit[ Index(((int)((P0 *)this)->_pid), 8) ]);
		now.exit[ Index(((P0 *)this)->_pid, 8) ] = 1;
#ifdef VAR_RANGES
		logval("exit[pid]", ((int)now.exit[ Index(((int)((P0 *)this)->_pid), 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: /* STATE 22 - SafetyAlley.pml:39 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][22] = 1;
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

