	switch (t->back) {
	default: Uerror("bad return move");
	case  0: goto R999; /* nothing to undo */

		 /* CLAIM nocrash */
;
		;
		
	case 4: /* STATE 8 */
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
		
	case 7: /* STATE 3 */
		;
		now.enter[ Index(((P1 *)this)->_2_i, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 8: /* STATE 4 */
		;
		now.coCC = trpt->bup.oval;
		;
		goto R999;

	case 9: /* STATE 5 */
		;
		now.co = trpt->bup.oval;
		;
		goto R999;

	case 10: /* STATE 6 */
		;
		now.inAlley[ Index(((P1 *)this)->_2_i, 4) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 12: /* STATE 9 */
		;
		now.enter[ Index(((P1 *)this)->_2_i, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 13: /* STATE 10 */
		;
		now.co = trpt->bup.oval;
		;
		goto R999;

	case 14: /* STATE 11 */
		;
		now.inAlley[ Index(((P1 *)this)->_2_i, 4) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 16: /* STATE 14 */
		;
		now.enter[ Index(((P1 *)this)->_2_i, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 17: /* STATE 15 */
		;
		now.mutex = trpt->bup.oval;
		;
		goto R999;

	case 18: /* STATE 16 */
		;
		now.co = trpt->bup.oval;
		;
		goto R999;

	case 19: /* STATE 17 */
		;
		now.inAlley[ Index(((P1 *)this)->_2_i, 4) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 21: /* STATE 20 */
		;
		now.mutexCC = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 23: /* STATE 22 */
		;
		now.enter[ Index(((P1 *)this)->_2_i, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 24: /* STATE 23 */
		;
		now.coCC = trpt->bup.oval;
		;
		goto R999;

	case 25: /* STATE 24 */
		;
		now.mutex = trpt->bup.oval;
		;
		goto R999;

	case 26: /* STATE 25 */
		;
		now.co = trpt->bup.oval;
		;
		goto R999;

	case 27: /* STATE 26 */
		;
		now.inAlley[ Index(((P1 *)this)->_2_i, 4) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 29: /* STATE 28 */
		;
		now.enter[ Index(((P1 *)this)->_2_i, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 30: /* STATE 29 */
		;
		now.coCC = trpt->bup.oval;
		;
		goto R999;

	case 31: /* STATE 30 */
		;
		now.co = trpt->bup.oval;
		;
		goto R999;

	case 32: /* STATE 31 */
		;
		now.inAlley[ Index(((P1 *)this)->_2_i, 4) ] = trpt->bup.oval;
		;
		goto R999;

	case 33: /* STATE 36 */
		;
		now.mutexCC = trpt->bup.oval;
		;
		goto R999;
;
		;
		;
		;
		
	case 36: /* STATE 44 */
		;
		now.co = trpt->bup.oval;
		;
		goto R999;

	case 37: /* STATE 45 */
		;
		now.coCC = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 39: /* STATE 47 */
		;
		now.co = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 41: /* STATE 51 */
		;
		now.mutex = trpt->bup.oval;
		;
		goto R999;

	case 42: /* STATE 52 */
		;
		now.exit[ Index(((P1 *)this)->_2_i, 4) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 44: /* STATE 54 */
		;
		now.exit[ Index(((P1 *)this)->_2_i, 4) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 46: /* STATE 58 */
		;
		now.inAlley[ Index(((P1 *)this)->_2_i, 4) ] = trpt->bup.oval;
		;
		goto R999;
;
		;
		
	case 48: /* STATE 64 */
		;
		((P1 *)this)->_2_i = trpt->bup.oval;
		;
		goto R999;

	case 49: /* STATE 68 */
		;
		p_restor(II);
		;
		;
		goto R999;

		 /* PROC SafetyAlley */

	case 50: /* STATE 2 */
		;
		now.enter[ Index(((P0 *)this)->_pid, 4) ] = trpt->bup.oval;
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
		now.exit[ Index(((P0 *)this)->_pid, 4) ] = trpt->bup.oval;
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
		now.exit[ Index(((P0 *)this)->_pid, 4) ] = trpt->bup.oval;
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

