
./bomb：     文件格式 elf32-i386


Disassembly of section .init:

08049000 <_init>:
 8049000:	53                   	push   %ebx
 8049001:	83 ec 08             	sub    $0x8,%esp
 8049004:	e8 67 01 00 00       	call   8049170 <__x86.get_pc_thunk.bx>
 8049009:	81 c3 f7 3f 00 00    	add    $0x3ff7,%ebx
 804900f:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8049015:	85 c0                	test   %eax,%eax
 8049017:	74 02                	je     804901b <_init+0x1b>
 8049019:	ff d0                	call   *%eax
 804901b:	83 c4 08             	add    $0x8,%esp
 804901e:	5b                   	pop    %ebx
 804901f:	c3                   	ret

Disassembly of section .plt:

08049020 <.plt>:
 8049020:	ff 35 04 d0 04 08    	push   0x804d004
 8049026:	ff 25 08 d0 04 08    	jmp    *0x804d008
 804902c:	00 00                	add    %al,(%eax)
	...

08049030 <printf@plt>:
 8049030:	ff 25 0c d0 04 08    	jmp    *0x804d00c
 8049036:	68 00 00 00 00       	push   $0x0
 804903b:	e9 e0 ff ff ff       	jmp    8049020 <.plt>

08049040 <fflush@plt>:
 8049040:	ff 25 10 d0 04 08    	jmp    *0x804d010
 8049046:	68 08 00 00 00       	push   $0x8
 804904b:	e9 d0 ff ff ff       	jmp    8049020 <.plt>

08049050 <fgets@plt>:
 8049050:	ff 25 14 d0 04 08    	jmp    *0x804d014
 8049056:	68 10 00 00 00       	push   $0x10
 804905b:	e9 c0 ff ff ff       	jmp    8049020 <.plt>

08049060 <signal@plt>:
 8049060:	ff 25 18 d0 04 08    	jmp    *0x804d018
 8049066:	68 18 00 00 00       	push   $0x18
 804906b:	e9 b0 ff ff ff       	jmp    8049020 <.plt>

08049070 <sleep@plt>:
 8049070:	ff 25 1c d0 04 08    	jmp    *0x804d01c
 8049076:	68 20 00 00 00       	push   $0x20
 804907b:	e9 a0 ff ff ff       	jmp    8049020 <.plt>

08049080 <getenv@plt>:
 8049080:	ff 25 20 d0 04 08    	jmp    *0x804d020
 8049086:	68 28 00 00 00       	push   $0x28
 804908b:	e9 90 ff ff ff       	jmp    8049020 <.plt>

08049090 <puts@plt>:
 8049090:	ff 25 24 d0 04 08    	jmp    *0x804d024
 8049096:	68 30 00 00 00       	push   $0x30
 804909b:	e9 80 ff ff ff       	jmp    8049020 <.plt>

080490a0 <exit@plt>:
 80490a0:	ff 25 28 d0 04 08    	jmp    *0x804d028
 80490a6:	68 38 00 00 00       	push   $0x38
 80490ab:	e9 70 ff ff ff       	jmp    8049020 <.plt>

080490b0 <strlen@plt>:
 80490b0:	ff 25 2c d0 04 08    	jmp    *0x804d02c
 80490b6:	68 40 00 00 00       	push   $0x40
 80490bb:	e9 60 ff ff ff       	jmp    8049020 <.plt>

080490c0 <__libc_start_main@plt>:
 80490c0:	ff 25 30 d0 04 08    	jmp    *0x804d030
 80490c6:	68 48 00 00 00       	push   $0x48
 80490cb:	e9 50 ff ff ff       	jmp    8049020 <.plt>

080490d0 <__isoc99_sscanf@plt>:
 80490d0:	ff 25 34 d0 04 08    	jmp    *0x804d034
 80490d6:	68 50 00 00 00       	push   $0x50
 80490db:	e9 40 ff ff ff       	jmp    8049020 <.plt>

080490e0 <fopen@plt>:
 80490e0:	ff 25 38 d0 04 08    	jmp    *0x804d038
 80490e6:	68 58 00 00 00       	push   $0x58
 80490eb:	e9 30 ff ff ff       	jmp    8049020 <.plt>

080490f0 <strtok@plt>:
 80490f0:	ff 25 3c d0 04 08    	jmp    *0x804d03c
 80490f6:	68 60 00 00 00       	push   $0x60
 80490fb:	e9 20 ff ff ff       	jmp    8049020 <.plt>

08049100 <atoi@plt>:
 8049100:	ff 25 40 d0 04 08    	jmp    *0x804d040
 8049106:	68 68 00 00 00       	push   $0x68
 804910b:	e9 10 ff ff ff       	jmp    8049020 <.plt>

08049110 <__ctype_b_loc@plt>:
 8049110:	ff 25 44 d0 04 08    	jmp    *0x804d044
 8049116:	68 70 00 00 00       	push   $0x70
 804911b:	e9 00 ff ff ff       	jmp    8049020 <.plt>

Disassembly of section .text:

08049120 <_start>:
 8049120:	31 ed                	xor    %ebp,%ebp
 8049122:	5e                   	pop    %esi
 8049123:	89 e1                	mov    %esp,%ecx
 8049125:	83 e4 f0             	and    $0xfffffff0,%esp
 8049128:	50                   	push   %eax
 8049129:	54                   	push   %esp
 804912a:	52                   	push   %edx
 804912b:	e8 23 00 00 00       	call   8049153 <_start+0x33>
 8049130:	81 c3 d0 3e 00 00    	add    $0x3ed0,%ebx
 8049136:	8d 83 f0 cf ff ff    	lea    -0x3010(%ebx),%eax
 804913c:	50                   	push   %eax
 804913d:	8d 83 90 cf ff ff    	lea    -0x3070(%ebx),%eax
 8049143:	50                   	push   %eax
 8049144:	51                   	push   %ecx
 8049145:	56                   	push   %esi
 8049146:	c7 c0 32 92 04 08    	mov    $0x8049232,%eax
 804914c:	50                   	push   %eax
 804914d:	e8 6e ff ff ff       	call   80490c0 <__libc_start_main@plt>
 8049152:	f4                   	hlt
 8049153:	8b 1c 24             	mov    (%esp),%ebx
 8049156:	c3                   	ret
 8049157:	66 90                	xchg   %ax,%ax
 8049159:	66 90                	xchg   %ax,%ax
 804915b:	66 90                	xchg   %ax,%ax
 804915d:	66 90                	xchg   %ax,%ax
 804915f:	90                   	nop

08049160 <_dl_relocate_static_pie>:
 8049160:	c3                   	ret
 8049161:	66 90                	xchg   %ax,%ax
 8049163:	66 90                	xchg   %ax,%ax
 8049165:	66 90                	xchg   %ax,%ax
 8049167:	66 90                	xchg   %ax,%ax
 8049169:	66 90                	xchg   %ax,%ax
 804916b:	66 90                	xchg   %ax,%ax
 804916d:	66 90                	xchg   %ax,%ax
 804916f:	90                   	nop

08049170 <__x86.get_pc_thunk.bx>:
 8049170:	8b 1c 24             	mov    (%esp),%ebx
 8049173:	c3                   	ret
 8049174:	66 90                	xchg   %ax,%ax
 8049176:	66 90                	xchg   %ax,%ax
 8049178:	66 90                	xchg   %ax,%ax
 804917a:	66 90                	xchg   %ax,%ax
 804917c:	66 90                	xchg   %ax,%ax
 804917e:	66 90                	xchg   %ax,%ax

08049180 <deregister_tm_clones>:
 8049180:	b8 60 d2 04 08       	mov    $0x804d260,%eax
 8049185:	3d 60 d2 04 08       	cmp    $0x804d260,%eax
 804918a:	74 24                	je     80491b0 <deregister_tm_clones+0x30>
 804918c:	b8 00 00 00 00       	mov    $0x0,%eax
 8049191:	85 c0                	test   %eax,%eax
 8049193:	74 1b                	je     80491b0 <deregister_tm_clones+0x30>
 8049195:	55                   	push   %ebp
 8049196:	89 e5                	mov    %esp,%ebp
 8049198:	83 ec 14             	sub    $0x14,%esp
 804919b:	68 60 d2 04 08       	push   $0x804d260
 80491a0:	ff d0                	call   *%eax
 80491a2:	83 c4 10             	add    $0x10,%esp
 80491a5:	c9                   	leave
 80491a6:	c3                   	ret
 80491a7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80491ae:	66 90                	xchg   %ax,%ax
 80491b0:	c3                   	ret
 80491b1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80491b8:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 80491bf:	90                   	nop

080491c0 <register_tm_clones>:
 80491c0:	b8 60 d2 04 08       	mov    $0x804d260,%eax
 80491c5:	2d 60 d2 04 08       	sub    $0x804d260,%eax
 80491ca:	c1 f8 02             	sar    $0x2,%eax
 80491cd:	89 c2                	mov    %eax,%edx
 80491cf:	c1 ea 1f             	shr    $0x1f,%edx
 80491d2:	01 d0                	add    %edx,%eax
 80491d4:	d1 f8                	sar    $1,%eax
 80491d6:	74 20                	je     80491f8 <register_tm_clones+0x38>
 80491d8:	ba 00 00 00 00       	mov    $0x0,%edx
 80491dd:	85 d2                	test   %edx,%edx
 80491df:	74 17                	je     80491f8 <register_tm_clones+0x38>
 80491e1:	55                   	push   %ebp
 80491e2:	89 e5                	mov    %esp,%ebp
 80491e4:	83 ec 10             	sub    $0x10,%esp
 80491e7:	50                   	push   %eax
 80491e8:	68 60 d2 04 08       	push   $0x804d260
 80491ed:	ff d2                	call   *%edx
 80491ef:	83 c4 10             	add    $0x10,%esp
 80491f2:	c9                   	leave
 80491f3:	c3                   	ret
 80491f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80491f8:	c3                   	ret
 80491f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08049200 <__do_global_dtors_aux>:
 8049200:	80 3d 68 d2 04 08 00 	cmpb   $0x0,0x804d268
 8049207:	75 17                	jne    8049220 <__do_global_dtors_aux+0x20>
 8049209:	55                   	push   %ebp
 804920a:	89 e5                	mov    %esp,%ebp
 804920c:	83 ec 08             	sub    $0x8,%esp
 804920f:	e8 6c ff ff ff       	call   8049180 <deregister_tm_clones>
 8049214:	c6 05 68 d2 04 08 01 	movb   $0x1,0x804d268
 804921b:	c9                   	leave
 804921c:	c3                   	ret
 804921d:	8d 76 00             	lea    0x0(%esi),%esi
 8049220:	c3                   	ret
 8049221:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049228:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 804922f:	90                   	nop

08049230 <frame_dummy>:
 8049230:	eb 8e                	jmp    80491c0 <register_tm_clones>

08049232 <main>:
 8049232:	8d 4c 24 04          	lea    0x4(%esp),%ecx
 8049236:	83 e4 f0             	and    $0xfffffff0,%esp
 8049239:	ff 71 fc             	push   -0x4(%ecx)
 804923c:	55                   	push   %ebp
 804923d:	89 e5                	mov    %esp,%ebp
 804923f:	53                   	push   %ebx
 8049240:	51                   	push   %ecx
 8049241:	83 ec 10             	sub    $0x10,%esp
 8049244:	89 cb                	mov    %ecx,%ebx
 8049246:	83 3b 01             	cmpl   $0x1,(%ebx)
 8049249:	75 0c                	jne    8049257 <main+0x25>
 804924b:	a1 60 d2 04 08       	mov    0x804d260,%eax
 8049250:	a3 70 d2 04 08       	mov    %eax,0x804d270
 8049255:	eb 75                	jmp    80492cc <main+0x9a>
 8049257:	83 3b 02             	cmpl   $0x2,(%ebx)
 804925a:	75 50                	jne    80492ac <main+0x7a>
 804925c:	8b 43 04             	mov    0x4(%ebx),%eax
 804925f:	83 c0 04             	add    $0x4,%eax
 8049262:	8b 00                	mov    (%eax),%eax
 8049264:	83 ec 08             	sub    $0x8,%esp
 8049267:	68 08 b0 04 08       	push   $0x804b008
 804926c:	50                   	push   %eax
 804926d:	e8 6e fe ff ff       	call   80490e0 <fopen@plt>
 8049272:	83 c4 10             	add    $0x10,%esp
 8049275:	a3 70 d2 04 08       	mov    %eax,0x804d270
 804927a:	a1 70 d2 04 08       	mov    0x804d270,%eax
 804927f:	85 c0                	test   %eax,%eax
 8049281:	75 49                	jne    80492cc <main+0x9a>
 8049283:	8b 43 04             	mov    0x4(%ebx),%eax
 8049286:	83 c0 04             	add    $0x4,%eax
 8049289:	8b 10                	mov    (%eax),%edx
 804928b:	8b 43 04             	mov    0x4(%ebx),%eax
 804928e:	8b 00                	mov    (%eax),%eax
 8049290:	83 ec 04             	sub    $0x4,%esp
 8049293:	52                   	push   %edx
 8049294:	50                   	push   %eax
 8049295:	68 0a b0 04 08       	push   $0x804b00a
 804929a:	e8 91 fd ff ff       	call   8049030 <printf@plt>
 804929f:	83 c4 10             	add    $0x10,%esp
 80492a2:	83 ec 0c             	sub    $0xc,%esp
 80492a5:	6a 08                	push   $0x8
 80492a7:	e8 f4 fd ff ff       	call   80490a0 <exit@plt>
 80492ac:	8b 43 04             	mov    0x4(%ebx),%eax
 80492af:	8b 00                	mov    (%eax),%eax
 80492b1:	83 ec 08             	sub    $0x8,%esp
 80492b4:	50                   	push   %eax
 80492b5:	68 27 b0 04 08       	push   $0x804b027
 80492ba:	e8 71 fd ff ff       	call   8049030 <printf@plt>
 80492bf:	83 c4 10             	add    $0x10,%esp
 80492c2:	83 ec 0c             	sub    $0xc,%esp
 80492c5:	6a 08                	push   $0x8
 80492c7:	e8 d4 fd ff ff       	call   80490a0 <exit@plt>
 80492cc:	e8 04 0a 00 00       	call   8049cd5 <initialize_bomb>
 80492d1:	83 ec 0c             	sub    $0xc,%esp
 80492d4:	68 44 b0 04 08       	push   $0x804b044
 80492d9:	e8 b2 fd ff ff       	call   8049090 <puts@plt>
 80492de:	83 c4 10             	add    $0x10,%esp
 80492e1:	83 ec 0c             	sub    $0xc,%esp
 80492e4:	68 80 b0 04 08       	push   $0x804b080
 80492e9:	e8 a2 fd ff ff       	call   8049090 <puts@plt>
 80492ee:	83 c4 10             	add    $0x10,%esp
 80492f1:	e8 99 0a 00 00       	call   8049d8f <read_line>
 80492f6:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80492f9:	83 ec 0c             	sub    $0xc,%esp
 80492fc:	ff 75 f4             	push   -0xc(%ebp)
 80492ff:	e8 50 01 00 00       	call   8049454 <phase_0>
 8049304:	83 c4 10             	add    $0x10,%esp
 8049307:	85 c0                	test   %eax,%eax
 8049309:	74 15                	je     8049320 <main+0xee>
 804930b:	e8 eb 0b 00 00       	call   8049efb <phase_defused>
 8049310:	83 ec 0c             	sub    $0xc,%esp
 8049313:	68 ac b0 04 08       	push   $0x804b0ac
 8049318:	e8 73 fd ff ff       	call   8049090 <puts@plt>
 804931d:	83 c4 10             	add    $0x10,%esp
 8049320:	e8 6a 0a 00 00       	call   8049d8f <read_line>
 8049325:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049328:	83 ec 0c             	sub    $0xc,%esp
 804932b:	ff 75 f4             	push   -0xc(%ebp)
 804932e:	e8 51 01 00 00       	call   8049484 <phase_1>
 8049333:	83 c4 10             	add    $0x10,%esp
 8049336:	85 c0                	test   %eax,%eax
 8049338:	74 15                	je     804934f <main+0x11d>
 804933a:	e8 bc 0b 00 00       	call   8049efb <phase_defused>
 804933f:	83 ec 0c             	sub    $0xc,%esp
 8049342:	68 d4 b0 04 08       	push   $0x804b0d4
 8049347:	e8 44 fd ff ff       	call   8049090 <puts@plt>
 804934c:	83 c4 10             	add    $0x10,%esp
 804934f:	e8 3b 0a 00 00       	call   8049d8f <read_line>
 8049354:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049357:	83 ec 0c             	sub    $0xc,%esp
 804935a:	ff 75 f4             	push   -0xc(%ebp)
 804935d:	e8 94 01 00 00       	call   80494f6 <phase_2>
 8049362:	83 c4 10             	add    $0x10,%esp
 8049365:	85 c0                	test   %eax,%eax
 8049367:	74 15                	je     804937e <main+0x14c>
 8049369:	e8 8d 0b 00 00       	call   8049efb <phase_defused>
 804936e:	83 ec 0c             	sub    $0xc,%esp
 8049371:	68 fd b0 04 08       	push   $0x804b0fd
 8049376:	e8 15 fd ff ff       	call   8049090 <puts@plt>
 804937b:	83 c4 10             	add    $0x10,%esp
 804937e:	e8 0c 0a 00 00       	call   8049d8f <read_line>
 8049383:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049386:	83 ec 0c             	sub    $0xc,%esp
 8049389:	ff 75 f4             	push   -0xc(%ebp)
 804938c:	e8 f0 01 00 00       	call   8049581 <phase_3>
 8049391:	83 c4 10             	add    $0x10,%esp
 8049394:	85 c0                	test   %eax,%eax
 8049396:	74 15                	je     80493ad <main+0x17b>
 8049398:	e8 5e 0b 00 00       	call   8049efb <phase_defused>
 804939d:	83 ec 0c             	sub    $0xc,%esp
 80493a0:	68 1b b1 04 08       	push   $0x804b11b
 80493a5:	e8 e6 fc ff ff       	call   8049090 <puts@plt>
 80493aa:	83 c4 10             	add    $0x10,%esp
 80493ad:	e8 dd 09 00 00       	call   8049d8f <read_line>
 80493b2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80493b5:	83 ec 0c             	sub    $0xc,%esp
 80493b8:	ff 75 f4             	push   -0xc(%ebp)
 80493bb:	e8 e8 02 00 00       	call   80496a8 <phase_4>
 80493c0:	83 c4 10             	add    $0x10,%esp
 80493c3:	85 c0                	test   %eax,%eax
 80493c5:	74 15                	je     80493dc <main+0x1aa>
 80493c7:	e8 2f 0b 00 00       	call   8049efb <phase_defused>
 80493cc:	83 ec 0c             	sub    $0xc,%esp
 80493cf:	68 2c b1 04 08       	push   $0x804b12c
 80493d4:	e8 b7 fc ff ff       	call   8049090 <puts@plt>
 80493d9:	83 c4 10             	add    $0x10,%esp
 80493dc:	e8 ae 09 00 00       	call   8049d8f <read_line>
 80493e1:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80493e4:	83 ec 0c             	sub    $0xc,%esp
 80493e7:	ff 75 f4             	push   -0xc(%ebp)
 80493ea:	e8 d7 03 00 00       	call   80497c6 <phase_5>
 80493ef:	83 c4 10             	add    $0x10,%esp
 80493f2:	85 c0                	test   %eax,%eax
 80493f4:	74 15                	je     804940b <main+0x1d9>
 80493f6:	e8 00 0b 00 00       	call   8049efb <phase_defused>
 80493fb:	83 ec 0c             	sub    $0xc,%esp
 80493fe:	68 50 b1 04 08       	push   $0x804b150
 8049403:	e8 88 fc ff ff       	call   8049090 <puts@plt>
 8049408:	83 c4 10             	add    $0x10,%esp
 804940b:	e8 7f 09 00 00       	call   8049d8f <read_line>
 8049410:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049413:	83 ec 0c             	sub    $0xc,%esp
 8049416:	ff 75 f4             	push   -0xc(%ebp)
 8049419:	e8 34 04 00 00       	call   8049852 <phase_6>
 804941e:	83 c4 10             	add    $0x10,%esp
 8049421:	85 c0                	test   %eax,%eax
 8049423:	74 05                	je     804942a <main+0x1f8>
 8049425:	e8 d1 0a 00 00       	call   8049efb <phase_defused>
 804942a:	b8 00 00 00 00       	mov    $0x0,%eax
 804942f:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8049432:	59                   	pop    %ecx
 8049433:	5b                   	pop    %ebx
 8049434:	5d                   	pop    %ebp
 8049435:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8049438:	c3                   	ret

08049439 <SoxdmVAr>:
 8049439:	55                   	push   %ebp
 804943a:	89 e5                	mov    %esp,%ebp
 804943c:	8b 45 08             	mov    0x8(%ebp),%eax
 804943f:	2b 45 0c             	sub    0xc(%ebp),%eax
 8049442:	89 c2                	mov    %eax,%edx
 8049444:	89 d0                	mov    %edx,%eax
 8049446:	01 c0                	add    %eax,%eax
 8049448:	01 c2                	add    %eax,%edx
 804944a:	8b 45 08             	mov    0x8(%ebp),%eax
 804944d:	c1 e0 05             	shl    $0x5,%eax
 8049450:	01 d0                	add    %edx,%eax
 8049452:	5d                   	pop    %ebp
 8049453:	c3                   	ret

08049454 <phase_0>:
 8049454:	55                   	push   %ebp
 8049455:	89 e5                	mov    %esp,%ebp
 8049457:	83 ec 08             	sub    $0x8,%esp
 804945a:	83 ec 08             	sub    $0x8,%esp
 804945d:	68 e8 b1 04 08       	push   $0x804b1e8
 8049462:	ff 75 08             	push   0x8(%ebp)
 8049465:	e8 00 08 00 00       	call   8049c6a <strings_not_equal>
 804946a:	83 c4 10             	add    $0x10,%esp
 804946d:	85 c0                	test   %eax,%eax
 804946f:	74 0c                	je     804947d <phase_0+0x29>
 8049471:	e8 5c 0a 00 00       	call   8049ed2 <explode_bomb>
 8049476:	b8 00 00 00 00       	mov    $0x0,%eax
 804947b:	eb 05                	jmp    8049482 <phase_0+0x2e>
 804947d:	b8 01 00 00 00       	mov    $0x1,%eax
 8049482:	c9                   	leave
 8049483:	c3                   	ret

08049484 <phase_1>:
 8049484:	55                   	push   %ebp
 8049485:	89 e5                	mov    %esp,%ebp
 8049487:	83 ec 18             	sub    $0x18,%esp
 804948a:	c7 45 f4 c0 da 7b 2e 	movl   $0x2e7bdac0,-0xc(%ebp)
 8049491:	db 45 f4             	fildl  -0xc(%ebp)
 8049494:	d9 5d f0             	fstps  -0x10(%ebp)
 8049497:	8d 45 e8             	lea    -0x18(%ebp),%eax
 804949a:	50                   	push   %eax
 804949b:	8d 45 ec             	lea    -0x14(%ebp),%eax
 804949e:	50                   	push   %eax
 804949f:	68 16 b2 04 08       	push   $0x804b216
 80494a4:	ff 75 08             	push   0x8(%ebp)
 80494a7:	e8 24 fc ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 80494ac:	83 c4 10             	add    $0x10,%esp
 80494af:	83 f8 02             	cmp    $0x2,%eax
 80494b2:	74 0c                	je     80494c0 <phase_1+0x3c>
 80494b4:	e8 19 0a 00 00       	call   8049ed2 <explode_bomb>
 80494b9:	b8 00 00 00 00       	mov    $0x0,%eax
 80494be:	eb 34                	jmp    80494f4 <phase_1+0x70>
 80494c0:	8d 45 f0             	lea    -0x10(%ebp),%eax
 80494c3:	83 c0 02             	add    $0x2,%eax
 80494c6:	0f b7 00             	movzwl (%eax),%eax
 80494c9:	0f bf d0             	movswl %ax,%edx
 80494cc:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80494cf:	39 c2                	cmp    %eax,%edx
 80494d1:	75 10                	jne    80494e3 <phase_1+0x5f>
 80494d3:	8d 45 f0             	lea    -0x10(%ebp),%eax
 80494d6:	0f b7 00             	movzwl (%eax),%eax
 80494d9:	0f bf d0             	movswl %ax,%edx
 80494dc:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80494df:	39 c2                	cmp    %eax,%edx
 80494e1:	74 0c                	je     80494ef <phase_1+0x6b>
 80494e3:	e8 ea 09 00 00       	call   8049ed2 <explode_bomb>
 80494e8:	b8 00 00 00 00       	mov    $0x0,%eax
 80494ed:	eb 05                	jmp    80494f4 <phase_1+0x70>
 80494ef:	b8 01 00 00 00       	mov    $0x1,%eax
 80494f4:	c9                   	leave
 80494f5:	c3                   	ret

080494f6 <phase_2>:
 80494f6:	55                   	push   %ebp
 80494f7:	89 e5                	mov    %esp,%ebp
 80494f9:	53                   	push   %ebx
 80494fa:	83 ec 34             	sub    $0x34,%esp
 80494fd:	83 ec 04             	sub    $0x4,%esp
 8049500:	6a 08                	push   $0x8
 8049502:	8d 45 d4             	lea    -0x2c(%ebp),%eax
 8049505:	50                   	push   %eax
 8049506:	ff 75 08             	push   0x8(%ebp)
 8049509:	e8 a2 06 00 00       	call   8049bb0 <read_n_numbers>
 804950e:	83 c4 10             	add    $0x10,%esp
 8049511:	85 c0                	test   %eax,%eax
 8049513:	75 07                	jne    804951c <phase_2+0x26>
 8049515:	b8 00 00 00 00       	mov    $0x0,%eax
 804951a:	eb 60                	jmp    804957c <phase_2+0x86>
 804951c:	8b 45 d4             	mov    -0x2c(%ebp),%eax
 804951f:	3d cf 00 00 00       	cmp    $0xcf,%eax
 8049524:	74 0c                	je     8049532 <phase_2+0x3c>
 8049526:	e8 a7 09 00 00       	call   8049ed2 <explode_bomb>
 804952b:	b8 00 00 00 00       	mov    $0x0,%eax
 8049530:	eb 4a                	jmp    804957c <phase_2+0x86>
 8049532:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp)
 8049539:	eb 36                	jmp    8049571 <phase_2+0x7b>
 804953b:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804953e:	8b 54 85 d4          	mov    -0x2c(%ebp,%eax,4),%edx
 8049542:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049545:	83 e8 01             	sub    $0x1,%eax
 8049548:	8b 4c 85 d4          	mov    -0x2c(%ebp,%eax,4),%ecx
 804954c:	8b 5d f4             	mov    -0xc(%ebp),%ebx
 804954f:	b8 00 00 00 00       	mov    $0x0,%eax
 8049554:	29 d8                	sub    %ebx,%eax
 8049556:	01 c0                	add    %eax,%eax
 8049558:	01 c8                	add    %ecx,%eax
 804955a:	83 c0 01             	add    $0x1,%eax
 804955d:	39 c2                	cmp    %eax,%edx
 804955f:	74 0c                	je     804956d <phase_2+0x77>
 8049561:	e8 6c 09 00 00       	call   8049ed2 <explode_bomb>
 8049566:	b8 00 00 00 00       	mov    $0x0,%eax
 804956b:	eb 0f                	jmp    804957c <phase_2+0x86>
 804956d:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8049571:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp)
 8049575:	7e c4                	jle    804953b <phase_2+0x45>
 8049577:	b8 01 00 00 00       	mov    $0x1,%eax
 804957c:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 804957f:	c9                   	leave
 8049580:	c3                   	ret

08049581 <phase_3>:
 8049581:	55                   	push   %ebp
 8049582:	89 e5                	mov    %esp,%ebp
 8049584:	83 ec 18             	sub    $0x18,%esp
 8049587:	8d 45 e8             	lea    -0x18(%ebp),%eax
 804958a:	50                   	push   %eax
 804958b:	8d 45 ec             	lea    -0x14(%ebp),%eax
 804958e:	50                   	push   %eax
 804958f:	68 16 b2 04 08       	push   $0x804b216
 8049594:	ff 75 08             	push   0x8(%ebp)
 8049597:	e8 34 fb ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 804959c:	83 c4 10             	add    $0x10,%esp
 804959f:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80495a2:	83 7d f0 01          	cmpl   $0x1,-0x10(%ebp)
 80495a6:	7f 0c                	jg     80495b4 <phase_3+0x33>
 80495a8:	e8 25 09 00 00       	call   8049ed2 <explode_bomb>
 80495ad:	b8 00 00 00 00       	mov    $0x0,%eax
 80495b2:	eb 7f                	jmp    8049633 <phase_3+0xb2>
 80495b4:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 80495bb:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80495be:	2d cf 00 00 00       	sub    $0xcf,%eax
 80495c3:	83 f8 08             	cmp    $0x8,%eax
 80495c6:	77 46                	ja     804960e <phase_3+0x8d>
 80495c8:	8b 04 85 1c b2 04 08 	mov    0x804b21c(,%eax,4),%eax
 80495cf:	ff e0                	jmp    *%eax
 80495d1:	83 45 f4 75          	addl   $0x75,-0xc(%ebp)
 80495d5:	81 45 f4 a2 00 00 00 	addl   $0xa2,-0xc(%ebp)
 80495dc:	83 6d f4 75          	subl   $0x75,-0xc(%ebp)
 80495e0:	83 45 f4 75          	addl   $0x75,-0xc(%ebp)
 80495e4:	81 45 f4 a2 00 00 00 	addl   $0xa2,-0xc(%ebp)
 80495eb:	83 6d f4 75          	subl   $0x75,-0xc(%ebp)
 80495ef:	81 45 f4 a2 00 00 00 	addl   $0xa2,-0xc(%ebp)
 80495f6:	81 6d f4 a2 00 00 00 	subl   $0xa2,-0xc(%ebp)
 80495fd:	83 45 f4 75          	addl   $0x75,-0xc(%ebp)
 8049601:	90                   	nop
 8049602:	8b 45 ec             	mov    -0x14(%ebp),%eax
 8049605:	3d d5 00 00 00       	cmp    $0xd5,%eax
 804960a:	7f 16                	jg     8049622 <phase_3+0xa1>
 804960c:	eb 0c                	jmp    804961a <phase_3+0x99>
 804960e:	e8 bf 08 00 00       	call   8049ed2 <explode_bomb>
 8049613:	b8 00 00 00 00       	mov    $0x0,%eax
 8049618:	eb 19                	jmp    8049633 <phase_3+0xb2>
 804961a:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804961d:	39 45 f4             	cmp    %eax,-0xc(%ebp)
 8049620:	74 0c                	je     804962e <phase_3+0xad>
 8049622:	e8 ab 08 00 00       	call   8049ed2 <explode_bomb>
 8049627:	b8 00 00 00 00       	mov    $0x0,%eax
 804962c:	eb 05                	jmp    8049633 <phase_3+0xb2>
 804962e:	b8 01 00 00 00       	mov    $0x1,%eax
 8049633:	c9                   	leave
 8049634:	c3                   	ret

08049635 <func4>:
 8049635:	55                   	push   %ebp
 8049636:	89 e5                	mov    %esp,%ebp
 8049638:	83 ec 18             	sub    $0x18,%esp
 804963b:	8b 55 0c             	mov    0xc(%ebp),%edx
 804963e:	8b 45 10             	mov    0x10(%ebp),%eax
 8049641:	01 d0                	add    %edx,%eax
 8049643:	89 c2                	mov    %eax,%edx
 8049645:	c1 ea 1f             	shr    $0x1f,%edx
 8049648:	01 d0                	add    %edx,%eax
 804964a:	d1 f8                	sar    $1,%eax
 804964c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804964f:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049652:	3b 45 10             	cmp    0x10(%ebp),%eax
 8049655:	7c 13                	jl     804966a <func4+0x35>
 8049657:	8b 45 10             	mov    0x10(%ebp),%eax
 804965a:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8049661:	8b 45 08             	mov    0x8(%ebp),%eax
 8049664:	01 d0                	add    %edx,%eax
 8049666:	8b 00                	mov    (%eax),%eax
 8049668:	eb 3c                	jmp    80496a6 <func4+0x71>
 804966a:	83 ec 04             	sub    $0x4,%esp
 804966d:	ff 75 f4             	push   -0xc(%ebp)
 8049670:	ff 75 0c             	push   0xc(%ebp)
 8049673:	ff 75 08             	push   0x8(%ebp)
 8049676:	e8 ba ff ff ff       	call   8049635 <func4>
 804967b:	83 c4 10             	add    $0x10,%esp
 804967e:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049681:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049684:	83 c0 01             	add    $0x1,%eax
 8049687:	83 ec 04             	sub    $0x4,%esp
 804968a:	ff 75 10             	push   0x10(%ebp)
 804968d:	50                   	push   %eax
 804968e:	ff 75 08             	push   0x8(%ebp)
 8049691:	e8 9f ff ff ff       	call   8049635 <func4>
 8049696:	83 c4 10             	add    $0x10,%esp
 8049699:	89 45 ec             	mov    %eax,-0x14(%ebp)
 804969c:	8b 45 ec             	mov    -0x14(%ebp),%eax
 804969f:	39 45 f0             	cmp    %eax,-0x10(%ebp)
 80496a2:	0f 4d 45 f0          	cmovge -0x10(%ebp),%eax
 80496a6:	c9                   	leave
 80496a7:	c3                   	ret

080496a8 <phase_4>:
 80496a8:	55                   	push   %ebp
 80496a9:	89 e5                	mov    %esp,%ebp
 80496ab:	57                   	push   %edi
 80496ac:	56                   	push   %esi
 80496ad:	53                   	push   %ebx
 80496ae:	81 ec cc 00 00 00    	sub    $0xcc,%esp
 80496b4:	8d 85 34 ff ff ff    	lea    -0xcc(%ebp),%eax
 80496ba:	bb 40 b2 04 08       	mov    $0x804b240,%ebx
 80496bf:	ba 2c 00 00 00       	mov    $0x2c,%edx
 80496c4:	89 c7                	mov    %eax,%edi
 80496c6:	89 de                	mov    %ebx,%esi
 80496c8:	89 d1                	mov    %edx,%ecx
 80496ca:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
 80496cc:	8d 85 2c ff ff ff    	lea    -0xd4(%ebp),%eax
 80496d2:	50                   	push   %eax
 80496d3:	8d 85 30 ff ff ff    	lea    -0xd0(%ebp),%eax
 80496d9:	50                   	push   %eax
 80496da:	68 16 b2 04 08       	push   $0x804b216
 80496df:	ff 75 08             	push   0x8(%ebp)
 80496e2:	e8 e9 f9 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 80496e7:	83 c4 10             	add    $0x10,%esp
 80496ea:	89 45 e4             	mov    %eax,-0x1c(%ebp)
 80496ed:	83 7d e4 02          	cmpl   $0x2,-0x1c(%ebp)
 80496f1:	74 0f                	je     8049702 <phase_4+0x5a>
 80496f3:	e8 da 07 00 00       	call   8049ed2 <explode_bomb>
 80496f8:	b8 00 00 00 00       	mov    $0x0,%eax
 80496fd:	e9 bc 00 00 00       	jmp    80497be <phase_4+0x116>
 8049702:	8b 95 2c ff ff ff    	mov    -0xd4(%ebp),%edx
 8049708:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
 804970e:	83 ec 04             	sub    $0x4,%esp
 8049711:	52                   	push   %edx
 8049712:	50                   	push   %eax
 8049713:	8d 85 34 ff ff ff    	lea    -0xcc(%ebp),%eax
 8049719:	50                   	push   %eax
 804971a:	e8 16 ff ff ff       	call   8049635 <func4>
 804971f:	83 c4 10             	add    $0x10,%esp
 8049722:	3d 0e 01 00 00       	cmp    $0x10e,%eax
 8049727:	74 0f                	je     8049738 <phase_4+0x90>
 8049729:	e8 a4 07 00 00       	call   8049ed2 <explode_bomb>
 804972e:	b8 00 00 00 00       	mov    $0x0,%eax
 8049733:	e9 86 00 00 00       	jmp    80497be <phase_4+0x116>
 8049738:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
 804973e:	85 c0                	test   %eax,%eax
 8049740:	7e 36                	jle    8049778 <phase_4+0xd0>
 8049742:	8b 85 2c ff ff ff    	mov    -0xd4(%ebp),%eax
 8049748:	8b 95 30 ff ff ff    	mov    -0xd0(%ebp),%edx
 804974e:	83 ea 01             	sub    $0x1,%edx
 8049751:	83 ec 04             	sub    $0x4,%esp
 8049754:	50                   	push   %eax
 8049755:	52                   	push   %edx
 8049756:	8d 85 34 ff ff ff    	lea    -0xcc(%ebp),%eax
 804975c:	50                   	push   %eax
 804975d:	e8 d3 fe ff ff       	call   8049635 <func4>
 8049762:	83 c4 10             	add    $0x10,%esp
 8049765:	3d 0e 01 00 00       	cmp    $0x10e,%eax
 804976a:	75 0c                	jne    8049778 <phase_4+0xd0>
 804976c:	e8 61 07 00 00       	call   8049ed2 <explode_bomb>
 8049771:	b8 00 00 00 00       	mov    $0x0,%eax
 8049776:	eb 46                	jmp    80497be <phase_4+0x116>
 8049778:	8b 85 2c ff ff ff    	mov    -0xd4(%ebp),%eax
 804977e:	83 f8 2a             	cmp    $0x2a,%eax
 8049781:	7f 36                	jg     80497b9 <phase_4+0x111>
 8049783:	8b 85 2c ff ff ff    	mov    -0xd4(%ebp),%eax
 8049789:	8d 50 01             	lea    0x1(%eax),%edx
 804978c:	8b 85 30 ff ff ff    	mov    -0xd0(%ebp),%eax
 8049792:	83 ec 04             	sub    $0x4,%esp
 8049795:	52                   	push   %edx
 8049796:	50                   	push   %eax
 8049797:	8d 85 34 ff ff ff    	lea    -0xcc(%ebp),%eax
 804979d:	50                   	push   %eax
 804979e:	e8 92 fe ff ff       	call   8049635 <func4>
 80497a3:	83 c4 10             	add    $0x10,%esp
 80497a6:	3d 0e 01 00 00       	cmp    $0x10e,%eax
 80497ab:	75 0c                	jne    80497b9 <phase_4+0x111>
 80497ad:	e8 20 07 00 00       	call   8049ed2 <explode_bomb>
 80497b2:	b8 00 00 00 00       	mov    $0x0,%eax
 80497b7:	eb 05                	jmp    80497be <phase_4+0x116>
 80497b9:	b8 01 00 00 00       	mov    $0x1,%eax
 80497be:	8d 65 f4             	lea    -0xc(%ebp),%esp
 80497c1:	5b                   	pop    %ebx
 80497c2:	5e                   	pop    %esi
 80497c3:	5f                   	pop    %edi
 80497c4:	5d                   	pop    %ebp
 80497c5:	c3                   	ret

080497c6 <phase_5>:
 80497c6:	55                   	push   %ebp
 80497c7:	89 e5                	mov    %esp,%ebp
 80497c9:	83 ec 28             	sub    $0x28,%esp
 80497cc:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 80497cf:	50                   	push   %eax
 80497d0:	8d 45 e8             	lea    -0x18(%ebp),%eax
 80497d3:	50                   	push   %eax
 80497d4:	68 16 b2 04 08       	push   $0x804b216
 80497d9:	ff 75 08             	push   0x8(%ebp)
 80497dc:	e8 ef f8 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 80497e1:	83 c4 10             	add    $0x10,%esp
 80497e4:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80497e7:	83 7d ec 01          	cmpl   $0x1,-0x14(%ebp)
 80497eb:	7f 0c                	jg     80497f9 <phase_5+0x33>
 80497ed:	e8 e0 06 00 00       	call   8049ed2 <explode_bomb>
 80497f2:	b8 00 00 00 00       	mov    $0x0,%eax
 80497f7:	eb 57                	jmp    8049850 <phase_5+0x8a>
 80497f9:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80497fc:	83 e0 0f             	and    $0xf,%eax
 80497ff:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8049802:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 8049809:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8049810:	eb 17                	jmp    8049829 <phase_5+0x63>
 8049812:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8049816:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049819:	8b 04 85 20 d2 04 08 	mov    0x804d220(,%eax,4),%eax
 8049820:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8049823:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049826:	01 45 f0             	add    %eax,-0x10(%ebp)
 8049829:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804982c:	83 f8 0f             	cmp    $0xf,%eax
 804982f:	75 e1                	jne    8049812 <phase_5+0x4c>
 8049831:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp)
 8049835:	75 08                	jne    804983f <phase_5+0x79>
 8049837:	8b 45 e4             	mov    -0x1c(%ebp),%eax
 804983a:	39 45 f0             	cmp    %eax,-0x10(%ebp)
 804983d:	74 0c                	je     804984b <phase_5+0x85>
 804983f:	e8 8e 06 00 00       	call   8049ed2 <explode_bomb>
 8049844:	b8 00 00 00 00       	mov    $0x0,%eax
 8049849:	eb 05                	jmp    8049850 <phase_5+0x8a>
 804984b:	b8 01 00 00 00       	mov    $0x1,%eax
 8049850:	c9                   	leave
 8049851:	c3                   	ret

08049852 <phase_6>:
 8049852:	55                   	push   %ebp
 8049853:	89 e5                	mov    %esp,%ebp
 8049855:	83 ec 58             	sub    $0x58,%esp
 8049858:	c7 45 e8 58 d1 04 08 	movl   $0x804d158,-0x18(%ebp)
 804985f:	83 ec 04             	sub    $0x4,%esp
 8049862:	6a 08                	push   $0x8
 8049864:	8d 45 c8             	lea    -0x38(%ebp),%eax
 8049867:	50                   	push   %eax
 8049868:	ff 75 08             	push   0x8(%ebp)
 804986b:	e8 40 03 00 00       	call   8049bb0 <read_n_numbers>
 8049870:	83 c4 10             	add    $0x10,%esp
 8049873:	85 c0                	test   %eax,%eax
 8049875:	75 0a                	jne    8049881 <phase_6+0x2f>
 8049877:	b8 00 00 00 00       	mov    $0x0,%eax
 804987c:	e9 5f 01 00 00       	jmp    80499e0 <phase_6+0x18e>
 8049881:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8049888:	eb 60                	jmp    80498ea <phase_6+0x98>
 804988a:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804988d:	8b 44 85 c8          	mov    -0x38(%ebp,%eax,4),%eax
 8049891:	85 c0                	test   %eax,%eax
 8049893:	7e 0c                	jle    80498a1 <phase_6+0x4f>
 8049895:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049898:	8b 44 85 c8          	mov    -0x38(%ebp,%eax,4),%eax
 804989c:	83 f8 08             	cmp    $0x8,%eax
 804989f:	7e 0f                	jle    80498b0 <phase_6+0x5e>
 80498a1:	e8 2c 06 00 00       	call   8049ed2 <explode_bomb>
 80498a6:	b8 00 00 00 00       	mov    $0x0,%eax
 80498ab:	e9 30 01 00 00       	jmp    80499e0 <phase_6+0x18e>
 80498b0:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80498b3:	83 c0 01             	add    $0x1,%eax
 80498b6:	89 45 ec             	mov    %eax,-0x14(%ebp)
 80498b9:	eb 25                	jmp    80498e0 <phase_6+0x8e>
 80498bb:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80498be:	8b 54 85 c8          	mov    -0x38(%ebp,%eax,4),%edx
 80498c2:	8b 45 ec             	mov    -0x14(%ebp),%eax
 80498c5:	8b 44 85 c8          	mov    -0x38(%ebp,%eax,4),%eax
 80498c9:	39 c2                	cmp    %eax,%edx
 80498cb:	75 0f                	jne    80498dc <phase_6+0x8a>
 80498cd:	e8 00 06 00 00       	call   8049ed2 <explode_bomb>
 80498d2:	b8 00 00 00 00       	mov    $0x0,%eax
 80498d7:	e9 04 01 00 00       	jmp    80499e0 <phase_6+0x18e>
 80498dc:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
 80498e0:	83 7d ec 07          	cmpl   $0x7,-0x14(%ebp)
 80498e4:	7e d5                	jle    80498bb <phase_6+0x69>
 80498e6:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 80498ea:	83 7d f0 07          	cmpl   $0x7,-0x10(%ebp)
 80498ee:	7e 9a                	jle    804988a <phase_6+0x38>
 80498f0:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 80498f7:	eb 19                	jmp    8049912 <phase_6+0xc0>
 80498f9:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80498fc:	8b 44 85 c8          	mov    -0x38(%ebp,%eax,4),%eax
 8049900:	ba 09 00 00 00       	mov    $0x9,%edx
 8049905:	29 c2                	sub    %eax,%edx
 8049907:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804990a:	89 54 85 c8          	mov    %edx,-0x38(%ebp,%eax,4)
 804990e:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8049912:	83 7d f0 07          	cmpl   $0x7,-0x10(%ebp)
 8049916:	7e e1                	jle    80498f9 <phase_6+0xa7>
 8049918:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 804991f:	eb 36                	jmp    8049957 <phase_6+0x105>
 8049921:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049924:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049927:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp)
 804992e:	eb 0d                	jmp    804993d <phase_6+0xeb>
 8049930:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049933:	8b 40 08             	mov    0x8(%eax),%eax
 8049936:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049939:	83 45 ec 01          	addl   $0x1,-0x14(%ebp)
 804993d:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049940:	8b 44 85 c8          	mov    -0x38(%ebp,%eax,4),%eax
 8049944:	39 45 ec             	cmp    %eax,-0x14(%ebp)
 8049947:	7c e7                	jl     8049930 <phase_6+0xde>
 8049949:	8b 45 f0             	mov    -0x10(%ebp),%eax
 804994c:	8b 55 f4             	mov    -0xc(%ebp),%edx
 804994f:	89 54 85 a8          	mov    %edx,-0x58(%ebp,%eax,4)
 8049953:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8049957:	83 7d f0 07          	cmpl   $0x7,-0x10(%ebp)
 804995b:	7e c4                	jle    8049921 <phase_6+0xcf>
 804995d:	8b 45 a8             	mov    -0x58(%ebp),%eax
 8049960:	89 45 e8             	mov    %eax,-0x18(%ebp)
 8049963:	8b 45 e8             	mov    -0x18(%ebp),%eax
 8049966:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049969:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 8049970:	eb 1a                	jmp    804998c <phase_6+0x13a>
 8049972:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049975:	8b 54 85 a8          	mov    -0x58(%ebp,%eax,4),%edx
 8049979:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804997c:	89 50 08             	mov    %edx,0x8(%eax)
 804997f:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049982:	8b 40 08             	mov    0x8(%eax),%eax
 8049985:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049988:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 804998c:	83 7d f0 07          	cmpl   $0x7,-0x10(%ebp)
 8049990:	7e e0                	jle    8049972 <phase_6+0x120>
 8049992:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049995:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 804999c:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804999f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80499a2:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 80499a9:	eb 2a                	jmp    80499d5 <phase_6+0x183>
 80499ab:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80499ae:	8b 10                	mov    (%eax),%edx
 80499b0:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80499b3:	8b 40 08             	mov    0x8(%eax),%eax
 80499b6:	8b 00                	mov    (%eax),%eax
 80499b8:	39 c2                	cmp    %eax,%edx
 80499ba:	7d 0c                	jge    80499c8 <phase_6+0x176>
 80499bc:	e8 11 05 00 00       	call   8049ed2 <explode_bomb>
 80499c1:	b8 00 00 00 00       	mov    $0x0,%eax
 80499c6:	eb 18                	jmp    80499e0 <phase_6+0x18e>
 80499c8:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80499cb:	8b 40 08             	mov    0x8(%eax),%eax
 80499ce:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80499d1:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 80499d5:	83 7d f0 06          	cmpl   $0x6,-0x10(%ebp)
 80499d9:	7e d0                	jle    80499ab <phase_6+0x159>
 80499db:	b8 01 00 00 00       	mov    $0x1,%eax
 80499e0:	c9                   	leave
 80499e1:	c3                   	ret

080499e2 <fun7>:
 80499e2:	55                   	push   %ebp
 80499e3:	89 e5                	mov    %esp,%ebp
 80499e5:	83 ec 08             	sub    $0x8,%esp
 80499e8:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 80499ec:	75 07                	jne    80499f5 <fun7+0x13>
 80499ee:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 80499f3:	eb 4e                	jmp    8049a43 <fun7+0x61>
 80499f5:	8b 45 08             	mov    0x8(%ebp),%eax
 80499f8:	8b 00                	mov    (%eax),%eax
 80499fa:	39 45 0c             	cmp    %eax,0xc(%ebp)
 80499fd:	7d 19                	jge    8049a18 <fun7+0x36>
 80499ff:	8b 45 08             	mov    0x8(%ebp),%eax
 8049a02:	8b 40 04             	mov    0x4(%eax),%eax
 8049a05:	83 ec 08             	sub    $0x8,%esp
 8049a08:	ff 75 0c             	push   0xc(%ebp)
 8049a0b:	50                   	push   %eax
 8049a0c:	e8 d1 ff ff ff       	call   80499e2 <fun7>
 8049a11:	83 c4 10             	add    $0x10,%esp
 8049a14:	01 c0                	add    %eax,%eax
 8049a16:	eb 2b                	jmp    8049a43 <fun7+0x61>
 8049a18:	8b 45 08             	mov    0x8(%ebp),%eax
 8049a1b:	8b 00                	mov    (%eax),%eax
 8049a1d:	39 45 0c             	cmp    %eax,0xc(%ebp)
 8049a20:	75 07                	jne    8049a29 <fun7+0x47>
 8049a22:	b8 00 00 00 00       	mov    $0x0,%eax
 8049a27:	eb 1a                	jmp    8049a43 <fun7+0x61>
 8049a29:	8b 45 08             	mov    0x8(%ebp),%eax
 8049a2c:	8b 40 08             	mov    0x8(%eax),%eax
 8049a2f:	83 ec 08             	sub    $0x8,%esp
 8049a32:	ff 75 0c             	push   0xc(%ebp)
 8049a35:	50                   	push   %eax
 8049a36:	e8 a7 ff ff ff       	call   80499e2 <fun7>
 8049a3b:	83 c4 10             	add    $0x10,%esp
 8049a3e:	01 c0                	add    %eax,%eax
 8049a40:	83 c0 01             	add    $0x1,%eax
 8049a43:	c9                   	leave
 8049a44:	c3                   	ret

08049a45 <secret_phase>:
 8049a45:	55                   	push   %ebp
 8049a46:	89 e5                	mov    %esp,%ebp
 8049a48:	83 ec 18             	sub    $0x18,%esp
 8049a4b:	e8 3f 03 00 00       	call   8049d8f <read_line>
 8049a50:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049a53:	83 ec 0c             	sub    $0xc,%esp
 8049a56:	ff 75 f4             	push   -0xc(%ebp)
 8049a59:	e8 a2 f6 ff ff       	call   8049100 <atoi@plt>
 8049a5e:	83 c4 10             	add    $0x10,%esp
 8049a61:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049a64:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8049a68:	7e 09                	jle    8049a73 <secret_phase+0x2e>
 8049a6a:	81 7d f0 e9 03 00 00 	cmpl   $0x3e9,-0x10(%ebp)
 8049a71:	7e 0c                	jle    8049a7f <secret_phase+0x3a>
 8049a73:	e8 5a 04 00 00       	call   8049ed2 <explode_bomb>
 8049a78:	b8 00 00 00 00       	mov    $0x0,%eax
 8049a7d:	eb 42                	jmp    8049ac1 <secret_phase+0x7c>
 8049a7f:	83 ec 08             	sub    $0x8,%esp
 8049a82:	ff 75 f0             	push   -0x10(%ebp)
 8049a85:	68 0c d2 04 08       	push   $0x804d20c
 8049a8a:	e8 53 ff ff ff       	call   80499e2 <fun7>
 8049a8f:	83 c4 10             	add    $0x10,%esp
 8049a92:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8049a95:	83 7d ec 06          	cmpl   $0x6,-0x14(%ebp)
 8049a99:	74 0c                	je     8049aa7 <secret_phase+0x62>
 8049a9b:	e8 32 04 00 00       	call   8049ed2 <explode_bomb>
 8049aa0:	b8 00 00 00 00       	mov    $0x0,%eax
 8049aa5:	eb 1a                	jmp    8049ac1 <secret_phase+0x7c>
 8049aa7:	83 ec 0c             	sub    $0xc,%esp
 8049aaa:	68 f0 b2 04 08       	push   $0x804b2f0
 8049aaf:	e8 dc f5 ff ff       	call   8049090 <puts@plt>
 8049ab4:	83 c4 10             	add    $0x10,%esp
 8049ab7:	e8 3f 04 00 00       	call   8049efb <phase_defused>
 8049abc:	b8 01 00 00 00       	mov    $0x1,%eax
 8049ac1:	c9                   	leave
 8049ac2:	c3                   	ret

08049ac3 <sig_handler>:
 8049ac3:	55                   	push   %ebp
 8049ac4:	89 e5                	mov    %esp,%ebp
 8049ac6:	83 ec 08             	sub    $0x8,%esp
 8049ac9:	83 ec 0c             	sub    $0xc,%esp
 8049acc:	68 18 b3 04 08       	push   $0x804b318
 8049ad1:	e8 ba f5 ff ff       	call   8049090 <puts@plt>
 8049ad6:	83 c4 10             	add    $0x10,%esp
 8049ad9:	83 ec 0c             	sub    $0xc,%esp
 8049adc:	6a 03                	push   $0x3
 8049ade:	e8 8d f5 ff ff       	call   8049070 <sleep@plt>
 8049ae3:	83 c4 10             	add    $0x10,%esp
 8049ae6:	83 ec 0c             	sub    $0xc,%esp
 8049ae9:	68 50 b3 04 08       	push   $0x804b350
 8049aee:	e8 3d f5 ff ff       	call   8049030 <printf@plt>
 8049af3:	83 c4 10             	add    $0x10,%esp
 8049af6:	a1 64 d2 04 08       	mov    0x804d264,%eax
 8049afb:	83 ec 0c             	sub    $0xc,%esp
 8049afe:	50                   	push   %eax
 8049aff:	e8 3c f5 ff ff       	call   8049040 <fflush@plt>
 8049b04:	83 c4 10             	add    $0x10,%esp
 8049b07:	83 ec 0c             	sub    $0xc,%esp
 8049b0a:	6a 01                	push   $0x1
 8049b0c:	e8 5f f5 ff ff       	call   8049070 <sleep@plt>
 8049b11:	83 c4 10             	add    $0x10,%esp
 8049b14:	83 ec 0c             	sub    $0xc,%esp
 8049b17:	68 58 b3 04 08       	push   $0x804b358
 8049b1c:	e8 6f f5 ff ff       	call   8049090 <puts@plt>
 8049b21:	83 c4 10             	add    $0x10,%esp
 8049b24:	83 ec 0c             	sub    $0xc,%esp
 8049b27:	6a 10                	push   $0x10
 8049b29:	e8 72 f5 ff ff       	call   80490a0 <exit@plt>

08049b2e <invalid_phase>:
 8049b2e:	55                   	push   %ebp
 8049b2f:	89 e5                	mov    %esp,%ebp
 8049b31:	83 ec 08             	sub    $0x8,%esp
 8049b34:	83 ec 08             	sub    $0x8,%esp
 8049b37:	ff 75 08             	push   0x8(%ebp)
 8049b3a:	68 60 b3 04 08       	push   $0x804b360
 8049b3f:	e8 ec f4 ff ff       	call   8049030 <printf@plt>
 8049b44:	83 c4 10             	add    $0x10,%esp
 8049b47:	83 ec 0c             	sub    $0xc,%esp
 8049b4a:	6a 08                	push   $0x8
 8049b4c:	e8 4f f5 ff ff       	call   80490a0 <exit@plt>

08049b51 <read_six_numbers>:
 8049b51:	55                   	push   %ebp
 8049b52:	89 e5                	mov    %esp,%ebp
 8049b54:	56                   	push   %esi
 8049b55:	53                   	push   %ebx
 8049b56:	83 ec 10             	sub    $0x10,%esp
 8049b59:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049b5c:	8d 70 14             	lea    0x14(%eax),%esi
 8049b5f:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049b62:	8d 58 10             	lea    0x10(%eax),%ebx
 8049b65:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049b68:	8d 48 0c             	lea    0xc(%eax),%ecx
 8049b6b:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049b6e:	8d 50 08             	lea    0x8(%eax),%edx
 8049b71:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049b74:	83 c0 04             	add    $0x4,%eax
 8049b77:	56                   	push   %esi
 8049b78:	53                   	push   %ebx
 8049b79:	51                   	push   %ecx
 8049b7a:	52                   	push   %edx
 8049b7b:	50                   	push   %eax
 8049b7c:	ff 75 0c             	push   0xc(%ebp)
 8049b7f:	68 71 b3 04 08       	push   $0x804b371
 8049b84:	ff 75 08             	push   0x8(%ebp)
 8049b87:	e8 44 f5 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 8049b8c:	83 c4 20             	add    $0x20,%esp
 8049b8f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049b92:	83 7d f4 05          	cmpl   $0x5,-0xc(%ebp)
 8049b96:	7f 0c                	jg     8049ba4 <read_six_numbers+0x53>
 8049b98:	e8 35 03 00 00       	call   8049ed2 <explode_bomb>
 8049b9d:	b8 00 00 00 00       	mov    $0x0,%eax
 8049ba2:	eb 05                	jmp    8049ba9 <read_six_numbers+0x58>
 8049ba4:	b8 01 00 00 00       	mov    $0x1,%eax
 8049ba9:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8049bac:	5b                   	pop    %ebx
 8049bad:	5e                   	pop    %esi
 8049bae:	5d                   	pop    %ebp
 8049baf:	c3                   	ret

08049bb0 <read_n_numbers>:
 8049bb0:	55                   	push   %ebp
 8049bb1:	89 e5                	mov    %esp,%ebp
 8049bb3:	83 ec 18             	sub    $0x18,%esp
 8049bb6:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8049bbd:	eb 70                	jmp    8049c2f <read_n_numbers+0x7f>
 8049bbf:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8049bc3:	75 18                	jne    8049bdd <read_n_numbers+0x2d>
 8049bc5:	83 ec 08             	sub    $0x8,%esp
 8049bc8:	68 83 b3 04 08       	push   $0x804b383
 8049bcd:	ff 75 08             	push   0x8(%ebp)
 8049bd0:	e8 1b f5 ff ff       	call   80490f0 <strtok@plt>
 8049bd5:	83 c4 10             	add    $0x10,%esp
 8049bd8:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049bdb:	eb 15                	jmp    8049bf2 <read_n_numbers+0x42>
 8049bdd:	83 ec 08             	sub    $0x8,%esp
 8049be0:	68 83 b3 04 08       	push   $0x804b383
 8049be5:	6a 00                	push   $0x0
 8049be7:	e8 04 f5 ff ff       	call   80490f0 <strtok@plt>
 8049bec:	83 c4 10             	add    $0x10,%esp
 8049bef:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049bf2:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049bf6:	74 27                	je     8049c1f <read_n_numbers+0x6f>
 8049bf8:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049bfb:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8049c02:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049c05:	01 d0                	add    %edx,%eax
 8049c07:	83 ec 04             	sub    $0x4,%esp
 8049c0a:	50                   	push   %eax
 8049c0b:	68 87 b3 04 08       	push   $0x804b387
 8049c10:	ff 75 f4             	push   -0xc(%ebp)
 8049c13:	e8 b8 f4 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 8049c18:	83 c4 10             	add    $0x10,%esp
 8049c1b:	85 c0                	test   %eax,%eax
 8049c1d:	7f 0c                	jg     8049c2b <read_n_numbers+0x7b>
 8049c1f:	e8 ae 02 00 00       	call   8049ed2 <explode_bomb>
 8049c24:	b8 00 00 00 00       	mov    $0x0,%eax
 8049c29:	eb 11                	jmp    8049c3c <read_n_numbers+0x8c>
 8049c2b:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8049c2f:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049c32:	3b 45 10             	cmp    0x10(%ebp),%eax
 8049c35:	7c 88                	jl     8049bbf <read_n_numbers+0xf>
 8049c37:	b8 01 00 00 00       	mov    $0x1,%eax
 8049c3c:	c9                   	leave
 8049c3d:	c3                   	ret

08049c3e <string_length>:
 8049c3e:	55                   	push   %ebp
 8049c3f:	89 e5                	mov    %esp,%ebp
 8049c41:	83 ec 10             	sub    $0x10,%esp
 8049c44:	8b 45 08             	mov    0x8(%ebp),%eax
 8049c47:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8049c4a:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8049c51:	eb 08                	jmp    8049c5b <string_length+0x1d>
 8049c53:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
 8049c57:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 8049c5b:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8049c5e:	0f b6 00             	movzbl (%eax),%eax
 8049c61:	84 c0                	test   %al,%al
 8049c63:	75 ee                	jne    8049c53 <string_length+0x15>
 8049c65:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8049c68:	c9                   	leave
 8049c69:	c3                   	ret

08049c6a <strings_not_equal>:
 8049c6a:	55                   	push   %ebp
 8049c6b:	89 e5                	mov    %esp,%ebp
 8049c6d:	53                   	push   %ebx
 8049c6e:	83 ec 10             	sub    $0x10,%esp
 8049c71:	ff 75 08             	push   0x8(%ebp)
 8049c74:	e8 c5 ff ff ff       	call   8049c3e <string_length>
 8049c79:	83 c4 04             	add    $0x4,%esp
 8049c7c:	89 c3                	mov    %eax,%ebx
 8049c7e:	ff 75 0c             	push   0xc(%ebp)
 8049c81:	e8 b8 ff ff ff       	call   8049c3e <string_length>
 8049c86:	83 c4 04             	add    $0x4,%esp
 8049c89:	39 c3                	cmp    %eax,%ebx
 8049c8b:	74 07                	je     8049c94 <strings_not_equal+0x2a>
 8049c8d:	b8 01 00 00 00       	mov    $0x1,%eax
 8049c92:	eb 3c                	jmp    8049cd0 <strings_not_equal+0x66>
 8049c94:	8b 45 08             	mov    0x8(%ebp),%eax
 8049c97:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8049c9a:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049c9d:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049ca0:	eb 1f                	jmp    8049cc1 <strings_not_equal+0x57>
 8049ca2:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8049ca5:	0f b6 10             	movzbl (%eax),%edx
 8049ca8:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049cab:	0f b6 00             	movzbl (%eax),%eax
 8049cae:	38 c2                	cmp    %al,%dl
 8049cb0:	74 07                	je     8049cb9 <strings_not_equal+0x4f>
 8049cb2:	b8 01 00 00 00       	mov    $0x1,%eax
 8049cb7:	eb 17                	jmp    8049cd0 <strings_not_equal+0x66>
 8049cb9:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
 8049cbd:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8049cc1:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8049cc4:	0f b6 00             	movzbl (%eax),%eax
 8049cc7:	84 c0                	test   %al,%al
 8049cc9:	75 d7                	jne    8049ca2 <strings_not_equal+0x38>
 8049ccb:	b8 00 00 00 00       	mov    $0x0,%eax
 8049cd0:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8049cd3:	c9                   	leave
 8049cd4:	c3                   	ret

08049cd5 <initialize_bomb>:
 8049cd5:	55                   	push   %ebp
 8049cd6:	89 e5                	mov    %esp,%ebp
 8049cd8:	83 ec 08             	sub    $0x8,%esp
 8049cdb:	83 ec 08             	sub    $0x8,%esp
 8049cde:	68 c3 9a 04 08       	push   $0x8049ac3
 8049ce3:	6a 02                	push   $0x2
 8049ce5:	e8 76 f3 ff ff       	call   8049060 <signal@plt>
 8049cea:	83 c4 10             	add    $0x10,%esp
 8049ced:	90                   	nop
 8049cee:	c9                   	leave
 8049cef:	c3                   	ret

08049cf0 <initialize_bomb_solve>:
 8049cf0:	55                   	push   %ebp
 8049cf1:	89 e5                	mov    %esp,%ebp
 8049cf3:	90                   	nop
 8049cf4:	5d                   	pop    %ebp
 8049cf5:	c3                   	ret

08049cf6 <blank_line>:
 8049cf6:	55                   	push   %ebp
 8049cf7:	89 e5                	mov    %esp,%ebp
 8049cf9:	83 ec 08             	sub    $0x8,%esp
 8049cfc:	eb 30                	jmp    8049d2e <blank_line+0x38>
 8049cfe:	e8 0d f4 ff ff       	call   8049110 <__ctype_b_loc@plt>
 8049d03:	8b 08                	mov    (%eax),%ecx
 8049d05:	8b 45 08             	mov    0x8(%ebp),%eax
 8049d08:	8d 50 01             	lea    0x1(%eax),%edx
 8049d0b:	89 55 08             	mov    %edx,0x8(%ebp)
 8049d0e:	0f b6 00             	movzbl (%eax),%eax
 8049d11:	0f be c0             	movsbl %al,%eax
 8049d14:	01 c0                	add    %eax,%eax
 8049d16:	01 c8                	add    %ecx,%eax
 8049d18:	0f b7 00             	movzwl (%eax),%eax
 8049d1b:	0f b7 c0             	movzwl %ax,%eax
 8049d1e:	25 00 20 00 00       	and    $0x2000,%eax
 8049d23:	85 c0                	test   %eax,%eax
 8049d25:	75 07                	jne    8049d2e <blank_line+0x38>
 8049d27:	b8 00 00 00 00       	mov    $0x0,%eax
 8049d2c:	eb 0f                	jmp    8049d3d <blank_line+0x47>
 8049d2e:	8b 45 08             	mov    0x8(%ebp),%eax
 8049d31:	0f b6 00             	movzbl (%eax),%eax
 8049d34:	84 c0                	test   %al,%al
 8049d36:	75 c6                	jne    8049cfe <blank_line+0x8>
 8049d38:	b8 01 00 00 00       	mov    $0x1,%eax
 8049d3d:	c9                   	leave
 8049d3e:	c3                   	ret

08049d3f <skip>:
 8049d3f:	55                   	push   %ebp
 8049d40:	89 e5                	mov    %esp,%ebp
 8049d42:	83 ec 18             	sub    $0x18,%esp
 8049d45:	8b 0d 70 d2 04 08    	mov    0x804d270,%ecx
 8049d4b:	8b 15 6c d2 04 08    	mov    0x804d26c,%edx
 8049d51:	89 d0                	mov    %edx,%eax
 8049d53:	c1 e0 02             	shl    $0x2,%eax
 8049d56:	01 d0                	add    %edx,%eax
 8049d58:	c1 e0 04             	shl    $0x4,%eax
 8049d5b:	05 80 d2 04 08       	add    $0x804d280,%eax
 8049d60:	83 ec 04             	sub    $0x4,%esp
 8049d63:	51                   	push   %ecx
 8049d64:	6a 50                	push   $0x50
 8049d66:	50                   	push   %eax
 8049d67:	e8 e4 f2 ff ff       	call   8049050 <fgets@plt>
 8049d6c:	83 c4 10             	add    $0x10,%esp
 8049d6f:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049d72:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049d76:	74 12                	je     8049d8a <skip+0x4b>
 8049d78:	83 ec 0c             	sub    $0xc,%esp
 8049d7b:	ff 75 f4             	push   -0xc(%ebp)
 8049d7e:	e8 73 ff ff ff       	call   8049cf6 <blank_line>
 8049d83:	83 c4 10             	add    $0x10,%esp
 8049d86:	85 c0                	test   %eax,%eax
 8049d88:	75 bb                	jne    8049d45 <skip+0x6>
 8049d8a:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049d8d:	c9                   	leave
 8049d8e:	c3                   	ret

08049d8f <read_line>:
 8049d8f:	55                   	push   %ebp
 8049d90:	89 e5                	mov    %esp,%ebp
 8049d92:	83 ec 18             	sub    $0x18,%esp
 8049d95:	e8 a5 ff ff ff       	call   8049d3f <skip>
 8049d9a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049d9d:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049da1:	75 79                	jne    8049e1c <read_line+0x8d>
 8049da3:	8b 15 70 d2 04 08    	mov    0x804d270,%edx
 8049da9:	a1 60 d2 04 08       	mov    0x804d260,%eax
 8049dae:	39 c2                	cmp    %eax,%edx
 8049db0:	75 1a                	jne    8049dcc <read_line+0x3d>
 8049db2:	83 ec 0c             	sub    $0xc,%esp
 8049db5:	68 8a b3 04 08       	push   $0x804b38a
 8049dba:	e8 d1 f2 ff ff       	call   8049090 <puts@plt>
 8049dbf:	83 c4 10             	add    $0x10,%esp
 8049dc2:	83 ec 0c             	sub    $0xc,%esp
 8049dc5:	6a 08                	push   $0x8
 8049dc7:	e8 d4 f2 ff ff       	call   80490a0 <exit@plt>
 8049dcc:	83 ec 0c             	sub    $0xc,%esp
 8049dcf:	68 a8 b3 04 08       	push   $0x804b3a8
 8049dd4:	e8 a7 f2 ff ff       	call   8049080 <getenv@plt>
 8049dd9:	83 c4 10             	add    $0x10,%esp
 8049ddc:	85 c0                	test   %eax,%eax
 8049dde:	74 0a                	je     8049dea <read_line+0x5b>
 8049de0:	83 ec 0c             	sub    $0xc,%esp
 8049de3:	6a 00                	push   $0x0
 8049de5:	e8 b6 f2 ff ff       	call   80490a0 <exit@plt>
 8049dea:	a1 60 d2 04 08       	mov    0x804d260,%eax
 8049def:	a3 70 d2 04 08       	mov    %eax,0x804d270
 8049df4:	e8 46 ff ff ff       	call   8049d3f <skip>
 8049df9:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049dfc:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049e00:	75 1a                	jne    8049e1c <read_line+0x8d>
 8049e02:	83 ec 0c             	sub    $0xc,%esp
 8049e05:	68 8a b3 04 08       	push   $0x804b38a
 8049e0a:	e8 81 f2 ff ff       	call   8049090 <puts@plt>
 8049e0f:	83 c4 10             	add    $0x10,%esp
 8049e12:	83 ec 0c             	sub    $0xc,%esp
 8049e15:	6a 00                	push   $0x0
 8049e17:	e8 84 f2 ff ff       	call   80490a0 <exit@plt>
 8049e1c:	8b 15 6c d2 04 08    	mov    0x804d26c,%edx
 8049e22:	89 d0                	mov    %edx,%eax
 8049e24:	c1 e0 02             	shl    $0x2,%eax
 8049e27:	01 d0                	add    %edx,%eax
 8049e29:	c1 e0 04             	shl    $0x4,%eax
 8049e2c:	05 80 d2 04 08       	add    $0x804d280,%eax
 8049e31:	83 ec 0c             	sub    $0xc,%esp
 8049e34:	50                   	push   %eax
 8049e35:	e8 76 f2 ff ff       	call   80490b0 <strlen@plt>
 8049e3a:	83 c4 10             	add    $0x10,%esp
 8049e3d:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049e40:	83 7d f0 4e          	cmpl   $0x4e,-0x10(%ebp)
 8049e44:	7e 4d                	jle    8049e93 <read_line+0x104>
 8049e46:	83 ec 0c             	sub    $0xc,%esp
 8049e49:	68 b3 b3 04 08       	push   $0x804b3b3
 8049e4e:	e8 3d f2 ff ff       	call   8049090 <puts@plt>
 8049e53:	83 c4 10             	add    $0x10,%esp
 8049e56:	8b 15 6c d2 04 08    	mov    0x804d26c,%edx
 8049e5c:	8d 42 01             	lea    0x1(%edx),%eax
 8049e5f:	a3 6c d2 04 08       	mov    %eax,0x804d26c
 8049e64:	89 d0                	mov    %edx,%eax
 8049e66:	c1 e0 02             	shl    $0x2,%eax
 8049e69:	01 d0                	add    %edx,%eax
 8049e6b:	c1 e0 04             	shl    $0x4,%eax
 8049e6e:	05 80 d2 04 08       	add    $0x804d280,%eax
 8049e73:	c7 00 2a 2a 2a 74    	movl   $0x742a2a2a,(%eax)
 8049e79:	c7 40 04 72 75 6e 63 	movl   $0x636e7572,0x4(%eax)
 8049e80:	c7 40 08 61 74 65 64 	movl   $0x64657461,0x8(%eax)
 8049e87:	c7 40 0c 2a 2a 2a 00 	movl   $0x2a2a2a,0xc(%eax)
 8049e8e:	e8 3f 00 00 00       	call   8049ed2 <explode_bomb>
 8049e93:	8b 15 6c d2 04 08    	mov    0x804d26c,%edx
 8049e99:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049e9c:	8d 48 ff             	lea    -0x1(%eax),%ecx
 8049e9f:	89 d0                	mov    %edx,%eax
 8049ea1:	c1 e0 02             	shl    $0x2,%eax
 8049ea4:	01 d0                	add    %edx,%eax
 8049ea6:	c1 e0 04             	shl    $0x4,%eax
 8049ea9:	01 c8                	add    %ecx,%eax
 8049eab:	05 80 d2 04 08       	add    $0x804d280,%eax
 8049eb0:	c6 00 00             	movb   $0x0,(%eax)
 8049eb3:	8b 15 6c d2 04 08    	mov    0x804d26c,%edx
 8049eb9:	8d 42 01             	lea    0x1(%edx),%eax
 8049ebc:	a3 6c d2 04 08       	mov    %eax,0x804d26c
 8049ec1:	89 d0                	mov    %edx,%eax
 8049ec3:	c1 e0 02             	shl    $0x2,%eax
 8049ec6:	01 d0                	add    %edx,%eax
 8049ec8:	c1 e0 04             	shl    $0x4,%eax
 8049ecb:	05 80 d2 04 08       	add    $0x804d280,%eax
 8049ed0:	c9                   	leave
 8049ed1:	c3                   	ret

08049ed2 <explode_bomb>:
 8049ed2:	55                   	push   %ebp
 8049ed3:	89 e5                	mov    %esp,%ebp
 8049ed5:	83 ec 08             	sub    $0x8,%esp
 8049ed8:	83 ec 0c             	sub    $0xc,%esp
 8049edb:	68 ce b3 04 08       	push   $0x804b3ce
 8049ee0:	e8 ab f1 ff ff       	call   8049090 <puts@plt>
 8049ee5:	83 c4 10             	add    $0x10,%esp
 8049ee8:	83 ec 0c             	sub    $0xc,%esp
 8049eeb:	68 d7 b3 04 08       	push   $0x804b3d7
 8049ef0:	e8 9b f1 ff ff       	call   8049090 <puts@plt>
 8049ef5:	83 c4 10             	add    $0x10,%esp
 8049ef8:	90                   	nop
 8049ef9:	c9                   	leave
 8049efa:	c3                   	ret

08049efb <phase_defused>:
 8049efb:	55                   	push   %ebp
 8049efc:	89 e5                	mov    %esp,%ebp
 8049efe:	83 ec 68             	sub    $0x68,%esp
 8049f01:	a1 6c d2 04 08       	mov    0x804d26c,%eax
 8049f06:	83 f8 07             	cmp    $0x7,%eax
 8049f09:	75 77                	jne    8049f82 <phase_defused+0x87>
 8049f0b:	83 ec 0c             	sub    $0xc,%esp
 8049f0e:	8d 45 a4             	lea    -0x5c(%ebp),%eax
 8049f11:	50                   	push   %eax
 8049f12:	8d 45 9c             	lea    -0x64(%ebp),%eax
 8049f15:	50                   	push   %eax
 8049f16:	8d 45 a0             	lea    -0x60(%ebp),%eax
 8049f19:	50                   	push   %eax
 8049f1a:	68 ee b3 04 08       	push   $0x804b3ee
 8049f1f:	68 c0 d3 04 08       	push   $0x804d3c0
 8049f24:	e8 a7 f1 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 8049f29:	83 c4 20             	add    $0x20,%esp
 8049f2c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049f2f:	83 7d f4 03          	cmpl   $0x3,-0xc(%ebp)
 8049f33:	75 3d                	jne    8049f72 <phase_defused+0x77>
 8049f35:	83 ec 08             	sub    $0x8,%esp
 8049f38:	68 f7 b3 04 08       	push   $0x804b3f7
 8049f3d:	8d 45 a4             	lea    -0x5c(%ebp),%eax
 8049f40:	50                   	push   %eax
 8049f41:	e8 24 fd ff ff       	call   8049c6a <strings_not_equal>
 8049f46:	83 c4 10             	add    $0x10,%esp
 8049f49:	85 c0                	test   %eax,%eax
 8049f4b:	75 25                	jne    8049f72 <phase_defused+0x77>
 8049f4d:	83 ec 0c             	sub    $0xc,%esp
 8049f50:	68 00 b4 04 08       	push   $0x804b400
 8049f55:	e8 36 f1 ff ff       	call   8049090 <puts@plt>
 8049f5a:	83 c4 10             	add    $0x10,%esp
 8049f5d:	83 ec 0c             	sub    $0xc,%esp
 8049f60:	68 28 b4 04 08       	push   $0x804b428
 8049f65:	e8 26 f1 ff ff       	call   8049090 <puts@plt>
 8049f6a:	83 c4 10             	add    $0x10,%esp
 8049f6d:	e8 d3 fa ff ff       	call   8049a45 <secret_phase>
 8049f72:	83 ec 0c             	sub    $0xc,%esp
 8049f75:	68 60 b4 04 08       	push   $0x804b460
 8049f7a:	e8 11 f1 ff ff       	call   8049090 <puts@plt>
 8049f7f:	83 c4 10             	add    $0x10,%esp
 8049f82:	90                   	nop
 8049f83:	c9                   	leave
 8049f84:	c3                   	ret
 8049f85:	66 90                	xchg   %ax,%ax
 8049f87:	66 90                	xchg   %ax,%ax
 8049f89:	66 90                	xchg   %ax,%ax
 8049f8b:	66 90                	xchg   %ax,%ax
 8049f8d:	66 90                	xchg   %ax,%ax
 8049f8f:	90                   	nop

08049f90 <__libc_csu_init>:
 8049f90:	55                   	push   %ebp
 8049f91:	57                   	push   %edi
 8049f92:	56                   	push   %esi
 8049f93:	53                   	push   %ebx
 8049f94:	e8 d7 f1 ff ff       	call   8049170 <__x86.get_pc_thunk.bx>
 8049f99:	81 c3 67 30 00 00    	add    $0x3067,%ebx
 8049f9f:	83 ec 0c             	sub    $0xc,%esp
 8049fa2:	8b 6c 24 28          	mov    0x28(%esp),%ebp
 8049fa6:	e8 55 f0 ff ff       	call   8049000 <_init>
 8049fab:	8d b3 10 ff ff ff    	lea    -0xf0(%ebx),%esi
 8049fb1:	8d 83 0c ff ff ff    	lea    -0xf4(%ebx),%eax
 8049fb7:	29 c6                	sub    %eax,%esi
 8049fb9:	c1 fe 02             	sar    $0x2,%esi
 8049fbc:	74 1f                	je     8049fdd <__libc_csu_init+0x4d>
 8049fbe:	31 ff                	xor    %edi,%edi
 8049fc0:	83 ec 04             	sub    $0x4,%esp
 8049fc3:	55                   	push   %ebp
 8049fc4:	ff 74 24 2c          	push   0x2c(%esp)
 8049fc8:	ff 74 24 2c          	push   0x2c(%esp)
 8049fcc:	ff 94 bb 0c ff ff ff 	call   *-0xf4(%ebx,%edi,4)
 8049fd3:	83 c7 01             	add    $0x1,%edi
 8049fd6:	83 c4 10             	add    $0x10,%esp
 8049fd9:	39 fe                	cmp    %edi,%esi
 8049fdb:	75 e3                	jne    8049fc0 <__libc_csu_init+0x30>
 8049fdd:	83 c4 0c             	add    $0xc,%esp
 8049fe0:	5b                   	pop    %ebx
 8049fe1:	5e                   	pop    %esi
 8049fe2:	5f                   	pop    %edi
 8049fe3:	5d                   	pop    %ebp
 8049fe4:	c3                   	ret
 8049fe5:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049fec:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08049ff0 <__libc_csu_fini>:
 8049ff0:	c3                   	ret

Disassembly of section .fini:

08049ff4 <_fini>:
 8049ff4:	53                   	push   %ebx
 8049ff5:	83 ec 08             	sub    $0x8,%esp
 8049ff8:	e8 73 f1 ff ff       	call   8049170 <__x86.get_pc_thunk.bx>
 8049ffd:	81 c3 03 30 00 00    	add    $0x3003,%ebx
 804a003:	83 c4 08             	add    $0x8,%esp
 804a006:	5b                   	pop    %ebx
 804a007:	c3                   	ret
