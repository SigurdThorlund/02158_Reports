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
	case 3: /* STATE 1 - _spin_nvr.tmp:3 - [((!(!((SafetyAlley[0]._p==enter)))&&!((SafetyAlley[0]._p==leave))))] (0:0:0 - 1) */
		
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
		reached[1][1] = 1;
		if (!(( !( !((((int)((P0 *)Pptr(BASE+0))->_p)==52)))&& !((((int)((P0 *)Pptr(BASE+0))->_p)==60)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 7 - _spin_nvr.tmp:8 - [(!((SafetyAlley[0]._p==leave)))] (0:0:0 - 1) */
		
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
		reached[1][7] = 1;
		if (!( !((((int)((P0 *)Pptr(BASE+0))->_p)==60))))
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
		reached[1][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC SafetyAlley */
	case 6: /* STATE 2 - SafetyAlley.pml:30 - [((pid<4))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)((P0 *)this)->_pid)<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 3 - SafetyAlley.pml:17 - [((wait>0))] (10:0:1 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		if (!((now.wait>0)))
			continue;
		/* merge: wait = (wait-1)(0, 4, 10) */
		reached[0][4] = 1;
		(trpt+1)->bup.oval = now.wait;
		now.wait = (now.wait-1);
#ifdef VAR_RANGES
		logval("wait", now.wait);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 8: /* STATE 7 - SafetyAlley.pml:17 - [((edit>0))] (29:0:1 - 1) */
		IfNotBlocked
		reached[0][7] = 1;
		if (!((now.edit>0)))
			continue;
		/* merge: edit = (edit-1)(0, 8, 29) */
		reached[0][8] = 1;
		(trpt+1)->bup.oval = now.edit;
		now.edit = (now.edit-1);
#ifdef VAR_RANGES
		logval("edit", now.edit);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 9: /* STATE 11 - SafetyAlley.pml:33 - [((counter<0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][11] = 1;
		if (!((now.counter<0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 10: /* STATE 12 - SafetyAlley.pml:33 - [counter = (counter-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.oval = now.counter;
		now.counter = (now.counter-1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 13 - SafetyAlley.pml:21 - [wait = (wait+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][13] = 1;
		(trpt+1)->bup.oval = now.wait;
		now.wait = (now.wait+1);
#ifdef VAR_RANGES
		logval("wait", now.wait);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 16 - SafetyAlley.pml:21 - [edit = (edit+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][16] = 1;
		(trpt+1)->bup.oval = now.edit;
		now.edit = (now.edit+1);
#ifdef VAR_RANGES
		logval("edit", now.edit);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: /* STATE 18 - SafetyAlley.pml:17 - [((mutex>0))] (23:0:1 - 1) */
		IfNotBlocked
		reached[0][18] = 1;
		if (!((now.mutex>0)))
			continue;
		/* merge: mutex = (mutex-1)(0, 19, 23) */
		reached[0][19] = 1;
		(trpt+1)->bup.oval = now.mutex;
		now.mutex = (now.mutex-1);
#ifdef VAR_RANGES
		logval("mutex", now.mutex);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 14: /* STATE 22 - SafetyAlley.pml:21 - [wait = (wait+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][22] = 1;
		(trpt+1)->bup.oval = now.wait;
		now.wait = (now.wait+1);
#ifdef VAR_RANGES
		logval("wait", now.wait);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 24 - SafetyAlley.pml:17 - [((edit>0))] (28:0:1 - 1) */
		IfNotBlocked
		reached[0][24] = 1;
		if (!((now.edit>0)))
			continue;
		/* merge: edit = (edit-1)(0, 25, 28) */
		reached[0][25] = 1;
		(trpt+1)->bup.oval = now.edit;
		now.edit = (now.edit-1);
#ifdef VAR_RANGES
		logval("edit", now.edit);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 16: /* STATE 28 - SafetyAlley.pml:40 - [counter = (counter-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][28] = 1;
		(trpt+1)->bup.oval = now.counter;
		now.counter = (now.counter-1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 32 - SafetyAlley.pml:17 - [((edit>0))] (50:0:1 - 1) */
		IfNotBlocked
		reached[0][32] = 1;
		if (!((now.edit>0)))
			continue;
		/* merge: edit = (edit-1)(0, 33, 50) */
		reached[0][33] = 1;
		(trpt+1)->bup.oval = now.edit;
		now.edit = (now.edit-1);
#ifdef VAR_RANGES
		logval("edit", now.edit);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 18: /* STATE 36 - SafetyAlley.pml:44 - [((counter>0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][36] = 1;
		if (!((now.counter>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 37 - SafetyAlley.pml:44 - [counter = (counter+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][37] = 1;
		(trpt+1)->bup.oval = now.counter;
		now.counter = (now.counter+1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: /* STATE 39 - SafetyAlley.pml:21 - [edit = (edit+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][39] = 1;
		(trpt+1)->bup.oval = now.edit;
		now.edit = (now.edit+1);
#ifdef VAR_RANGES
		logval("edit", now.edit);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 41 - SafetyAlley.pml:17 - [((mutex>0))] (48:0:1 - 1) */
		IfNotBlocked
		reached[0][41] = 1;
		if (!((now.mutex>0)))
			continue;
		/* merge: mutex = (mutex-1)(0, 42, 48) */
		reached[0][42] = 1;
		(trpt+1)->bup.oval = now.mutex;
		now.mutex = (now.mutex-1);
#ifdef VAR_RANGES
		logval("mutex", now.mutex);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 22: /* STATE 45 - SafetyAlley.pml:17 - [((edit>0))] (49:0:1 - 1) */
		IfNotBlocked
		reached[0][45] = 1;
		if (!((now.edit>0)))
			continue;
		/* merge: edit = (edit-1)(0, 46, 49) */
		reached[0][46] = 1;
		(trpt+1)->bup.oval = now.edit;
		now.edit = (now.edit-1);
#ifdef VAR_RANGES
		logval("edit", now.edit);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 23: /* STATE 49 - SafetyAlley.pml:49 - [counter = (counter+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][49] = 1;
		(trpt+1)->bup.oval = now.counter;
		now.counter = (now.counter+1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: /* STATE 54 - SafetyAlley.pml:52 - [inAlley[pid] = 1] (0:0:1 - 7) */
		IfNotBlocked
		reached[0][54] = 1;
		(trpt+1)->bup.oval = ((int)inAlley[ Index(((int)((P0 *)this)->_pid), 8) ]);
		inAlley[ Index(((P0 *)this)->_pid, 8) ] = 1;
#ifdef VAR_RANGES
		logval("inAlley[pid]", ((int)inAlley[ Index(((int)((P0 *)this)->_pid), 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: /* STATE 55 - SafetyAlley.pml:21 - [edit = (edit+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][55] = 1;
		(trpt+1)->bup.oval = now.edit;
		now.edit = (now.edit+1);
#ifdef VAR_RANGES
		logval("edit", now.edit);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: /* STATE 57 - SafetyAlley.pml:17 - [((edit>0))] (65:0:1 - 1) */
		IfNotBlocked
		reached[0][57] = 1;
		if (!((now.edit>0)))
			continue;
		/* merge: edit = (edit-1)(0, 58, 65) */
		reached[0][58] = 1;
		(trpt+1)->bup.oval = now.edit;
		now.edit = (now.edit-1);
#ifdef VAR_RANGES
		logval("edit", now.edit);
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 27: /* STATE 61 - SafetyAlley.pml:59 - [((pid<4))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][61] = 1;
		if (!((((int)((P0 *)this)->_pid)<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: /* STATE 62 - SafetyAlley.pml:59 - [counter = (counter+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][62] = 1;
		(trpt+1)->bup.oval = now.counter;
		now.counter = (now.counter+1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 29: /* STATE 64 - SafetyAlley.pml:60 - [counter = (counter-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][64] = 1;
		(trpt+1)->bup.oval = now.counter;
		now.counter = (now.counter-1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: /* STATE 67 - SafetyAlley.pml:62 - [inAlley[pid] = 0] (0:0:1 - 3) */
		IfNotBlocked
		reached[0][67] = 1;
		(trpt+1)->bup.oval = ((int)inAlley[ Index(((int)((P0 *)this)->_pid), 8) ]);
		inAlley[ Index(((P0 *)this)->_pid, 8) ] = 0;
#ifdef VAR_RANGES
		logval("inAlley[pid]", ((int)inAlley[ Index(((int)((P0 *)this)->_pid), 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: /* STATE 68 - SafetyAlley.pml:63 - [((counter==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][68] = 1;
		if (!((now.counter==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: /* STATE 69 - SafetyAlley.pml:21 - [mutex = (mutex+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][69] = 1;
		(trpt+1)->bup.oval = now.mutex;
		now.mutex = (now.mutex+1);
#ifdef VAR_RANGES
		logval("mutex", now.mutex);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: /* STATE 71 - SafetyAlley.pml:21 - [edit = (edit+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][71] = 1;
		(trpt+1)->bup.oval = now.edit;
		now.edit = (now.edit+1);
#ifdef VAR_RANGES
		logval("edit", now.edit);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: /* STATE 76 - SafetyAlley.pml:66 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][76] = 1;
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

