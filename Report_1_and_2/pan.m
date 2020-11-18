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

		 /* PROC SafetyCheck */
	case 3: /* STATE 1 - SafetyAlley.pml:76 - [assert(!(((((inAlley[0]||inAlley[1])||inAlley[2])||inAlley[3])&&(((inAlley[4]||inAlley[5])||inAlley[6])||inAlley[7]))))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][1] = 1;
		spin_assert( !(((((((int)now.inAlley[0])||((int)now.inAlley[1]))||((int)now.inAlley[2]))||((int)now.inAlley[3]))&&(((((int)now.inAlley[4])||((int)now.inAlley[5]))||((int)now.inAlley[6]))||((int)now.inAlley[7])))), " !(((((inAlley[0]||inAlley[1])||inAlley[2])||inAlley[3])&&(((inAlley[4]||inAlley[5])||inAlley[6])||inAlley[7])))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 5 - SafetyAlley.pml:79 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][5] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC SafetyAlley */
	case 5: /* STATE 2 - SafetyAlley.pml:30 - [((pid<4))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		if (!((((int)((P0 *)this)->_pid)<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: /* STATE 3 - SafetyAlley.pml:17 - [(wait)] (10:0:1 - 1) */
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
	case 7: /* STATE 7 - SafetyAlley.pml:17 - [(edit)] (39:0:1 - 1) */
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
	case 8: /* STATE 11 - SafetyAlley.pml:33 - [((counter<0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][11] = 1;
		if (!((now.counter<0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 12 - SafetyAlley.pml:33 - [counter = (counter-1)] (0:18:2 - 1) */
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
	case 10: /* STATE 15 - SafetyAlley.pml:21 - [assert(!(wait))] (0:73:1 - 1) */
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
	case 11: /* STATE 20 - SafetyAlley.pml:21 - [assert(!(edit))] (0:27:1 - 1) */
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
	case 12: /* STATE 24 - SafetyAlley.pml:17 - [(mutex)] (31:0:1 - 1) */
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
	case 13: /* STATE 28 - SafetyAlley.pml:21 - [assert(!(wait))] (0:35:1 - 1) */
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
	case 14: /* STATE 32 - SafetyAlley.pml:17 - [(edit)] (38:0:1 - 1) */
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
	case 15: /* STATE 36 - SafetyAlley.pml:41 - [counter = (counter-1)] (0:73:2 - 1) */
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
	case 16: /* STATE 42 - SafetyAlley.pml:17 - [(edit)] (66:0:1 - 1) */
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
	case 17: /* STATE 46 - SafetyAlley.pml:47 - [((counter>0))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][46] = 1;
		if (!((now.counter>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 47 - SafetyAlley.pml:47 - [counter = (counter+1)] (0:73:2 - 1) */
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
	case 19: /* STATE 51 - SafetyAlley.pml:21 - [assert(!(edit))] (0:58:1 - 1) */
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
	case 20: /* STATE 55 - SafetyAlley.pml:17 - [(mutex)] (62:0:1 - 1) */
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
	case 21: /* STATE 59 - SafetyAlley.pml:17 - [(edit)] (65:0:1 - 1) */
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
	case 22: /* STATE 63 - SafetyAlley.pml:53 - [counter = (counter+1)] (0:73:2 - 1) */
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
	case 23: /* STATE 70 - SafetyAlley.pml:21 - [assert(!(edit))] (0:77:1 - 1) */
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
	case 24: /* STATE 74 - SafetyAlley.pml:17 - [(edit)] (86:0:1 - 1) */
		IfNotBlocked
		reached[0][74] = 1;
		if (!(((int)now.edit)))
			continue;
		/* merge: edit = (edit-1)(0, 75, 86) */
		reached[0][75] = 1;
		(trpt+1)->bup.oval = ((int)now.edit);
		now.edit = (((int)now.edit)-1);
#ifdef VAR_RANGES
		logval("edit", ((int)now.edit));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 25: /* STATE 78 - SafetyAlley.pml:64 - [((pid<4))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][78] = 1;
		if (!((((int)((P0 *)this)->_pid)<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 26: /* STATE 79 - SafetyAlley.pml:64 - [counter = (counter+1)] (0:88:2 - 1) */
		IfNotBlocked
		reached[0][79] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.counter;
		now.counter = (now.counter+1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		/* merge: inAlley[pid] = 0(88, 80, 88) */
		reached[0][80] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.inAlley[ Index(((int)((P0 *)this)->_pid), 8) ]);
		now.inAlley[ Index(((P0 *)this)->_pid, 8) ] = 0;
#ifdef VAR_RANGES
		logval("inAlley[pid]", ((int)now.inAlley[ Index(((int)((P0 *)this)->_pid), 8) ]));
#endif
		;
		/* merge: .(goto)(0, 87, 88) */
		reached[0][87] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 27: /* STATE 83 - SafetyAlley.pml:65 - [counter = (counter-1)] (0:88:2 - 1) */
		IfNotBlocked
		reached[0][83] = 1;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = now.counter;
		now.counter = (now.counter-1);
#ifdef VAR_RANGES
		logval("counter", now.counter);
#endif
		;
		/* merge: inAlley[pid] = 0(88, 84, 88) */
		reached[0][84] = 1;
		(trpt+1)->bup.ovals[1] = ((int)now.inAlley[ Index(((int)((P0 *)this)->_pid), 8) ]);
		now.inAlley[ Index(((P0 *)this)->_pid, 8) ] = 0;
#ifdef VAR_RANGES
		logval("inAlley[pid]", ((int)now.inAlley[ Index(((int)((P0 *)this)->_pid), 8) ]));
#endif
		;
		/* merge: .(goto)(0, 87, 88) */
		reached[0][87] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 28: /* STATE 88 - SafetyAlley.pml:67 - [((counter==0))] (0:0:0 - 3) */
		IfNotBlocked
		reached[0][88] = 1;
		if (!((now.counter==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: /* STATE 89 - SafetyAlley.pml:21 - [assert(!(mutex))] (0:96:1 - 1) */
		IfNotBlocked
		reached[0][89] = 1;
		spin_assert( !(((int)now.mutex)), " !(mutex)", II, tt, t);
		/* merge: mutex = (mutex+1)(96, 90, 96) */
		reached[0][90] = 1;
		(trpt+1)->bup.oval = ((int)now.mutex);
		now.mutex = (((int)now.mutex)+1);
#ifdef VAR_RANGES
		logval("mutex", ((int)now.mutex));
#endif
		;
		_m = 3; goto P999; /* 1 */
	case 30: /* STATE 93 - SafetyAlley.pml:21 - [assert(!(edit))] (0:97:1 - 1) */
		IfNotBlocked
		reached[0][93] = 1;
		spin_assert( !(((int)now.edit)), " !(edit)", II, tt, t);
		/* merge: edit = (edit+1)(97, 94, 97) */
		reached[0][94] = 1;
		(trpt+1)->bup.oval = ((int)now.edit);
		now.edit = (((int)now.edit)+1);
#ifdef VAR_RANGES
		logval("edit", ((int)now.edit));
#endif
		;
		/* merge: .(goto)(0, 98, 97) */
		reached[0][98] = 1;
		;
		_m = 3; goto P999; /* 2 */
	case 31: /* STATE 100 - SafetyAlley.pml:70 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][100] = 1;
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

