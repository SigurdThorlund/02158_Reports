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

		 /* CLAIM res */
	case 3: /* STATE 1 - _spin_nvr.tmp:3 - [((!(!(((((((((SafetyAlley[0]._p==entry)||(SafetyAlley[1]._p==entry))||(SafetyAlley[2]._p==entry))||(SafetyAlley[3]._p==entry))||(SafetyAlley[4]._p==entry))||(SafetyAlley[5]._p==entry))||(SafetyAlley[6]._p==entry))||(SafetyAlley[7]._p==entry))))&&!(((((((((SafetyAlley[0]._p==crit)||(SafetyAlley[1]._p==crit))||(SafetyAlley[2]._p==crit))||(SafetyAlley[3]._p==crit))||(SafetyAlley[4]._p==crit))||(SafetyAlley[5]._p==crit))||(SafetyAlley[6]._p==crit))||(SafetyAlley[7]._p==crit)))))] (0:0:0 - 1) */
		
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
		if (!(( !( !(((((((((((int)((P0 *)Pptr(BASE+0))->_p)==61)||(((int)((P0 *)Pptr(BASE+1))->_p)==61))||(((int)((P0 *)Pptr(BASE+2))->_p)==61))||(((int)((P0 *)Pptr(BASE+3))->_p)==61))||(((int)((P0 *)Pptr(BASE+4))->_p)==61))||(((int)((P0 *)Pptr(BASE+5))->_p)==61))||(((int)((P0 *)Pptr(BASE+6))->_p)==61))||(((int)((P0 *)Pptr(BASE+7))->_p)==61))))&& !(((((((((((int)((P0 *)Pptr(BASE+0))->_p)==70)||(((int)((P0 *)Pptr(BASE+1))->_p)==70))||(((int)((P0 *)Pptr(BASE+2))->_p)==70))||(((int)((P0 *)Pptr(BASE+3))->_p)==70))||(((int)((P0 *)Pptr(BASE+4))->_p)==70))||(((int)((P0 *)Pptr(BASE+5))->_p)==70))||(((int)((P0 *)Pptr(BASE+6))->_p)==70))||(((int)((P0 *)Pptr(BASE+7))->_p)==70))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 7 - _spin_nvr.tmp:8 - [(!(((((((((SafetyAlley[0]._p==crit)||(SafetyAlley[1]._p==crit))||(SafetyAlley[2]._p==crit))||(SafetyAlley[3]._p==crit))||(SafetyAlley[4]._p==crit))||(SafetyAlley[5]._p==crit))||(SafetyAlley[6]._p==crit))||(SafetyAlley[7]._p==crit))))] (0:0:0 - 1) */
		
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
		if (!( !(((((((((((int)((P0 *)Pptr(BASE+0))->_p)==70)||(((int)((P0 *)Pptr(BASE+1))->_p)==70))||(((int)((P0 *)Pptr(BASE+2))->_p)==70))||(((int)((P0 *)Pptr(BASE+3))->_p)==70))||(((int)((P0 *)Pptr(BASE+4))->_p)==70))||(((int)((P0 *)Pptr(BASE+5))->_p)==70))||(((int)((P0 *)Pptr(BASE+6))->_p)==70))||(((int)((P0 *)Pptr(BASE+7))->_p)==70)))))
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

		 /* PROC SafetyCheck */
	case 6: /* STATE 1 - SafetyAlley.pml:74 - [assert(!((((((SafetyAlley[0]._p==crit)||(SafetyAlley[1]._p==crit))||(SafetyAlley[2]._p==crit))||(SafetyAlley[3]._p==crit))&&((((SafetyAlley[4]._p==crit)||(SafetyAlley[5]._p==crit))||(SafetyAlley[6]._p==crit))||(SafetyAlley[7]._p==crit)))))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][1] = 1;
		spin_assert( !((((((((int)((P0 *)Pptr(BASE+0))->_p)==70)||(((int)((P0 *)Pptr(BASE+1))->_p)==70))||(((int)((P0 *)Pptr(BASE+2))->_p)==70))||(((int)((P0 *)Pptr(BASE+3))->_p)==70))&&((((((int)((P0 *)Pptr(BASE+4))->_p)==70)||(((int)((P0 *)Pptr(BASE+5))->_p)==70))||(((int)((P0 *)Pptr(BASE+6))->_p)==70))||(((int)((P0 *)Pptr(BASE+7))->_p)==70)))), " !((((((SafetyAlley[0]._p==crit)||(SafetyAlley[1]._p==crit))||(SafetyAlley[2]._p==crit))||(SafetyAlley[3]._p==crit))&&((((SafetyAlley[4]._p==crit)||(SafetyAlley[5]._p==crit))||(SafetyAlley[6]._p==crit))||(SafetyAlley[7]._p==crit))))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 5 - SafetyAlley.pml:77 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][5] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC SafetyAlley */
	case 8: /* STATE 3 - SafetyAlley.pml:27 - [((pid<4))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		if (!((((int)((P0 *)this)->_pid)<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 4 - SafetyAlley.pml:14 - [(wait)] (11:0:1 - 1) */
		IfNotBlocked
		reached[0][4] = 1;
		if (!(((int)now.wait)))
			continue;
		/* merge: wait = (wait-1)(0, 5, 11) */
		reached[0][5] = 1;
		(trpt+1)->bup.oval = ((int)now.wait);
		now.wait = (((int)now.wait)-1);
#ifdef VAR_RANGES
		logval("wait", ((int)now.wait));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 10: /* STATE 8 - SafetyAlley.pml:14 - [(edit)] (36:0:1 - 1) */
		IfNotBlocked
		reached[0][8] = 1;
		if (!(((int)now.edit)))
			continue;
		/* merge: edit = (edit-1)(0, 9, 36) */
		reached[0][9] = 1;
		(trpt+1)->bup.oval = ((int)now.edit);
		now.edit = (((int)now.edit)-1);
#ifdef VAR_RANGES
		logval("edit", ((int)now.edit));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 11: /* STATE 12 - SafetyAlley.pml:30 - [((counter<0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][12] = 1;
		if (!((now.counter<0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 13 - SafetyAlley.pml:30 - [counter = (counter-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.oval = now.counter;
		now.counter = (now.counter-1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: /* STATE 14 - SafetyAlley.pml:18 - [assert(!(wait))] (0:66:1 - 1) */
		IfNotBlocked
		reached[0][14] = 1;
		spin_assert( !(((int)now.wait)), " !(wait)", II, tt, t);
		/* merge: wait = (wait+1)(66, 15, 66) */
		reached[0][15] = 1;
		(trpt+1)->bup.oval = ((int)now.wait);
		now.wait = (((int)now.wait)+1);
#ifdef VAR_RANGES
		logval("wait", ((int)now.wait));
#endif
		;
		/* merge: .(goto)(0, 37, 66) */
		reached[0][37] = 1;
		;
		/* merge: .(goto)(0, 62, 66) */
		reached[0][62] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 14: /* STATE 19 - SafetyAlley.pml:18 - [assert(!(edit))] (0:26:1 - 1) */
		IfNotBlocked
		reached[0][19] = 1;
		spin_assert( !(((int)now.edit)), " !(edit)", II, tt, t);
		/* merge: edit = (edit+1)(26, 20, 26) */
		reached[0][20] = 1;
		(trpt+1)->bup.oval = ((int)now.edit);
		now.edit = (((int)now.edit)+1);
#ifdef VAR_RANGES
		logval("edit", ((int)now.edit));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 15: /* STATE 23 - SafetyAlley.pml:14 - [(mutex)] (30:0:1 - 1) */
		IfNotBlocked
		reached[0][23] = 1;
		if (!(((int)now.mutex)))
			continue;
		/* merge: mutex = (mutex-1)(0, 24, 30) */
		reached[0][24] = 1;
		(trpt+1)->bup.oval = ((int)now.mutex);
		now.mutex = (((int)now.mutex)-1);
#ifdef VAR_RANGES
		logval("mutex", ((int)now.mutex));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 16: /* STATE 27 - SafetyAlley.pml:18 - [assert(!(wait))] (0:34:1 - 1) */
		IfNotBlocked
		reached[0][27] = 1;
		spin_assert( !(((int)now.wait)), " !(wait)", II, tt, t);
		/* merge: wait = (wait+1)(34, 28, 34) */
		reached[0][28] = 1;
		(trpt+1)->bup.oval = ((int)now.wait);
		now.wait = (((int)now.wait)+1);
#ifdef VAR_RANGES
		logval("wait", ((int)now.wait));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 17: /* STATE 31 - SafetyAlley.pml:14 - [(edit)] (35:0:1 - 1) */
		IfNotBlocked
		reached[0][31] = 1;
		if (!(((int)now.edit)))
			continue;
		/* merge: edit = (edit-1)(0, 32, 35) */
		reached[0][32] = 1;
		(trpt+1)->bup.oval = ((int)now.edit);
		now.edit = (((int)now.edit)-1);
#ifdef VAR_RANGES
		logval("edit", ((int)now.edit));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 18: /* STATE 35 - SafetyAlley.pml:37 - [counter = (counter-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][35] = 1;
		(trpt+1)->bup.oval = now.counter;
		now.counter = (now.counter-1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 39 - SafetyAlley.pml:14 - [(edit)] (59:0:1 - 1) */
		IfNotBlocked
		reached[0][39] = 1;
		if (!(((int)now.edit)))
			continue;
		/* merge: edit = (edit-1)(0, 40, 59) */
		reached[0][40] = 1;
		(trpt+1)->bup.oval = ((int)now.edit);
		now.edit = (((int)now.edit)-1);
#ifdef VAR_RANGES
		logval("edit", ((int)now.edit));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 20: /* STATE 43 - SafetyAlley.pml:41 - [((counter>0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][43] = 1;
		if (!((now.counter>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 44 - SafetyAlley.pml:41 - [counter = (counter+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][44] = 1;
		(trpt+1)->bup.oval = now.counter;
		now.counter = (now.counter+1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: /* STATE 46 - SafetyAlley.pml:18 - [assert(!(edit))] (0:53:1 - 1) */
		IfNotBlocked
		reached[0][46] = 1;
		spin_assert( !(((int)now.edit)), " !(edit)", II, tt, t);
		/* merge: edit = (edit+1)(53, 47, 53) */
		reached[0][47] = 1;
		(trpt+1)->bup.oval = ((int)now.edit);
		now.edit = (((int)now.edit)+1);
#ifdef VAR_RANGES
		logval("edit", ((int)now.edit));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 23: /* STATE 50 - SafetyAlley.pml:14 - [(mutex)] (57:0:1 - 1) */
		IfNotBlocked
		reached[0][50] = 1;
		if (!(((int)now.mutex)))
			continue;
		/* merge: mutex = (mutex-1)(0, 51, 57) */
		reached[0][51] = 1;
		(trpt+1)->bup.oval = ((int)now.mutex);
		now.mutex = (((int)now.mutex)-1);
#ifdef VAR_RANGES
		logval("mutex", ((int)now.mutex));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 24: /* STATE 54 - SafetyAlley.pml:14 - [(edit)] (58:0:1 - 1) */
		IfNotBlocked
		reached[0][54] = 1;
		if (!(((int)now.edit)))
			continue;
		/* merge: edit = (edit-1)(0, 55, 58) */
		reached[0][55] = 1;
		(trpt+1)->bup.oval = ((int)now.edit);
		now.edit = (((int)now.edit)-1);
#ifdef VAR_RANGES
		logval("edit", ((int)now.edit));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 25: /* STATE 58 - SafetyAlley.pml:46 - [counter = (counter+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][58] = 1;
		(trpt+1)->bup.oval = now.counter;
		now.counter = (now.counter+1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: /* STATE 63 - SafetyAlley.pml:18 - [assert(!(edit))] (0:70:1 - 1) */
		IfNotBlocked
		reached[0][63] = 1;
		spin_assert( !(((int)now.edit)), " !(edit)", II, tt, t);
		/* merge: edit = (edit+1)(70, 64, 70) */
		reached[0][64] = 1;
		(trpt+1)->bup.oval = ((int)now.edit);
		now.edit = (((int)now.edit)+1);
#ifdef VAR_RANGES
		logval("edit", ((int)now.edit));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 27: /* STATE 67 - SafetyAlley.pml:14 - [(edit)] (75:0:1 - 1) */
		IfNotBlocked
		reached[0][67] = 1;
		if (!(((int)now.edit)))
			continue;
		/* merge: edit = (edit-1)(0, 68, 75) */
		reached[0][68] = 1;
		(trpt+1)->bup.oval = ((int)now.edit);
		now.edit = (((int)now.edit)-1);
#ifdef VAR_RANGES
		logval("edit", ((int)now.edit));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 28: /* STATE 71 - SafetyAlley.pml:55 - [((pid<4))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][71] = 1;
		if (!((((int)((P0 *)this)->_pid)<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: /* STATE 72 - SafetyAlley.pml:55 - [counter = (counter+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][72] = 1;
		(trpt+1)->bup.oval = now.counter;
		now.counter = (now.counter+1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: /* STATE 74 - SafetyAlley.pml:56 - [counter = (counter-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][74] = 1;
		(trpt+1)->bup.oval = now.counter;
		now.counter = (now.counter-1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: /* STATE 77 - SafetyAlley.pml:60 - [((counter==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][77] = 1;
		if (!((now.counter==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: /* STATE 78 - SafetyAlley.pml:18 - [assert(!(mutex))] (0:89:1 - 1) */
		IfNotBlocked
		reached[0][78] = 1;
		spin_assert( !(((int)now.mutex)), " !(mutex)", II, tt, t);
		/* merge: mutex = (mutex+1)(89, 79, 89) */
		reached[0][79] = 1;
		(trpt+1)->bup.oval = ((int)now.mutex);
		now.mutex = (((int)now.mutex)+1);
#ifdef VAR_RANGES
		logval("mutex", ((int)now.mutex));
#endif
		;
		/* merge: .(goto)(0, 85, 89) */
		reached[0][85] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 33: /* STATE 86 - SafetyAlley.pml:18 - [assert(!(edit))] (0:90:1 - 1) */
		IfNotBlocked
		reached[0][86] = 1;
		spin_assert( !(((int)now.edit)), " !(edit)", II, tt, t);
		/* merge: edit = (edit+1)(90, 87, 90) */
		reached[0][87] = 1;
		(trpt+1)->bup.oval = ((int)now.edit);
		now.edit = (((int)now.edit)+1);
#ifdef VAR_RANGES
		logval("edit", ((int)now.edit));
#endif
		;
		/* merge: .(goto)(0, 91, 90) */
		reached[0][91] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 34: /* STATE 93 - SafetyAlley.pml:67 - [-end-] (0:0:0 - 2) */
		IfNotBlocked
		reached[0][93] = 1;
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

