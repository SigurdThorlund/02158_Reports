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

		 /* CLAIM fair1 */
	case 3: /* STATE 1 - _spin_nvr.tmp:3 - [((!(!((SafetyAlley[1]._p==entry)))&&!((SafetyAlley[1]._p==crit))))] (0:0:0 - 1) */
		
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
		if (!(( !( !((((int)((P0 *)Pptr(BASE+1))->_p)==68)))&& !((((int)((P0 *)Pptr(BASE+1))->_p)==77)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 7 - _spin_nvr.tmp:8 - [(!((SafetyAlley[1]._p==crit)))] (0:0:0 - 1) */
		
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
		if (!( !((((int)((P0 *)Pptr(BASE+1))->_p)==77))))
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
	case 6: /* STATE 1 - SafetyAlley.pml:88 - [assert(!(((((inAlley[0]||inAlley[1])||inAlley[2])||inAlley[3])&&(((inAlley[4]||inAlley[5])||inAlley[6])||inAlley[7]))))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][1] = 1;
		spin_assert( !(((((((int)now.inAlley[0])||((int)now.inAlley[1]))||((int)now.inAlley[2]))||((int)now.inAlley[3]))&&(((((int)now.inAlley[4])||((int)now.inAlley[5]))||((int)now.inAlley[6]))||((int)now.inAlley[7])))), " !(((((inAlley[0]||inAlley[1])||inAlley[2])||inAlley[3])&&(((inAlley[4]||inAlley[5])||inAlley[6])||inAlley[7])))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 5 - SafetyAlley.pml:91 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][5] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC SafetyAlley */
	case 8: /* STATE 2 - SafetyAlley.pml:33 - [((pid<4))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)((P0 *)this)->_pid)<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 3 - SafetyAlley.pml:20 - [(wait)] (10:0:1 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		if (!(((int)now.wait)))
			continue;
		/* merge: wait = (wait-1)(0, 4, 10) */
		reached[0][4] = 1;
		(trpt+1)->bup.oval = ((int)now.wait);
		now.wait = (((int)now.wait)-1);
#ifdef VAR_RANGES
		logval("wait", ((int)now.wait));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 10: /* STATE 7 - SafetyAlley.pml:20 - [(edit)] (39:0:1 - 1) */
		IfNotBlocked
		reached[0][7] = 1;
		if (!(((int)now.edit)))
			continue;
		/* merge: edit = (edit-1)(0, 8, 39) */
		reached[0][8] = 1;
		(trpt+1)->bup.oval = ((int)now.edit);
		now.edit = (((int)now.edit)-1);
#ifdef VAR_RANGES
		logval("edit", ((int)now.edit));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 11: /* STATE 11 - SafetyAlley.pml:36 - [((counter<0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][11] = 1;
		if (!((now.counter<0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 12 - SafetyAlley.pml:36 - [counter = (counter-1)] (0:18:2 - 1) */
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.counter;
		now.counter = (now.counter-1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		/* merge: inAlley[pid] = 1(18, 13, 18) */
		reached[0][13] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.inAlley[ Index(((int)((P0 *)this)->_pid), 8) ]);
		now.inAlley[ Index(((P0 *)this)->_pid, 8) ] = 1;
#ifdef VAR_RANGES
		logval("inAlley[pid]", ((int)now.inAlley[ Index(((int)((P0 *)this)->_pid), 8) ]));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 13: /* STATE 15 - SafetyAlley.pml:24 - [assert(!(wait))] (0:73:1 - 1) */
		IfNotBlocked
		reached[0][15] = 1;
		spin_assert( !(((int)now.wait)), " !(wait)", II, tt, t);
		/* merge: wait = (wait+1)(73, 16, 73) */
		reached[0][16] = 1;
		(trpt+1)->bup.oval = ((int)now.wait);
		now.wait = (((int)now.wait)+1);
#ifdef VAR_RANGES
		logval("wait", ((int)now.wait));
#endif
		;
		/* merge: .(goto)(0, 40, 73) */
		reached[0][40] = 1;
		;
		/* merge: .(goto)(0, 69, 73) */
		reached[0][69] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 14: /* STATE 20 - SafetyAlley.pml:24 - [assert(!(edit))] (0:27:1 - 1) */
		IfNotBlocked
		reached[0][20] = 1;
		spin_assert( !(((int)now.edit)), " !(edit)", II, tt, t);
		/* merge: edit = (edit+1)(27, 21, 27) */
		reached[0][21] = 1;
		(trpt+1)->bup.oval = ((int)now.edit);
		now.edit = (((int)now.edit)+1);
#ifdef VAR_RANGES
		logval("edit", ((int)now.edit));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 15: /* STATE 24 - SafetyAlley.pml:20 - [(mutex)] (31:0:1 - 1) */
		IfNotBlocked
		reached[0][24] = 1;
		if (!(((int)now.mutex)))
			continue;
		/* merge: mutex = (mutex-1)(0, 25, 31) */
		reached[0][25] = 1;
		(trpt+1)->bup.oval = ((int)now.mutex);
		now.mutex = (((int)now.mutex)-1);
#ifdef VAR_RANGES
		logval("mutex", ((int)now.mutex));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 16: /* STATE 28 - SafetyAlley.pml:24 - [assert(!(wait))] (0:35:1 - 1) */
		IfNotBlocked
		reached[0][28] = 1;
		spin_assert( !(((int)now.wait)), " !(wait)", II, tt, t);
		/* merge: wait = (wait+1)(35, 29, 35) */
		reached[0][29] = 1;
		(trpt+1)->bup.oval = ((int)now.wait);
		now.wait = (((int)now.wait)+1);
#ifdef VAR_RANGES
		logval("wait", ((int)now.wait));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 17: /* STATE 32 - SafetyAlley.pml:20 - [(edit)] (38:0:1 - 1) */
		IfNotBlocked
		reached[0][32] = 1;
		if (!(((int)now.edit)))
			continue;
		/* merge: edit = (edit-1)(0, 33, 38) */
		reached[0][33] = 1;
		(trpt+1)->bup.oval = ((int)now.edit);
		now.edit = (((int)now.edit)-1);
#ifdef VAR_RANGES
		logval("edit", ((int)now.edit));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 18: /* STATE 36 - SafetyAlley.pml:44 - [counter = (counter-1)] (0:73:2 - 1) */
		IfNotBlocked
		reached[0][36] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.counter;
		now.counter = (now.counter-1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		/* merge: inAlley[pid] = 1(73, 37, 73) */
		reached[0][37] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.inAlley[ Index(((int)((P0 *)this)->_pid), 8) ]);
		now.inAlley[ Index(((P0 *)this)->_pid, 8) ] = 1;
#ifdef VAR_RANGES
		logval("inAlley[pid]", ((int)now.inAlley[ Index(((int)((P0 *)this)->_pid), 8) ]));
#endif
		;
		/* merge: .(goto)(0, 40, 73) */
		reached[0][40] = 1;
		;
		/* merge: .(goto)(0, 69, 73) */
		reached[0][69] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 19: /* STATE 42 - SafetyAlley.pml:20 - [(edit)] (66:0:1 - 1) */
		IfNotBlocked
		reached[0][42] = 1;
		if (!(((int)now.edit)))
			continue;
		/* merge: edit = (edit-1)(0, 43, 66) */
		reached[0][43] = 1;
		(trpt+1)->bup.oval = ((int)now.edit);
		now.edit = (((int)now.edit)-1);
#ifdef VAR_RANGES
		logval("edit", ((int)now.edit));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 20: /* STATE 46 - SafetyAlley.pml:50 - [((counter>0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][46] = 1;
		if (!((now.counter>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 47 - SafetyAlley.pml:50 - [counter = (counter+1)] (0:73:2 - 1) */
		IfNotBlocked
		reached[0][47] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.counter;
		now.counter = (now.counter+1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		/* merge: inAlley[pid] = 1(73, 48, 73) */
		reached[0][48] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.inAlley[ Index(((int)((P0 *)this)->_pid), 8) ]);
		now.inAlley[ Index(((P0 *)this)->_pid, 8) ] = 1;
#ifdef VAR_RANGES
		logval("inAlley[pid]", ((int)now.inAlley[ Index(((int)((P0 *)this)->_pid), 8) ]));
#endif
		;
		/* merge: .(goto)(0, 67, 73) */
		reached[0][67] = 1;
		;
		/* merge: .(goto)(0, 69, 73) */
		reached[0][69] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 22: /* STATE 51 - SafetyAlley.pml:24 - [assert(!(edit))] (0:58:1 - 1) */
		IfNotBlocked
		reached[0][51] = 1;
		spin_assert( !(((int)now.edit)), " !(edit)", II, tt, t);
		/* merge: edit = (edit+1)(58, 52, 58) */
		reached[0][52] = 1;
		(trpt+1)->bup.oval = ((int)now.edit);
		now.edit = (((int)now.edit)+1);
#ifdef VAR_RANGES
		logval("edit", ((int)now.edit));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 23: /* STATE 55 - SafetyAlley.pml:20 - [(mutex)] (62:0:1 - 1) */
		IfNotBlocked
		reached[0][55] = 1;
		if (!(((int)now.mutex)))
			continue;
		/* merge: mutex = (mutex-1)(0, 56, 62) */
		reached[0][56] = 1;
		(trpt+1)->bup.oval = ((int)now.mutex);
		now.mutex = (((int)now.mutex)-1);
#ifdef VAR_RANGES
		logval("mutex", ((int)now.mutex));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 24: /* STATE 59 - SafetyAlley.pml:20 - [(edit)] (65:0:1 - 1) */
		IfNotBlocked
		reached[0][59] = 1;
		if (!(((int)now.edit)))
			continue;
		/* merge: edit = (edit-1)(0, 60, 65) */
		reached[0][60] = 1;
		(trpt+1)->bup.oval = ((int)now.edit);
		now.edit = (((int)now.edit)-1);
#ifdef VAR_RANGES
		logval("edit", ((int)now.edit));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 25: /* STATE 63 - SafetyAlley.pml:56 - [counter = (counter+1)] (0:73:2 - 1) */
		IfNotBlocked
		reached[0][63] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.counter;
		now.counter = (now.counter+1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		/* merge: inAlley[pid] = 1(73, 64, 73) */
		reached[0][64] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.inAlley[ Index(((int)((P0 *)this)->_pid), 8) ]);
		now.inAlley[ Index(((P0 *)this)->_pid, 8) ] = 1;
#ifdef VAR_RANGES
		logval("inAlley[pid]", ((int)now.inAlley[ Index(((int)((P0 *)this)->_pid), 8) ]));
#endif
		;
		/* merge: .(goto)(0, 67, 73) */
		reached[0][67] = 1;
		;
		/* merge: .(goto)(0, 69, 73) */
		reached[0][69] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 26: /* STATE 70 - SafetyAlley.pml:24 - [assert(!(edit))] (0:77:1 - 1) */
		IfNotBlocked
		reached[0][70] = 1;
		spin_assert( !(((int)now.edit)), " !(edit)", II, tt, t);
		/* merge: edit = (edit+1)(77, 71, 77) */
		reached[0][71] = 1;
		(trpt+1)->bup.oval = ((int)now.edit);
		now.edit = (((int)now.edit)+1);
#ifdef VAR_RANGES
		logval("edit", ((int)now.edit));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 27: /* STATE 74 - SafetyAlley.pml:20 - [(edit)] (88:0:1 - 1) */
		IfNotBlocked
		reached[0][74] = 1;
		if (!(((int)now.edit)))
			continue;
		/* merge: edit = (edit-1)(0, 75, 88) */
		reached[0][75] = 1;
		(trpt+1)->bup.oval = ((int)now.edit);
		now.edit = (((int)now.edit)-1);
#ifdef VAR_RANGES
		logval("edit", ((int)now.edit));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 28: /* STATE 78 - SafetyAlley.pml:67 - [((pid<4))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][78] = 1;
		if (!((((int)((P0 *)this)->_pid)<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: /* STATE 79 - SafetyAlley.pml:67 - [counter = (counter+1)] (0:97:3 - 1) */
		IfNotBlocked
		reached[0][79] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.counter;
		now.counter = (now.counter+1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		/* merge: inAlley[pid] = 0(97, 80, 97) */
		reached[0][80] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.inAlley[ Index(((int)((P0 *)this)->_pid), 8) ]);
		now.inAlley[ Index(((P0 *)this)->_pid, 8) ] = 0;
#ifdef VAR_RANGES
		logval("inAlley[pid]", ((int)now.inAlley[ Index(((int)((P0 *)this)->_pid), 8) ]));
#endif
		;
		/* merge: down = (down-1)(97, 81, 97) */
		reached[0][81] = 1;
		(trpt+1)->bup.ovals[2] = down;
		down = (down-1);
#ifdef VAR_RANGES
		logval("down", down);
#endif
		;
		/* merge: .(goto)(0, 89, 97) */
		reached[0][89] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 30: /* STATE 84 - SafetyAlley.pml:68 - [counter = (counter-1)] (0:97:3 - 1) */
		IfNotBlocked
		reached[0][84] = 1;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = now.counter;
		now.counter = (now.counter-1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		/* merge: inAlley[pid] = 0(97, 85, 97) */
		reached[0][85] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.inAlley[ Index(((int)((P0 *)this)->_pid), 8) ]);
		now.inAlley[ Index(((P0 *)this)->_pid, 8) ] = 0;
#ifdef VAR_RANGES
		logval("inAlley[pid]", ((int)now.inAlley[ Index(((int)((P0 *)this)->_pid), 8) ]));
#endif
		;
		/* merge: up = (up-1)(97, 86, 97) */
		reached[0][86] = 1;
		(trpt+1)->bup.ovals[2] = up;
		up = (up-1);
#ifdef VAR_RANGES
		logval("up", up);
#endif
		;
		/* merge: .(goto)(0, 89, 97) */
		reached[0][89] = 1;
		;
		_m = 3; goto P999; /* 3 */
	case 31: /* STATE 90 - SafetyAlley.pml:72 - [((counter==0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][90] = 1;
		if (!((now.counter==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: /* STATE 91 - SafetyAlley.pml:24 - [assert(!(mutex))] (0:102:1 - 1) */
		IfNotBlocked
		reached[0][91] = 1;
		spin_assert( !(((int)now.mutex)), " !(mutex)", II, tt, t);
		/* merge: mutex = (mutex+1)(102, 92, 102) */
		reached[0][92] = 1;
		(trpt+1)->bup.oval = ((int)now.mutex);
		now.mutex = (((int)now.mutex)+1);
#ifdef VAR_RANGES
		logval("mutex", ((int)now.mutex));
#endif
		;
		/* merge: .(goto)(0, 98, 102) */
		reached[0][98] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 33: /* STATE 99 - SafetyAlley.pml:24 - [assert(!(edit))] (0:103:1 - 1) */
		IfNotBlocked
		reached[0][99] = 1;
		spin_assert( !(((int)now.edit)), " !(edit)", II, tt, t);
		/* merge: edit = (edit+1)(103, 100, 103) */
		reached[0][100] = 1;
		(trpt+1)->bup.oval = ((int)now.edit);
		now.edit = (((int)now.edit)+1);
#ifdef VAR_RANGES
		logval("edit", ((int)now.edit));
#endif
		;
		/* merge: .(goto)(0, 104, 103) */
		reached[0][104] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 34: /* STATE 106 - SafetyAlley.pml:79 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][106] = 1;
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

