
matriuFullNoInline.g:     file format elf32-littlearm


Disassembly of section .init:

000103f8 <_init>:
   103f8:	e92d4008 	push	{r3, lr}
   103fc:	eb000051 	bl	10548 <call_weak_fn>
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
   10488:	f241 0840 	movw	r8, #4160	; 0x1040
   1048c:	f2c0 0802 	movt	r8, #2
   10490:	b0b3      	sub	sp, #204	; 0xcc
   10492:	4682      	mov	sl, r0
   10494:	468b      	mov	fp, r1
   10496:	f8d8 3000 	ldr.w	r3, [r8]
   1049a:	a821      	add	r0, sp, #132	; 0x84
   1049c:	2240      	movs	r2, #64	; 0x40
   1049e:	2100      	movs	r1, #0
   104a0:	af10      	add	r7, sp, #64	; 0x40
   104a2:	ae04      	add	r6, sp, #16
   104a4:	9331      	str	r3, [sp, #196]	; 0xc4
   104a6:	f7ff efd0 	blx	10448 <memset@plt>
   104aa:	f10d 0980 	add.w	r9, sp, #128	; 0x80
   104ae:	f1a6 0410 	sub.w	r4, r6, #16
   104b2:	463d      	mov	r5, r7
   104b4:	f7ff efda 	blx	1046c <rand@plt>
   104b8:	f844 0f04 	str.w	r0, [r4, #4]!
   104bc:	f7ff efd6 	blx	1046c <rand@plt>
   104c0:	42b4      	cmp	r4, r6
   104c2:	f845 0f04 	str.w	r0, [r5, #4]!
   104c6:	d1f5      	bne.n	104b4 <main+0x30>
   104c8:	3710      	adds	r7, #16
   104ca:	f104 0610 	add.w	r6, r4, #16
   104ce:	454f      	cmp	r7, r9
   104d0:	d1ed      	bne.n	104ae <main+0x2a>
   104d2:	f1ba 0f01 	cmp.w	sl, #1
   104d6:	dd17      	ble.n	10508 <main+0x84>
   104d8:	f8db 0004 	ldr.w	r0, [fp, #4]
   104dc:	220a      	movs	r2, #10
   104de:	2100      	movs	r1, #0
   104e0:	f7ff ef9a 	blx	10418 <strtol@plt>
   104e4:	4603      	mov	r3, r0
   104e6:	aa21      	add	r2, sp, #132	; 0x84
   104e8:	a911      	add	r1, sp, #68	; 0x44
   104ea:	a801      	add	r0, sp, #4
   104ec:	f000 f884 	bl	105f8 <multiplica>
   104f0:	a821      	add	r0, sp, #132	; 0x84
   104f2:	f000 fa3b 	bl	1096c <print_matriu>
   104f6:	9a31      	ldr	r2, [sp, #196]	; 0xc4
   104f8:	f8d8 3000 	ldr.w	r3, [r8]
   104fc:	2000      	movs	r0, #0
   104fe:	429a      	cmp	r2, r3
   10500:	d107      	bne.n	10512 <main+0x8e>
   10502:	b033      	add	sp, #204	; 0xcc
   10504:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10508:	f249 7303 	movw	r3, #38659	; 0x9703
   1050c:	f2c0 0398 	movt	r3, #152	; 0x98
   10510:	e7e9      	b.n	104e6 <main+0x62>
   10512:	f7ff ef88 	blx	10424 <__stack_chk_fail@plt>
   10516:	bf00      	nop

00010518 <_start>:
   10518:	f04f 0b00 	mov.w	fp, #0
   1051c:	f04f 0e00 	mov.w	lr, #0
   10520:	bc02      	pop	{r1}
   10522:	466a      	mov	r2, sp
   10524:	b404      	push	{r2}
   10526:	b401      	push	{r0}
   10528:	f8df c010 	ldr.w	ip, [pc, #16]	; 1053c <_start+0x24>
   1052c:	f84d cd04 	str.w	ip, [sp, #-4]!
   10530:	4803      	ldr	r0, [pc, #12]	; (10540 <_start+0x28>)
   10532:	4b04      	ldr	r3, [pc, #16]	; (10544 <_start+0x2c>)
   10534:	f7ff ef7c 	blx	10430 <__libc_start_main@plt>
   10538:	f7ff ef9e 	blx	10478 <abort@plt>
   1053c:	000109d9 	.word	0x000109d9
   10540:	00010485 	.word	0x00010485
   10544:	0001099d 	.word	0x0001099d

00010548 <call_weak_fn>:
   10548:	e59f3014 	ldr	r3, [pc, #20]	; 10564 <call_weak_fn+0x1c>
   1054c:	e59f2014 	ldr	r2, [pc, #20]	; 10568 <call_weak_fn+0x20>
   10550:	e08f3003 	add	r3, pc, r3
   10554:	e7932002 	ldr	r2, [r3, r2]
   10558:	e3520000 	cmp	r2, #0
   1055c:	012fff1e 	bxeq	lr
   10560:	eaffffb5 	b	1043c <__gmon_start__@plt>
   10564:	00010aa8 	.word	0x00010aa8
   10568:	00000030 	.word	0x00000030

0001056c <deregister_tm_clones>:
   1056c:	4b07      	ldr	r3, [pc, #28]	; (1058c <deregister_tm_clones+0x20>)
   1056e:	f241 003c 	movw	r0, #4156	; 0x103c
   10572:	f2c0 0002 	movt	r0, #2
   10576:	1a1b      	subs	r3, r3, r0
   10578:	2b06      	cmp	r3, #6
   1057a:	d905      	bls.n	10588 <deregister_tm_clones+0x1c>
   1057c:	f240 0300 	movw	r3, #0
   10580:	f2c0 0300 	movt	r3, #0
   10584:	b103      	cbz	r3, 10588 <deregister_tm_clones+0x1c>
   10586:	4718      	bx	r3
   10588:	4770      	bx	lr
   1058a:	bf00      	nop
   1058c:	0002103f 	.word	0x0002103f

00010590 <register_tm_clones>:
   10590:	f241 033c 	movw	r3, #4156	; 0x103c
   10594:	f241 003c 	movw	r0, #4156	; 0x103c
   10598:	f2c0 0302 	movt	r3, #2
   1059c:	f2c0 0002 	movt	r0, #2
   105a0:	1a19      	subs	r1, r3, r0
   105a2:	1089      	asrs	r1, r1, #2
   105a4:	eb01 71d1 	add.w	r1, r1, r1, lsr #31
   105a8:	1049      	asrs	r1, r1, #1
   105aa:	d005      	beq.n	105b8 <register_tm_clones+0x28>
   105ac:	f240 0300 	movw	r3, #0
   105b0:	f2c0 0300 	movt	r3, #0
   105b4:	b103      	cbz	r3, 105b8 <register_tm_clones+0x28>
   105b6:	4718      	bx	r3
   105b8:	4770      	bx	lr
   105ba:	bf00      	nop

000105bc <__do_global_dtors_aux>:
   105bc:	b510      	push	{r4, lr}
   105be:	f241 0444 	movw	r4, #4164	; 0x1044
   105c2:	f2c0 0402 	movt	r4, #2
   105c6:	7823      	ldrb	r3, [r4, #0]
   105c8:	b91b      	cbnz	r3, 105d2 <__do_global_dtors_aux+0x16>
   105ca:	f7ff ffcf 	bl	1056c <deregister_tm_clones>
   105ce:	2301      	movs	r3, #1
   105d0:	7023      	strb	r3, [r4, #0]
   105d2:	bd10      	pop	{r4, pc}

000105d4 <frame_dummy>:
   105d4:	b508      	push	{r3, lr}
   105d6:	f640 700c 	movw	r0, #3852	; 0xf0c
   105da:	f2c0 0002 	movt	r0, #2
   105de:	6803      	ldr	r3, [r0, #0]
   105e0:	b913      	cbnz	r3, 105e8 <frame_dummy+0x14>
   105e2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
   105e6:	e7d3      	b.n	10590 <register_tm_clones>
   105e8:	f240 0300 	movw	r3, #0
   105ec:	f2c0 0300 	movt	r3, #0
   105f0:	2b00      	cmp	r3, #0
   105f2:	d0f6      	beq.n	105e2 <frame_dummy+0xe>
   105f4:	4798      	blx	r3
   105f6:	e7f4      	b.n	105e2 <frame_dummy+0xe>

000105f8 <multiplica>:
   105f8:	e92d 4ff0 	stmdb	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, lr}
   105fc:	b08d      	sub	sp, #52	; 0x34
   105fe:	930b      	str	r3, [sp, #44]	; 0x2c
   10600:	2b00      	cmp	r3, #0
   10602:	f000 81b0 	beq.w	10966 <multiplica+0x36e>
   10606:	2300      	movs	r3, #0
   10608:	9301      	str	r3, [sp, #4]
   1060a:	6953      	ldr	r3, [r2, #20]
   1060c:	f102 0808 	add.w	r8, r2, #8
   10610:	f8d2 e000 	ldr.w	lr, [r2]
   10614:	e898 0700 	ldmia.w	r8, {r8, r9, sl}
   10618:	9303      	str	r3, [sp, #12]
   1061a:	6993      	ldr	r3, [r2, #24]
   1061c:	6b15      	ldr	r5, [r2, #48]	; 0x30
   1061e:	f8d2 c004 	ldr.w	ip, [r2, #4]
   10622:	9304      	str	r3, [sp, #16]
   10624:	69d3      	ldr	r3, [r2, #28]
   10626:	6b57      	ldr	r7, [r2, #52]	; 0x34
   10628:	6b96      	ldr	r6, [r2, #56]	; 0x38
   1062a:	9305      	str	r3, [sp, #20]
   1062c:	6a13      	ldr	r3, [r2, #32]
   1062e:	f8cd e008 	str.w	lr, [sp, #8]
   10632:	46ae      	mov	lr, r5
   10634:	9306      	str	r3, [sp, #24]
   10636:	6a53      	ldr	r3, [r2, #36]	; 0x24
   10638:	9307      	str	r3, [sp, #28]
   1063a:	6a93      	ldr	r3, [r2, #40]	; 0x28
   1063c:	9308      	str	r3, [sp, #32]
   1063e:	6ad3      	ldr	r3, [r2, #44]	; 0x2c
   10640:	9309      	str	r3, [sp, #36]	; 0x24
   10642:	6bd3      	ldr	r3, [r2, #60]	; 0x3c
   10644:	930a      	str	r3, [sp, #40]	; 0x28
   10646:	9c01      	ldr	r4, [sp, #4]
   10648:	6803      	ldr	r3, [r0, #0]
   1064a:	9d02      	ldr	r5, [sp, #8]
   1064c:	3401      	adds	r4, #1
   1064e:	9401      	str	r4, [sp, #4]
   10650:	680c      	ldr	r4, [r1, #0]
   10652:	fb04 5403 	mla	r4, r4, r3, r5
   10656:	6014      	str	r4, [r2, #0]
   10658:	6843      	ldr	r3, [r0, #4]
   1065a:	690d      	ldr	r5, [r1, #16]
   1065c:	fb05 4403 	mla	r4, r5, r3, r4
   10660:	6014      	str	r4, [r2, #0]
   10662:	6883      	ldr	r3, [r0, #8]
   10664:	6a0d      	ldr	r5, [r1, #32]
   10666:	fb05 4403 	mla	r4, r5, r3, r4
   1066a:	6014      	str	r4, [r2, #0]
   1066c:	6b0d      	ldr	r5, [r1, #48]	; 0x30
   1066e:	68c3      	ldr	r3, [r0, #12]
   10670:	fb05 4303 	mla	r3, r5, r3, r4
   10674:	6013      	str	r3, [r2, #0]
   10676:	9302      	str	r3, [sp, #8]
   10678:	684c      	ldr	r4, [r1, #4]
   1067a:	6803      	ldr	r3, [r0, #0]
   1067c:	fb04 c403 	mla	r4, r4, r3, ip
   10680:	6054      	str	r4, [r2, #4]
   10682:	6843      	ldr	r3, [r0, #4]
   10684:	469c      	mov	ip, r3
   10686:	694b      	ldr	r3, [r1, #20]
   10688:	fb03 440c 	mla	r4, r3, ip, r4
   1068c:	6054      	str	r4, [r2, #4]
   1068e:	6883      	ldr	r3, [r0, #8]
   10690:	469c      	mov	ip, r3
   10692:	6a4b      	ldr	r3, [r1, #36]	; 0x24
   10694:	fb03 440c 	mla	r4, r3, ip, r4
   10698:	6054      	str	r4, [r2, #4]
   1069a:	68c3      	ldr	r3, [r0, #12]
   1069c:	469c      	mov	ip, r3
   1069e:	6b4b      	ldr	r3, [r1, #52]	; 0x34
   106a0:	fb03 4c0c 	mla	ip, r3, ip, r4
   106a4:	f8c2 c004 	str.w	ip, [r2, #4]
   106a8:	6803      	ldr	r3, [r0, #0]
   106aa:	688c      	ldr	r4, [r1, #8]
   106ac:	fb04 8403 	mla	r4, r4, r3, r8
   106b0:	6094      	str	r4, [r2, #8]
   106b2:	6843      	ldr	r3, [r0, #4]
   106b4:	4698      	mov	r8, r3
   106b6:	698b      	ldr	r3, [r1, #24]
   106b8:	fb03 4408 	mla	r4, r3, r8, r4
   106bc:	6094      	str	r4, [r2, #8]
   106be:	6883      	ldr	r3, [r0, #8]
   106c0:	4698      	mov	r8, r3
   106c2:	6a8b      	ldr	r3, [r1, #40]	; 0x28
   106c4:	fb03 4408 	mla	r4, r3, r8, r4
   106c8:	6094      	str	r4, [r2, #8]
   106ca:	68c3      	ldr	r3, [r0, #12]
   106cc:	4698      	mov	r8, r3
   106ce:	6b8b      	ldr	r3, [r1, #56]	; 0x38
   106d0:	fb03 4808 	mla	r8, r3, r8, r4
   106d4:	f8c2 8008 	str.w	r8, [r2, #8]
   106d8:	6803      	ldr	r3, [r0, #0]
   106da:	68cc      	ldr	r4, [r1, #12]
   106dc:	fb04 9403 	mla	r4, r4, r3, r9
   106e0:	60d4      	str	r4, [r2, #12]
   106e2:	6843      	ldr	r3, [r0, #4]
   106e4:	4699      	mov	r9, r3
   106e6:	69cb      	ldr	r3, [r1, #28]
   106e8:	fb03 4409 	mla	r4, r3, r9, r4
   106ec:	60d4      	str	r4, [r2, #12]
   106ee:	6883      	ldr	r3, [r0, #8]
   106f0:	4699      	mov	r9, r3
   106f2:	6acb      	ldr	r3, [r1, #44]	; 0x2c
   106f4:	fb03 4409 	mla	r4, r3, r9, r4
   106f8:	60d4      	str	r4, [r2, #12]
   106fa:	68c3      	ldr	r3, [r0, #12]
   106fc:	4699      	mov	r9, r3
   106fe:	6bcb      	ldr	r3, [r1, #60]	; 0x3c
   10700:	fb03 4909 	mla	r9, r3, r9, r4
   10704:	f8c2 900c 	str.w	r9, [r2, #12]
   10708:	6903      	ldr	r3, [r0, #16]
   1070a:	680c      	ldr	r4, [r1, #0]
   1070c:	fb04 a403 	mla	r4, r4, r3, sl
   10710:	6114      	str	r4, [r2, #16]
   10712:	6943      	ldr	r3, [r0, #20]
   10714:	469a      	mov	sl, r3
   10716:	690b      	ldr	r3, [r1, #16]
   10718:	fb03 440a 	mla	r4, r3, sl, r4
   1071c:	6114      	str	r4, [r2, #16]
   1071e:	6983      	ldr	r3, [r0, #24]
   10720:	469a      	mov	sl, r3
   10722:	6a0b      	ldr	r3, [r1, #32]
   10724:	fb03 440a 	mla	r4, r3, sl, r4
   10728:	6114      	str	r4, [r2, #16]
   1072a:	69c3      	ldr	r3, [r0, #28]
   1072c:	469a      	mov	sl, r3
   1072e:	6b0b      	ldr	r3, [r1, #48]	; 0x30
   10730:	fb03 4a0a 	mla	sl, r3, sl, r4
   10734:	f8c2 a010 	str.w	sl, [r2, #16]
   10738:	684c      	ldr	r4, [r1, #4]
   1073a:	6903      	ldr	r3, [r0, #16]
   1073c:	469b      	mov	fp, r3
   1073e:	9b03      	ldr	r3, [sp, #12]
   10740:	fb04 340b 	mla	r4, r4, fp, r3
   10744:	6154      	str	r4, [r2, #20]
   10746:	6943      	ldr	r3, [r0, #20]
   10748:	469b      	mov	fp, r3
   1074a:	694b      	ldr	r3, [r1, #20]
   1074c:	fb03 440b 	mla	r4, r3, fp, r4
   10750:	6154      	str	r4, [r2, #20]
   10752:	6983      	ldr	r3, [r0, #24]
   10754:	469b      	mov	fp, r3
   10756:	6a4b      	ldr	r3, [r1, #36]	; 0x24
   10758:	fb03 440b 	mla	r4, r3, fp, r4
   1075c:	6154      	str	r4, [r2, #20]
   1075e:	69c3      	ldr	r3, [r0, #28]
   10760:	469b      	mov	fp, r3
   10762:	6b4b      	ldr	r3, [r1, #52]	; 0x34
   10764:	fb03 430b 	mla	r3, r3, fp, r4
   10768:	6153      	str	r3, [r2, #20]
   1076a:	9303      	str	r3, [sp, #12]
   1076c:	6903      	ldr	r3, [r0, #16]
   1076e:	688c      	ldr	r4, [r1, #8]
   10770:	469b      	mov	fp, r3
   10772:	9b04      	ldr	r3, [sp, #16]
   10774:	fb04 340b 	mla	r4, r4, fp, r3
   10778:	6194      	str	r4, [r2, #24]
   1077a:	6943      	ldr	r3, [r0, #20]
   1077c:	469b      	mov	fp, r3
   1077e:	698b      	ldr	r3, [r1, #24]
   10780:	fb03 440b 	mla	r4, r3, fp, r4
   10784:	6194      	str	r4, [r2, #24]
   10786:	6983      	ldr	r3, [r0, #24]
   10788:	469b      	mov	fp, r3
   1078a:	6a8b      	ldr	r3, [r1, #40]	; 0x28
   1078c:	fb03 440b 	mla	r4, r3, fp, r4
   10790:	6194      	str	r4, [r2, #24]
   10792:	69c3      	ldr	r3, [r0, #28]
   10794:	469b      	mov	fp, r3
   10796:	6b8b      	ldr	r3, [r1, #56]	; 0x38
   10798:	fb03 430b 	mla	r3, r3, fp, r4
   1079c:	6193      	str	r3, [r2, #24]
   1079e:	9304      	str	r3, [sp, #16]
   107a0:	6903      	ldr	r3, [r0, #16]
   107a2:	68cc      	ldr	r4, [r1, #12]
   107a4:	469b      	mov	fp, r3
   107a6:	9b05      	ldr	r3, [sp, #20]
   107a8:	fb04 340b 	mla	r4, r4, fp, r3
   107ac:	61d4      	str	r4, [r2, #28]
   107ae:	6943      	ldr	r3, [r0, #20]
   107b0:	469b      	mov	fp, r3
   107b2:	69cb      	ldr	r3, [r1, #28]
   107b4:	fb03 440b 	mla	r4, r3, fp, r4
   107b8:	61d4      	str	r4, [r2, #28]
   107ba:	6983      	ldr	r3, [r0, #24]
   107bc:	469b      	mov	fp, r3
   107be:	6acb      	ldr	r3, [r1, #44]	; 0x2c
   107c0:	fb03 440b 	mla	r4, r3, fp, r4
   107c4:	61d4      	str	r4, [r2, #28]
   107c6:	69c3      	ldr	r3, [r0, #28]
   107c8:	469b      	mov	fp, r3
   107ca:	6bcb      	ldr	r3, [r1, #60]	; 0x3c
   107cc:	fb03 430b 	mla	r3, r3, fp, r4
   107d0:	61d3      	str	r3, [r2, #28]
   107d2:	9305      	str	r3, [sp, #20]
   107d4:	6a03      	ldr	r3, [r0, #32]
   107d6:	680c      	ldr	r4, [r1, #0]
   107d8:	469b      	mov	fp, r3
   107da:	9b06      	ldr	r3, [sp, #24]
   107dc:	fb04 340b 	mla	r4, r4, fp, r3
   107e0:	6214      	str	r4, [r2, #32]
   107e2:	6a43      	ldr	r3, [r0, #36]	; 0x24
   107e4:	469b      	mov	fp, r3
   107e6:	690b      	ldr	r3, [r1, #16]
   107e8:	fb03 440b 	mla	r4, r3, fp, r4
   107ec:	6214      	str	r4, [r2, #32]
   107ee:	6a83      	ldr	r3, [r0, #40]	; 0x28
   107f0:	469b      	mov	fp, r3
   107f2:	6a0b      	ldr	r3, [r1, #32]
   107f4:	fb03 440b 	mla	r4, r3, fp, r4
   107f8:	6214      	str	r4, [r2, #32]
   107fa:	6ac3      	ldr	r3, [r0, #44]	; 0x2c
   107fc:	469b      	mov	fp, r3
   107fe:	6b0b      	ldr	r3, [r1, #48]	; 0x30
   10800:	fb03 430b 	mla	r3, r3, fp, r4
   10804:	6213      	str	r3, [r2, #32]
   10806:	9306      	str	r3, [sp, #24]
   10808:	6a03      	ldr	r3, [r0, #32]
   1080a:	684c      	ldr	r4, [r1, #4]
   1080c:	469b      	mov	fp, r3
   1080e:	9b07      	ldr	r3, [sp, #28]
   10810:	fb04 340b 	mla	r4, r4, fp, r3
   10814:	6254      	str	r4, [r2, #36]	; 0x24
   10816:	6a43      	ldr	r3, [r0, #36]	; 0x24
   10818:	469b      	mov	fp, r3
   1081a:	694b      	ldr	r3, [r1, #20]
   1081c:	fb03 440b 	mla	r4, r3, fp, r4
   10820:	6254      	str	r4, [r2, #36]	; 0x24
   10822:	6a83      	ldr	r3, [r0, #40]	; 0x28
   10824:	469b      	mov	fp, r3
   10826:	6a4b      	ldr	r3, [r1, #36]	; 0x24
   10828:	fb03 440b 	mla	r4, r3, fp, r4
   1082c:	6254      	str	r4, [r2, #36]	; 0x24
   1082e:	6ac3      	ldr	r3, [r0, #44]	; 0x2c
   10830:	469b      	mov	fp, r3
   10832:	6b4b      	ldr	r3, [r1, #52]	; 0x34
   10834:	fb03 430b 	mla	r3, r3, fp, r4
   10838:	6253      	str	r3, [r2, #36]	; 0x24
   1083a:	9307      	str	r3, [sp, #28]
   1083c:	6a03      	ldr	r3, [r0, #32]
   1083e:	688c      	ldr	r4, [r1, #8]
   10840:	469b      	mov	fp, r3
   10842:	9b08      	ldr	r3, [sp, #32]
   10844:	fb04 340b 	mla	r4, r4, fp, r3
   10848:	6294      	str	r4, [r2, #40]	; 0x28
   1084a:	6a43      	ldr	r3, [r0, #36]	; 0x24
   1084c:	469b      	mov	fp, r3
   1084e:	698b      	ldr	r3, [r1, #24]
   10850:	fb03 440b 	mla	r4, r3, fp, r4
   10854:	6294      	str	r4, [r2, #40]	; 0x28
   10856:	6a83      	ldr	r3, [r0, #40]	; 0x28
   10858:	469b      	mov	fp, r3
   1085a:	6a8b      	ldr	r3, [r1, #40]	; 0x28
   1085c:	fb03 440b 	mla	r4, r3, fp, r4
   10860:	6294      	str	r4, [r2, #40]	; 0x28
   10862:	6ac3      	ldr	r3, [r0, #44]	; 0x2c
   10864:	469b      	mov	fp, r3
   10866:	6b8b      	ldr	r3, [r1, #56]	; 0x38
   10868:	fb03 430b 	mla	r3, r3, fp, r4
   1086c:	6293      	str	r3, [r2, #40]	; 0x28
   1086e:	9308      	str	r3, [sp, #32]
   10870:	6a03      	ldr	r3, [r0, #32]
   10872:	68cc      	ldr	r4, [r1, #12]
   10874:	469b      	mov	fp, r3
   10876:	9b09      	ldr	r3, [sp, #36]	; 0x24
   10878:	fb04 340b 	mla	r4, r4, fp, r3
   1087c:	62d4      	str	r4, [r2, #44]	; 0x2c
   1087e:	6a43      	ldr	r3, [r0, #36]	; 0x24
   10880:	469b      	mov	fp, r3
   10882:	69cb      	ldr	r3, [r1, #28]
   10884:	fb03 440b 	mla	r4, r3, fp, r4
   10888:	62d4      	str	r4, [r2, #44]	; 0x2c
   1088a:	6a83      	ldr	r3, [r0, #40]	; 0x28
   1088c:	469b      	mov	fp, r3
   1088e:	6acb      	ldr	r3, [r1, #44]	; 0x2c
   10890:	fb03 440b 	mla	r4, r3, fp, r4
   10894:	62d4      	str	r4, [r2, #44]	; 0x2c
   10896:	6ac3      	ldr	r3, [r0, #44]	; 0x2c
   10898:	469b      	mov	fp, r3
   1089a:	6bcb      	ldr	r3, [r1, #60]	; 0x3c
   1089c:	fb03 430b 	mla	r3, r3, fp, r4
   108a0:	9309      	str	r3, [sp, #36]	; 0x24
   108a2:	62d3      	str	r3, [r2, #44]	; 0x2c
   108a4:	6b03      	ldr	r3, [r0, #48]	; 0x30
   108a6:	680c      	ldr	r4, [r1, #0]
   108a8:	fb04 e403 	mla	r4, r4, r3, lr
   108ac:	6314      	str	r4, [r2, #48]	; 0x30
   108ae:	6b43      	ldr	r3, [r0, #52]	; 0x34
   108b0:	469e      	mov	lr, r3
   108b2:	690b      	ldr	r3, [r1, #16]
   108b4:	fb03 440e 	mla	r4, r3, lr, r4
   108b8:	6314      	str	r4, [r2, #48]	; 0x30
   108ba:	6b83      	ldr	r3, [r0, #56]	; 0x38
   108bc:	469e      	mov	lr, r3
   108be:	6a0b      	ldr	r3, [r1, #32]
   108c0:	fb03 440e 	mla	r4, r3, lr, r4
   108c4:	6314      	str	r4, [r2, #48]	; 0x30
   108c6:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
   108c8:	469e      	mov	lr, r3
   108ca:	6b0b      	ldr	r3, [r1, #48]	; 0x30
   108cc:	fb03 4e0e 	mla	lr, r3, lr, r4
   108d0:	f8c2 e030 	str.w	lr, [r2, #48]	; 0x30
   108d4:	684c      	ldr	r4, [r1, #4]
   108d6:	6b03      	ldr	r3, [r0, #48]	; 0x30
   108d8:	fb04 7703 	mla	r7, r4, r3, r7
   108dc:	6357      	str	r7, [r2, #52]	; 0x34
   108de:	694c      	ldr	r4, [r1, #20]
   108e0:	6b43      	ldr	r3, [r0, #52]	; 0x34
   108e2:	fb04 7703 	mla	r7, r4, r3, r7
   108e6:	6357      	str	r7, [r2, #52]	; 0x34
   108e8:	6a4b      	ldr	r3, [r1, #36]	; 0x24
   108ea:	6b84      	ldr	r4, [r0, #56]	; 0x38
   108ec:	fb03 7404 	mla	r4, r3, r4, r7
   108f0:	6354      	str	r4, [r2, #52]	; 0x34
   108f2:	6b4b      	ldr	r3, [r1, #52]	; 0x34
   108f4:	6bc7      	ldr	r7, [r0, #60]	; 0x3c
   108f6:	fb03 4707 	mla	r7, r3, r7, r4
   108fa:	6357      	str	r7, [r2, #52]	; 0x34
   108fc:	688c      	ldr	r4, [r1, #8]
   108fe:	6b03      	ldr	r3, [r0, #48]	; 0x30
   10900:	fb04 6603 	mla	r6, r4, r3, r6
   10904:	6396      	str	r6, [r2, #56]	; 0x38
   10906:	6b43      	ldr	r3, [r0, #52]	; 0x34
   10908:	469b      	mov	fp, r3
   1090a:	698b      	ldr	r3, [r1, #24]
   1090c:	fb03 660b 	mla	r6, r3, fp, r6
   10910:	6396      	str	r6, [r2, #56]	; 0x38
   10912:	6b83      	ldr	r3, [r0, #56]	; 0x38
   10914:	469b      	mov	fp, r3
   10916:	6a8b      	ldr	r3, [r1, #40]	; 0x28
   10918:	fb03 640b 	mla	r4, r3, fp, r6
   1091c:	6394      	str	r4, [r2, #56]	; 0x38
   1091e:	6b8b      	ldr	r3, [r1, #56]	; 0x38
   10920:	6bc6      	ldr	r6, [r0, #60]	; 0x3c
   10922:	fb03 4606 	mla	r6, r3, r6, r4
   10926:	9c0a      	ldr	r4, [sp, #40]	; 0x28
   10928:	6396      	str	r6, [r2, #56]	; 0x38
   1092a:	6b03      	ldr	r3, [r0, #48]	; 0x30
   1092c:	461d      	mov	r5, r3
   1092e:	68cb      	ldr	r3, [r1, #12]
   10930:	fb03 4305 	mla	r3, r3, r5, r4
   10934:	63d3      	str	r3, [r2, #60]	; 0x3c
   10936:	6b44      	ldr	r4, [r0, #52]	; 0x34
   10938:	46a3      	mov	fp, r4
   1093a:	69cc      	ldr	r4, [r1, #28]
   1093c:	fb04 330b 	mla	r3, r4, fp, r3
   10940:	63d3      	str	r3, [r2, #60]	; 0x3c
   10942:	6b84      	ldr	r4, [r0, #56]	; 0x38
   10944:	46a3      	mov	fp, r4
   10946:	6acc      	ldr	r4, [r1, #44]	; 0x2c
   10948:	fb04 3b0b 	mla	fp, r4, fp, r3
   1094c:	f8c2 b03c 	str.w	fp, [r2, #60]	; 0x3c
   10950:	6bcc      	ldr	r4, [r1, #60]	; 0x3c
   10952:	6bc3      	ldr	r3, [r0, #60]	; 0x3c
   10954:	fb04 b303 	mla	r3, r4, r3, fp
   10958:	9c01      	ldr	r4, [sp, #4]
   1095a:	930a      	str	r3, [sp, #40]	; 0x28
   1095c:	63d3      	str	r3, [r2, #60]	; 0x3c
   1095e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
   10960:	429c      	cmp	r4, r3
   10962:	f47f ae70 	bne.w	10646 <multiplica+0x4e>
   10966:	b00d      	add	sp, #52	; 0x34
   10968:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}

0001096c <print_matriu>:
   1096c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   1096e:	f640 16e8 	movw	r6, #2536	; 0x9e8
   10972:	1f04      	subs	r4, r0, #4
   10974:	f100 073c 	add.w	r7, r0, #60	; 0x3c
   10978:	f2c0 0601 	movt	r6, #1
   1097c:	f104 0510 	add.w	r5, r4, #16
   10980:	f854 2f04 	ldr.w	r2, [r4, #4]!
   10984:	4631      	mov	r1, r6
   10986:	2001      	movs	r0, #1
   10988:	f7ff ed6a 	blx	10460 <__printf_chk@plt>
   1098c:	42ac      	cmp	r4, r5
   1098e:	d1f7      	bne.n	10980 <print_matriu+0x14>
   10990:	200a      	movs	r0, #10
   10992:	f7ff ed60 	blx	10454 <putchar@plt>
   10996:	42a7      	cmp	r7, r4
   10998:	d1f0      	bne.n	1097c <print_matriu+0x10>
   1099a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

0001099c <__libc_csu_init>:
   1099c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
   109a0:	4607      	mov	r7, r0
   109a2:	4e0b      	ldr	r6, [pc, #44]	; (109d0 <__libc_csu_init+0x34>)
   109a4:	4688      	mov	r8, r1
   109a6:	4d0b      	ldr	r5, [pc, #44]	; (109d4 <__libc_csu_init+0x38>)
   109a8:	4691      	mov	r9, r2
   109aa:	447e      	add	r6, pc
   109ac:	f7ff ed24 	blx	103f8 <_init>
   109b0:	447d      	add	r5, pc
   109b2:	1b76      	subs	r6, r6, r5
   109b4:	10b6      	asrs	r6, r6, #2
   109b6:	d009      	beq.n	109cc <__libc_csu_init+0x30>
   109b8:	2400      	movs	r4, #0
   109ba:	3401      	adds	r4, #1
   109bc:	f855 3b04 	ldr.w	r3, [r5], #4
   109c0:	464a      	mov	r2, r9
   109c2:	4641      	mov	r1, r8
   109c4:	4638      	mov	r0, r7
   109c6:	4798      	blx	r3
   109c8:	42b4      	cmp	r4, r6
   109ca:	d1f6      	bne.n	109ba <__libc_csu_init+0x1e>
   109cc:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
   109d0:	0001055a 	.word	0x0001055a
   109d4:	00010550 	.word	0x00010550

000109d8 <__libc_csu_fini>:
   109d8:	4770      	bx	lr
   109da:	bf00      	nop

Disassembly of section .fini:

000109dc <_fini>:
   109dc:	e92d4008 	push	{r3, lr}
   109e0:	e8bd8008 	pop	{r3, pc}
