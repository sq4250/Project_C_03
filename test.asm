
test.o：     文件格式 elf64-x86-64


Disassembly of section .text:

0000000000000000 <move>:
   0:	f3 0f 1e fa          	endbr64
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	48 83 ec 10          	sub    $0x10,%rsp
   c:	89 f9                	mov    %edi,%ecx
   e:	89 f0                	mov    %esi,%eax
  10:	89 55 f4             	mov    %edx,-0xc(%rbp)
  13:	89 ca                	mov    %ecx,%edx
  15:	88 55 fc             	mov    %dl,-0x4(%rbp)
  18:	88 45 f8             	mov    %al,-0x8(%rbp)
  1b:	8b 05 00 00 00 00    	mov    0x0(%rip),%eax        # 21 <move+0x21>
  21:	83 c0 01             	add    $0x1,%eax
  24:	89 05 00 00 00 00    	mov    %eax,0x0(%rip)        # 2a <move+0x2a>
  2a:	8b 35 00 00 00 00    	mov    0x0(%rip),%esi        # 30 <move+0x30>
  30:	0f be 4d f8          	movsbl -0x8(%rbp),%ecx
  34:	0f be 55 fc          	movsbl -0x4(%rbp),%edx
  38:	8b 45 f4             	mov    -0xc(%rbp),%eax
  3b:	41 89 f0             	mov    %esi,%r8d
  3e:	89 c6                	mov    %eax,%esi
  40:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 47 <move+0x47>
  47:	48 89 c7             	mov    %rax,%rdi
  4a:	b8 00 00 00 00       	mov    $0x0,%eax
  4f:	e8 00 00 00 00       	call   54 <move+0x54>
  54:	90                   	nop
  55:	c9                   	leave
  56:	c3                   	ret

0000000000000057 <HanoiTower>:
  57:	f3 0f 1e fa          	endbr64
  5b:	55                   	push   %rbp
  5c:	48 89 e5             	mov    %rsp,%rbp
  5f:	48 83 ec 10          	sub    $0x10,%rsp
  63:	89 d0                	mov    %edx,%eax
  65:	89 4d f0             	mov    %ecx,-0x10(%rbp)
  68:	89 fa                	mov    %edi,%edx
  6a:	88 55 fc             	mov    %dl,-0x4(%rbp)
  6d:	89 f2                	mov    %esi,%edx
  6f:	88 55 f8             	mov    %dl,-0x8(%rbp)
  72:	88 45 f4             	mov    %al,-0xc(%rbp)
  75:	83 7d f0 01          	cmpl   $0x1,-0x10(%rbp)
  79:	75 16                	jne    91 <HanoiTower+0x3a>
  7b:	0f be 4d f4          	movsbl -0xc(%rbp),%ecx
  7f:	0f be 45 fc          	movsbl -0x4(%rbp),%eax
  83:	8b 55 f0             	mov    -0x10(%rbp),%edx
  86:	89 ce                	mov    %ecx,%esi
  88:	89 c7                	mov    %eax,%edi
  8a:	e8 00 00 00 00       	call   8f <HanoiTower+0x38>
  8f:	eb 46                	jmp    d7 <HanoiTower+0x80>
  91:	8b 45 f0             	mov    -0x10(%rbp),%eax
  94:	8d 48 ff             	lea    -0x1(%rax),%ecx
  97:	0f be 55 f8          	movsbl -0x8(%rbp),%edx
  9b:	0f be 75 f4          	movsbl -0xc(%rbp),%esi
  9f:	0f be 45 fc          	movsbl -0x4(%rbp),%eax
  a3:	89 c7                	mov    %eax,%edi
  a5:	e8 00 00 00 00       	call   aa <HanoiTower+0x53>
  aa:	0f be 4d f4          	movsbl -0xc(%rbp),%ecx
  ae:	0f be 45 fc          	movsbl -0x4(%rbp),%eax
  b2:	8b 55 f0             	mov    -0x10(%rbp),%edx
  b5:	89 ce                	mov    %ecx,%esi
  b7:	89 c7                	mov    %eax,%edi
  b9:	e8 00 00 00 00       	call   be <HanoiTower+0x67>
  be:	8b 45 f0             	mov    -0x10(%rbp),%eax
  c1:	8d 48 ff             	lea    -0x1(%rax),%ecx
  c4:	0f be 55 f4          	movsbl -0xc(%rbp),%edx
  c8:	0f be 75 fc          	movsbl -0x4(%rbp),%esi
  cc:	0f be 45 f8          	movsbl -0x8(%rbp),%eax
  d0:	89 c7                	mov    %eax,%edi
  d2:	e8 00 00 00 00       	call   d7 <HanoiTower+0x80>
  d7:	90                   	nop
  d8:	c9                   	leave
  d9:	c3                   	ret

00000000000000da <main>:
  da:	f3 0f 1e fa          	endbr64
  de:	55                   	push   %rbp
  df:	48 89 e5             	mov    %rsp,%rbp
  e2:	48 83 ec 10          	sub    $0x10,%rsp
  e6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  ed:	00 00 
  ef:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  f3:	31 c0                	xor    %eax,%eax
  f5:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%rbp)
  fc:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 103 <main+0x29>
 103:	48 89 c7             	mov    %rax,%rdi
 106:	b8 00 00 00 00       	mov    $0x0,%eax
 10b:	e8 00 00 00 00       	call   110 <main+0x36>
 110:	48 8d 45 f4          	lea    -0xc(%rbp),%rax
 114:	48 89 c6             	mov    %rax,%rsi
 117:	48 8d 05 00 00 00 00 	lea    0x0(%rip),%rax        # 11e <main+0x44>
 11e:	48 89 c7             	mov    %rax,%rdi
 121:	b8 00 00 00 00       	mov    $0x0,%eax
 126:	e8 00 00 00 00       	call   12b <main+0x51>
 12b:	8b 45 f4             	mov    -0xc(%rbp),%eax
 12e:	89 c1                	mov    %eax,%ecx
 130:	ba 43 00 00 00       	mov    $0x43,%edx
 135:	be 42 00 00 00       	mov    $0x42,%esi
 13a:	bf 41 00 00 00       	mov    $0x41,%edi
 13f:	e8 00 00 00 00       	call   144 <main+0x6a>
 144:	b8 00 00 00 00       	mov    $0x0,%eax
 149:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
 14d:	64 48 2b 14 25 28 00 	sub    %fs:0x28,%rdx
 154:	00 00 
 156:	74 05                	je     15d <main+0x83>
 158:	e8 00 00 00 00       	call   15d <main+0x83>
 15d:	c9                   	leave
 15e:	c3                   	ret
