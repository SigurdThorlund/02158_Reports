	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM fair */
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

		 /* PROC EnterExit */
;
		;
		;
		;
		
	case 8: /* STATE 3 */
		;
		now.mutex = trpt->bup.oval;
		;
		goto R999;

	case 9: /* STATE 4 */
		;
		now.inAlley[ Index(((P1 *)this)->_2_i, 8) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 11: /* STATE 6 */
		;
		now.inAlley[ Index(((P1 *)this)->_2_i, 8) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 13: /* STATE 8 */
		;
		now.inAlley[ Index(((P1 *)this)->_2_i, 8) ] = trpt->bup.oval;
		;
		goto R999;

	case 14: /* STATE 11 */
		;
		now.enter[ Index(((P1 *)this)->_2_i, 8) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 16: /* STATE 13 */
		;
		now.inAlley[ Index(((P1 *)this)->_2_i, 8) ] = trpt->bup.oval;
		;
		goto R999;

	case 17: /* STATE 14 */
		;
		now.exit[ Index(((P1 *)this)->_2_i, 8) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 19: /* STATE 16 */
		;
		now.counter = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 21: /* STATE 18 */
		;
		now.counter = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 23: /* STATE 22 */
		;
		now.mutex = trpt->bup.oval;
		;
		goto R999;

	case 24: /* STATE 30 */
		;
		((P1 *)this)->_2_i = trpt->bup.oval;
		;
		goto R999;

	case 25: /* STATE 30 */
		;
		((P1 *)this)->_2_i = trpt->bup.oval;
		;
		goto R999;

	case 26: /* STATE 30 */
		;
		((P1 *)this)->_2_i = trpt->bup.oval;
		;
		goto R999;

	case 27: /* STATE 34 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC SafetyAlley */

	case 28: /* STATE 2 */
		;
		now.enter[ Index(((P0 *)this)->_pid, 8) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 30: /* STATE 4 */
		;
		now.counter = trpt->bup.oval;
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
		
	case 36: /* STATE 10 */
		;
		now.counter = trpt->bup.oval;
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
		
	case 41: /* STATE 17 */
		;
		now.exit[ Index(((P0 *)this)->_pid, 8) ] = trpt->bup.oval;
		;
		goto R999;

	case 42: /* STATE 21 */
		;
		p_restor(II);
		;
		;
		goto R999;
	}

