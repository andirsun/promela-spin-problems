#define rand	pan_rand
#define pthread_equal(a,b)	((a)==(b))
#if defined(HAS_CODE) && defined(VERBOSE)
	#ifdef BFS_PAR
		bfs_printf("Pr: %d Tr: %d\n", II, t->forw);
	#else
		cpu_printf("Pr: %d Tr: %d\n", II, t->forw);
	#endif
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

		 /* CLAIM c6 */
	case 3: // STATE 1 - _spin_nvr.tmp:54 - [(!((!((fallado>0))||(cont==m))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][1] = 1;
		if (!( !(( !((((int)now.fallado)>0))||(((int)now.cont)==((int)now.m))))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 4: // STATE 6 - _spin_nvr.tmp:56 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[7][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM c5 */
	case 5: // STATE 1 - _spin_nvr.tmp:47 - [(!((!((data[((1*4)+elems)]!=0))||(data[((0*4)+elems)]==0))))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][1] = 1;
		if (!( !(( !((((int)now.data[ Index(((1*4)+now.elems), 8) ])!=0))||(((int)now.data[ Index(((0*4)+now.elems), 8) ])==0)))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 6: // STATE 6 - _spin_nvr.tmp:49 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[6][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM c4 */
	case 7: // STATE 1 - _spin_nvr.tmp:35 - [((!((file[2]==0))&&env?[MENS,file[3],_]))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][1] = 1;
		if (!(( !((now.file[2]==0))&&(q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 8: // STATE 6 - _spin_nvr.tmp:40 - [(env?[MENS,file[3],_])] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][6] = 1;
		if (!((q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 9: // STATE 11 - _spin_nvr.tmp:42 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[5][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM c3 */
	case 10: // STATE 1 - _spin_nvr.tmp:23 - [((!((data[((0*4)+elems)]==data[((1*4)+elems)]))&&(elems>0)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][1] = 1;
		if (!(( !((((int)now.data[ Index(((0*4)+now.elems), 8) ])==((int)now.data[ Index(((1*4)+now.elems), 8) ])))&&(now.elems>0))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 11: // STATE 6 - _spin_nvr.tmp:28 - [((elems>0))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][6] = 1;
		if (!((now.elems>0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 12: // STATE 11 - _spin_nvr.tmp:30 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[4][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM c2 */
	case 13: // STATE 1 - _spin_nvr.tmp:11 - [((elems==3))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][1] = 1;
		if (!((now.elems==3)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 14: // STATE 6 - _spin_nvr.tmp:16 - [((!((data[((1*4)+elems)]!=0))&&(elems==3)))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][6] = 1;
		if (!(( !((((int)now.data[ Index(((1*4)+now.elems), 8) ])!=0))&&(now.elems==3))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 15: // STATE 11 - _spin_nvr.tmp:18 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported11 = 0;
			if (verbose && !reported11)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported11 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[3][11] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* CLAIM c1 */
	case 16: // STATE 1 - _spin_nvr.tmp:4 - [((!((data[((0*4)+0)]==file[0]))&&env?[MENS,file[0],_]))] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported1 = 0;
			if (verbose && !reported1)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported1 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][1] = 1;
		if (!(( !((((int)now.data[ Index(((0*4)+0), 8) ])==now.file[0]))&&(q_len(now.env) > 0 \
		&& qrecv(now.env, 0, 0, 0) == 2))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 17: // STATE 6 - _spin_nvr.tmp:6 - [-end-] (0:0:0 - 1)
		
#if defined(VERI) && !defined(NP)
#if NCLAIMS>1
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	int nn = (int) ((Pclaim *)pptr(0))->_n;
				printf("depth %ld: Claim %s (%d), state %d (line %d)\n",
					depth, procname[spin_c_typ[nn]], nn, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#else
		{	static int reported6 = 0;
			if (verbose && !reported6)
			{	printf("depth %d: Claim, state %d (line %d)\n",
					(int) depth, (int) ((Pclaim *)pptr(0))->_p, src_claim[ (int) ((Pclaim *)pptr(0))->_p ]);
				reported6 = 1;
				fflush(stdout);
		}	}
#endif
#endif
		reached[2][6] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Receptor */
	case 18: // STATE 1 - client-server.pml:79 - [((data[(((_pid-1)*4)+m)]==0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][1] = 1;
		if (!((((int)now.data[ Index((((((int)((P1 *)this)->_pid)-1)*4)+((int)now.m)), 8) ])==0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 19: // STATE 2 - client-server.pml:81 - [((flag<2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][2] = 1;
		if (!((now.flag<2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 20: // STATE 3 - client-server.pml:83 - [env?<MENS,x,bitrecibido>] (0:0:3 - 1)
		reached[1][3] = 1;
		if (q_len(now.env) == 0) continue;

		XX=1;
		if (2 != qrecv(now.env, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(3);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->x);
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)this)->bitrecibido);
		;
		((P1 *)this)->x = qrecv(now.env, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Receptor:x", ((int)((P1 *)this)->x));
#endif
		;
		((P1 *)this)->bitrecibido = qrecv(now.env, XX-1, 2, 0);
#ifdef VAR_RANGES
		logval("Receptor:bitrecibido", ((int)((P1 *)this)->bitrecibido));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.env);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->x)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->bitrecibido)); strcat(simvals, simtmp);		}
#endif
		;
		_m = 4; goto P999; /* 0 */
	case 21: // STATE 4 - client-server.pml:85 - [((bitanterior!=bitrecibido))] (0:0:1 - 1)
		IfNotBlocked
		reached[1][4] = 1;
		if (!((((int)((P1 *)this)->bitanterior)!=((int)((P1 *)this)->bitrecibido))))
			continue;
		if (TstOnly) return 1; /* TT */
		/* dead 1: bitanterior */  (trpt+1)->bup.oval = ((P1 *)this)->bitanterior;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->bitanterior = 0;
		_m = 3; goto P999; /* 0 */
	case 22: // STATE 5 - client-server.pml:86 - [data[(((_pid-1)*4)+m)] = x] (0:0:1 - 1)
		IfNotBlocked
		reached[1][5] = 1;
		(trpt+1)->bup.oval = ((int)now.data[ Index((((((int)((P1 *)this)->_pid)-1)*4)+((int)now.m)), 8) ]);
		now.data[ Index((((((P1 *)this)->_pid-1)*4)+now.m), 8) ] = ((int)((P1 *)this)->x);
#ifdef VAR_RANGES
		logval("data[(((_pid-1)*4)+m)]", ((int)now.data[ Index((((((int)((P1 *)this)->_pid)-1)*4)+((int)now.m)), 8) ]));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 23: // STATE 6 - client-server.pml:88 - [idUltimo = _pid] (0:0:1 - 1)
		IfNotBlocked
		reached[1][6] = 1;
		(trpt+1)->bup.oval = ((int)now.idUltimo);
		now.idUltimo = ((int)((P1 *)this)->_pid);
#ifdef VAR_RANGES
		logval("idUltimo", ((int)now.idUltimo));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 24: // STATE 7 - client-server.pml:90 - [bitanterior = bitrecibido] (0:0:1 - 1)
		IfNotBlocked
		reached[1][7] = 1;
		(trpt+1)->bup.oval = ((int)((P1 *)this)->bitanterior);
		((P1 *)this)->bitanterior = ((int)((P1 *)this)->bitrecibido);
#ifdef VAR_RANGES
		logval("Receptor:bitanterior", ((int)((P1 *)this)->bitanterior));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 25: // STATE 8 - client-server.pml:92 - [flag = (flag+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[1][8] = 1;
		(trpt+1)->bup.oval = now.flag;
		now.flag = (now.flag+1);
#ifdef VAR_RANGES
		logval("flag", now.flag);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 26: // STATE 16 - client-server.pml:99 - [((data[(((_pid-1)*4)+m)]!=0))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][16] = 1;
		if (!((((int)now.data[ Index((((((int)((P1 *)this)->_pid)-1)*4)+((int)now.m)), 8) ])!=0)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 27: // STATE 17 - client-server.pml:101 - [((flag==2))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][17] = 1;
		if (!((now.flag==2)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 28: // STATE 18 - client-server.pml:103 - [((idUltimo==_pid))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][18] = 1;
		if (!((((int)now.idUltimo)==((int)((P1 *)this)->_pid))))
			continue;
		_m = 3; goto P999; /* 0 */
	case 29: // STATE 19 - client-server.pml:107 - [env?MENS,x,bitrecibido] (23:0:6 - 1)
		reached[1][19] = 1;
		if (q_len(now.env) == 0) continue;

		XX=1;
		if (2 != qrecv(now.env, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(6);
		(trpt+1)->bup.ovals[0] = ((int)((P1 *)this)->x);
		(trpt+1)->bup.ovals[1] = ((int)((P1 *)this)->bitrecibido);
		;
		((P1 *)this)->x = qrecv(now.env, XX-1, 1, 0);
#ifdef VAR_RANGES
		logval("Receptor:x", ((int)((P1 *)this)->x));
#endif
		;
		((P1 *)this)->bitrecibido = qrecv(now.env, XX-1, 2, 1);
#ifdef VAR_RANGES
		logval("Receptor:bitrecibido", ((int)((P1 *)this)->bitrecibido));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.env);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->x)); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->bitrecibido)); strcat(simvals, simtmp);		}
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: x */  (trpt+1)->bup.ovals[2] = ((P1 *)this)->x;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P1 *)this)->x = 0;
		/* merge: file[elems] = 0(23, 20, 23) */
		reached[1][20] = 1;
		(trpt+1)->bup.ovals[3] = now.file[ Index(now.elems, 4) ];
		now.file[ Index(now.elems, 4) ] = 0;
#ifdef VAR_RANGES
		logval("file[elems]", now.file[ Index(now.elems, 4) ]);
#endif
		;
		/* merge: m = (m+1)(23, 21, 23) */
		reached[1][21] = 1;
		(trpt+1)->bup.ovals[4] = ((int)now.m);
		now.m = (((int)now.m)+1);
#ifdef VAR_RANGES
		logval("m", ((int)now.m));
#endif
		;
		/* merge: flag = 0(23, 22, 23) */
		reached[1][22] = 1;
		(trpt+1)->bup.ovals[5] = now.flag;
		now.flag = 0;
#ifdef VAR_RANGES
		logval("flag", now.flag);
#endif
		;
		_m = 4; goto P999; /* 3 */
	case 30: // STATE 23 - client-server.pml:115 - [conf!CNF,bitrecibido] (0:0:0 - 1)
		IfNotBlocked
		reached[1][23] = 1;
		if (q_full(now.conf))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.conf);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P1 *)this)->bitrecibido)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.conf, 0, 1, ((int)((P1 *)this)->bitrecibido), 0, 2);
		_m = 2; goto P999; /* 0 */
	case 31: // STATE 31 - client-server.pml:120 - [((fallado==1))] (0:0:0 - 1)
		IfNotBlocked
		reached[1][31] = 1;
		if (!((((int)now.fallado)==1)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 32: // STATE 37 - client-server.pml:123 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[1][37] = 1;
		if (!delproc(1, II)) continue;
		_m = 3; goto P999; /* 0 */

		 /* PROC Emisor */
	case 33: // STATE 1 - client-server.pml:42 - [((elems==4))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][1] = 1;
		if (!((now.elems==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 34: // STATE 3 - client-server.pml:44 - [((elems<4))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][3] = 1;
		if (!((now.elems<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 35: // STATE 4 - client-server.pml:46 - [env!MENS,file[elems],bitenvio] (0:0:0 - 1)
		IfNotBlocked
		reached[0][4] = 1;
		if (q_full(now.env))
			continue;
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[64];
			sprintf(simvals, "%d!", now.env);
		sprintf(simtmp, "%d", 2); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", now.file[ Index(now.elems, 4) ]); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->bitenvio)); strcat(simvals, simtmp);		}
#endif
		
		qsend(now.env, 0, 2, now.file[ Index(now.elems, 4) ], ((int)((P0 *)this)->bitenvio), 3);
		_m = 2; goto P999; /* 0 */
	case 36: // STATE 5 - client-server.pml:50 - [conf?CNF,bitrecibido] (0:0:2 - 1)
		reached[0][5] = 1;
		if (q_len(now.conf) == 0) continue;

		XX=1;
		if (1 != qrecv(now.conf, 0, 0, 0)) continue;
		(trpt+1)->bup.ovals = grab_ints(2);
		(trpt+1)->bup.ovals[0] = ((int)((P0 *)this)->bitrecibido);
		;
		((P0 *)this)->bitrecibido = qrecv(now.conf, XX-1, 1, 1);
#ifdef VAR_RANGES
		logval("Emisor:bitrecibido", ((int)((P0 *)this)->bitrecibido));
#endif
		;
		
#ifdef HAS_CODE
		if (readtrail && gui) {
			char simtmp[32];
			sprintf(simvals, "%d?", now.conf);
		sprintf(simtmp, "%d", 1); strcat(simvals, simtmp);		strcat(simvals, ",");
		sprintf(simtmp, "%d", ((int)((P0 *)this)->bitrecibido)); strcat(simvals, simtmp);		}
#endif
		;
		if (TstOnly) return 1; /* TT */
		/* dead 2: bitrecibido */  (trpt+1)->bup.ovals[1] = ((P0 *)this)->bitrecibido;
#ifdef HAS_CODE
		if (!readtrail)
#endif
			((P0 *)this)->bitrecibido = 0;
		_m = 4; goto P999; /* 0 */
	case 37: // STATE 6 - client-server.pml:51 - [bitenvio = (1-bitenvio)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][6] = 1;
		(trpt+1)->bup.oval = ((int)((P0 *)this)->bitenvio);
		((P0 *)this)->bitenvio = (1-((int)((P0 *)this)->bitenvio));
#ifdef VAR_RANGES
		logval("Emisor:bitenvio", ((int)((P0 *)this)->bitenvio));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 38: // STATE 7 - client-server.pml:52 - [elems = (elems+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][7] = 1;
		(trpt+1)->bup.oval = now.elems;
		now.elems = (now.elems+1);
#ifdef VAR_RANGES
		logval("elems", now.elems);
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 39: // STATE 8 - client-server.pml:53 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][8] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 40: // STATE 9 - client-server.pml:55 - [((cont<4))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][9] = 1;
		if (!((((int)now.cont)<4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 41: // STATE 10 - client-server.pml:55 - [cont = (cont+1)] (0:0:1 - 1)
		IfNotBlocked
		reached[0][10] = 1;
		(trpt+1)->bup.oval = ((int)now.cont);
		now.cont = (((int)now.cont)+1);
#ifdef VAR_RANGES
		logval("cont", ((int)now.cont));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 42: // STATE 16 - client-server.pml:60 - [(timeout)] (0:0:0 - 1)
		IfNotBlocked
		reached[0][16] = 1;
		if (!(((trpt->tau)&1)))
			continue;
		_m = 1; goto P999; /* 0 */
	case 43: // STATE 20 - client-server.pml:63 - [((cont==4))] (0:0:0 - 1)
		IfNotBlocked
		reached[0][20] = 1;
		if (!((((int)now.cont)==4)))
			continue;
		_m = 3; goto P999; /* 0 */
	case 44: // STATE 25 - client-server.pml:66 - [printf('listo ')] (0:0:0 - 3)
		IfNotBlocked
		reached[0][25] = 1;
		Printf("listo ");
		_m = 3; goto P999; /* 0 */
	case 45: // STATE 26 - client-server.pml:67 - [fallado = 1] (0:0:1 - 3)
		IfNotBlocked
		reached[0][26] = 1;
		(trpt+1)->bup.oval = ((int)now.fallado);
		now.fallado = 1;
#ifdef VAR_RANGES
		logval("fallado", ((int)now.fallado));
#endif
		;
		_m = 3; goto P999; /* 0 */
	case 46: // STATE 27 - client-server.pml:68 - [-end-] (0:0:0 - 1)
		IfNotBlocked
		reached[0][27] = 1;
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

