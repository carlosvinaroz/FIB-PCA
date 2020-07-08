
matriu1Unroll:     file format elf64-x86-64


Disassembly of section .init:

0000000000000618 <_init>:
 618:	48 83 ec 08          	sub    $0x8,%rsp
 61c:	48 8b 05 c5 09 20 00 	mov    0x2009c5(%rip),%rax        # 200fe8 <__gmon_start__>
 623:	48 85 c0             	test   %rax,%rax
 626:	74 02                	je     62a <_init+0x12>
 628:	ff d0                	callq  *%rax
 62a:	48 83 c4 08          	add    $0x8,%rsp
 62e:	c3                   	retq   

Disassembly of section .plt:

0000000000000630 <.plt>:
 630:	ff 35 6a 09 20 00    	pushq  0x20096a(%rip)        # 200fa0 <_GLOBAL_OFFSET_TABLE_+0x8>
 636:	ff 25 6c 09 20 00    	jmpq   *0x20096c(%rip)        # 200fa8 <_GLOBAL_OFFSET_TABLE_+0x10>
 63c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000640 <putchar@plt>:
 640:	ff 25 6a 09 20 00    	jmpq   *0x20096a(%rip)        # 200fb0 <putchar@GLIBC_2.2.5>
 646:	68 00 00 00 00       	pushq  $0x0
 64b:	e9 e0 ff ff ff       	jmpq   630 <.plt>

0000000000000650 <__stack_chk_fail@plt>:
 650:	ff 25 62 09 20 00    	jmpq   *0x200962(%rip)        # 200fb8 <__stack_chk_fail@GLIBC_2.4>
 656:	68 01 00 00 00       	pushq  $0x1
 65b:	e9 d0 ff ff ff       	jmpq   630 <.plt>

0000000000000660 <strtol@plt>:
 660:	ff 25 5a 09 20 00    	jmpq   *0x20095a(%rip)        # 200fc0 <strtol@GLIBC_2.2.5>
 666:	68 02 00 00 00       	pushq  $0x2
 66b:	e9 c0 ff ff ff       	jmpq   630 <.plt>

0000000000000670 <__printf_chk@plt>:
 670:	ff 25 52 09 20 00    	jmpq   *0x200952(%rip)        # 200fc8 <__printf_chk@GLIBC_2.3.4>
 676:	68 03 00 00 00       	pushq  $0x3
 67b:	e9 b0 ff ff ff       	jmpq   630 <.plt>

0000000000000680 <rand@plt>:
 680:	ff 25 4a 09 20 00    	jmpq   *0x20094a(%rip)        # 200fd0 <rand@GLIBC_2.2.5>
 686:	68 04 00 00 00       	pushq  $0x4
 68b:	e9 a0 ff ff ff       	jmpq   630 <.plt>

Disassembly of section .plt.got:

0000000000000690 <__cxa_finalize@plt>:
 690:	ff 25 62 09 20 00    	jmpq   *0x200962(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 696:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000006a0 <main>:
 6a0:	41 57                	push   %r15
 6a2:	66 0f ef c0          	pxor   %xmm0,%xmm0
 6a6:	41 56                	push   %r14
 6a8:	41 55                	push   %r13
 6aa:	41 89 fe             	mov    %edi,%r14d
 6ad:	41 54                	push   %r12
 6af:	55                   	push   %rbp
 6b0:	49 89 f7             	mov    %rsi,%r15
 6b3:	53                   	push   %rbx
 6b4:	31 ed                	xor    %ebp,%ebp
 6b6:	48 81 ec e8 00 00 00 	sub    $0xe8,%rsp
 6bd:	0f 29 84 24 90 00 00 	movaps %xmm0,0x90(%rsp)
 6c4:	00 
 6c5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
 6cc:	00 00 
 6ce:	48 89 84 24 d8 00 00 	mov    %rax,0xd8(%rsp)
 6d5:	00 
 6d6:	31 c0                	xor    %eax,%eax
 6d8:	0f 29 84 24 a0 00 00 	movaps %xmm0,0xa0(%rsp)
 6df:	00 
 6e0:	48 8d 5c 24 10       	lea    0x10(%rsp),%rbx
 6e5:	4c 8d 64 24 50       	lea    0x50(%rsp),%r12
 6ea:	0f 29 84 24 b0 00 00 	movaps %xmm0,0xb0(%rsp)
 6f1:	00 
 6f2:	0f 29 84 24 c0 00 00 	movaps %xmm0,0xc0(%rsp)
 6f9:	00 
 6fa:	4c 8d 6d 10          	lea    0x10(%rbp),%r13
 6fe:	e8 7d ff ff ff       	callq  680 <rand@plt>
 703:	89 04 2b             	mov    %eax,(%rbx,%rbp,1)
 706:	48 83 c5 04          	add    $0x4,%rbp
 70a:	e8 71 ff ff ff       	callq  680 <rand@plt>
 70f:	42 89 44 25 fc       	mov    %eax,-0x4(%rbp,%r12,1)
 714:	49 39 ed             	cmp    %rbp,%r13
 717:	75 e5                	jne    6fe <main+0x5e>
 719:	49 83 fd 40          	cmp    $0x40,%r13
 71d:	75 db                	jne    6fa <main+0x5a>
 71f:	41 83 fe 01          	cmp    $0x1,%r14d
 723:	0f 8f cd 00 00 00    	jg     7f6 <main+0x156>
 729:	90                   	nop
 72a:	90                   	nop
 72b:	90                   	nop
 72c:	c7 44 24 0c 03 97 98 	movl   $0x989703,0xc(%rsp)
 733:	00 
 734:	48 8d 43 0c          	lea    0xc(%rbx),%rax
 738:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
 73f:	00 
 740:	4c 8d 7b 04          	lea    0x4(%rbx),%r15
 744:	4c 8d 73 08          	lea    0x8(%rbx),%r14
 748:	4d 8d 6c 24 10       	lea    0x10(%r12),%r13
 74d:	4c 89 24 24          	mov    %r12,(%rsp)
 751:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%rsp)
 758:	00 
 759:	49 89 c4             	mov    %rax,%r12
 75c:	0f 1f 40 00          	nopl   0x0(%rax)
 760:	45 31 c0             	xor    %r8d,%r8d
 763:	42 8b 2c 03          	mov    (%rbx,%r8,1),%ebp
 767:	47 8b 1c 07          	mov    (%r15,%r8,1),%r11d
 76b:	4a 8d 34 07          	lea    (%rdi,%r8,1),%rsi
 76f:	47 8b 14 06          	mov    (%r14,%r8,1),%r10d
 773:	47 8b 0c 04          	mov    (%r12,%r8,1),%r9d
 777:	48 8b 0c 24          	mov    (%rsp),%rcx
 77b:	8b 01                	mov    (%rcx),%eax
 77d:	8b 51 10             	mov    0x10(%rcx),%edx
 780:	48 83 c1 04          	add    $0x4,%rcx
 784:	48 83 c6 04          	add    $0x4,%rsi
 788:	0f af c5             	imul   %ebp,%eax
 78b:	03 46 fc             	add    -0x4(%rsi),%eax
 78e:	41 0f af d3          	imul   %r11d,%edx
 792:	01 d0                	add    %edx,%eax
 794:	8b 51 1c             	mov    0x1c(%rcx),%edx
 797:	41 0f af d2          	imul   %r10d,%edx
 79b:	01 d0                	add    %edx,%eax
 79d:	8b 51 2c             	mov    0x2c(%rcx),%edx
 7a0:	41 0f af d1          	imul   %r9d,%edx
 7a4:	01 d0                	add    %edx,%eax
 7a6:	89 46 fc             	mov    %eax,-0x4(%rsi)
 7a9:	49 39 cd             	cmp    %rcx,%r13
 7ac:	75 cd                	jne    77b <main+0xdb>
 7ae:	49 83 c0 10          	add    $0x10,%r8
 7b2:	49 83 f8 40          	cmp    $0x40,%r8
 7b6:	75 ab                	jne    763 <main+0xc3>
 7b8:	83 44 24 08 01       	addl   $0x1,0x8(%rsp)
 7bd:	8b 44 24 08          	mov    0x8(%rsp),%eax
 7c1:	3b 44 24 0c          	cmp    0xc(%rsp),%eax
 7c5:	75 99                	jne    760 <main+0xc0>
 7c7:	90                   	nop
 7c8:	90                   	nop
 7c9:	90                   	nop
 7ca:	e8 71 01 00 00       	callq  940 <print_matriu>
 7cf:	31 c0                	xor    %eax,%eax
 7d1:	48 8b bc 24 d8 00 00 	mov    0xd8(%rsp),%rdi
 7d8:	00 
 7d9:	64 48 33 3c 25 28 00 	xor    %fs:0x28,%rdi
 7e0:	00 00 
 7e2:	75 3b                	jne    81f <main+0x17f>
 7e4:	48 81 c4 e8 00 00 00 	add    $0xe8,%rsp
 7eb:	5b                   	pop    %rbx
 7ec:	5d                   	pop    %rbp
 7ed:	41 5c                	pop    %r12
 7ef:	41 5d                	pop    %r13
 7f1:	41 5e                	pop    %r14
 7f3:	41 5f                	pop    %r15
 7f5:	c3                   	retq   
 7f6:	49 8b 7f 08          	mov    0x8(%r15),%rdi
 7fa:	ba 0a 00 00 00       	mov    $0xa,%edx
 7ff:	31 f6                	xor    %esi,%esi
 801:	e8 5a fe ff ff       	callq  660 <strtol@plt>
 806:	89 44 24 0c          	mov    %eax,0xc(%rsp)
 80a:	90                   	nop
 80b:	90                   	nop
 80c:	90                   	nop
 80d:	85 c0                	test   %eax,%eax
 80f:	48 8d bc 24 90 00 00 	lea    0x90(%rsp),%rdi
 816:	00 
 817:	0f 85 17 ff ff ff    	jne    734 <main+0x94>
 81d:	eb a8                	jmp    7c7 <main+0x127>
 81f:	e8 2c fe ff ff       	callq  650 <__stack_chk_fail@plt>
 824:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 82b:	00 00 00 
 82e:	66 90                	xchg   %ax,%ax

0000000000000830 <_start>:
 830:	31 ed                	xor    %ebp,%ebp
 832:	49 89 d1             	mov    %rdx,%r9
 835:	5e                   	pop    %rsi
 836:	48 89 e2             	mov    %rsp,%rdx
 839:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
 83d:	50                   	push   %rax
 83e:	54                   	push   %rsp
 83f:	4c 8d 05 ba 01 00 00 	lea    0x1ba(%rip),%r8        # a00 <__libc_csu_fini>
 846:	48 8d 0d 43 01 00 00 	lea    0x143(%rip),%rcx        # 990 <__libc_csu_init>
 84d:	48 8d 3d 4c fe ff ff 	lea    -0x1b4(%rip),%rdi        # 6a0 <main>
 854:	ff 15 86 07 20 00    	callq  *0x200786(%rip)        # 200fe0 <__libc_start_main@GLIBC_2.2.5>
 85a:	f4                   	hlt    
 85b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000000860 <deregister_tm_clones>:
 860:	48 8d 3d a9 07 20 00 	lea    0x2007a9(%rip),%rdi        # 201010 <__TMC_END__>
 867:	55                   	push   %rbp
 868:	48 8d 05 a1 07 20 00 	lea    0x2007a1(%rip),%rax        # 201010 <__TMC_END__>
 86f:	48 39 f8             	cmp    %rdi,%rax
 872:	48 89 e5             	mov    %rsp,%rbp
 875:	74 19                	je     890 <deregister_tm_clones+0x30>
 877:	48 8b 05 5a 07 20 00 	mov    0x20075a(%rip),%rax        # 200fd8 <_ITM_deregisterTMCloneTable>
 87e:	48 85 c0             	test   %rax,%rax
 881:	74 0d                	je     890 <deregister_tm_clones+0x30>
 883:	5d                   	pop    %rbp
 884:	ff e0                	jmpq   *%rax
 886:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 88d:	00 00 00 
 890:	5d                   	pop    %rbp
 891:	c3                   	retq   
 892:	0f 1f 40 00          	nopl   0x0(%rax)
 896:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 89d:	00 00 00 

00000000000008a0 <register_tm_clones>:
 8a0:	48 8d 3d 69 07 20 00 	lea    0x200769(%rip),%rdi        # 201010 <__TMC_END__>
 8a7:	48 8d 35 62 07 20 00 	lea    0x200762(%rip),%rsi        # 201010 <__TMC_END__>
 8ae:	55                   	push   %rbp
 8af:	48 29 fe             	sub    %rdi,%rsi
 8b2:	48 89 e5             	mov    %rsp,%rbp
 8b5:	48 c1 fe 03          	sar    $0x3,%rsi
 8b9:	48 89 f0             	mov    %rsi,%rax
 8bc:	48 c1 e8 3f          	shr    $0x3f,%rax
 8c0:	48 01 c6             	add    %rax,%rsi
 8c3:	48 d1 fe             	sar    %rsi
 8c6:	74 18                	je     8e0 <register_tm_clones+0x40>
 8c8:	48 8b 05 21 07 20 00 	mov    0x200721(%rip),%rax        # 200ff0 <_ITM_registerTMCloneTable>
 8cf:	48 85 c0             	test   %rax,%rax
 8d2:	74 0c                	je     8e0 <register_tm_clones+0x40>
 8d4:	5d                   	pop    %rbp
 8d5:	ff e0                	jmpq   *%rax
 8d7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
 8de:	00 00 
 8e0:	5d                   	pop    %rbp
 8e1:	c3                   	retq   
 8e2:	0f 1f 40 00          	nopl   0x0(%rax)
 8e6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 8ed:	00 00 00 

00000000000008f0 <__do_global_dtors_aux>:
 8f0:	80 3d 19 07 20 00 00 	cmpb   $0x0,0x200719(%rip)        # 201010 <__TMC_END__>
 8f7:	75 2f                	jne    928 <__do_global_dtors_aux+0x38>
 8f9:	48 83 3d f7 06 20 00 	cmpq   $0x0,0x2006f7(%rip)        # 200ff8 <__cxa_finalize@GLIBC_2.2.5>
 900:	00 
 901:	55                   	push   %rbp
 902:	48 89 e5             	mov    %rsp,%rbp
 905:	74 0c                	je     913 <__do_global_dtors_aux+0x23>
 907:	48 8b 3d fa 06 20 00 	mov    0x2006fa(%rip),%rdi        # 201008 <__dso_handle>
 90e:	e8 7d fd ff ff       	callq  690 <__cxa_finalize@plt>
 913:	e8 48 ff ff ff       	callq  860 <deregister_tm_clones>
 918:	c6 05 f1 06 20 00 01 	movb   $0x1,0x2006f1(%rip)        # 201010 <__TMC_END__>
 91f:	5d                   	pop    %rbp
 920:	c3                   	retq   
 921:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
 928:	f3 c3                	repz retq 
 92a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000930 <frame_dummy>:
 930:	55                   	push   %rbp
 931:	48 89 e5             	mov    %rsp,%rbp
 934:	5d                   	pop    %rbp
 935:	e9 66 ff ff ff       	jmpq   8a0 <register_tm_clones>
 93a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000000940 <print_matriu>:
 940:	41 55                	push   %r13
 942:	41 54                	push   %r12
 944:	4c 8d 6f 40          	lea    0x40(%rdi),%r13
 948:	55                   	push   %rbp
 949:	53                   	push   %rbx
 94a:	4c 8d 25 c3 00 00 00 	lea    0xc3(%rip),%r12        # a14 <_IO_stdin_used+0x4>
 951:	48 89 fb             	mov    %rdi,%rbx
 954:	48 83 ec 08          	sub    $0x8,%rsp
 958:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
 95c:	8b 13                	mov    (%rbx),%edx
 95e:	31 c0                	xor    %eax,%eax
 960:	4c 89 e6             	mov    %r12,%rsi
 963:	bf 01 00 00 00       	mov    $0x1,%edi
 968:	48 83 c3 04          	add    $0x4,%rbx
 96c:	e8 ff fc ff ff       	callq  670 <__printf_chk@plt>
 971:	48 39 dd             	cmp    %rbx,%rbp
 974:	75 e6                	jne    95c <print_matriu+0x1c>
 976:	bf 0a 00 00 00       	mov    $0xa,%edi
 97b:	e8 c0 fc ff ff       	callq  640 <putchar@plt>
 980:	4c 39 ed             	cmp    %r13,%rbp
 983:	75 d3                	jne    958 <print_matriu+0x18>
 985:	48 83 c4 08          	add    $0x8,%rsp
 989:	5b                   	pop    %rbx
 98a:	5d                   	pop    %rbp
 98b:	41 5c                	pop    %r12
 98d:	41 5d                	pop    %r13
 98f:	c3                   	retq   

0000000000000990 <__libc_csu_init>:
 990:	41 57                	push   %r15
 992:	41 56                	push   %r14
 994:	49 89 d7             	mov    %rdx,%r15
 997:	41 55                	push   %r13
 999:	41 54                	push   %r12
 99b:	4c 8d 25 f6 03 20 00 	lea    0x2003f6(%rip),%r12        # 200d98 <__frame_dummy_init_array_entry>
 9a2:	55                   	push   %rbp
 9a3:	48 8d 2d f6 03 20 00 	lea    0x2003f6(%rip),%rbp        # 200da0 <__init_array_end>
 9aa:	53                   	push   %rbx
 9ab:	41 89 fd             	mov    %edi,%r13d
 9ae:	49 89 f6             	mov    %rsi,%r14
 9b1:	4c 29 e5             	sub    %r12,%rbp
 9b4:	48 83 ec 08          	sub    $0x8,%rsp
 9b8:	48 c1 fd 03          	sar    $0x3,%rbp
 9bc:	e8 57 fc ff ff       	callq  618 <_init>
 9c1:	48 85 ed             	test   %rbp,%rbp
 9c4:	74 20                	je     9e6 <__libc_csu_init+0x56>
 9c6:	31 db                	xor    %ebx,%ebx
 9c8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
 9cf:	00 
 9d0:	4c 89 fa             	mov    %r15,%rdx
 9d3:	4c 89 f6             	mov    %r14,%rsi
 9d6:	44 89 ef             	mov    %r13d,%edi
 9d9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
 9dd:	48 83 c3 01          	add    $0x1,%rbx
 9e1:	48 39 dd             	cmp    %rbx,%rbp
 9e4:	75 ea                	jne    9d0 <__libc_csu_init+0x40>
 9e6:	48 83 c4 08          	add    $0x8,%rsp
 9ea:	5b                   	pop    %rbx
 9eb:	5d                   	pop    %rbp
 9ec:	41 5c                	pop    %r12
 9ee:	41 5d                	pop    %r13
 9f0:	41 5e                	pop    %r14
 9f2:	41 5f                	pop    %r15
 9f4:	c3                   	retq   
 9f5:	90                   	nop
 9f6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
 9fd:	00 00 00 

0000000000000a00 <__libc_csu_fini>:
 a00:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000000a04 <_fini>:
 a04:	48 83 ec 08          	sub    $0x8,%rsp
 a08:	48 83 c4 08          	add    $0x8,%rsp
 a0c:	c3                   	retq   
