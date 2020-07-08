
matriuA.g:     file format elf32-littlearm


Disassembly of section .init:

000103f8 <_init>:
   103f8:	e92d4008 	push	{r3, lr}
   103fc:	eb000062 	bl	1058c <call_weak_fn>
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
   10492:	4683      	mov	fp, r0
   10494:	468a      	mov	sl, r1
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
   104d2:	f1bb 0f01 	cmp.w	fp, #1
   104d6:	dd3a      	ble.n	1054e <main+0xca>
   104d8:	f8da 0004 	ldr.w	r0, [sl, #4]
   104dc:	220a      	movs	r2, #10
   104de:	2100      	movs	r1, #0
   104e0:	f7ff ef9a 	blx	10418 <strtol@plt>
   104e4:	b338      	cbz	r0, 10536 <main+0xb2>
   104e6:	f10d 0954 	add.w	r9, sp, #84	; 0x54
   104ea:	f04f 0a00 	mov.w	sl, #0
   104ee:	f04f 0e00 	mov.w	lr, #0
   104f2:	ab21      	add	r3, sp, #132	; 0x84
   104f4:	ae11      	add	r6, sp, #68	; 0x44
   104f6:	eb03 070e 	add.w	r7, r3, lr
   104fa:	f1ae 0c04 	sub.w	ip, lr, #4
   104fe:	683a      	ldr	r2, [r7, #0]
   10500:	ab01      	add	r3, sp, #4
   10502:	eb03 010c 	add.w	r1, r3, ip
   10506:	2300      	movs	r3, #0
   10508:	f856 5023 	ldr.w	r5, [r6, r3, lsl #2]
   1050c:	3304      	adds	r3, #4
   1050e:	f851 4f04 	ldr.w	r4, [r1, #4]!
   10512:	2b10      	cmp	r3, #16
   10514:	fb05 2204 	mla	r2, r5, r4, r2
   10518:	d1f6      	bne.n	10508 <main+0x84>
   1051a:	3604      	adds	r6, #4
   1051c:	f847 2b04 	str.w	r2, [r7], #4
   10520:	45b1      	cmp	r9, r6
   10522:	d1ec      	bne.n	104fe <main+0x7a>
   10524:	f10e 0e10 	add.w	lr, lr, #16
   10528:	f1be 0f40 	cmp.w	lr, #64	; 0x40
   1052c:	d1e1      	bne.n	104f2 <main+0x6e>
   1052e:	f10a 0a01 	add.w	sl, sl, #1
   10532:	4582      	cmp	sl, r0
   10534:	d3db      	bcc.n	104ee <main+0x6a>
   10536:	a821      	add	r0, sp, #132	; 0x84
   10538:	f000 f880 	bl	1063c <print_matriu>
   1053c:	9a31      	ldr	r2, [sp, #196]	; 0xc4
   1053e:	f8d8 3000 	ldr.w	r3, [r8]
   10542:	2000      	movs	r0, #0
   10544:	429a      	cmp	r2, r3
   10546:	d107      	bne.n	10558 <main+0xd4>
   10548:	b033      	add	sp, #204	; 0xcc
   1054a:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   1054e:	f249 7003 	movw	r0, #38659	; 0x9703
   10552:	f2c0 0098 	movt	r0, #152	; 0x98
   10556:	e7c6      	b.n	104e6 <main+0x62>
   10558:	f7ff ef64 	blx	10424 <__stack_chk_fail@plt>

0001055c <_start>:
   1055c:	f04f 0b00 	mov.w	fp, #0
   10560:	f04f 0e00 	mov.w	lr, #0
   10564:	bc02      	pop	{r1}
   10566:	466a      	mov	r2, sp
   10568:	b404      	push	{r2}
   1056a:	b401      	push	{r0}
   1056c:	f8df c010 	ldr.w	ip, [pc, #16]	; 10580 <_start+0x24>
   10570:	f84d cd04 	str.w	ip, [sp, #-4]!
   10574:	4803      	ldr	r0, [pc, #12]	; (10584 <_start+0x28>)
   10576:	4b04      	ldr	r3, [pc, #16]	; (10588 <_start+0x2c>)
   10578:	f7ff ef5a 	blx	10430 <__libc_start_main@plt>
   1057c:	f7ff ef7c 	blx	10478 <abort@plt>
   10580:	000106a9 	.word	0x000106a9
   10584:	00010485 	.word	0x00010485
   10588:	0001066d 	.word	0x0001066d

0001058c <call_weak_fn>:
   1058c:	e59f3014 	ldr	r3, [pc, #20]	; 105a8 <call_weak_fn+0x1c>
   10590:	e59f2014 	ldr	r2, [pc, #20]	; 105ac <call_weak_fn+0x20>
   10594:	e08f3003 	add	r3, pc, r3
   10598:	e7932002 	ldr	r2, [r3, r2]
   1059c:	e3520000 	cmp	r2, #0
   105a0:	012fff1e 	bxeq	lr
   105a4:	eaffffa4 	b	1043c <__gmon_start__@plt>
   105a8:	00010a64 	.word	0x00010a64
   105ac:	00000030 	.word	0x00000030

000105b0 <deregister_tm_clones>:
   105b0:	4b07      	ldr	r3, [pc, #28]	; (105d0 <deregister_tm_clones+0x20>)
   105b2:	f241 003c 	movw	r0, #4156	; 0x103c
   105b6:	f2c0 0002 	movt	r0, #2
   105ba:	1a1b      	subs	r3, r3, r0
   105bc:	2b06      	cmp	r3, #6
   105be:	d905      	bls.n	105cc <deregister_tm_clones+0x1c>
   105c0:	f240 0300 	movw	r3, #0
   105c4:	f2c0 0300 	movt	r3, #0
   105c8:	b103      	cbz	r3, 105cc <deregister_tm_clones+0x1c>
   105ca:	4718      	bx	r3
   105cc:	4770      	bx	lr
   105ce:	bf00      	nop
   105d0:	0002103f 	.word	0x0002103f

000105d4 <register_tm_clones>:
   105d4:	f241 033c 	movw	r3, #4156	; 0x103c
   105d8:	f241 003c 	movw	r0, #4156	; 0x103c
   105dc:	f2c0 0302 	movt	r3, #2
   105e0:	f2c0 0002 	movt	r0, #2
   105e4:	1a19      	subs	r1, r3, r0
   105e6:	1089      	asrs	r1, r1, #2
   105e8:	eb01 71d1 	add.w	r1, r1, r1, lsr #31
   105ec:	1049      	asrs	r1, r1, #1
   105ee:	d005      	beq.n	105fc <register_tm_clones+0x28>
   105f0:	f240 0300 	movw	r3, #0
   105f4:	f2c0 0300 	movt	r3, #0
   105f8:	b103      	cbz	r3, 105fc <register_tm_clones+0x28>
   105fa:	4718      	bx	r3
   105fc:	4770      	bx	lr
   105fe:	bf00      	nop

00010600 <__do_global_dtors_aux>:
   10600:	b510      	push	{r4, lr}
   10602:	f241 0444 	movw	r4, #4164	; 0x1044
   10606:	f2c0 0402 	movt	r4, #2
   1060a:	7823      	ldrb	r3, [r4, #0]
   1060c:	b91b      	cbnz	r3, 10616 <__do_global_dtors_aux+0x16>
   1060e:	f7ff ffcf 	bl	105b0 <deregister_tm_clones>
   10612:	2301      	movs	r3, #1
   10614:	7023      	strb	r3, [r4, #0]
   10616:	bd10      	pop	{r4, pc}

00010618 <frame_dummy>:
   10618:	b508      	push	{r3, lr}
   1061a:	f640 700c 	movw	r0, #3852	; 0xf0c
   1061e:	f2c0 0002 	movt	r0, #2
   10622:	6803      	ldr	r3, [r0, #0]
   10624:	b913      	cbnz	r3, 1062c <frame_dummy+0x14>
   10626:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
   1062a:	e7d3      	b.n	105d4 <register_tm_clones>
   1062c:	f240 0300 	movw	r3, #0
   10630:	f2c0 0300 	movt	r3, #0
   10634:	2b00      	cmp	r3, #0
   10636:	d0f6      	beq.n	10626 <frame_dummy+0xe>
   10638:	4798      	blx	r3
   1063a:	e7f4      	b.n	10626 <frame_dummy+0xe>

0001063c <print_matriu>:
   1063c:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   1063e:	f240 66b8 	movw	r6, #1720	; 0x6b8
   10642:	1f04      	subs	r4, r0, #4
   10644:	f100 073c 	add.w	r7, r0, #60	; 0x3c
   10648:	f2c0 0601 	movt	r6, #1
   1064c:	f104 0510 	add.w	r5, r4, #16
   10650:	f854 2f04 	ldr.w	r2, [r4, #4]!
   10654:	4631      	mov	r1, r6
   10656:	2001      	movs	r0, #1
   10658:	f7ff ef02 	blx	10460 <__printf_chk@plt>
   1065c:	42ac      	cmp	r4, r5
   1065e:	d1f7      	bne.n	10650 <print_matriu+0x14>
   10660:	200a      	movs	r0, #10
   10662:	f7ff eef8 	blx	10454 <putchar@plt>
   10666:	42a7      	cmp	r7, r4
   10668:	d1f0      	bne.n	1064c <print_matriu+0x10>
   1066a:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

0001066c <__libc_csu_init>:
   1066c:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
   10670:	4607      	mov	r7, r0
   10672:	4e0b      	ldr	r6, [pc, #44]	; (106a0 <__libc_csu_init+0x34>)
   10674:	4688      	mov	r8, r1
   10676:	4d0b      	ldr	r5, [pc, #44]	; (106a4 <__libc_csu_init+0x38>)
   10678:	4691      	mov	r9, r2
   1067a:	447e      	add	r6, pc
   1067c:	f7ff eebc 	blx	103f8 <_init>
   10680:	447d      	add	r5, pc
   10682:	1b76      	subs	r6, r6, r5
   10684:	10b6      	asrs	r6, r6, #2
   10686:	d009      	beq.n	1069c <__libc_csu_init+0x30>
   10688:	2400      	movs	r4, #0
   1068a:	3401      	adds	r4, #1
   1068c:	f855 3b04 	ldr.w	r3, [r5], #4
   10690:	464a      	mov	r2, r9
   10692:	4641      	mov	r1, r8
   10694:	4638      	mov	r0, r7
   10696:	4798      	blx	r3
   10698:	42b4      	cmp	r4, r6
   1069a:	d1f6      	bne.n	1068a <__libc_csu_init+0x1e>
   1069c:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
   106a0:	0001088a 	.word	0x0001088a
   106a4:	00010880 	.word	0x00010880

000106a8 <__libc_csu_fini>:
   106a8:	4770      	bx	lr
   106aa:	bf00      	nop

Disassembly of section .fini:

000106ac <_fini>:
   106ac:	e92d4008 	push	{r3, lr}
   106b0:	e8bd8008 	pop	{r3, pc}
