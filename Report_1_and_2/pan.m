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

		 /* CLAIM nocrash */
	case 3: /* STATE 1 - _spin_nvr.tmp:3 - [(!((!(inAlley[0])||!(inAlley[3]))))] (0:0:0 - 1) */
		
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
		if (!( !(( !(((int)now.inAlley[0]))|| !(((int)now.inAlley[3]))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: /* STATE 8 - _spin_nvr.tmp:8 - [-end-] (0:0:0 - 1) */
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported8 = 0; int nn = (int) ((Pclaim *)this)->_n;
			if (verbose && !reported8)
			{	printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#else
{	static int reported8 = 0;
			if (verbose && !reported8)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)this)->_p, src_claim[ (int) ((Pclaim *)this)->_p ]);
				reported8 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][8] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Alley */
	case 5: /* STATE 1 - SafetyAlley4Cars.pml:44 - [(enter[i])] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][1] = 1;
		if (!(((int)now.enter[ Index(((P1 *)this)->_2_i, 4) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: /* STATE 2 - SafetyAlley4Cars.pml:45 - [((((i<2)&&(co<0))&&(mutex==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][2] = 1;
		if (!((((((P1 *)this)->_2_i<2)&&(now.co<0))&&(now.mutex==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 7: /* STATE 3 - SafetyAlley4Cars.pml:45 - [enter[i] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][3] = 1;
		(trpt+1)->bup.oval = ((int)now.enter[ Index(((P1 *)this)->_2_i, 4) ]);
		now.enter[ Index(((P1 *)this)->_2_i, 4) ] = 0;
#ifdef VAR_RANGES
		logval("enter[Alley:i]", ((int)now.enter[ Index(((P1 *)this)->_2_i, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 8: /* STATE 4 - SafetyAlley4Cars.pml:46 - [coCC = (coCC-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][4] = 1;
		(trpt+1)->bup.oval = now.coCC;
		now.coCC = (now.coCC-1);
#ifdef VAR_RANGES
		logval("coCC", now.coCC);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 9: /* STATE 5 - SafetyAlley4Cars.pml:47 - [co = (co-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = now.co;
		now.co = (now.co-1);
#ifdef VAR_RANGES
		logval("co", now.co);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 10: /* STATE 6 - SafetyAlley4Cars.pml:48 - [inAlley[i] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 4) ]);
		now.inAlley[ Index(((P1 *)this)->_2_i, 4) ] = 1;
#ifdef VAR_RANGES
		logval("inAlley[Alley:i]", ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 11: /* STATE 8 - SafetyAlley4Cars.pml:51 - [((((i>=2)&&(co>0))&&(mutex==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][8] = 1;
		if (!((((((P1 *)this)->_2_i>=2)&&(now.co>0))&&(now.mutex==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: /* STATE 9 - SafetyAlley4Cars.pml:51 - [enter[i] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][9] = 1;
		(trpt+1)->bup.oval = ((int)now.enter[ Index(((P1 *)this)->_2_i, 4) ]);
		now.enter[ Index(((P1 *)this)->_2_i, 4) ] = 0;
#ifdef VAR_RANGES
		logval("enter[Alley:i]", ((int)now.enter[ Index(((P1 *)this)->_2_i, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 13: /* STATE 10 - SafetyAlley4Cars.pml:52 - [co = (co+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][10] = 1;
		(trpt+1)->bup.oval = now.co;
		now.co = (now.co+1);
#ifdef VAR_RANGES
		logval("co", now.co);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 14: /* STATE 11 - SafetyAlley4Cars.pml:53 - [inAlley[i] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][11] = 1;
		(trpt+1)->bup.oval = ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 4) ]);
		now.inAlley[ Index(((P1 *)this)->_2_i, 4) ] = 1;
#ifdef VAR_RANGES
		logval("inAlley[Alley:i]", ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 15: /* STATE 13 - SafetyAlley4Cars.pml:56 - [((((i>=2)&&(mutex==1))&&(co==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][13] = 1;
		if (!((((((P1 *)this)->_2_i>=2)&&(now.mutex==1))&&(now.co==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 16: /* STATE 14 - SafetyAlley4Cars.pml:56 - [enter[i] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][14] = 1;
		(trpt+1)->bup.oval = ((int)now.enter[ Index(((P1 *)this)->_2_i, 4) ]);
		now.enter[ Index(((P1 *)this)->_2_i, 4) ] = 0;
#ifdef VAR_RANGES
		logval("enter[Alley:i]", ((int)now.enter[ Index(((P1 *)this)->_2_i, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 17: /* STATE 15 - SafetyAlley4Cars.pml:57 - [mutex = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][15] = 1;
		(trpt+1)->bup.oval = now.mutex;
		now.mutex = 0;
#ifdef VAR_RANGES
		logval("mutex", now.mutex);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 18: /* STATE 16 - SafetyAlley4Cars.pml:58 - [co = (co+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][16] = 1;
		(trpt+1)->bup.oval = now.co;
		now.co = (now.co+1);
#ifdef VAR_RANGES
		logval("co", now.co);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 19: /* STATE 17 - SafetyAlley4Cars.pml:59 - [inAlley[i] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][17] = 1;
		(trpt+1)->bup.oval = ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 4) ]);
		now.inAlley[ Index(((P1 *)this)->_2_i, 4) ] = 1;
#ifdef VAR_RANGES
		logval("inAlley[Alley:i]", ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 20: /* STATE 19 - SafetyAlley4Cars.pml:62 - [(((i<2)&&(mutexCC==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][19] = 1;
		if (!(((((P1 *)this)->_2_i<2)&&(now.mutexCC==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 21: /* STATE 20 - SafetyAlley4Cars.pml:62 - [mutexCC = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][20] = 1;
		(trpt+1)->bup.oval = now.mutexCC;
		now.mutexCC = 0;
#ifdef VAR_RANGES
		logval("mutexCC", now.mutexCC);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 22: /* STATE 21 - SafetyAlley4Cars.pml:64 - [(((coCC==0)&&(mutex==1)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][21] = 1;
		if (!(((now.coCC==0)&&(now.mutex==1))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 23: /* STATE 22 - SafetyAlley4Cars.pml:64 - [enter[i] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][22] = 1;
		(trpt+1)->bup.oval = ((int)now.enter[ Index(((P1 *)this)->_2_i, 4) ]);
		now.enter[ Index(((P1 *)this)->_2_i, 4) ] = 0;
#ifdef VAR_RANGES
		logval("enter[Alley:i]", ((int)now.enter[ Index(((P1 *)this)->_2_i, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: /* STATE 23 - SafetyAlley4Cars.pml:65 - [coCC = (coCC-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][23] = 1;
		(trpt+1)->bup.oval = now.coCC;
		now.coCC = (now.coCC-1);
#ifdef VAR_RANGES
		logval("coCC", now.coCC);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: /* STATE 24 - SafetyAlley4Cars.pml:66 - [mutex = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][24] = 1;
		(trpt+1)->bup.oval = now.mutex;
		now.mutex = 0;
#ifdef VAR_RANGES
		logval("mutex", now.mutex);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: /* STATE 25 - SafetyAlley4Cars.pml:67 - [co = (co-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][25] = 1;
		(trpt+1)->bup.oval = now.co;
		now.co = (now.co-1);
#ifdef VAR_RANGES
		logval("co", now.co);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 27: /* STATE 26 - SafetyAlley4Cars.pml:68 - [inAlley[i] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][26] = 1;
		(trpt+1)->bup.oval = ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 4) ]);
		now.inAlley[ Index(((P1 *)this)->_2_i, 4) ] = 1;
#ifdef VAR_RANGES
		logval("inAlley[Alley:i]", ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 28: /* STATE 27 - SafetyAlley4Cars.pml:70 - [(((coCC<0)&&(co<0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][27] = 1;
		if (!(((now.coCC<0)&&(now.co<0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: /* STATE 28 - SafetyAlley4Cars.pml:70 - [enter[i] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][28] = 1;
		(trpt+1)->bup.oval = ((int)now.enter[ Index(((P1 *)this)->_2_i, 4) ]);
		now.enter[ Index(((P1 *)this)->_2_i, 4) ] = 0;
#ifdef VAR_RANGES
		logval("enter[Alley:i]", ((int)now.enter[ Index(((P1 *)this)->_2_i, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 30: /* STATE 29 - SafetyAlley4Cars.pml:71 - [coCC = (coCC-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][29] = 1;
		(trpt+1)->bup.oval = now.coCC;
		now.coCC = (now.coCC-1);
#ifdef VAR_RANGES
		logval("coCC", now.coCC);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 31: /* STATE 30 - SafetyAlley4Cars.pml:72 - [co = (co-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][30] = 1;
		(trpt+1)->bup.oval = now.co;
		now.co = (now.co-1);
#ifdef VAR_RANGES
		logval("co", now.co);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 32: /* STATE 31 - SafetyAlley4Cars.pml:73 - [inAlley[i] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][31] = 1;
		(trpt+1)->bup.oval = ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 4) ]);
		now.inAlley[ Index(((P1 *)this)->_2_i, 4) ] = 1;
#ifdef VAR_RANGES
		logval("inAlley[Alley:i]", ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 33: /* STATE 36 - SafetyAlley4Cars.pml:76 - [mutexCC = 1] (0:0:1 - 4) */
		IfNotBlocked
		reached[1][36] = 1;
		(trpt+1)->bup.oval = now.mutexCC;
		now.mutexCC = 1;
#ifdef VAR_RANGES
		logval("mutexCC", now.mutexCC);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 34: /* STATE 42 - SafetyAlley4Cars.pml:80 - [(exit[i])] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][42] = 1;
		if (!(((int)now.exit[ Index(((P1 *)this)->_2_i, 4) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: /* STATE 43 - SafetyAlley4Cars.pml:81 - [((i<2))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][43] = 1;
		if (!((((P1 *)this)->_2_i<2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 36: /* STATE 44 - SafetyAlley4Cars.pml:81 - [co = (co+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][44] = 1;
		(trpt+1)->bup.oval = now.co;
		now.co = (now.co+1);
#ifdef VAR_RANGES
		logval("co", now.co);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 37: /* STATE 45 - SafetyAlley4Cars.pml:82 - [coCC = (coCC+1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][45] = 1;
		(trpt+1)->bup.oval = now.coCC;
		now.coCC = (now.coCC+1);
#ifdef VAR_RANGES
		logval("coCC", now.coCC);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: /* STATE 46 - SafetyAlley4Cars.pml:83 - [((i>=2))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][46] = 1;
		if (!((((P1 *)this)->_2_i>=2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 39: /* STATE 47 - SafetyAlley4Cars.pml:83 - [co = (co-1)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][47] = 1;
		(trpt+1)->bup.oval = now.co;
		now.co = (now.co-1);
#ifdef VAR_RANGES
		logval("co", now.co);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 40: /* STATE 50 - SafetyAlley4Cars.pml:86 - [(((mutex==0)&&(co==0)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][50] = 1;
		if (!(((now.mutex==0)&&(now.co==0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: /* STATE 51 - SafetyAlley4Cars.pml:86 - [mutex = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][51] = 1;
		(trpt+1)->bup.oval = now.mutex;
		now.mutex = 1;
#ifdef VAR_RANGES
		logval("mutex", now.mutex);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: /* STATE 52 - SafetyAlley4Cars.pml:87 - [exit[i] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][52] = 1;
		(trpt+1)->bup.oval = ((int)now.exit[ Index(((P1 *)this)->_2_i, 4) ]);
		now.exit[ Index(((P1 *)this)->_2_i, 4) ] = 0;
#ifdef VAR_RANGES
		logval("exit[Alley:i]", ((int)now.exit[ Index(((P1 *)this)->_2_i, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 43: /* STATE 53 - SafetyAlley4Cars.pml:88 - [(!(((mutex==0)&&(co==0))))] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][53] = 1;
		if (!( !(((now.mutex==0)&&(now.co==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: /* STATE 54 - SafetyAlley4Cars.pml:88 - [exit[i] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][54] = 1;
		(trpt+1)->bup.oval = ((int)now.exit[ Index(((P1 *)this)->_2_i, 4) ]);
		now.exit[ Index(((P1 *)this)->_2_i, 4) ] = 0;
#ifdef VAR_RANGES
		logval("exit[Alley:i]", ((int)now.exit[ Index(((P1 *)this)->_2_i, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 45: /* STATE 57 - SafetyAlley4Cars.pml:90 - [(!(exit[i]))] (0:0:0 - 3) */
		IfNotBlocked
		reached[1][57] = 1;
		if (!( !(((int)now.exit[ Index(((P1 *)this)->_2_i, 4) ]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 46: /* STATE 58 - SafetyAlley4Cars.pml:90 - [inAlley[i] = 0] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][58] = 1;
		(trpt+1)->bup.oval = ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 4) ]);
		now.inAlley[ Index(((P1 *)this)->_2_i, 4) ] = 0;
#ifdef VAR_RANGES
		logval("inAlley[Alley:i]", ((int)now.inAlley[ Index(((P1 *)this)->_2_i, 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 47: /* STATE 63 - SafetyAlley4Cars.pml:94 - [assert(((co>-(3))&&(co<3)))] (0:0:0 - 13) */
		IfNotBlocked
		reached[1][63] = 1;
		spin_assert(((now.co> -(3))&&(now.co<3)), "((co> -(3))&&(co<3))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 48: /* STATE 64 - SafetyAlley4Cars.pml:95 - [i = ((i+1)%4)] (0:0:1 - 1) */
		IfNotBlocked
		reached[1][64] = 1;
		(trpt+1)->bup.oval = ((P1 *)this)->_2_i;
		((P1 *)this)->_2_i = ((((P1 *)this)->_2_i+1)%4);
#ifdef VAR_RANGES
		logval("Alley:i", ((P1 *)this)->_2_i);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 49: /* STATE 68 - SafetyAlley4Cars.pml:97 - [-end-] (0:0:0 - 1) */
		IfNotBlocked
		reached[1][68] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC SafetyAlley */
	case 50: /* STATE 2 - SafetyAlley4Cars.pml:22 - [enter[pid] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][2] = 1;
		(trpt+1)->bup.oval = ((int)now.enter[ Index(((int)((P0 *)this)->_pid), 4) ]);
		now.enter[ Index(((P0 *)this)->_pid, 4) ] = 1;
#ifdef VAR_RANGES
		logval("enter[pid]", ((int)now.enter[ Index(((int)((P0 *)this)->_pid), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 51: /* STATE 3 - SafetyAlley4Cars.pml:23 - [assert(((co>-(3))&&(co<3)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][3] = 1;
		spin_assert(((now.co> -(3))&&(now.co<3)), "((co> -(3))&&(co<3))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 52: /* STATE 4 - SafetyAlley4Cars.pml:24 - [(inAlley[pid])] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][4] = 1;
		if (!(((int)now.inAlley[ Index(((int)((P0 *)this)->_pid), 4) ])))
			continue;
		_m = 3; goto P999; /* 0 */
	case 53: /* STATE 5 - SafetyAlley4Cars.pml:27 - [((pid>=2))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][5] = 1;
		if (!((((int)((P0 *)this)->_pid)>=2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 54: /* STATE 6 - SafetyAlley4Cars.pml:27 - [assert((!(inAlley[1])&&!(inAlley[0])))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][6] = 1;
		spin_assert(( !(((int)now.inAlley[1]))&& !(((int)now.inAlley[0]))), "( !(inAlley[1])&& !(inAlley[0]))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 55: /* STATE 7 - SafetyAlley4Cars.pml:28 - [assert(((co>-(3))&&(co<3)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][7] = 1;
		spin_assert(((now.co> -(3))&&(now.co<3)), "((co> -(3))&&(co<3))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 56: /* STATE 8 - SafetyAlley4Cars.pml:29 - [exit[pid] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][8] = 1;
		(trpt+1)->bup.oval = ((int)now.exit[ Index(((int)((P0 *)this)->_pid), 4) ]);
		now.exit[ Index(((P0 *)this)->_pid, 4) ] = 1;
#ifdef VAR_RANGES
		logval("exit[pid]", ((int)now.exit[ Index(((int)((P0 *)this)->_pid), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 57: /* STATE 9 - SafetyAlley4Cars.pml:31 - [((pid<2))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((int)((P0 *)this)->_pid)<2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 58: /* STATE 10 - SafetyAlley4Cars.pml:31 - [assert((!(inAlley[2])&&!(inAlley[3])))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][10] = 1;
		spin_assert(( !(((int)now.inAlley[2]))&& !(((int)now.inAlley[3]))), "( !(inAlley[2])&& !(inAlley[3]))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 59: /* STATE 11 - SafetyAlley4Cars.pml:32 - [assert(((co>-(3))&&(co<3)))] (0:0:0 - 1) */
		IfNotBlocked
		reached[0][11] = 1;
		spin_assert(((now.co> -(3))&&(now.co<3)), "((co> -(3))&&(co<3))", II, tt, t);
		_m = 3; goto P999; /* 0 */
	case 60: /* STATE 12 - SafetyAlley4Cars.pml:33 - [exit[pid] = 1] (0:0:1 - 1) */
		IfNotBlocked
		reached[0][12] = 1;
		(trpt+1)->bup.oval = ((int)now.exit[ Index(((int)((P0 *)this)->_pid), 4) ]);
		now.exit[ Index(((P0 *)this)->_pid, 4) ] = 1;
#ifdef VAR_RANGES
		logval("exit[pid]", ((int)now.exit[ Index(((int)((P0 *)this)->_pid), 4) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 61: /* STATE 15 - SafetyAlley4Cars.pml:35 - [(!(inAlley[pid]))] (0:0:0 - 3) */
		IfNotBlocked
		reached[0][15] = 1;
		if (!( !(((int)now.inAlley[ Index(((int)((P0 *)this)->_pid), 4) ]))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 62: /* STATE 19 - SafetyAlley4Cars.pml:37 - [-end-] (0:0:0 - 1) */
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

