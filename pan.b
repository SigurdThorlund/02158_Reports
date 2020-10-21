	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM complete */
;
		;
		;
		;
		;
		;
		;
		;
		
	case 7: /* STATE 17 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC Alley */
;
		;
		;
		;
		
	case 10: /* STATE 3 */
		;
		now.enter[ Index(((P1 *)this)->_2_i, 8) ] = trpt->bup.oval;
		;
		goto R999;

	case 11: /* STATE 4 */
		;
		now.counterCC = trpt->bup.oval;
		;
		goto R999;

	case 12: /* STATE 5 */
		;
		now.counter = trpt->bup.oval;
		;
		goto R999;

	case 13: /* STATE 6 */
		;
		now.inAlley[ Index(((P1 *)this)->_2_i, 8) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 15: /* STATE 9 */
		;
		now.enter[ Index(((P1 *)this)->_2_i, 8) ] = trpt->bup.oval;
		;
		goto R999;

	case 16: /* STATE 10 */
		;
		now.counter = trpt->bup.oval;
		;
		goto R999;

	case 17: /* STATE 11 */
		;
		now.inAlley[ Index(((P1 *)this)->_2_i, 8) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 19: /* STATE 14 */
		;
		now.enter[ Index(((P1 *)this)->_2_i, 8) ] = trpt->bup.oval;
		;
		goto R999;

	case 20: /* STATE 15 */
		;
		now.mutex = trpt->bup.oval;
		;
		goto R999;

	case 21: /* STATE 16 */
		;
		now.counter = trpt->bup.oval;
		;
		goto R999;

	case 22: /* STATE 17 */
		;
		now.inAlley[ Index(((P1 *)this)->_2_i, 8) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 24: /* STATE 20 */
		;
		now.mutexCC = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 26: /* STATE 22 */
		;
		now.enter[ Index(((P1 *)this)->_2_i, 8) ] = trpt->bup.oval;
		;
		goto R999;

	case 27: /* STATE 23 */
		;
		now.counterCC = trpt->bup.oval;
		;
		goto R999;

	case 28: /* STATE 24 */
		;
		now.mutex = trpt->bup.oval;
		;
		goto R999;

	case 29: /* STATE 25 */
		;
		now.counter = trpt->bup.oval;
		;
		goto R999;

	case 30: /* STATE 26 */
		;
		now.inAlley[ Index(((P1 *)this)->_2_i, 8) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 32: /* STATE 28 */
		;
		now.enter[ Index(((P1 *)this)->_2_i, 8) ] = trpt->bup.oval;
		;
		goto R999;

	case 33: /* STATE 29 */
		;
		now.counterCC = trpt->bup.oval;
		;
		goto R999;

	case 34: /* STATE 30 */
		;
		now.counter = trpt->bup.oval;
		;
		goto R999;

	case 35: /* STATE 31 */
		;
		now.inAlley[ Index(((P1 *)this)->_2_i, 8) ] = trpt->bup.oval;
		;
		goto R999;

	case 36: /* STATE 36 */
		;
		now.mutexCC = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 39: /* STATE 42 */
		;
		now.counter = trpt->bup.oval;
		;
		goto R999;

	case 40: /* STATE 43 */
		;
		now.counterCC = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 42: /* STATE 45 */
		;
		now.counter = trpt->bup.oval;
		;
		goto R999;

	case 43: /* STATE 48 */
		;
		now.inAlley[ Index(((P1 *)this)->_2_i, 8) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 45: /* STATE 50 */
		;
		now.mutex = trpt->bup.oval;
		;
		goto R999;

	case 46: /* STATE 53 */
		;
		now.exit[ Index(((P1 *)this)->_2_i, 8) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 48: /* STATE 59 */
		;
		((P1 *)this)->_2_i = trpt->bup.oval;
		;
		goto R999;

	case 49: /* STATE 63 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC SafetyAlley */

	case 50: /* STATE 2 */
		;
		now.enter[ Index(((P0 *)this)->_pid, 8) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		;
		;
		;
		;
		
	case 56: /* STATE 8 */
		;
		now.exit[ Index(((P0 *)this)->_pid, 8) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		;
		;
		
	case 60: /* STATE 12 */
		;
		now.exit[ Index(((P0 *)this)->_pid, 8) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 62: /* STATE 19 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

