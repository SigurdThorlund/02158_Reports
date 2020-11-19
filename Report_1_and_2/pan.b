	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM fair1 */
;
		;
		;
		;
		
	case 5: /* STATE 11 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC SafetyCheck */
;
		;
		
	case 7: /* STATE 5 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC SafetyAlley */
;
		;
		
	case 9: /* STATE 4 */
		;
		now.wait = trpt->bup.oval;
		;
		goto R999;

	case 10: /* STATE 8 */
		;
		now.edit = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 12: /* STATE 13 */
		;
		now.inAlley[ Index(((P0 *)this)->_pid, 8) ] = trpt->bup.ovals[1];
		now.counter = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 13: /* STATE 16 */
		;
		now.wait = trpt->bup.oval;
		;
		goto R999;

	case 14: /* STATE 21 */
		;
		now.edit = trpt->bup.oval;
		;
		goto R999;

	case 15: /* STATE 25 */
		;
		now.mutex = trpt->bup.oval;
		;
		goto R999;

	case 16: /* STATE 29 */
		;
		now.wait = trpt->bup.oval;
		;
		goto R999;

	case 17: /* STATE 33 */
		;
		now.edit = trpt->bup.oval;
		;
		goto R999;

	case 18: /* STATE 37 */
		;
		now.inAlley[ Index(((P0 *)this)->_pid, 8) ] = trpt->bup.ovals[1];
		now.counter = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 19: /* STATE 43 */
		;
		now.edit = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 21: /* STATE 48 */
		;
		now.inAlley[ Index(((P0 *)this)->_pid, 8) ] = trpt->bup.ovals[1];
		now.counter = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 22: /* STATE 52 */
		;
		now.edit = trpt->bup.oval;
		;
		goto R999;

	case 23: /* STATE 56 */
		;
		now.mutex = trpt->bup.oval;
		;
		goto R999;

	case 24: /* STATE 60 */
		;
		now.edit = trpt->bup.oval;
		;
		goto R999;

	case 25: /* STATE 64 */
		;
		now.inAlley[ Index(((P0 *)this)->_pid, 8) ] = trpt->bup.ovals[1];
		now.counter = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 2);
		goto R999;

	case 26: /* STATE 71 */
		;
		now.edit = trpt->bup.oval;
		;
		goto R999;

	case 27: /* STATE 75 */
		;
		now.edit = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 29: /* STATE 81 */
		;
		down = trpt->bup.ovals[2];
		now.inAlley[ Index(((P0 *)this)->_pid, 8) ] = trpt->bup.ovals[1];
		now.counter = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;

	case 30: /* STATE 86 */
		;
		up = trpt->bup.ovals[2];
		now.inAlley[ Index(((P0 *)this)->_pid, 8) ] = trpt->bup.ovals[1];
		now.counter = trpt->bup.ovals[0];
		;
		ungrab_ints(trpt->bup.ovals, 3);
		goto R999;
;
		;
		
	case 32: /* STATE 92 */
		;
		now.mutex = trpt->bup.oval;
		;
		goto R999;

	case 33: /* STATE 100 */
		;
		now.edit = trpt->bup.oval;
		;
		goto R999;

	case 34: /* STATE 106 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

