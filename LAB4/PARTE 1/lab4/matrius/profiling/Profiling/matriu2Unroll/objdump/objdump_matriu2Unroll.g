
matriu2Unroll.g:     file format elf32-littlearm


Disassembly of section .init:

000103f8 <_init>:
   103f8:	e92d4008 	push	{r3, lr}
   103fc:	eb000085 	bl	10618 <call_weak_fn>
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
   1048c:	b0c5      	sub	sp, #276	; 0x114
   1048e:	f2c0 0302 	movt	r3, #2
   10492:	4681      	mov	r9, r0
   10494:	468a      	mov	sl, r1
   10496:	9311      	str	r3, [sp, #68]	; 0x44
   10498:	a833      	add	r0, sp, #204	; 0xcc
   1049a:	681b      	ldr	r3, [r3, #0]
   1049c:	2240      	movs	r2, #64	; 0x40
   1049e:	2100      	movs	r1, #0
   104a0:	af22      	add	r7, sp, #136	; 0x88
   104a2:	ae16      	add	r6, sp, #88	; 0x58
   104a4:	f10d 08c8 	add.w	r8, sp, #200	; 0xc8
   104a8:	9343      	str	r3, [sp, #268]	; 0x10c
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
   104cc:	4547      	cmp	r7, r8
   104ce:	d1ee      	bne.n	104ae <main+0x2a>
   104d0:	f1b9 0f01 	cmp.w	r9, #1
   104d4:	dd7f      	ble.n	105d6 <main+0x152>
   104d6:	f8da 0004 	ldr.w	r0, [sl, #4]
   104da:	220a      	movs	r2, #10
   104dc:	2100      	movs	r1, #0
   104de:	f7ff ef9c 	blx	10418 <strtol@plt>
   104e2:	900f      	str	r0, [sp, #60]	; 0x3c
   104e4:	2800      	cmp	r0, #0
   104e6:	d06a      	beq.n	105be <main+0x13a>
   104e8:	9b23      	ldr	r3, [sp, #140]	; 0x8c
   104ea:	f50d 7e86 	add.w	lr, sp, #268	; 0x10c
   104ee:	f8dd 8098 	ldr.w	r8, [sp, #152]	; 0x98
   104f2:	f8dd c0a8 	ldr.w	ip, [sp, #168]	; 0xa8
   104f6:	9310      	str	r3, [sp, #64]	; 0x40
   104f8:	9b27      	ldr	r3, [sp, #156]	; 0x9c
   104fa:	9f32      	ldr	r7, [sp, #200]	; 0xc8
   104fc:	9302      	str	r3, [sp, #8]
   104fe:	9b2b      	ldr	r3, [sp, #172]	; 0xac
   10500:	9303      	str	r3, [sp, #12]
   10502:	2300      	movs	r3, #0
   10504:	930e      	str	r3, [sp, #56]	; 0x38
   10506:	9b2f      	ldr	r3, [sp, #188]	; 0xbc
   10508:	9304      	str	r3, [sp, #16]
   1050a:	9b24      	ldr	r3, [sp, #144]	; 0x90
   1050c:	9305      	str	r3, [sp, #20]
   1050e:	9b28      	ldr	r3, [sp, #160]	; 0xa0
   10510:	9306      	str	r3, [sp, #24]
   10512:	9b2c      	ldr	r3, [sp, #176]	; 0xb0
   10514:	9307      	str	r3, [sp, #28]
   10516:	9b30      	ldr	r3, [sp, #192]	; 0xc0
   10518:	9308      	str	r3, [sp, #32]
   1051a:	9b25      	ldr	r3, [sp, #148]	; 0x94
   1051c:	9309      	str	r3, [sp, #36]	; 0x24
   1051e:	9b29      	ldr	r3, [sp, #164]	; 0xa4
   10520:	930a      	str	r3, [sp, #40]	; 0x28
   10522:	9b2d      	ldr	r3, [sp, #180]	; 0xb4
   10524:	930b      	str	r3, [sp, #44]	; 0x2c
   10526:	9b31      	ldr	r3, [sp, #196]	; 0xc4
   10528:	930c      	str	r3, [sp, #48]	; 0x30
   1052a:	9b2e      	ldr	r3, [sp, #184]	; 0xb8
   1052c:	930d      	str	r3, [sp, #52]	; 0x34
   1052e:	9b10      	ldr	r3, [sp, #64]	; 0x40
   10530:	ad33      	add	r5, sp, #204	; 0xcc
   10532:	ae13      	add	r6, sp, #76	; 0x4c
   10534:	9301      	str	r3, [sp, #4]
   10536:	e895 0007 	ldmia.w	r5, {r0, r1, r2}
   1053a:	3610      	adds	r6, #16
   1053c:	f856 3c10 	ldr.w	r3, [r6, #-16]
   10540:	9c01      	ldr	r4, [sp, #4]
   10542:	f856 9c0c 	ldr.w	r9, [r6, #-12]
   10546:	f856 ac08 	ldr.w	sl, [r6, #-8]
   1054a:	fb04 0003 	mla	r0, r4, r3, r0
   1054e:	9c05      	ldr	r4, [sp, #20]
   10550:	f856 bc04 	ldr.w	fp, [r6, #-4]
   10554:	fb04 1103 	mla	r1, r4, r3, r1
   10558:	9c09      	ldr	r4, [sp, #36]	; 0x24
   1055a:	fb04 2203 	mla	r2, r4, r3, r2
   1055e:	68ec      	ldr	r4, [r5, #12]
   10560:	fb08 4303 	mla	r3, r8, r3, r4
   10564:	9c02      	ldr	r4, [sp, #8]
   10566:	fb04 0009 	mla	r0, r4, r9, r0
   1056a:	9c06      	ldr	r4, [sp, #24]
   1056c:	fb0c 3309 	mla	r3, ip, r9, r3
   10570:	fb04 1109 	mla	r1, r4, r9, r1
   10574:	9c0a      	ldr	r4, [sp, #40]	; 0x28
   10576:	fb04 2209 	mla	r2, r4, r9, r2
   1057a:	9c03      	ldr	r4, [sp, #12]
   1057c:	fb04 000a 	mla	r0, r4, sl, r0
   10580:	9c07      	ldr	r4, [sp, #28]
   10582:	fb04 110a 	mla	r1, r4, sl, r1
   10586:	9c0b      	ldr	r4, [sp, #44]	; 0x2c
   10588:	fb04 220a 	mla	r2, r4, sl, r2
   1058c:	9c0d      	ldr	r4, [sp, #52]	; 0x34
   1058e:	fb04 330a 	mla	r3, r4, sl, r3
   10592:	9c04      	ldr	r4, [sp, #16]
   10594:	fb04 000b 	mla	r0, r4, fp, r0
   10598:	9c08      	ldr	r4, [sp, #32]
   1059a:	fb07 330b 	mla	r3, r7, fp, r3
   1059e:	fb04 110b 	mla	r1, r4, fp, r1
   105a2:	9c0c      	ldr	r4, [sp, #48]	; 0x30
   105a4:	fb04 220b 	mla	r2, r4, fp, r2
   105a8:	e885 000f 	stmia.w	r5, {r0, r1, r2, r3}
   105ac:	3510      	adds	r5, #16
   105ae:	45ae      	cmp	lr, r5
   105b0:	d1c1      	bne.n	10536 <main+0xb2>
   105b2:	9b0e      	ldr	r3, [sp, #56]	; 0x38
   105b4:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
   105b6:	3301      	adds	r3, #1
   105b8:	930e      	str	r3, [sp, #56]	; 0x38
   105ba:	429a      	cmp	r2, r3
   105bc:	d8b7      	bhi.n	1052e <main+0xaa>
   105be:	a833      	add	r0, sp, #204	; 0xcc
   105c0:	f000 f882 	bl	106c8 <print_matriu>
   105c4:	9b11      	ldr	r3, [sp, #68]	; 0x44
   105c6:	9a43      	ldr	r2, [sp, #268]	; 0x10c
   105c8:	2000      	movs	r0, #0
   105ca:	681b      	ldr	r3, [r3, #0]
   105cc:	429a      	cmp	r2, r3
   105ce:	d108      	bne.n	105e2 <main+0x15e>
   105d0:	b045      	add	sp, #276	; 0x114
   105d2:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   105d6:	f249 7303 	movw	r3, #38659	; 0x9703
   105da:	f2c0 0398 	movt	r3, #152	; 0x98
   105de:	930f      	str	r3, [sp, #60]	; 0x3c
   105e0:	e782      	b.n	104e8 <main+0x64>
   105e2:	f7ff ef20 	blx	10424 <__stack_chk_fail@plt>
   105e6:	bf00      	nop

000105e8 <_start>:
   105e8:	f04f 0b00 	mov.w	fp, #0
   105ec:	f04f 0e00 	mov.w	lr, #0
   105f0:	bc02      	pop	{r1}
   105f2:	466a      	mov	r2, sp
   105f4:	b404      	push	{r2}
   105f6:	b401      	push	{r0}
   105f8:	f8df c010 	ldr.w	ip, [pc, #16]	; 1060c <_start+0x24>
   105fc:	f84d cd04 	str.w	ip, [sp, #-4]!
   10600:	4803      	ldr	r0, [pc, #12]	; (10610 <_start+0x28>)
   10602:	4b04      	ldr	r3, [pc, #16]	; (10614 <_start+0x2c>)
   10604:	f7ff ef14 	blx	10430 <__libc_start_main@plt>
   10608:	f7ff ef36 	blx	10478 <abort@plt>
   1060c:	00010735 	.word	0x00010735
   10610:	00010485 	.word	0x00010485
   10614:	000106f9 	.word	0x000106f9

00010618 <call_weak_fn>:
   10618:	e59f3014 	ldr	r3, [pc, #20]	; 10634 <call_weak_fn+0x1c>
   1061c:	e59f2014 	ldr	r2, [pc, #20]	; 10638 <call_weak_fn+0x20>
   10620:	e08f3003 	add	r3, pc, r3
   10624:	e7932002 	ldr	r2, [r3, r2]
   10628:	e3520000 	cmp	r2, #0
   1062c:	012fff1e 	bxeq	lr
   10630:	eaffff81 	b	1043c <__gmon_start__@plt>
   10634:	000109d8 	.word	0x000109d8
   10638:	00000030 	.word	0x00000030

0001063c <deregister_tm_clones>:
   1063c:	4b07      	ldr	r3, [pc, #28]	; (1065c <deregister_tm_clones+0x20>)
   1063e:	f241 003c 	movw	r0, #4156	; 0x103c
   10642:	f2c0 0002 	movt	r0, #2
   10646:	1a1b      	subs	r3, r3, r0
   10648:	2b06      	cmp	r3, #6
   1064a:	d905      	bls.n	10658 <deregister_tm_clones+0x1c>
   1064c:	f240 0300 	movw	r3, #0
   10650:	f2c0 0300 	movt	r3, #0
   10654:	b103      	cbz	r3, 10658 <deregister_tm_clones+0x1c>
   10656:	4718      	bx	r3
   10658:	4770      	bx	lr
   1065a:	bf00      	nop
   1065c:	0002103f 	.word	0x0002103f

00010660 <register_tm_clones>:
   10660:	f241 033c 	movw	r3, #4156	; 0x103c
   10664:	f241 003c 	movw	r0, #4156	; 0x103c
   10668:	f2c0 0302 	movt	r3, #2
   1066c:	f2c0 0002 	movt	r0, #2
   10670:	1a19      	subs	r1, r3, r0
   10672:	1089      	asrs	r1, r1, #2
   10674:	eb01 71d1 	add.w	r1, r1, r1, lsr #31
   10678:	1049      	asrs	r1, r1, #1
   1067a:	d005      	beq.n	10688 <register_tm_clones+0x28>
   1067c:	f240 0300 	movw	r3, #0
   10680:	f2c0 0300 	movt	r3, #0
   10684:	b103      	cbz	r3, 10688 <register_tm_clones+0x28>
   10686:	4718      	bx	r3
   10688:	4770      	bx	lr
   1068a:	bf00      	nop

0001068c <__do_global_dtors_aux>:
   1068c:	b510      	push	{r4, lr}
   1068e:	f241 0444 	movw	r4, #4164	; 0x1044
   10692:	f2c0 0402 	movt	r4, #2
   10696:	7823      	ldrb	r3, [r4, #0]
   10698:	b91b      	cbnz	r3, 106a2 <__do_global_dtors_aux+0x16>
   1069a:	f7ff ffcf 	bl	1063c <deregister_tm_clones>
   1069e:	2301      	movs	r3, #1
   106a0:	7023      	strb	r3, [r4, #0]
   106a2:	bd10      	pop	{r4, pc}

000106a4 <frame_dummy>:
   106a4:	b508      	push	{r3, lr}
   106a6:	f640 700c 	movw	r0, #3852	; 0xf0c
   106aa:	f2c0 0002 	movt	r0, #2
   106ae:	6803      	ldr	r3, [r0, #0]
   106b0:	b913      	cbnz	r3, 106b8 <frame_dummy+0x14>
   106b2:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
   106b6:	e7d3      	b.n	10660 <register_tm_clones>
   106b8:	f240 0300 	movw	r3, #0
   106bc:	f2c0 0300 	movt	r3, #0
   106c0:	2b00      	cmp	r3, #0
   106c2:	d0f6      	beq.n	106b2 <frame_dummy+0xe>
   106c4:	4798      	blx	r3
   106c6:	e7f4      	b.n	106b2 <frame_dummy+0xe>

000106c8 <print_matriu>:
   106c8:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   106ca:	f240 7644 	movw	r6, #1860	; 0x744
   106ce:	1f04      	subs	r4, r0, #4
   106d0:	f100 073c 	add.w	r7, r0, #60	; 0x3c
   106d4:	f2c0 0601 	movt	r6, #1
   106d8:	f104 0510 	add.w	r5, r4, #16
   106dc:	f854 2f04 	ldr.w	r2, [r4, #4]!
   106e0:	4631      	mov	r1, r6
   106e2:	2001      	movs	r0, #1
   106e4:	f7ff eebc 	blx	10460 <__printf_chk@plt>
   106e8:	42ac      	cmp	r4, r5
   106ea:	d1f7      	bne.n	106dc <print_matriu+0x14>
   106ec:	200a      	movs	r0, #10
   106ee:	f7ff eeb2 	blx	10454 <putchar@plt>
   106f2:	42a7      	cmp	r7, r4
   106f4:	d1f0      	bne.n	106d8 <print_matriu+0x10>
   106f6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

000106f8 <__libc_csu_init>:
   106f8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
   106fc:	4607      	mov	r7, r0
   106fe:	4e0b      	ldr	r6, [pc, #44]	; (1072c <__libc_csu_init+0x34>)
   10700:	4688      	mov	r8, r1
   10702:	4d0b      	ldr	r5, [pc, #44]	; (10730 <__libc_csu_init+0x38>)
   10704:	4691      	mov	r9, r2
   10706:	447e      	add	r6, pc
   10708:	f7ff ee76 	blx	103f8 <_init>
   1070c:	447d      	add	r5, pc
   1070e:	1b76      	subs	r6, r6, r5
   10710:	10b6      	asrs	r6, r6, #2
   10712:	d009      	beq.n	10728 <__libc_csu_init+0x30>
   10714:	2400      	movs	r4, #0
   10716:	3401      	adds	r4, #1
   10718:	f855 3b04 	ldr.w	r3, [r5], #4
   1071c:	464a      	mov	r2, r9
   1071e:	4641      	mov	r1, r8
   10720:	4638      	mov	r0, r7
   10722:	4798      	blx	r3
   10724:	42b4      	cmp	r4, r6
   10726:	d1f6      	bne.n	10716 <__libc_csu_init+0x1e>
   10728:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
   1072c:	000107fe 	.word	0x000107fe
   10730:	000107f4 	.word	0x000107f4

00010734 <__libc_csu_fini>:
   10734:	4770      	bx	lr
   10736:	bf00      	nop

Disassembly of section .fini:

00010738 <_fini>:
   10738:	e92d4008 	push	{r3, lr}
   1073c:	e8bd8008 	pop	{r3, pc}
