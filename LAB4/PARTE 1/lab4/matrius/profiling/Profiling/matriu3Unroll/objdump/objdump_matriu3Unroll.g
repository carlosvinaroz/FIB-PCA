
matriu3Unroll.g:     file format elf32-littlearm


Disassembly of section .init:

000103f8 <_init>:
   103f8:	e92d4008 	push	{r3, lr}
   103fc:	eb000175 	bl	109d8 <call_weak_fn>
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
   1048c:	b0ed      	sub	sp, #436	; 0x1b4
   1048e:	f2c0 0302 	movt	r3, #2
   10492:	4681      	mov	r9, r0
   10494:	468a      	mov	sl, r1
   10496:	9339      	str	r3, [sp, #228]	; 0xe4
   10498:	a85b      	add	r0, sp, #364	; 0x16c
   1049a:	681b      	ldr	r3, [r3, #0]
   1049c:	2240      	movs	r2, #64	; 0x40
   1049e:	2100      	movs	r1, #0
   104a0:	af4a      	add	r7, sp, #296	; 0x128
   104a2:	ae3e      	add	r6, sp, #248	; 0xf8
   104a4:	f50d 78b4 	add.w	r8, sp, #360	; 0x168
   104a8:	936b      	str	r3, [sp, #428]	; 0x1ac
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
   104d4:	f340 8260 	ble.w	10998 <main+0x514>
   104d8:	f8da 0004 	ldr.w	r0, [sl, #4]
   104dc:	220a      	movs	r2, #10
   104de:	2100      	movs	r1, #0
   104e0:	f7ff ef9a 	blx	10418 <strtol@plt>
   104e4:	9008      	str	r0, [sp, #32]
   104e6:	2800      	cmp	r0, #0
   104e8:	f000 824a 	beq.w	10980 <main+0x4fc>
   104ec:	9a60      	ldr	r2, [sp, #384]	; 0x180
   104ee:	2300      	movs	r3, #0
   104f0:	9301      	str	r3, [sp, #4]
   104f2:	9b3e      	ldr	r3, [sp, #248]	; 0xf8
   104f4:	9206      	str	r2, [sp, #24]
   104f6:	9a57      	ldr	r2, [sp, #348]	; 0x15c
   104f8:	9958      	ldr	r1, [sp, #352]	; 0x160
   104fa:	f8dd b16c 	ldr.w	fp, [sp, #364]	; 0x16c
   104fe:	fb02 f203 	mul.w	r2, r2, r3
   10502:	f8dd a170 	ldr.w	sl, [sp, #368]	; 0x170
   10506:	fb01 f103 	mul.w	r1, r1, r3
   1050a:	f8dd 9174 	ldr.w	r9, [sp, #372]	; 0x174
   1050e:	f8dd 8178 	ldr.w	r8, [sp, #376]	; 0x178
   10512:	f8dd c17c 	ldr.w	ip, [sp, #380]	; 0x17c
   10516:	9203      	str	r2, [sp, #12]
   10518:	9a65      	ldr	r2, [sp, #404]	; 0x194
   1051a:	9105      	str	r1, [sp, #20]
   1051c:	9f61      	ldr	r7, [sp, #388]	; 0x184
   1051e:	9204      	str	r2, [sp, #16]
   10520:	9a59      	ldr	r2, [sp, #356]	; 0x164
   10522:	9966      	ldr	r1, [sp, #408]	; 0x198
   10524:	9e62      	ldr	r6, [sp, #392]	; 0x188
   10526:	fb02 f203 	mul.w	r2, r2, r3
   1052a:	9d63      	ldr	r5, [sp, #396]	; 0x18c
   1052c:	9c64      	ldr	r4, [sp, #400]	; 0x190
   1052e:	9209      	str	r2, [sp, #36]	; 0x24
   10530:	9a5a      	ldr	r2, [sp, #360]	; 0x168
   10532:	fb02 f203 	mul.w	r2, r2, r3
   10536:	9b42      	ldr	r3, [sp, #264]	; 0x108
   10538:	469e      	mov	lr, r3
   1053a:	9b57      	ldr	r3, [sp, #348]	; 0x15c
   1053c:	920a      	str	r2, [sp, #40]	; 0x28
   1053e:	fb0e f303 	mul.w	r3, lr, r3
   10542:	9a67      	ldr	r2, [sp, #412]	; 0x19c
   10544:	930b      	str	r3, [sp, #44]	; 0x2c
   10546:	9b68      	ldr	r3, [sp, #416]	; 0x1a0
   10548:	9307      	str	r3, [sp, #28]
   1054a:	9b58      	ldr	r3, [sp, #352]	; 0x160
   1054c:	fb0e fe03 	mul.w	lr, lr, r3
   10550:	f8cd e030 	str.w	lr, [sp, #48]	; 0x30
   10554:	9b69      	ldr	r3, [sp, #420]	; 0x1a4
   10556:	9302      	str	r3, [sp, #8]
   10558:	9b42      	ldr	r3, [sp, #264]	; 0x108
   1055a:	469e      	mov	lr, r3
   1055c:	9b59      	ldr	r3, [sp, #356]	; 0x164
   1055e:	fb0e fe03 	mul.w	lr, lr, r3
   10562:	9b42      	ldr	r3, [sp, #264]	; 0x108
   10564:	f8cd e034 	str.w	lr, [sp, #52]	; 0x34
   10568:	469e      	mov	lr, r3
   1056a:	9b5a      	ldr	r3, [sp, #360]	; 0x168
   1056c:	fb0e fe03 	mul.w	lr, lr, r3
   10570:	9b46      	ldr	r3, [sp, #280]	; 0x118
   10572:	f8cd e038 	str.w	lr, [sp, #56]	; 0x38
   10576:	469e      	mov	lr, r3
   10578:	9b57      	ldr	r3, [sp, #348]	; 0x15c
   1057a:	fb0e fe03 	mul.w	lr, lr, r3
   1057e:	9b4a      	ldr	r3, [sp, #296]	; 0x128
   10580:	f8cd e03c 	str.w	lr, [sp, #60]	; 0x3c
   10584:	469e      	mov	lr, r3
   10586:	9b57      	ldr	r3, [sp, #348]	; 0x15c
   10588:	fb0e fe03 	mul.w	lr, lr, r3
   1058c:	9b46      	ldr	r3, [sp, #280]	; 0x118
   1058e:	f8cd e04c 	str.w	lr, [sp, #76]	; 0x4c
   10592:	469e      	mov	lr, r3
   10594:	9b58      	ldr	r3, [sp, #352]	; 0x160
   10596:	fb0e fe03 	mul.w	lr, lr, r3
   1059a:	9b4a      	ldr	r3, [sp, #296]	; 0x128
   1059c:	f8cd e040 	str.w	lr, [sp, #64]	; 0x40
   105a0:	469e      	mov	lr, r3
   105a2:	9b58      	ldr	r3, [sp, #352]	; 0x160
   105a4:	fb0e fe03 	mul.w	lr, lr, r3
   105a8:	9b46      	ldr	r3, [sp, #280]	; 0x118
   105aa:	f8cd e050 	str.w	lr, [sp, #80]	; 0x50
   105ae:	469e      	mov	lr, r3
   105b0:	9b59      	ldr	r3, [sp, #356]	; 0x164
   105b2:	fb0e fe03 	mul.w	lr, lr, r3
   105b6:	9b46      	ldr	r3, [sp, #280]	; 0x118
   105b8:	f8cd e044 	str.w	lr, [sp, #68]	; 0x44
   105bc:	469e      	mov	lr, r3
   105be:	9b5a      	ldr	r3, [sp, #360]	; 0x168
   105c0:	fb0e fe03 	mul.w	lr, lr, r3
   105c4:	9b4a      	ldr	r3, [sp, #296]	; 0x128
   105c6:	f8cd e048 	str.w	lr, [sp, #72]	; 0x48
   105ca:	469e      	mov	lr, r3
   105cc:	9b59      	ldr	r3, [sp, #356]	; 0x164
   105ce:	fb0e fe03 	mul.w	lr, lr, r3
   105d2:	9b4a      	ldr	r3, [sp, #296]	; 0x128
   105d4:	f8cd e054 	str.w	lr, [sp, #84]	; 0x54
   105d8:	469e      	mov	lr, r3
   105da:	9b5a      	ldr	r3, [sp, #360]	; 0x168
   105dc:	fb0e fe03 	mul.w	lr, lr, r3
   105e0:	f8cd e058 	str.w	lr, [sp, #88]	; 0x58
   105e4:	9b3b      	ldr	r3, [sp, #236]	; 0xec
   105e6:	469e      	mov	lr, r3
   105e8:	9b4b      	ldr	r3, [sp, #300]	; 0x12c
   105ea:	4618      	mov	r0, r3
   105ec:	9b03      	ldr	r3, [sp, #12]
   105ee:	fb00 3e0e 	mla	lr, r0, lr, r3
   105f2:	9b3b      	ldr	r3, [sp, #236]	; 0xec
   105f4:	4618      	mov	r0, r3
   105f6:	9b4c      	ldr	r3, [sp, #304]	; 0x130
   105f8:	f8cd e0d0 	str.w	lr, [sp, #208]	; 0xd0
   105fc:	469e      	mov	lr, r3
   105fe:	9b05      	ldr	r3, [sp, #20]
   10600:	fb0e 3000 	mla	r0, lr, r0, r3
   10604:	9b3b      	ldr	r3, [sp, #236]	; 0xec
   10606:	9029      	str	r0, [sp, #164]	; 0xa4
   10608:	4618      	mov	r0, r3
   1060a:	9b4d      	ldr	r3, [sp, #308]	; 0x134
   1060c:	469e      	mov	lr, r3
   1060e:	9b09      	ldr	r3, [sp, #36]	; 0x24
   10610:	fb0e 3000 	mla	r0, lr, r0, r3
   10614:	9b3b      	ldr	r3, [sp, #236]	; 0xec
   10616:	902e      	str	r0, [sp, #184]	; 0xb8
   10618:	4618      	mov	r0, r3
   1061a:	9b4e      	ldr	r3, [sp, #312]	; 0x138
   1061c:	469e      	mov	lr, r3
   1061e:	9b0a      	ldr	r3, [sp, #40]	; 0x28
   10620:	fb0e 3000 	mla	r0, lr, r0, r3
   10624:	9b4b      	ldr	r3, [sp, #300]	; 0x12c
   10626:	9030      	str	r0, [sp, #192]	; 0xc0
   10628:	4618      	mov	r0, r3
   1062a:	9b3f      	ldr	r3, [sp, #252]	; 0xfc
   1062c:	469e      	mov	lr, r3
   1062e:	9b0b      	ldr	r3, [sp, #44]	; 0x2c
   10630:	fb0e 3000 	mla	r0, lr, r0, r3
   10634:	9b4c      	ldr	r3, [sp, #304]	; 0x130
   10636:	9033      	str	r0, [sp, #204]	; 0xcc
   10638:	4618      	mov	r0, r3
   1063a:	9b0c      	ldr	r3, [sp, #48]	; 0x30
   1063c:	fb0e 3000 	mla	r0, lr, r0, r3
   10640:	9b4d      	ldr	r3, [sp, #308]	; 0x134
   10642:	9036      	str	r0, [sp, #216]	; 0xd8
   10644:	4618      	mov	r0, r3
   10646:	9b0d      	ldr	r3, [sp, #52]	; 0x34
   10648:	fb0e 3000 	mla	r0, lr, r0, r3
   1064c:	9b4e      	ldr	r3, [sp, #312]	; 0x138
   1064e:	9038      	str	r0, [sp, #224]	; 0xe0
   10650:	4618      	mov	r0, r3
   10652:	9b0e      	ldr	r3, [sp, #56]	; 0x38
   10654:	fb0e 3000 	mla	r0, lr, r0, r3
   10658:	9b4b      	ldr	r3, [sp, #300]	; 0x12c
   1065a:	902b      	str	r0, [sp, #172]	; 0xac
   1065c:	4618      	mov	r0, r3
   1065e:	9b43      	ldr	r3, [sp, #268]	; 0x10c
   10660:	469e      	mov	lr, r3
   10662:	9b0f      	ldr	r3, [sp, #60]	; 0x3c
   10664:	fb0e 3000 	mla	r0, lr, r0, r3
   10668:	902d      	str	r0, [sp, #180]	; 0xb4
   1066a:	9b4b      	ldr	r3, [sp, #300]	; 0x12c
   1066c:	4618      	mov	r0, r3
   1066e:	9b47      	ldr	r3, [sp, #284]	; 0x11c
   10670:	469e      	mov	lr, r3
   10672:	9b13      	ldr	r3, [sp, #76]	; 0x4c
   10674:	fb0e 3000 	mla	r0, lr, r0, r3
   10678:	9b4c      	ldr	r3, [sp, #304]	; 0x130
   1067a:	9035      	str	r0, [sp, #212]	; 0xd4
   1067c:	4618      	mov	r0, r3
   1067e:	9b43      	ldr	r3, [sp, #268]	; 0x10c
   10680:	469e      	mov	lr, r3
   10682:	9b10      	ldr	r3, [sp, #64]	; 0x40
   10684:	fb0e 3000 	mla	r0, lr, r0, r3
   10688:	9b4c      	ldr	r3, [sp, #304]	; 0x130
   1068a:	902f      	str	r0, [sp, #188]	; 0xbc
   1068c:	4618      	mov	r0, r3
   1068e:	9b47      	ldr	r3, [sp, #284]	; 0x11c
   10690:	469e      	mov	lr, r3
   10692:	9b14      	ldr	r3, [sp, #80]	; 0x50
   10694:	fb0e 3000 	mla	r0, lr, r0, r3
   10698:	9b4d      	ldr	r3, [sp, #308]	; 0x134
   1069a:	9037      	str	r0, [sp, #220]	; 0xdc
   1069c:	4618      	mov	r0, r3
   1069e:	9b43      	ldr	r3, [sp, #268]	; 0x10c
   106a0:	469e      	mov	lr, r3
   106a2:	9b11      	ldr	r3, [sp, #68]	; 0x44
   106a4:	fb0e 3000 	mla	r0, lr, r0, r3
   106a8:	9b4e      	ldr	r3, [sp, #312]	; 0x138
   106aa:	9031      	str	r0, [sp, #196]	; 0xc4
   106ac:	4618      	mov	r0, r3
   106ae:	9b12      	ldr	r3, [sp, #72]	; 0x48
   106b0:	fb0e 3000 	mla	r0, lr, r0, r3
   106b4:	9b4d      	ldr	r3, [sp, #308]	; 0x134
   106b6:	9032      	str	r0, [sp, #200]	; 0xc8
   106b8:	4618      	mov	r0, r3
   106ba:	9b47      	ldr	r3, [sp, #284]	; 0x11c
   106bc:	469e      	mov	lr, r3
   106be:	9b15      	ldr	r3, [sp, #84]	; 0x54
   106c0:	fb0e 3000 	mla	r0, lr, r0, r3
   106c4:	9b4e      	ldr	r3, [sp, #312]	; 0x138
   106c6:	902a      	str	r0, [sp, #168]	; 0xa8
   106c8:	4618      	mov	r0, r3
   106ca:	9b16      	ldr	r3, [sp, #88]	; 0x58
   106cc:	fb0e 3300 	mla	r3, lr, r0, r3
   106d0:	932c      	str	r3, [sp, #176]	; 0xb0
   106d2:	9b4f      	ldr	r3, [sp, #316]	; 0x13c
   106d4:	4618      	mov	r0, r3
   106d6:	9b3c      	ldr	r3, [sp, #240]	; 0xf0
   106d8:	fb00 f303 	mul.w	r3, r0, r3
   106dc:	9309      	str	r3, [sp, #36]	; 0x24
   106de:	9b53      	ldr	r3, [sp, #332]	; 0x14c
   106e0:	4618      	mov	r0, r3
   106e2:	9b3d      	ldr	r3, [sp, #244]	; 0xf4
   106e4:	fb00 f303 	mul.w	r3, r0, r3
   106e8:	930a      	str	r3, [sp, #40]	; 0x28
   106ea:	9b50      	ldr	r3, [sp, #320]	; 0x140
   106ec:	4618      	mov	r0, r3
   106ee:	9b3c      	ldr	r3, [sp, #240]	; 0xf0
   106f0:	fb00 f303 	mul.w	r3, r0, r3
   106f4:	930b      	str	r3, [sp, #44]	; 0x2c
   106f6:	9b54      	ldr	r3, [sp, #336]	; 0x150
   106f8:	4618      	mov	r0, r3
   106fa:	9b3d      	ldr	r3, [sp, #244]	; 0xf4
   106fc:	fb00 f303 	mul.w	r3, r0, r3
   10700:	930c      	str	r3, [sp, #48]	; 0x30
   10702:	9b51      	ldr	r3, [sp, #324]	; 0x144
   10704:	4618      	mov	r0, r3
   10706:	9b3c      	ldr	r3, [sp, #240]	; 0xf0
   10708:	fb00 f303 	mul.w	r3, r0, r3
   1070c:	930d      	str	r3, [sp, #52]	; 0x34
   1070e:	9b52      	ldr	r3, [sp, #328]	; 0x148
   10710:	4618      	mov	r0, r3
   10712:	9b3c      	ldr	r3, [sp, #240]	; 0xf0
   10714:	fb00 f303 	mul.w	r3, r0, r3
   10718:	930f      	str	r3, [sp, #60]	; 0x3c
   1071a:	9b55      	ldr	r3, [sp, #340]	; 0x154
   1071c:	4618      	mov	r0, r3
   1071e:	9b3d      	ldr	r3, [sp, #244]	; 0xf4
   10720:	fb00 f303 	mul.w	r3, r0, r3
   10724:	930e      	str	r3, [sp, #56]	; 0x38
   10726:	9b56      	ldr	r3, [sp, #344]	; 0x158
   10728:	4618      	mov	r0, r3
   1072a:	9b3d      	ldr	r3, [sp, #244]	; 0xf4
   1072c:	fb00 f303 	mul.w	r3, r0, r3
   10730:	9310      	str	r3, [sp, #64]	; 0x40
   10732:	9b40      	ldr	r3, [sp, #256]	; 0x100
   10734:	4618      	mov	r0, r3
   10736:	9b4f      	ldr	r3, [sp, #316]	; 0x13c
   10738:	fb00 f303 	mul.w	r3, r0, r3
   1073c:	9311      	str	r3, [sp, #68]	; 0x44
   1073e:	9b41      	ldr	r3, [sp, #260]	; 0x104
   10740:	4618      	mov	r0, r3
   10742:	9b53      	ldr	r3, [sp, #332]	; 0x14c
   10744:	fb00 f303 	mul.w	r3, r0, r3
   10748:	9312      	str	r3, [sp, #72]	; 0x48
   1074a:	9b40      	ldr	r3, [sp, #256]	; 0x100
   1074c:	4618      	mov	r0, r3
   1074e:	9b50      	ldr	r3, [sp, #320]	; 0x140
   10750:	fb00 f303 	mul.w	r3, r0, r3
   10754:	9313      	str	r3, [sp, #76]	; 0x4c
   10756:	9b41      	ldr	r3, [sp, #260]	; 0x104
   10758:	4618      	mov	r0, r3
   1075a:	9b54      	ldr	r3, [sp, #336]	; 0x150
   1075c:	fb00 f303 	mul.w	r3, r0, r3
   10760:	9314      	str	r3, [sp, #80]	; 0x50
   10762:	9b40      	ldr	r3, [sp, #256]	; 0x100
   10764:	4618      	mov	r0, r3
   10766:	9b51      	ldr	r3, [sp, #324]	; 0x144
   10768:	fb00 f303 	mul.w	r3, r0, r3
   1076c:	9315      	str	r3, [sp, #84]	; 0x54
   1076e:	9b52      	ldr	r3, [sp, #328]	; 0x148
   10770:	fb00 f303 	mul.w	r3, r0, r3
   10774:	9317      	str	r3, [sp, #92]	; 0x5c
   10776:	9b41      	ldr	r3, [sp, #260]	; 0x104
   10778:	4618      	mov	r0, r3
   1077a:	9b55      	ldr	r3, [sp, #340]	; 0x154
   1077c:	fb00 f303 	mul.w	r3, r0, r3
   10780:	9316      	str	r3, [sp, #88]	; 0x58
   10782:	9b56      	ldr	r3, [sp, #344]	; 0x158
   10784:	fb00 f303 	mul.w	r3, r0, r3
   10788:	9318      	str	r3, [sp, #96]	; 0x60
   1078a:	9b44      	ldr	r3, [sp, #272]	; 0x110
   1078c:	4618      	mov	r0, r3
   1078e:	9b4f      	ldr	r3, [sp, #316]	; 0x13c
   10790:	fb00 f303 	mul.w	r3, r0, r3
   10794:	9319      	str	r3, [sp, #100]	; 0x64
   10796:	9b45      	ldr	r3, [sp, #276]	; 0x114
   10798:	4618      	mov	r0, r3
   1079a:	9b53      	ldr	r3, [sp, #332]	; 0x14c
   1079c:	fb00 f303 	mul.w	r3, r0, r3
   107a0:	931a      	str	r3, [sp, #104]	; 0x68
   107a2:	9b44      	ldr	r3, [sp, #272]	; 0x110
   107a4:	4618      	mov	r0, r3
   107a6:	9b50      	ldr	r3, [sp, #320]	; 0x140
   107a8:	fb00 f303 	mul.w	r3, r0, r3
   107ac:	931b      	str	r3, [sp, #108]	; 0x6c
   107ae:	9b45      	ldr	r3, [sp, #276]	; 0x114
   107b0:	4618      	mov	r0, r3
   107b2:	9b54      	ldr	r3, [sp, #336]	; 0x150
   107b4:	fb00 f303 	mul.w	r3, r0, r3
   107b8:	931c      	str	r3, [sp, #112]	; 0x70
   107ba:	9b44      	ldr	r3, [sp, #272]	; 0x110
   107bc:	4618      	mov	r0, r3
   107be:	9b51      	ldr	r3, [sp, #324]	; 0x144
   107c0:	fb00 f303 	mul.w	r3, r0, r3
   107c4:	931d      	str	r3, [sp, #116]	; 0x74
   107c6:	9b52      	ldr	r3, [sp, #328]	; 0x148
   107c8:	fb00 f303 	mul.w	r3, r0, r3
   107cc:	931f      	str	r3, [sp, #124]	; 0x7c
   107ce:	9b45      	ldr	r3, [sp, #276]	; 0x114
   107d0:	4618      	mov	r0, r3
   107d2:	9b55      	ldr	r3, [sp, #340]	; 0x154
   107d4:	fb00 f303 	mul.w	r3, r0, r3
   107d8:	931e      	str	r3, [sp, #120]	; 0x78
   107da:	9b56      	ldr	r3, [sp, #344]	; 0x158
   107dc:	fb00 f303 	mul.w	r3, r0, r3
   107e0:	9320      	str	r3, [sp, #128]	; 0x80
   107e2:	9b48      	ldr	r3, [sp, #288]	; 0x120
   107e4:	4618      	mov	r0, r3
   107e6:	9b4f      	ldr	r3, [sp, #316]	; 0x13c
   107e8:	fb00 f303 	mul.w	r3, r0, r3
   107ec:	9321      	str	r3, [sp, #132]	; 0x84
   107ee:	9b50      	ldr	r3, [sp, #320]	; 0x140
   107f0:	f8dd e018 	ldr.w	lr, [sp, #24]
   107f4:	9205      	str	r2, [sp, #20]
   107f6:	fb00 f303 	mul.w	r3, r0, r3
   107fa:	9323      	str	r3, [sp, #140]	; 0x8c
   107fc:	9b51      	ldr	r3, [sp, #324]	; 0x144
   107fe:	fb00 f303 	mul.w	r3, r0, r3
   10802:	9325      	str	r3, [sp, #148]	; 0x94
   10804:	9b52      	ldr	r3, [sp, #328]	; 0x148
   10806:	fb00 f303 	mul.w	r3, r0, r3
   1080a:	9327      	str	r3, [sp, #156]	; 0x9c
   1080c:	9b6a      	ldr	r3, [sp, #424]	; 0x1a8
   1080e:	9303      	str	r3, [sp, #12]
   10810:	9b49      	ldr	r3, [sp, #292]	; 0x124
   10812:	4618      	mov	r0, r3
   10814:	9b53      	ldr	r3, [sp, #332]	; 0x14c
   10816:	fb00 f303 	mul.w	r3, r0, r3
   1081a:	9322      	str	r3, [sp, #136]	; 0x88
   1081c:	9b54      	ldr	r3, [sp, #336]	; 0x150
   1081e:	fb00 f303 	mul.w	r3, r0, r3
   10822:	9324      	str	r3, [sp, #144]	; 0x90
   10824:	9b55      	ldr	r3, [sp, #340]	; 0x154
   10826:	fb00 f303 	mul.w	r3, r0, r3
   1082a:	9326      	str	r3, [sp, #152]	; 0x98
   1082c:	9b56      	ldr	r3, [sp, #344]	; 0x158
   1082e:	fb00 f303 	mul.w	r3, r0, r3
   10832:	9804      	ldr	r0, [sp, #16]
   10834:	9104      	str	r1, [sp, #16]
   10836:	9328      	str	r3, [sp, #160]	; 0xa0
   10838:	9b07      	ldr	r3, [sp, #28]
   1083a:	9a34      	ldr	r2, [sp, #208]	; 0xd0
   1083c:	9904      	ldr	r1, [sp, #16]
   1083e:	4493      	add	fp, r2
   10840:	9a29      	ldr	r2, [sp, #164]	; 0xa4
   10842:	4492      	add	sl, r2
   10844:	9a2e      	ldr	r2, [sp, #184]	; 0xb8
   10846:	4491      	add	r9, r2
   10848:	9a30      	ldr	r2, [sp, #192]	; 0xc0
   1084a:	4490      	add	r8, r2
   1084c:	9a33      	ldr	r2, [sp, #204]	; 0xcc
   1084e:	4494      	add	ip, r2
   10850:	9a36      	ldr	r2, [sp, #216]	; 0xd8
   10852:	4496      	add	lr, r2
   10854:	9a38      	ldr	r2, [sp, #224]	; 0xe0
   10856:	4417      	add	r7, r2
   10858:	9a2b      	ldr	r2, [sp, #172]	; 0xac
   1085a:	4416      	add	r6, r2
   1085c:	9a2d      	ldr	r2, [sp, #180]	; 0xb4
   1085e:	4415      	add	r5, r2
   10860:	9a2f      	ldr	r2, [sp, #188]	; 0xbc
   10862:	4414      	add	r4, r2
   10864:	9a31      	ldr	r2, [sp, #196]	; 0xc4
   10866:	4410      	add	r0, r2
   10868:	9a32      	ldr	r2, [sp, #200]	; 0xc8
   1086a:	4411      	add	r1, r2
   1086c:	9a35      	ldr	r2, [sp, #212]	; 0xd4
   1086e:	9104      	str	r1, [sp, #16]
   10870:	9905      	ldr	r1, [sp, #20]
   10872:	4411      	add	r1, r2
   10874:	9a37      	ldr	r2, [sp, #220]	; 0xdc
   10876:	9105      	str	r1, [sp, #20]
   10878:	4413      	add	r3, r2
   1087a:	9a02      	ldr	r2, [sp, #8]
   1087c:	4611      	mov	r1, r2
   1087e:	9a2a      	ldr	r2, [sp, #168]	; 0xa8
   10880:	4411      	add	r1, r2
   10882:	9a03      	ldr	r2, [sp, #12]
   10884:	9106      	str	r1, [sp, #24]
   10886:	4611      	mov	r1, r2
   10888:	9a2c      	ldr	r2, [sp, #176]	; 0xb0
   1088a:	4411      	add	r1, r2
   1088c:	9a09      	ldr	r2, [sp, #36]	; 0x24
   1088e:	9107      	str	r1, [sp, #28]
   10890:	4493      	add	fp, r2
   10892:	9a0b      	ldr	r2, [sp, #44]	; 0x2c
   10894:	4492      	add	sl, r2
   10896:	9a0d      	ldr	r2, [sp, #52]	; 0x34
   10898:	4491      	add	r9, r2
   1089a:	9a0f      	ldr	r2, [sp, #60]	; 0x3c
   1089c:	4490      	add	r8, r2
   1089e:	9a11      	ldr	r2, [sp, #68]	; 0x44
   108a0:	4494      	add	ip, r2
   108a2:	9a13      	ldr	r2, [sp, #76]	; 0x4c
   108a4:	4496      	add	lr, r2
   108a6:	9a15      	ldr	r2, [sp, #84]	; 0x54
   108a8:	4417      	add	r7, r2
   108aa:	9a17      	ldr	r2, [sp, #92]	; 0x5c
   108ac:	4416      	add	r6, r2
   108ae:	9a19      	ldr	r2, [sp, #100]	; 0x64
   108b0:	4415      	add	r5, r2
   108b2:	9a1b      	ldr	r2, [sp, #108]	; 0x6c
   108b4:	4414      	add	r4, r2
   108b6:	9a1d      	ldr	r2, [sp, #116]	; 0x74
   108b8:	4410      	add	r0, r2
   108ba:	9a1f      	ldr	r2, [sp, #124]	; 0x7c
   108bc:	4611      	mov	r1, r2
   108be:	9a04      	ldr	r2, [sp, #16]
   108c0:	440a      	add	r2, r1
   108c2:	9202      	str	r2, [sp, #8]
   108c4:	9a21      	ldr	r2, [sp, #132]	; 0x84
   108c6:	4611      	mov	r1, r2
   108c8:	9a05      	ldr	r2, [sp, #20]
   108ca:	440a      	add	r2, r1
   108cc:	9923      	ldr	r1, [sp, #140]	; 0x8c
   108ce:	440b      	add	r3, r1
   108d0:	9925      	ldr	r1, [sp, #148]	; 0x94
   108d2:	9303      	str	r3, [sp, #12]
   108d4:	9b06      	ldr	r3, [sp, #24]
   108d6:	1859      	adds	r1, r3, r1
   108d8:	9b07      	ldr	r3, [sp, #28]
   108da:	9106      	str	r1, [sp, #24]
   108dc:	9927      	ldr	r1, [sp, #156]	; 0x9c
   108de:	440b      	add	r3, r1
   108e0:	990a      	ldr	r1, [sp, #40]	; 0x28
   108e2:	9307      	str	r3, [sp, #28]
   108e4:	448b      	add	fp, r1
   108e6:	990c      	ldr	r1, [sp, #48]	; 0x30
   108e8:	9b01      	ldr	r3, [sp, #4]
   108ea:	448a      	add	sl, r1
   108ec:	990e      	ldr	r1, [sp, #56]	; 0x38
   108ee:	3301      	adds	r3, #1
   108f0:	9301      	str	r3, [sp, #4]
   108f2:	4489      	add	r9, r1
   108f4:	9910      	ldr	r1, [sp, #64]	; 0x40
   108f6:	9b02      	ldr	r3, [sp, #8]
   108f8:	4488      	add	r8, r1
   108fa:	9912      	ldr	r1, [sp, #72]	; 0x48
   108fc:	448c      	add	ip, r1
   108fe:	9914      	ldr	r1, [sp, #80]	; 0x50
   10900:	448e      	add	lr, r1
   10902:	9916      	ldr	r1, [sp, #88]	; 0x58
   10904:	440f      	add	r7, r1
   10906:	9918      	ldr	r1, [sp, #96]	; 0x60
   10908:	440e      	add	r6, r1
   1090a:	991a      	ldr	r1, [sp, #104]	; 0x68
   1090c:	440d      	add	r5, r1
   1090e:	991c      	ldr	r1, [sp, #112]	; 0x70
   10910:	440c      	add	r4, r1
   10912:	991e      	ldr	r1, [sp, #120]	; 0x78
   10914:	4408      	add	r0, r1
   10916:	9920      	ldr	r1, [sp, #128]	; 0x80
   10918:	440b      	add	r3, r1
   1091a:	9304      	str	r3, [sp, #16]
   1091c:	9b22      	ldr	r3, [sp, #136]	; 0x88
   1091e:	18d1      	adds	r1, r2, r3
   10920:	9b24      	ldr	r3, [sp, #144]	; 0x90
   10922:	9a03      	ldr	r2, [sp, #12]
   10924:	9105      	str	r1, [sp, #20]
   10926:	441a      	add	r2, r3
   10928:	9926      	ldr	r1, [sp, #152]	; 0x98
   1092a:	4613      	mov	r3, r2
   1092c:	9a06      	ldr	r2, [sp, #24]
   1092e:	440a      	add	r2, r1
   10930:	9928      	ldr	r1, [sp, #160]	; 0xa0
   10932:	9202      	str	r2, [sp, #8]
   10934:	9a07      	ldr	r2, [sp, #28]
   10936:	1851      	adds	r1, r2, r1
   10938:	9a01      	ldr	r2, [sp, #4]
   1093a:	9103      	str	r1, [sp, #12]
   1093c:	9908      	ldr	r1, [sp, #32]
   1093e:	4291      	cmp	r1, r2
   10940:	f63f af7b 	bhi.w	1083a <main+0x3b6>
   10944:	f8cd e018 	str.w	lr, [sp, #24]
   10948:	469e      	mov	lr, r3
   1094a:	9b06      	ldr	r3, [sp, #24]
   1094c:	9904      	ldr	r1, [sp, #16]
   1094e:	9a05      	ldr	r2, [sp, #20]
   10950:	9360      	str	r3, [sp, #384]	; 0x180
   10952:	9b02      	ldr	r3, [sp, #8]
   10954:	f8cd b16c 	str.w	fp, [sp, #364]	; 0x16c
   10958:	f8cd a170 	str.w	sl, [sp, #368]	; 0x170
   1095c:	9369      	str	r3, [sp, #420]	; 0x1a4
   1095e:	9b03      	ldr	r3, [sp, #12]
   10960:	f8cd 9174 	str.w	r9, [sp, #372]	; 0x174
   10964:	f8cd 8178 	str.w	r8, [sp, #376]	; 0x178
   10968:	f8cd c17c 	str.w	ip, [sp, #380]	; 0x17c
   1096c:	9761      	str	r7, [sp, #388]	; 0x184
   1096e:	9662      	str	r6, [sp, #392]	; 0x188
   10970:	9563      	str	r5, [sp, #396]	; 0x18c
   10972:	9464      	str	r4, [sp, #400]	; 0x190
   10974:	9065      	str	r0, [sp, #404]	; 0x194
   10976:	9166      	str	r1, [sp, #408]	; 0x198
   10978:	9267      	str	r2, [sp, #412]	; 0x19c
   1097a:	f8cd e1a0 	str.w	lr, [sp, #416]	; 0x1a0
   1097e:	936a      	str	r3, [sp, #424]	; 0x1a8
   10980:	a85b      	add	r0, sp, #364	; 0x16c
   10982:	f000 f881 	bl	10a88 <print_matriu>
   10986:	9b39      	ldr	r3, [sp, #228]	; 0xe4
   10988:	9a6b      	ldr	r2, [sp, #428]	; 0x1ac
   1098a:	2000      	movs	r0, #0
   1098c:	681b      	ldr	r3, [r3, #0]
   1098e:	429a      	cmp	r2, r3
   10990:	d108      	bne.n	109a4 <main+0x520>
   10992:	b06d      	add	sp, #436	; 0x1b4
   10994:	e8bd 8ff0 	ldmia.w	sp!, {r4, r5, r6, r7, r8, r9, sl, fp, pc}
   10998:	f249 7303 	movw	r3, #38659	; 0x9703
   1099c:	f2c0 0398 	movt	r3, #152	; 0x98
   109a0:	9308      	str	r3, [sp, #32]
   109a2:	e5a3      	b.n	104ec <main+0x68>
   109a4:	f7ff ed3e 	blx	10424 <__stack_chk_fail@plt>

000109a8 <_start>:
   109a8:	f04f 0b00 	mov.w	fp, #0
   109ac:	f04f 0e00 	mov.w	lr, #0
   109b0:	bc02      	pop	{r1}
   109b2:	466a      	mov	r2, sp
   109b4:	b404      	push	{r2}
   109b6:	b401      	push	{r0}
   109b8:	f8df c010 	ldr.w	ip, [pc, #16]	; 109cc <_start+0x24>
   109bc:	f84d cd04 	str.w	ip, [sp, #-4]!
   109c0:	4803      	ldr	r0, [pc, #12]	; (109d0 <_start+0x28>)
   109c2:	4b04      	ldr	r3, [pc, #16]	; (109d4 <_start+0x2c>)
   109c4:	f7ff ed34 	blx	10430 <__libc_start_main@plt>
   109c8:	f7ff ed56 	blx	10478 <abort@plt>
   109cc:	00010af5 	.word	0x00010af5
   109d0:	00010485 	.word	0x00010485
   109d4:	00010ab9 	.word	0x00010ab9

000109d8 <call_weak_fn>:
   109d8:	e59f3014 	ldr	r3, [pc, #20]	; 109f4 <call_weak_fn+0x1c>
   109dc:	e59f2014 	ldr	r2, [pc, #20]	; 109f8 <call_weak_fn+0x20>
   109e0:	e08f3003 	add	r3, pc, r3
   109e4:	e7932002 	ldr	r2, [r3, r2]
   109e8:	e3520000 	cmp	r2, #0
   109ec:	012fff1e 	bxeq	lr
   109f0:	eafffe91 	b	1043c <__gmon_start__@plt>
   109f4:	00010618 	.word	0x00010618
   109f8:	00000030 	.word	0x00000030

000109fc <deregister_tm_clones>:
   109fc:	4b07      	ldr	r3, [pc, #28]	; (10a1c <deregister_tm_clones+0x20>)
   109fe:	f241 003c 	movw	r0, #4156	; 0x103c
   10a02:	f2c0 0002 	movt	r0, #2
   10a06:	1a1b      	subs	r3, r3, r0
   10a08:	2b06      	cmp	r3, #6
   10a0a:	d905      	bls.n	10a18 <deregister_tm_clones+0x1c>
   10a0c:	f240 0300 	movw	r3, #0
   10a10:	f2c0 0300 	movt	r3, #0
   10a14:	b103      	cbz	r3, 10a18 <deregister_tm_clones+0x1c>
   10a16:	4718      	bx	r3
   10a18:	4770      	bx	lr
   10a1a:	bf00      	nop
   10a1c:	0002103f 	.word	0x0002103f

00010a20 <register_tm_clones>:
   10a20:	f241 033c 	movw	r3, #4156	; 0x103c
   10a24:	f241 003c 	movw	r0, #4156	; 0x103c
   10a28:	f2c0 0302 	movt	r3, #2
   10a2c:	f2c0 0002 	movt	r0, #2
   10a30:	1a19      	subs	r1, r3, r0
   10a32:	1089      	asrs	r1, r1, #2
   10a34:	eb01 71d1 	add.w	r1, r1, r1, lsr #31
   10a38:	1049      	asrs	r1, r1, #1
   10a3a:	d005      	beq.n	10a48 <register_tm_clones+0x28>
   10a3c:	f240 0300 	movw	r3, #0
   10a40:	f2c0 0300 	movt	r3, #0
   10a44:	b103      	cbz	r3, 10a48 <register_tm_clones+0x28>
   10a46:	4718      	bx	r3
   10a48:	4770      	bx	lr
   10a4a:	bf00      	nop

00010a4c <__do_global_dtors_aux>:
   10a4c:	b510      	push	{r4, lr}
   10a4e:	f241 0444 	movw	r4, #4164	; 0x1044
   10a52:	f2c0 0402 	movt	r4, #2
   10a56:	7823      	ldrb	r3, [r4, #0]
   10a58:	b91b      	cbnz	r3, 10a62 <__do_global_dtors_aux+0x16>
   10a5a:	f7ff ffcf 	bl	109fc <deregister_tm_clones>
   10a5e:	2301      	movs	r3, #1
   10a60:	7023      	strb	r3, [r4, #0]
   10a62:	bd10      	pop	{r4, pc}

00010a64 <frame_dummy>:
   10a64:	b508      	push	{r3, lr}
   10a66:	f640 700c 	movw	r0, #3852	; 0xf0c
   10a6a:	f2c0 0002 	movt	r0, #2
   10a6e:	6803      	ldr	r3, [r0, #0]
   10a70:	b913      	cbnz	r3, 10a78 <frame_dummy+0x14>
   10a72:	e8bd 4008 	ldmia.w	sp!, {r3, lr}
   10a76:	e7d3      	b.n	10a20 <register_tm_clones>
   10a78:	f240 0300 	movw	r3, #0
   10a7c:	f2c0 0300 	movt	r3, #0
   10a80:	2b00      	cmp	r3, #0
   10a82:	d0f6      	beq.n	10a72 <frame_dummy+0xe>
   10a84:	4798      	blx	r3
   10a86:	e7f4      	b.n	10a72 <frame_dummy+0xe>

00010a88 <print_matriu>:
   10a88:	b5f8      	push	{r3, r4, r5, r6, r7, lr}
   10a8a:	f640 3604 	movw	r6, #2820	; 0xb04
   10a8e:	1f04      	subs	r4, r0, #4
   10a90:	f100 073c 	add.w	r7, r0, #60	; 0x3c
   10a94:	f2c0 0601 	movt	r6, #1
   10a98:	f104 0510 	add.w	r5, r4, #16
   10a9c:	f854 2f04 	ldr.w	r2, [r4, #4]!
   10aa0:	4631      	mov	r1, r6
   10aa2:	2001      	movs	r0, #1
   10aa4:	f7ff ecdc 	blx	10460 <__printf_chk@plt>
   10aa8:	42ac      	cmp	r4, r5
   10aaa:	d1f7      	bne.n	10a9c <print_matriu+0x14>
   10aac:	200a      	movs	r0, #10
   10aae:	f7ff ecd2 	blx	10454 <putchar@plt>
   10ab2:	42a7      	cmp	r7, r4
   10ab4:	d1f0      	bne.n	10a98 <print_matriu+0x10>
   10ab6:	bdf8      	pop	{r3, r4, r5, r6, r7, pc}

00010ab8 <__libc_csu_init>:
   10ab8:	e92d 43f8 	stmdb	sp!, {r3, r4, r5, r6, r7, r8, r9, lr}
   10abc:	4607      	mov	r7, r0
   10abe:	4e0b      	ldr	r6, [pc, #44]	; (10aec <__libc_csu_init+0x34>)
   10ac0:	4688      	mov	r8, r1
   10ac2:	4d0b      	ldr	r5, [pc, #44]	; (10af0 <__libc_csu_init+0x38>)
   10ac4:	4691      	mov	r9, r2
   10ac6:	447e      	add	r6, pc
   10ac8:	f7ff ec96 	blx	103f8 <_init>
   10acc:	447d      	add	r5, pc
   10ace:	1b76      	subs	r6, r6, r5
   10ad0:	10b6      	asrs	r6, r6, #2
   10ad2:	d009      	beq.n	10ae8 <__libc_csu_init+0x30>
   10ad4:	2400      	movs	r4, #0
   10ad6:	3401      	adds	r4, #1
   10ad8:	f855 3b04 	ldr.w	r3, [r5], #4
   10adc:	464a      	mov	r2, r9
   10ade:	4641      	mov	r1, r8
   10ae0:	4638      	mov	r0, r7
   10ae2:	4798      	blx	r3
   10ae4:	42b4      	cmp	r4, r6
   10ae6:	d1f6      	bne.n	10ad6 <__libc_csu_init+0x1e>
   10ae8:	e8bd 83f8 	ldmia.w	sp!, {r3, r4, r5, r6, r7, r8, r9, pc}
   10aec:	0001043e 	.word	0x0001043e
   10af0:	00010434 	.word	0x00010434

00010af4 <__libc_csu_fini>:
   10af4:	4770      	bx	lr
   10af6:	bf00      	nop

Disassembly of section .fini:

00010af8 <_fini>:
   10af8:	e92d4008 	push	{r3, lr}
   10afc:	e8bd8008 	pop	{r3, pc}
