
matriu1Unroll.g:     file format elf32-littlearm


Disassembly of section .init:

000103f8 <_init>:
   103f8:	e92d4008 	push	{r3, lr}
   103fc:	eb000066 	bl	1059c <call_weak_fn>
   10400:	e8bd8008 	pop	{r3, pc}

Disassembly of section .plt:

00010404 <strtol@plt-0x14>:
   10404:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
   10408:	e59fe004 	ldr	lr, [pc, #4]	; 10414 <_init+0x1c>
   1040c:	e08fe00e 	add	lr, pc, lr
   10410:	e5bef008 	ldr	pc, [lr, #8]!
   10414:	00010bec 	.word	0x00010bec

00010418 <strtol@plt>:
   10418:	e28fc600 	add	ip, pc, #0, 12
   1041c:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10420:	e5bcfbec 	ldr	pc, [ip, #3052]!	; 0xbec

00010424 <__stack_chk_fail@plt>:
   10424:	e28fc600 	add	ip, pc, #0, 12
   10428:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   1042c:	e5bcfbe4 	ldr	pc, [ip, #3044]!	; 0xbe4

00010430 <__libc_start_main@plt>:
   10430:	e28fc600 	add	ip, pc, #0, 12
   10434:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10438:	e5bcfbdc 	ldr	pc, [ip, #3036]!	; 0xbdc

0001043c <__gmon_start__@plt>:
   1043c:	e28fc600 	add	ip, pc, #0, 12
   10440:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10444:	e5bcfbd4 	ldr	pc, [ip, #3028]!	; 0xbd4

00010448 <memset@plt>:
   10448:	e28fc600 	add	ip, pc, #0, 12
   1044c:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10450:	e5bcfbcc 	ldr	pc, [ip, #3020]!	; 0xbcc

00010454 <putchar@plt>:
   10454:	e28fc600 	add	ip, pc, #0, 12
   10458:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   1045c:	e5bcfbc4 	ldr	pc, [ip, #3012]!	; 0xbc4

00010460 <__printf_chk@plt>:
   10460:	e28fc600 	add	ip, pc, #0, 12
   10464:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10468:	e5bcfbbc 	ldr	pc, [ip, #3004]!	; 0xbbc

0001046c <rand@plt>:
   1046c:	e28fc600 	add	ip, pc, #0, 12
   10470:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10474:	e5bcfbb4 	ldr	pc, [ip, #2996]!	; 0xbb4

00010478 <abort@plt>:
   10478:	e28fc600 	add	ip, pc, #0, 12
   1047c:	e28cca10 	add	ip, ip, #16, 20	; 0x10000
   10480:	e5bcfbac 	ldr	pc, [ip, #2988]!	; 0xbac

Disassembly of section .text:

00010484 <main>:
   10484:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   10488:	f241 0340 	movw	r3, #4160	; 0x1040
   1048c:	b0b7      	sub	sp, #220	; 0xdc
   1048e:	f2c0 0302 	movt	r3, #2
   10492:	4681      	mov	r9, r0
   10494:	468a      	mov	sl, r1
   10496:	9303      	str	r3, [sp, #12]
   10498:	a825      	add	r0, sp, #148	; 0x94
   1049a:	681b      	ldr	r3, [r3, #0]
   1049c:	2240      	movs	r2, #64	; 0x40
   1049e:	2100      	movs	r1, #0
   104a0:	af14      	add	r7, sp, #80	; 0x50
   104a2:	ae08      	add	r6, sp, #32
   104a4:	f10d 0890 	add.w	r8, sp, #144	; 0x90
   104a8:	9335      	str	r3, [sp, #212]	; 0xd4
   104aa:	f7ff efce 	blx	10448 <memset@plt>
   104ae:	f1a6 0410 	sub.w	r4, r6, #16
   104b2:	463d      	mov	r5, r7
   104b4:	f7ff efda 	blx	1046c <rand@plt>
   104b8:	f844 0f04 	str.w	r0, [r4, #4]!
   104bc:	f7ff efd6 	blx	1046c <rand@plt>
   104c0:	42a6      	cmp	r6, r4
   104c2:	f845 0f04 	str.w	r0, [r5, #4]!
   104c6:	d1f5      	bne.n	104b4 <main+0x30>
   104c8:	3710      	adds	r7, #16
   104ca:	3610      	adds	r6, #16
   104cc:	45b8      	cmp	r8, r7
   104ce:	d1ee      	bne.n	104ae <main+0x2a>
   104d0:	f1b9 0f01 	cmp.w	r9, #1
   104d4:	dd42      	ble.n	1055c <main+0xd8>
   104d6:	f8da 0004 	ldr.w	r0, [sl, #4]
   104da:	220a      	movs	r2, #10
   104dc:	2100      	movs	r1, #0
   104de:	f7ff ef9c 	blx	10418 <strtol@plt>
   104e2:	4603      	mov	r3, r0
   104e4:	b370      	cbz	r0, 10544 <main+0xc0>
   104e6:	f10d 0954 	add.w	r9, sp, #84	; 0x54
   104ea:	f10d 0c64 	add.w	ip, sp, #100	; 0x64
   104ee:	f04f 0a00 	mov.w	sl, #0
   104f2:	9302      	str	r3, [sp, #8]
   104f4:	ac05      	add	r4, sp, #20
   104f6:	f10d 0894 	add.w	r8, sp, #148	; 0x94
   104fa:	f8d4 e000 	ldr.w	lr, [r4]
   104fe:	4649      	mov	r1, r9
   10500:	6867      	ldr	r7, [r4, #4]
   10502:	4640      	mov	r0, r8
   10504:	68a6      	ldr	r6, [r4, #8]
   10506:	68e5      	ldr	r5, [r4, #12]
   10508:	9401      	str	r4, [sp, #4]
   1050a:	f851 2b04 	ldr.w	r2, [r1], #4
   1050e:	6803      	ldr	r3, [r0, #0]
   10510:	458c      	cmp	ip, r1
   10512:	68cc      	ldr	r4, [r1, #12]
   10514:	fb0e 3b02 	mla	fp, lr, r2, r3
   10518:	69ca      	ldr	r2, [r1, #28]
   1051a:	6acb      	ldr	r3, [r1, #44]	; 0x2c
   1051c:	fb04 bb07 	mla	fp, r4, r7, fp
   10520:	fb02 b206 	mla	r2, r2, r6, fp
   10524:	fb03 2305 	mla	r3, r3, r5, r2
   10528:	f840 3b04 	str.w	r3, [r0], #4
   1052c:	d1ed      	bne.n	1050a <main+0x86>
   1052e:	9c01      	ldr	r4, [sp, #4]
   10530:	f108 0810 	add.w	r8, r8, #16
   10534:	3410      	adds	r4, #16
   10536:	454c      	cmp	r4, r9
   10538:	d1df      	bne.n	104fa <main+0x76>
   1053a:	9b02      	ldr	r3, [sp, #8]
   1053c:	f10a 0a01 	add.w	sl, sl, #1
   10540:	459a      	cmp	sl, r3
   10542:	d3d7      	bcc.n	104f4 <main+0x70>
   10544:	a825      	add	r0, sp, #148	; 0x94
   10546:	f000 f881 	bl	1064c <print_matriu>
   1054a:	9b03      	ldr	r3, [sp, #12]
   1054c:	9a35      	ldr	r2, [sp, #212]	; 0xd4
   1054e:	2000      	movs	r0, #0
   10550:	681b      	ldr	r3, [r3, #0]
   10552:	429a      	cmp	r2, r3
   10554:	d107      	bne.n	10566 <main+0xe2>
   10556:	b037      	add	sp, #220	; 0xdc
   10558:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   1055c:	f249 7303 	movw	r3, #38659	; 0x9703
   10560:	f2c0 0398 	movt	r3, #152	; 0x98
   10564:	e7bf      	b.n	104e6 <main+0x62>
   10566:	f7ff ef5e 	blx	10424 <__stack_chk_fail@plt>
   1056a:	bf00      	nop

0001056c <_start>:
   1056c:	f04f 0b00 	mov.w	fp, #0
   10570:	f04f 0e00 	mov.w	lr, #0
   10574:	bc02      	pop	{r1}
   10576:	466a      	mov	r2, sp
   10578:	b404      	push	{r2}
   1057a:	b401      	push	{r0}
   1057c:	f8df c010 	ldr.w	ip, [pc, #16]	; 10590 <_start+0x24>
   10580:	f84d cd04 	str.w	ip, [sp, #-4]!
   10584:	4803      	ldr	r0, [pc, #12]	; (10594 <_start+0x28>)
   10586:	4b04      	ldr	r3, [pc, #16]	; (10598 <_start+0x2c>)
   10588:	f7ff ef52 	blx	10430 <__libc_start_main@plt>
   1058c:	f7ff ef74 	blx	10478 <abort@plt>
   10590:	000106b9 	.word	0x000106b9
   10594:	00010485 	.word	0x00010485
   10598:	0001067d 	.word	0x0001067d

0001059c <call_weak_fn>:
   1059c:	e59f3014 	ldr	r3, [pc, #20]	; 105b8 <call_weak_fn+0x1c>
   105a0:	e59f2014 	ldr	r2, [pc, #20]	; 105bc <call_weak_fn+0x20>
   105a4:	e08f3003 	add	r3, pc, r3
   105a8:	e7932002 	ldr	r2, [r3, r2]
   105ac:	e3520000 	cmp	r2, #0
   105b0:	012fff1e 	bxeq	lr
   105b4:	eaffffa0 	b	1043c <__gmon_start__@plt>
   105b8:	00010a54 	.word	0x00010a54
   105bc:	00000030 	.word	0x00000030

000105c0 <deregister_tm_clones>:
   105c0:	4b07      	ldr	r3, [pc, #28]	; (105e0 <deregister_tm_clones+0x20>)
   105c2:	f241 003c 	movw	r0, #4156	; 0x103c
   105c6:	f2c0 0002 	movt	r0, #2
   105ca:	1a1b      	subs	r3, r3, r0
   105cc:	2b06      	cmp	r3, #6
   105ce:	d905      	bls.n	105dc <deregister_tm_clones+0x1c>
   105d0:	f240 0300 	movw	r3, #0
   105d4:	f2c0 0300 	movt	r3, #0
   105d8:	b103      	cbz	r3, 105dc <deregister_tm_clones+0x1c>
   105da:	4718      	bx	r3
   105dc:	4770      	bx	lr
   105de:	bf00      	nop
   105e0:	0002103f 	.word	0x0002103f

000105e4 <register_tm_clones>:
   105e4:	f241 033c 	movw	r3, #4156	; 0x103c
   105e8:	f241 003c 	movw	r0, #4156	; 0x103c
   105ec:	f2c0 0302 	movt	r3, #2
   105f0:	f2c0 0002 	movt	r0, #2
   105f4:	1a19      	subs	r1, r3, r0
   105f6:	1089      	asrs	r1, r1, #2
   105f8:	eb01 71d1 	add.w	r1, r1, r1, lsr #31
   105fc:	1049      	asrs	r1, r1, #1
   105fe:	d005      	beq.n	1060c <register_tm_clones+0x28>
   10600:	f240 0300 	movw	r3, #0
   10604:	f2c0 0300 	movt	r3, #0
   10608:	b103      	cbz	r3, 1060c <register_tm_clones+0x28>
   1060a:	4718      	bx	r3
   1060c:	4770      	bx	lr
   1060e:	bf00      	nop

00010610 <__do_global_dtors_aux>:
   10610:	b510      	push	{r4, lr}
   10612:	f241 0444 	movw	r4, #4164	; 0x1044
   10616:	f2c0 0402 	movt	r4, #2
   1061a:	7823      	ldrb	r3, [r4, #0]
   1061c:	b91b      	cbnz	r3, 10626 <__do_global_dtors_aux+0x16>
   1061e:	f7ff ffcf 	bl	105c0 <deregister_tm_clones>
   10622:	2301      	movs	r3, #1
   10624:	7023      	strb	r3, [r4, #0]
   10626:	bd10      	pop	{r4, pc}

00010628 <frame_dummy>:
   10628:	b508      	push	{r3, lr}
   1062a:	f640 700c 	movw	r0, #3852	; 0xf0c
   1062e:	f2c0 0002 	movt	r0, #2
   10632:	6803      	ldr	r3, [r0, #0]
   10634:	b913      	cbnz	r3, 1063c <frame_dummy+0x14>
   10636:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
   1063a:	e7d3      	b.n	105e4 <register_tm_clones>
   1063c:	f240 0300 	movw	r3, #0
   10640:	f2c0 0300 	movt	r3, #0
   10644:	2b00      	cmp	r3, #0
   10646:	d0f6      	beq.n	10636 <frame_dummy+0xe>
   10648:	4798      	blx	r3
   1064a:	e7f4      	b.n	10636 <frame_dummy+0xe>

0001064c <print_matriu>:
   1064c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   1064e:	f240 66c8 	movw	r6, #1736	; 0x6c8
   10652:	1f04      	subs	r4, r0, #4
   10654:	f100 073c 	add.w	r7, r0, #60	; 0x3c
   10658:	f2c0 0601 	movt	r6, #1
   1065c:	f104 0510 	add.w	r5, r4, #16
   10660:	f854 2f04 	ldr.w	r2, [r4, #4]!
   10664:	4631      	mov	r1, r6
   10666:	2001      	movs	r0, #1
   10668:	f7ff eefa 	blx	10460 <__printf_chk@plt>
   1066c:	42ac      	cmp	r4, r5
   1066e:	d1f7      	bne.n	10660 <print_matriu+0x14>
   10670:	200a      	movs	r0, #10
   10672:	f7ff eef0 	blx	10454 <putchar@plt>
   10676:	42a7      	cmp	r7, r4
   10678:	d1f0      	bne.n	1065c <print_matriu+0x10>
   1067a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

0001067c <__libc_csu_init>:
   1067c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
   10680:	4607      	mov	r7, r0
   10682:	4e0b      	ldr	r6, [pc, #44]	; (106b0 <__libc_csu_init+0x34>)
   10684:	4688      	mov	r8, r1
   10686:	4d0b      	ldr	r5, [pc, #44]	; (106b4 <__libc_csu_init+0x38>)
   10688:	4691      	mov	r9, r2
   1068a:	447e      	add	r6, pc
   1068c:	f7ff eeb4 	blx	103f8 <_init>
   10690:	447d      	add	r5, pc
   10692:	1b76      	subs	r6, r6, r5
   10694:	10b6      	asrs	r6, r6, #2
   10696:	d009      	beq.n	106ac <__libc_csu_init+0x30>
   10698:	2400      	movs	r4, #0
   1069a:	3401      	adds	r4, #1
   1069c:	f855 3b04 	ldr.w	r3, [r5], #4
   106a0:	464a      	mov	r2, r9
   106a2:	4641      	mov	r1, r8
   106a4:	4638      	mov	r0, r7
   106a6:	4798      	blx	r3
   106a8:	42b4      	cmp	r4, r6
   106aa:	d1f6      	bne.n	1069a <__libc_csu_init+0x1e>
   106ac:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
   106b0:	0001087a 	.word	0x0001087a
   106b4:	00010870 	.word	0x00010870

000106b8 <__libc_csu_fini>:
   106b8:	4770      	bx	lr
   106ba:	bf00      	nop

Disassembly of section .fini:

000106bc <_fini>:
   106bc:	e92d4008 	push	{r3, lr}
   106c0:	e8bd8008 	pop	{r3, pc}
