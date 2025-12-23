
bomb：     文件格式 elf32-i386


Disassembly of section .init:

08049000 <_init>:
 8049000:	53                   	push   %ebx
 8049001:	83 ec 08             	sub    $0x8,%esp
 8049004:	e8 67 01 00 00       	call   8049170 <__x86.get_pc_thunk.bx>
 8049009:	81 c3 f7 2f 00 00    	add    $0x2ff7,%ebx
 804900f:	8b 83 fc ff ff ff    	mov    -0x4(%ebx),%eax
 8049015:	85 c0                	test   %eax,%eax
 8049017:	74 02                	je     804901b <_init+0x1b>
 8049019:	ff d0                	call   *%eax
 804901b:	83 c4 08             	add    $0x8,%esp
 804901e:	5b                   	pop    %ebx
 804901f:	c3                   	ret

Disassembly of section .plt:

08049020 <.plt>:
 8049020:	ff 35 04 c0 04 08    	push   0x804c004
 8049026:	ff 25 08 c0 04 08    	jmp    *0x804c008
 804902c:	00 00                	add    %al,(%eax)
	...

08049030 <printf@plt>:
 8049030:	ff 25 0c c0 04 08    	jmp    *0x804c00c
 8049036:	68 00 00 00 00       	push   $0x0
 804903b:	e9 e0 ff ff ff       	jmp    8049020 <.plt>

08049040 <fflush@plt>:
 8049040:	ff 25 10 c0 04 08    	jmp    *0x804c010
 8049046:	68 08 00 00 00       	push   $0x8
 804904b:	e9 d0 ff ff ff       	jmp    8049020 <.plt>

08049050 <fgets@plt>:
 8049050:	ff 25 14 c0 04 08    	jmp    *0x804c014
 8049056:	68 10 00 00 00       	push   $0x10
 804905b:	e9 c0 ff ff ff       	jmp    8049020 <.plt>

08049060 <signal@plt>:
 8049060:	ff 25 18 c0 04 08    	jmp    *0x804c018
 8049066:	68 18 00 00 00       	push   $0x18
 804906b:	e9 b0 ff ff ff       	jmp    8049020 <.plt>

08049070 <sleep@plt>:
 8049070:	ff 25 1c c0 04 08    	jmp    *0x804c01c
 8049076:	68 20 00 00 00       	push   $0x20
 804907b:	e9 a0 ff ff ff       	jmp    8049020 <.plt>

08049080 <getenv@plt>:
 8049080:	ff 25 20 c0 04 08    	jmp    *0x804c020
 8049086:	68 28 00 00 00       	push   $0x28
 804908b:	e9 90 ff ff ff       	jmp    8049020 <.plt>

08049090 <puts@plt>:
 8049090:	ff 25 24 c0 04 08    	jmp    *0x804c024
 8049096:	68 30 00 00 00       	push   $0x30
 804909b:	e9 80 ff ff ff       	jmp    8049020 <.plt>

080490a0 <exit@plt>:
 80490a0:	ff 25 28 c0 04 08    	jmp    *0x804c028
 80490a6:	68 38 00 00 00       	push   $0x38
 80490ab:	e9 70 ff ff ff       	jmp    8049020 <.plt>

080490b0 <strlen@plt>:
 80490b0:	ff 25 2c c0 04 08    	jmp    *0x804c02c
 80490b6:	68 40 00 00 00       	push   $0x40
 80490bb:	e9 60 ff ff ff       	jmp    8049020 <.plt>

080490c0 <__libc_start_main@plt>:
 80490c0:	ff 25 30 c0 04 08    	jmp    *0x804c030
 80490c6:	68 48 00 00 00       	push   $0x48
 80490cb:	e9 50 ff ff ff       	jmp    8049020 <.plt>

080490d0 <__isoc99_sscanf@plt>:
 80490d0:	ff 25 34 c0 04 08    	jmp    *0x804c034
 80490d6:	68 50 00 00 00       	push   $0x50
 80490db:	e9 40 ff ff ff       	jmp    8049020 <.plt>

080490e0 <fopen@plt>:
 80490e0:	ff 25 38 c0 04 08    	jmp    *0x804c038
 80490e6:	68 58 00 00 00       	push   $0x58
 80490eb:	e9 30 ff ff ff       	jmp    8049020 <.plt>

080490f0 <strtok@plt>:
 80490f0:	ff 25 3c c0 04 08    	jmp    *0x804c03c
 80490f6:	68 60 00 00 00       	push   $0x60
 80490fb:	e9 20 ff ff ff       	jmp    8049020 <.plt>

08049100 <atoi@plt>:
 8049100:	ff 25 40 c0 04 08    	jmp    *0x804c040
 8049106:	68 68 00 00 00       	push   $0x68
 804910b:	e9 10 ff ff ff       	jmp    8049020 <.plt>

08049110 <__ctype_b_loc@plt>:
 8049110:	ff 25 44 c0 04 08    	jmp    *0x804c044
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
 8049130:	81 c3 d0 2e 00 00    	add    $0x2ed0,%ebx
 8049136:	8d 83 60 df ff ff    	lea    -0x20a0(%ebx),%eax
 804913c:	50                   	push   %eax
 804913d:	8d 83 00 df ff ff    	lea    -0x2100(%ebx),%eax
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
 8049180:	b8 20 c2 04 08       	mov    $0x804c220,%eax
 8049185:	3d 20 c2 04 08       	cmp    $0x804c220,%eax
 804918a:	74 24                	je     80491b0 <deregister_tm_clones+0x30>
 804918c:	b8 00 00 00 00       	mov    $0x0,%eax
 8049191:	85 c0                	test   %eax,%eax
 8049193:	74 1b                	je     80491b0 <deregister_tm_clones+0x30>
 8049195:	55                   	push   %ebp
 8049196:	89 e5                	mov    %esp,%ebp
 8049198:	83 ec 14             	sub    $0x14,%esp
 804919b:	68 20 c2 04 08       	push   $0x804c220
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
 80491c0:	b8 20 c2 04 08       	mov    $0x804c220,%eax
 80491c5:	2d 20 c2 04 08       	sub    $0x804c220,%eax
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
 80491e8:	68 20 c2 04 08       	push   $0x804c220
 80491ed:	ff d2                	call   *%edx
 80491ef:	83 c4 10             	add    $0x10,%esp
 80491f2:	c9                   	leave
 80491f3:	c3                   	ret
 80491f4:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 80491f8:	c3                   	ret
 80491f9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

08049200 <__do_global_dtors_aux>:
 8049200:	80 3d 28 c2 04 08 00 	cmpb   $0x0,0x804c228
 8049207:	75 17                	jne    8049220 <__do_global_dtors_aux+0x20>
 8049209:	55                   	push   %ebp
 804920a:	89 e5                	mov    %esp,%ebp
 804920c:	83 ec 08             	sub    $0x8,%esp
 804920f:	e8 6c ff ff ff       	call   8049180 <deregister_tm_clones>
 8049214:	c6 05 28 c2 04 08 01 	movb   $0x1,0x804c228
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
 804924b:	a1 20 c2 04 08       	mov    0x804c220,%eax
 8049250:	a3 30 c2 04 08       	mov    %eax,0x804c230
 8049255:	eb 75                	jmp    80492cc <main+0x9a>
 8049257:	83 3b 02             	cmpl   $0x2,(%ebx)
 804925a:	75 50                	jne    80492ac <main+0x7a>
 804925c:	8b 43 04             	mov    0x4(%ebx),%eax
 804925f:	83 c0 04             	add    $0x4,%eax
 8049262:	8b 00                	mov    (%eax),%eax
 8049264:	83 ec 08             	sub    $0x8,%esp
 8049267:	68 08 a0 04 08       	push   $0x804a008
 804926c:	50                   	push   %eax
 804926d:	e8 6e fe ff ff       	call   80490e0 <fopen@plt>
 8049272:	83 c4 10             	add    $0x10,%esp
 8049275:	a3 30 c2 04 08       	mov    %eax,0x804c230
 804927a:	a1 30 c2 04 08       	mov    0x804c230,%eax
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
 8049295:	68 0a a0 04 08       	push   $0x804a00a
 804929a:	e8 91 fd ff ff       	call   8049030 <printf@plt>
 804929f:	83 c4 10             	add    $0x10,%esp
 80492a2:	83 ec 0c             	sub    $0xc,%esp
 80492a5:	6a 08                	push   $0x8
 80492a7:	e8 f4 fd ff ff       	call   80490a0 <exit@plt>
 80492ac:	8b 43 04             	mov    0x4(%ebx),%eax
 80492af:	8b 00                	mov    (%eax),%eax
 80492b1:	83 ec 08             	sub    $0x8,%esp
 80492b4:	50                   	push   %eax
 80492b5:	68 27 a0 04 08       	push   $0x804a027
 80492ba:	e8 71 fd ff ff       	call   8049030 <printf@plt>
 80492bf:	83 c4 10             	add    $0x10,%esp
 80492c2:	83 ec 0c             	sub    $0xc,%esp
 80492c5:	6a 08                	push   $0x8
 80492c7:	e8 d4 fd ff ff       	call   80490a0 <exit@plt>
 80492cc:	e8 71 09 00 00       	call   8049c42 <initialize_bomb>
 80492d1:	83 ec 0c             	sub    $0xc,%esp
 80492d4:	68 44 a0 04 08       	push   $0x804a044
 80492d9:	e8 b2 fd ff ff       	call   8049090 <puts@plt>
 80492de:	83 c4 10             	add    $0x10,%esp
 80492e1:	83 ec 0c             	sub    $0xc,%esp
 80492e4:	68 80 a0 04 08       	push   $0x804a080
 80492e9:	e8 a2 fd ff ff       	call   8049090 <puts@plt>
 80492ee:	83 c4 10             	add    $0x10,%esp
 80492f1:	e8 06 0a 00 00       	call   8049cfc <read_line>
 80492f6:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80492f9:	83 ec 0c             	sub    $0xc,%esp
 80492fc:	ff 75 f4             	push   -0xc(%ebp)
 80492ff:	e8 6b 01 00 00       	call   804946f <phase_0>
 8049304:	83 c4 10             	add    $0x10,%esp
 8049307:	85 c0                	test   %eax,%eax
 8049309:	74 15                	je     8049320 <main+0xee>
 804930b:	e8 58 0b 00 00       	call   8049e68 <phase_defused>
 8049310:	83 ec 0c             	sub    $0xc,%esp
 8049313:	68 ac a0 04 08       	push   $0x804a0ac
 8049318:	e8 73 fd ff ff       	call   8049090 <puts@plt>
 804931d:	83 c4 10             	add    $0x10,%esp
 8049320:	e8 d7 09 00 00       	call   8049cfc <read_line>
 8049325:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049328:	83 ec 0c             	sub    $0xc,%esp
 804932b:	ff 75 f4             	push   -0xc(%ebp)
 804932e:	e8 6c 01 00 00       	call   804949f <phase_1>
 8049333:	83 c4 10             	add    $0x10,%esp
 8049336:	85 c0                	test   %eax,%eax
 8049338:	74 15                	je     804934f <main+0x11d>
 804933a:	e8 29 0b 00 00       	call   8049e68 <phase_defused>
 804933f:	83 ec 0c             	sub    $0xc,%esp
 8049342:	68 d4 a0 04 08       	push   $0x804a0d4
 8049347:	e8 44 fd ff ff       	call   8049090 <puts@plt>
 804934c:	83 c4 10             	add    $0x10,%esp
 804934f:	e8 a8 09 00 00       	call   8049cfc <read_line>
 8049354:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049357:	83 ec 0c             	sub    $0xc,%esp
 804935a:	ff 75 f4             	push   -0xc(%ebp)
 804935d:	e8 a7 01 00 00       	call   8049509 <phase_2>
 8049362:	83 c4 10             	add    $0x10,%esp
 8049365:	85 c0                	test   %eax,%eax
 8049367:	74 15                	je     804937e <main+0x14c>
 8049369:	e8 fa 0a 00 00       	call   8049e68 <phase_defused>
 804936e:	83 ec 0c             	sub    $0xc,%esp
 8049371:	68 fd a0 04 08       	push   $0x804a0fd
 8049376:	e8 15 fd ff ff       	call   8049090 <puts@plt>
 804937b:	83 c4 10             	add    $0x10,%esp
 804937e:	e8 79 09 00 00       	call   8049cfc <read_line>
 8049383:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049386:	83 ec 0c             	sub    $0xc,%esp
 8049389:	ff 75 f4             	push   -0xc(%ebp)
 804938c:	e8 03 02 00 00       	call   8049594 <phase_3>
 8049391:	83 c4 10             	add    $0x10,%esp
 8049394:	85 c0                	test   %eax,%eax
 8049396:	74 15                	je     80493ad <main+0x17b>
 8049398:	e8 cb 0a 00 00       	call   8049e68 <phase_defused>
 804939d:	83 ec 0c             	sub    $0xc,%esp
 80493a0:	68 1b a1 04 08       	push   $0x804a11b
 80493a5:	e8 e6 fc ff ff       	call   8049090 <puts@plt>
 80493aa:	83 c4 10             	add    $0x10,%esp
 80493ad:	e8 4a 09 00 00       	call   8049cfc <read_line>
 80493b2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80493b5:	83 ec 0c             	sub    $0xc,%esp
 80493b8:	ff 75 f4             	push   -0xc(%ebp)
 80493bb:	e8 27 03 00 00       	call   80496e7 <phase_4>
 80493c0:	83 c4 10             	add    $0x10,%esp
 80493c3:	85 c0                	test   %eax,%eax
 80493c5:	74 15                	je     80493dc <main+0x1aa>
 80493c7:	e8 9c 0a 00 00       	call   8049e68 <phase_defused>
 80493cc:	83 ec 0c             	sub    $0xc,%esp
 80493cf:	68 2c a1 04 08       	push   $0x804a12c
 80493d4:	e8 b7 fc ff ff       	call   8049090 <puts@plt>
 80493d9:	83 c4 10             	add    $0x10,%esp
 80493dc:	e8 1b 09 00 00       	call   8049cfc <read_line>
 80493e1:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80493e4:	83 ec 0c             	sub    $0xc,%esp
 80493e7:	ff 75 f4             	push   -0xc(%ebp)
 80493ea:	e8 6c 03 00 00       	call   804975b <phase_5>
 80493ef:	83 c4 10             	add    $0x10,%esp
 80493f2:	85 c0                	test   %eax,%eax
 80493f4:	74 15                	je     804940b <main+0x1d9>
 80493f6:	e8 6d 0a 00 00       	call   8049e68 <phase_defused>
 80493fb:	83 ec 0c             	sub    $0xc,%esp
 80493fe:	68 50 a1 04 08       	push   $0x804a150
 8049403:	e8 88 fc ff ff       	call   8049090 <puts@plt>
 8049408:	83 c4 10             	add    $0x10,%esp
 804940b:	e8 ec 08 00 00       	call   8049cfc <read_line>
 8049410:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049413:	83 ec 0c             	sub    $0xc,%esp
 8049416:	ff 75 f4             	push   -0xc(%ebp)
 8049419:	e8 c9 03 00 00       	call   80497e7 <phase_6>
 804941e:	83 c4 10             	add    $0x10,%esp
 8049421:	85 c0                	test   %eax,%eax
 8049423:	74 05                	je     804942a <main+0x1f8>
 8049425:	e8 3e 0a 00 00       	call   8049e68 <phase_defused>
 804942a:	b8 00 00 00 00       	mov    $0x0,%eax
 804942f:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8049432:	59                   	pop    %ecx
 8049433:	5b                   	pop    %ebx
 8049434:	5d                   	pop    %ebp
 8049435:	8d 61 fc             	lea    -0x4(%ecx),%esp
 8049438:	c3                   	ret

08049439 <SGxRtEgT>:
 8049439:	55                   	push   %ebp
 804943a:	89 e5                	mov    %esp,%ebp
 804943c:	83 ec 08             	sub    $0x8,%esp
 804943f:	d9 45 08             	flds   0x8(%ebp)
 8049442:	d8 65 10             	fsubs  0x10(%ebp)
 8049445:	d8 4d 0c             	fmuls  0xc(%ebp)
 8049448:	d9 45 08             	flds   0x8(%ebp)
 804944b:	d8 45 0c             	fadds  0xc(%ebp)
 804944e:	d8 4d 10             	fmuls  0x10(%ebp)
 8049451:	de c1                	faddp  %st,%st(1)
 8049453:	d9 7d fe             	fnstcw -0x2(%ebp)
 8049456:	0f b7 45 fe          	movzwl -0x2(%ebp),%eax
 804945a:	80 cc 0c             	or     $0xc,%ah
 804945d:	66 89 45 fc          	mov    %ax,-0x4(%ebp)
 8049461:	d9 6d fc             	fldcw  -0x4(%ebp)
 8049464:	db 5d f8             	fistpl -0x8(%ebp)
 8049467:	d9 6d fe             	fldcw  -0x2(%ebp)
 804946a:	8b 45 f8             	mov    -0x8(%ebp),%eax
 804946d:	c9                   	leave
 804946e:	c3                   	ret
// 字符串
0804946f <phase_0>:
 804946f:	55                   	push   %ebp       存旧ebp
 8049470:	89 e5                	mov    %esp,%ebp
 8049472:	83 ec 08             	sub    $0x8,%esp
 8049475:	83 ec 08             	sub    $0x8,%esp  分配16字节空间
 8049478:	68 98 a1 04 08       	push   $0x804a198 答案字符串(地址, 指针)压栈
 804947d:	ff 75 08             	push   0x8(%ebp)  输入字符串压栈(这两个作为下面call的参数)
 8049480:	e8 52 07 00 00       	call   8049bd7 <strings_not_equal> 比较两字符串
 8049485:	83 c4 10             	add    $0x10,%esp 释放push进来参数的空间
 8049488:	85 c0                	test   %eax,%eax eax和eax按位与
 804948a:	74 0c                	je     8049498 <phase_0+0x29>
 804948c:	e8 ae 09 00 00       	call   8049e3f <explode_bomb>
 8049491:	b8 00 00 00 00       	mov    $0x0,%eax
 8049496:	eb 05                	jmp    804949d <phase_0+0x2e>
 8049498:	b8 01 00 00 00       	mov    $0x1,%eax
 804949d:	c9                   	leave
 804949e:	c3                   	ret
// 浮点数
0804949f <phase_1>:
 804949f:	55                   	push   %ebp
 80494a0:	89 e5                	mov    %esp,%ebp
 80494a2:	83 ec 28             	sub    $0x28,%esp
 80494a5:	c7 45 f4 f6 cc 4e 1a 	movl   $0x1a4eccf6,-0xc(%ebp) 把这个数放到后面的地址
 80494ac:	db 45 f4             	fildl  -0xc(%ebp) 浮点数
 80494af:	dd 5d e8             	fstpl  -0x18(%ebp) 浮点数放到后面的地址
 80494b2:	8d 45 e0             	lea    -0x20(%ebp),%eax 等会scanf输入存的位置(第二个数)
 80494b5:	50                   	push   %eax 地址压栈
 80494b6:	8d 45 e4             	lea    -0x1c(%ebp),%eax scanf输入存的位置(第一个数)
 80494b9:	50                   	push   %eax 把这个地址压栈
 80494ba:	68 bd a1 04 08       	push   $0x804a1bd %d %d格式
 80494bf:	ff 75 08             	push   0x8(%ebp) 输入字符串压栈
 80494c2:	e8 09 fc ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 80494c7:	83 c4 10             	add    $0x10,%esp 释放参数地址
 80494ca:	83 f8 02             	cmp    $0x2,%eax 确定是否输入了两个数
 80494cd:	74 0c                	je     80494db <phase_1+0x3c> 是就跳过
 80494cf:	e8 6b 09 00 00       	call   8049e3f <explode_bomb> 不是就爆炸
 80494d4:	b8 00 00 00 00       	mov    $0x0,%eax
 80494d9:	eb 2c                	jmp    8049507 <phase_1+0x68>
 80494db:	8d 45 e8             	lea    -0x18(%ebp),%eax 取出double首地址放到eax
 80494de:	8b 10                	mov    (%eax),%edx 取出double的低四字节
 80494e0:	8b 45 e4             	mov    -0x1c(%ebp),%eax 取出输入的第一个数
 80494e3:	39 c2                	cmp    %eax,%edx 比较这两个数
 80494e5:	75 0f                	jne    80494f6 <phase_1+0x57> 不相等就爆炸
 80494e7:	8d 45 e8             	lea    -0x18(%ebp),%eax 获取double首地址
 80494ea:	83 c0 04             	add    $0x4,%eax 地址+4 double高四字节
 80494ed:	8b 10                	mov    (%eax),%edx 取出double高四字节
 80494ef:	8b 45 e0             	mov    -0x20(%ebp),%eax 取出输入的第二个数
 80494f2:	39 c2                	cmp    %eax,%edx 比较
 80494f4:	74 0c                	je     8049502 <phase_1+0x63>
 80494f6:	e8 44 09 00 00       	call   8049e3f <explode_bomb>
 80494fb:	b8 00 00 00 00       	mov    $0x0,%eax
 8049500:	eb 05                	jmp    8049507 <phase_1+0x68>
 8049502:	b8 01 00 00 00       	mov    $0x1,%eax
 8049507:	c9                   	leave
 8049508:	c3                   	ret
// 循环
08049509 <phase_2>:
 8049509:	55                   	push   %ebp
 804950a:	89 e5                	mov    %esp,%ebp
 804950c:	53                   	push   %ebx
 804950d:	83 ec 34             	sub    $0x34,%esp
 8049510:	83 ec 04             	sub    $0x4,%esp
 8049513:	6a 08                	push   $0x8 参数, 读取数量为8
 8049515:	8d 45 d4             	lea    -0x2c(%ebp),%eax 数组首地址放到eax(数组首地址ebp-0x2c)
 8049518:	50                   	push   %eax 地址入栈, 作为参数
 8049519:	ff 75 08             	push   0x8(%ebp) 输入的字符串入栈作为参数
 804951c:	e8 fc 05 00 00       	call   8049b1d <read_n_numbers> 读取8个数, 放到数组中
 8049521:	83 c4 10             	add    $0x10,%esp 参数退栈
 8049524:	85 c0                	test   %eax,%eax 检查返回值是不是0
 8049526:	75 07                	jne    804952f <phase_2+0x26>
 8049528:	b8 00 00 00 00       	mov    $0x0,%eax
 804952d:	eb 60                	jmp    804958f <phase_2+0x86>
 804952f:	8b 45 d4             	mov    -0x2c(%ebp),%eax 数组第0个数放到eax
 8049532:	3d 8a 00 00 00       	cmp    $0x8a,%eax 比较是否等于0x8a(138)
 8049537:	74 0c                	je     8049545 <phase_2+0x3c> 相等就跳过爆炸
 8049539:	e8 01 09 00 00       	call   8049e3f <explode_bomb>
 804953e:	b8 00 00 00 00       	mov    $0x0,%eax
 8049543:	eb 4a                	jmp    804958f <phase_2+0x86>
 8049545:	c7 45 f4 01 00 00 00 	movl   $0x1,-0xc(%ebp) 跳到这, i = 1(循环变量i, 地址ebp-0xc)
 804954c:	eb 36                	jmp    8049584 <phase_2+0x7b> 
 804954e:	8b 45 f4             	mov    -0xc(%ebp),%eax // eax = i
 8049551:	8b 54 85 d4          	mov    -0x2c(%ebp,%eax,4),%edx // edx = A[i](ebp-0x2c是数组首地址)
 8049555:	8b 45 f4             	mov    -0xc(%ebp),%eax // eax = i
 8049558:	83 e8 01             	sub    $0x1,%eax // eax = i - 1
 804955b:	8b 4c 85 d4          	mov    -0x2c(%ebp,%eax,4),%ecx // ecx = A[i - 1]
 804955f:	8b 5d f4             	mov    -0xc(%ebp),%ebx // ebx = i
 8049562:	b8 00 00 00 00       	mov    $0x0,%eax // eax = 0
 8049567:	29 d8                	sub    %ebx,%eax // eax = eax - ebx = 0 - i = -i
 8049569:	01 c0                	add    %eax,%eax // eax = eax + eax = -2i
 804956b:	01 c8                	add    %ecx,%eax // eax = ecx + eax = A[i - 1] - 2i
 804956d:	83 c0 01             	add    $0x1,%eax // eax = eax + 1 = A[i - 1] - 2i + 1
 8049570:	39 c2                	cmp    %eax,%edx // 比较计算出来的结果和输入的值(数组中存着)
 8049572:	74 0c                	je     8049580 <phase_2+0x77> // 相等就跳过爆炸
 8049574:	e8 c6 08 00 00       	call   8049e3f <explode_bomb>
 8049579:	b8 00 00 00 00       	mov    $0x0,%eax
 804957e:	eb 0f                	jmp    804958f <phase_2+0x86>
 8049580:	83 45 f4 01          	addl   $0x1,-0xc(%ebp) // i = i + 1 ebp-0xc是i的地址 
 8049584:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp) // 看i与7的关系
 8049588:	7e c4                	jle    804954e <phase_2+0x45> // 小则继续循环
 804958a:	b8 01 00 00 00       	mov    $0x1,%eax
 804958f:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8049592:	c9                   	leave
 8049593:	c3                   	ret
// switch
08049594 <phase_3>:
 8049594:	55                   	push   %ebp
 8049595:	89 e5                	mov    %esp,%ebp
 8049597:	83 ec 18             	sub    $0x18,%esp
 804959a:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp)
 80495a1:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 80495a8:	8d 45 e8             	lea    -0x18(%ebp),%eax // ebp-0x18的地址存第二个scanf的数
 80495ab:	50                   	push   %eax // 压栈作为参数
 80495ac:	8d 45 ec             	lea    -0x14(%ebp),%eax // ebp-0x14的地址存第一个scanf的数
 80495af:	50                   	push   %eax // 压栈作为参数
 80495b0:	68 bd a1 04 08       	push   $0x804a1bd // 格式参数
 80495b5:	ff 75 08             	push   0x8(%ebp) // 输入的字符串入栈作为参数
 80495b8:	e8 13 fb ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 80495bd:	83 c4 10             	add    $0x10,%esp // 参数退栈
 80495c0:	89 45 f0             	mov    %eax,-0x10(%ebp)  // scanf返回值
 80495c3:	83 7d f0 01          	cmpl   $0x1,-0x10(%ebp) // 返回值大于1跳转
 80495c7:	7f 0f                	jg     80495d8 <phase_3+0x44> // 满足跳转, 不满足爆炸(jump if greater, 有符号比较)
 80495c9:	e8 71 08 00 00       	call   8049e3f <explode_bomb>
 80495ce:	b8 00 00 00 00       	mov    $0x0,%eax
 80495d3:	e9 93 00 00 00       	jmp    804966b <phase_3+0xd7>
 80495d8:	8b 45 ec             	mov    -0x14(%ebp),%eax // 取出第一个输入的数x
 80495db:	83 e8 07             	sub    $0x7,%eax // x = x - 7
 80495de:	83 f8 09             	cmp    $0x9,%eax // 9 与 x的关系
 80495e1:	77 63                	ja     8049646 <phase_3+0xb2> // jump above x大于9则跳转到爆炸, 所以原x最大为16
 80495e3:	8b 04 85 c4 a1 04 08 	mov    0x804a1c4(,%eax,4),%eax // 从跳转表取出地址, 第x个的地址存到eax, x(7-16), 一共10case
 80495ea:	ff e0                	jmp    *%eax // 跳转到下面的case
 80495ec:	c7 45 f4 9c 03 00 00 	movl   $0x39c,-0xc(%ebp) // case 0 924(x=7)
 80495f3:	eb 5d                	jmp    8049652 <phase_3+0xbe>
 80495f5:	c7 45 f4 9c 03 00 00 	movl   $0x39c,-0xc(%ebp) // case 1 924(x=8)等等
 80495fc:	eb 54                	jmp    8049652 <phase_3+0xbe>
 80495fe:	c7 45 f4 cd 03 00 00 	movl   $0x3cd,-0xc(%ebp) // case 2 973
 8049605:	eb 4b                	jmp    8049652 <phase_3+0xbe>
 8049607:	c7 45 f4 9c 03 00 00 	movl   $0x39c,-0xc(%ebp) // case 3 924
 804960e:	eb 42                	jmp    8049652 <phase_3+0xbe>
 8049610:	c7 45 f4 cd 03 00 00 	movl   $0x3cd,-0xc(%ebp) // case 4 973
 8049617:	eb 39                	jmp    8049652 <phase_3+0xbe>
 8049619:	c7 45 f4 9c 03 00 00 	movl   $0x39c,-0xc(%ebp) // case 5 924
 8049620:	eb 30                	jmp    8049652 <phase_3+0xbe>
 8049622:	c7 45 f4 cd 03 00 00 	movl   $0x3cd,-0xc(%ebp) // case 6 973
 8049629:	eb 27                	jmp    8049652 <phase_3+0xbe>
 804962b:	c7 45 f4 cd 03 00 00 	movl   $0x3cd,-0xc(%ebp) // case 7 973
 8049632:	eb 1e                	jmp    8049652 <phase_3+0xbe>
 8049634:	c7 45 f4 9c 03 00 00 	movl   $0x39c,-0xc(%ebp) // case 8 924
 804963b:	eb 15                	jmp    8049652 <phase_3+0xbe>
 804963d:	c7 45 f4 cd 03 00 00 	movl   $0x3cd,-0xc(%ebp) // case 9(给ebp-0xc赋值0x3cd)
 8049644:	eb 0c                	jmp    8049652 <phase_3+0xbe>
 8049646:	e8 f4 07 00 00       	call   8049e3f <explode_bomb>
 804964b:	b8 00 00 00 00       	mov    $0x0,%eax
 8049650:	eb 19                	jmp    804966b <phase_3+0xd7>
 8049652:	8b 45 e8             	mov    -0x18(%ebp),%eax // 各个case跳到这里, ebp-0x18(y, 第二个输入的数)的值放到eax
 8049655:	39 45 f4             	cmp    %eax,-0xc(%ebp) // 比较eax和ebp-0xc(各个case赋值)
 8049658:	74 0c                	je     8049666 <phase_3+0xd2> // 相等就跳转, 不相等爆炸
 804965a:	e8 e0 07 00 00       	call   8049e3f <explode_bomb>
 804965f:	b8 00 00 00 00       	mov    $0x0,%eax
 8049664:	eb 05                	jmp    804966b <phase_3+0xd7>
 8049666:	b8 01 00 00 00       	mov    $0x1,%eax
 804966b:	c9                   	leave
 804966c:	c3                   	ret
// 二分查找
0804966d <func4>:
 804966d:	55                   	push   %ebp
 804966e:	89 e5                	mov    %esp,%ebp
 8049670:	83 ec 18             	sub    $0x18,%esp
 8049673:	8b 45 10             	mov    0x10(%ebp),%eax // 0x10(%ebp)就是参数3: 48(上界end), 放到eax = end
 8049676:	2b 45 0c             	sub    0xc(%ebp),%eax // 0xc(%ebp)就是参数2: 4(下界start), eax = end - start
 8049679:	89 c2                	mov    %eax,%edx // edx = eax = end - start
 804967b:	c1 ea 1f             	shr    $0x1f,%edx 
 804967e:	01 d0                	add    %edx,%eax 
 8049680:	d1 f8                	sar    $1,%eax // eax = (end - start) / 2
 8049682:	89 c2                	mov    %eax,%edx // edx = eax = (end - start) / 2
 8049684:	8b 45 0c             	mov    0xc(%ebp),%eax // 0xc(%ebp)是下界start, eax = eax + start = start + (end - start)/2
 8049687:	01 d0                	add    %edx,%eax // eax = edx + eax 
 8049689:	89 45 f4             	mov    %eax,-0xc(%ebp) // 计算出的中点(mid)存入局部变量
 804968c:	8b 45 f4             	mov    -0xc(%ebp),%eax // 取出mid
 804968f:	3b 45 08             	cmp    0x8(%ebp),%eax // 比较mid和0x8(%ebp)第一个参数x, target(要查找的值)
 8049692:	7e 23                	jle    80496b7 <func4+0x4a> // 如果mid <= target, 跳转到别的情况
 8049694:	8b 45 f4             	mov    -0xc(%ebp),%eax // 没跳转, mid > target(把end变为mid - 1递归调用)
 8049697:	83 e8 01             	sub    $0x1,%eax // eax = mid - 1
 804969a:	83 ec 04             	sub    $0x4,%esp
 804969d:	50                   	push   %eax // 3. 参数(end)入栈
 804969e:	ff 75 0c             	push   0xc(%ebp) // 2. start入栈
 80496a1:	ff 75 08             	push   0x8(%ebp) // 1. target入栈
 80496a4:	e8 c4 ff ff ff       	call   804966d <func4> // 递归调用 fun4(target, start, mid - 1)
 80496a9:	83 c4 10             	add    $0x10,%esp
 80496ac:	89 c2                	mov    %eax,%edx // eax返回值放到edx
 80496ae:	8b 45 f4             	mov    -0xc(%ebp),%eax // 取出mid到eax
 80496b1:	d1 f8                	sar    $1,%eax // 右移一位, 相当于eax = mid / 2
 80496b3:	01 d0                	add    %edx,%eax // eax = mid / 2 + edx(所以每递归一次返回的是mid/2加上找到的返回值)
 80496b5:	eb 2e                	jmp    80496e5 <func4+0x78> // 跳转到退出
 80496b7:	8b 45 f4             	mov    -0xc(%ebp),%eax // 上面mid <= target跳转到这里, -0xc(%ebp)存mid, mid放到eax 
 80496ba:	3b 45 08             	cmp    0x8(%ebp),%eax // 0x8(%ebp)是target, 看target与mid的关系
 80496bd:	7d 23                	jge    80496e2 <func4+0x75> // 如果mid >= target, 直接跳出, 实际上是==, 因为mid已经<=target了
 80496bf:	8b 45 f4             	mov    -0xc(%ebp),%eax // 这里是mid < target的情况, 应递归fun4(target, mid - 1, end)
 80496c2:	83 c0 01             	add    $0x1,%eax // eax = mid - 1
 80496c5:	83 ec 04             	sub    $0x4,%esp
 80496c8:	ff 75 10             	push   0x10(%ebp) // 参数3 end
 80496cb:	50                   	push   %eax // 参数2 start, 因为mid < target, 应把start改为mid - 1
 80496cc:	ff 75 08             	push   0x8(%ebp) // 参数1 target
 80496cf:	e8 99 ff ff ff       	call   804966d <func4> // 递归条用func4
 80496d4:	83 c4 10             	add    $0x10,%esp
 80496d7:	89 c2                	mov    %eax,%edx // 返回值放edx
 80496d9:	8b 45 f4             	mov    -0xc(%ebp),%eax // mid放eax
 80496dc:	01 c0                	add    %eax,%eax
 80496de:	01 d0                	add    %edx,%eax
 80496e0:	eb 03                	jmp    80496e5 <func4+0x78>
 80496e2:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80496e5:	c9                   	leave
 80496e6:	c3                   	ret
// 递归
080496e7 <phase_4>:
 80496e7:	55                   	push   %ebp
 80496e8:	89 e5                	mov    %esp,%ebp
 80496ea:	83 ec 18             	sub    $0x18,%esp
 80496ed:	8d 45 e8             	lea    -0x18(%ebp),%eax // scanf存的第二个数地址存到eax ebp-0x18
 80496f0:	50                   	push   %eax // 把地址入栈作为参数
 80496f1:	8d 45 ec             	lea    -0x14(%ebp),%eax // scanf存的第一个数地址 ebp-0x14
 80496f4:	50                   	push   %eax
 80496f5:	68 bd a1 04 08       	push   $0x804a1bd // 格式参数
 80496fa:	ff 75 08             	push   0x8(%ebp) // 输入的字符串入栈作为参数
 80496fd:	e8 ce f9 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 8049702:	83 c4 10             	add    $0x10,%esp // 参数退栈
 8049705:	89 45 f4             	mov    %eax,-0xc(%ebp) // scanf返回值
 8049708:	83 7d f4 02          	cmpl   $0x2,-0xc(%ebp) // 2和返回值的关系
 804970c:	75 10                	jne    804971e <phase_4+0x37> 返回值不等于2就爆炸
 804970e:	8b 45 ec             	mov    -0x14(%ebp),%eax // ebp-0x14 第一个数(x)放到eax
 8049711:	83 f8 03             	cmp    $0x3,%eax 3和eax的关系
 8049714:	7e 08                	jle    804971e <phase_4+0x37> eax小于等于3就跳转到爆炸 jump less or equal
 8049716:	8b 45 ec             	mov    -0x14(%ebp),%eax // ebp-0x14 第一个数放到eax
 8049719:	83 f8 30             	cmp    $0x30,%eax // eax与48的关系
 804971c:	7e 0c                	jle    804972a <phase_4+0x43> // eax大于等于48就跳转, 所以4 < x < 48
 804971e:	e8 1c 07 00 00       	call   8049e3f <explode_bomb>
 8049723:	b8 00 00 00 00       	mov    $0x0,%eax
 8049728:	eb 2f                	jmp    8049759 <phase_4+0x72>
 804972a:	8b 45 ec             	mov    -0x14(%ebp),%eax // 跳转到这 仍然把第一个数放到eax
 804972d:	83 ec 04             	sub    $0x4,%esp // 分配4字节空间
 8049730:	6a 30                	push   $0x30 // 参数3: 48
 8049732:	6a 04                	push   $0x4 // 参数2: 4
 8049734:	50                   	push   %eax // 参数1: eax(输入的第一个数x)
 8049735:	e8 33 ff ff ff       	call   804966d <func4> // 用这3个参数调用fun4递归函数
 804973a:	83 c4 10             	add    $0x10,%esp // 参数退栈
 804973d:	89 45 f0             	mov    %eax,-0x10(%ebp) // 返回值放到-0x10(%ebp)
 8049740:	8b 45 e8             	mov    -0x18(%ebp),%eax // ebp-0x18放的是输入的第二个数y, 放入eax中
 8049743:	39 45 f0             	cmp    %eax,-0x10(%ebp) // 比较第二个数和返回值-0x10(%ebp)
 8049746:	74 0c                	je     8049754 <phase_4+0x6d> // 相等就跳过爆炸
 8049748:	e8 f2 06 00 00       	call   8049e3f <explode_bomb>
 804974d:	b8 00 00 00 00       	mov    $0x0,%eax
 8049752:	eb 05                	jmp    8049759 <phase_4+0x72>
 8049754:	b8 01 00 00 00       	mov    $0x1,%eax
 8049759:	c9                   	leave
 804975a:	c3                   	ret
// 指针
0804975b <phase_5>:
 804975b:	55                   	push   %ebp
 804975c:	89 e5                	mov    %esp,%ebp
 804975e:	83 ec 28             	sub    $0x28,%esp
 8049761:	8d 45 e4             	lea    -0x1c(%ebp),%eax // scanf存的第二个数地址y
 8049764:	50                   	push   %eax // 作为参数入栈
 8049765:	8d 45 e8             	lea    -0x18(%ebp),%eax // scanf存的第一个数地址x
 8049768:	50                   	push   %eax // 作为参数入栈
 8049769:	68 bd a1 04 08       	push   $0x804a1bd // scanf格式参数
 804976e:	ff 75 08             	push   0x8(%ebp) // 输入字符串压栈
 8049771:	e8 5a f9 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 8049776:	83 c4 10             	add    $0x10,%esp // 参数退栈
 8049779:	89 45 ec             	mov    %eax,-0x14(%ebp) // eax返回值
 804977c:	83 7d ec 01          	cmpl   $0x1,-0x14(%ebp) // 比较返回值和1
 8049780:	7f 0c                	jg     804978e <phase_5+0x33> // 如果返回值大于1就跳过 jump if greater
 8049782:	e8 b8 06 00 00       	call   8049e3f <explode_bomb>
 8049787:	b8 00 00 00 00       	mov    $0x0,%eax
 804978c:	eb 57                	jmp    80497e5 <phase_5+0x8a>
 804978e:	8b 45 e8             	mov    -0x18(%ebp),%eax // 跳到这里, 把输入的第一个数(x)放到eax
 8049791:	83 e0 0f             	and    $0xf,%eax // 15和eax进行与操作, 只保留低4位(0-15)
 8049794:	89 45 e8             	mov    %eax,-0x18(%ebp) // 把与完的数存回ebp-0x18
 8049797:	c7 45 f4 00 00 00 00 	movl   $0x0,-0xc(%ebp) // 计数器count = 0
 804979e:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp) // 累加器sum = 0
 80497a5:	eb 17                	jmp    80497be <phase_5+0x63> // 跳到下面检查循环条件
 80497a7:	83 45 f4 01          	addl   $0x1,-0xc(%ebp) // x不等于15跳到这里, 计数器count+1
 80497ab:	8b 45 e8             	mov    -0x18(%ebp),%eax // 把第一个数x取出来放到eax
 80497ae:	8b 04 85 e0 c1 04 08 	mov    0x804c1e0(,%eax,4),%eax // x作为下标, eax = A[eax], 取出A数组里的值
 80497b5:	89 45 e8             	mov    %eax,-0x18(%ebp) // 把值更新回第一个数x
 80497b8:	8b 45 e8             	mov    -0x18(%ebp),%eax // 在把第一个数x取出来放到eax
 80497bb:	01 45 f0             	add    %eax,-0x10(%ebp) // sum += x, 累加数组里的值
 80497be:	8b 45 e8             	mov    -0x18(%ebp),%eax // 上面跳转到这里, 把第一个数x取出来放到eax
 80497c1:	83 f8 0f             	cmp    $0xf,%eax // 看eax(x)和15的关系
 80497c4:	75 e1                	jne    80497a7 <phase_5+0x4c> // 如果x不等于15就跳回去
 80497c6:	83 7d f4 07          	cmpl   $0x7,-0xc(%ebp) // x等于15, 看count与7的关系
 80497ca:	75 08                	jne    80497d4 <phase_5+0x79> // count不等于7就爆炸
 80497cc:	8b 45 e4             	mov    -0x1c(%ebp),%eax // 把输入的第二个值y拿出来放到eax
 80497cf:	39 45 f0             	cmp    %eax,-0x10(%ebp) // 看eax(y)与sum的关系
 80497d2:	74 0c                	je     80497e0 <phase_5+0x85> // 相等就跳过爆炸
 80497d4:	e8 66 06 00 00       	call   8049e3f <explode_bomb>
 80497d9:	b8 00 00 00 00       	mov    $0x0,%eax
 80497de:	eb 05                	jmp    80497e5 <phase_5+0x8a>
 80497e0:	b8 01 00 00 00       	mov    $0x1,%eax
 80497e5:	c9                   	leave
 80497e6:	c3                   	ret

080497e7 <phase_6>:
 80497e7:	55                   	push   %ebp
 80497e8:	89 e5                	mov    %esp,%ebp
 80497ea:	83 ec 58             	sub    $0x58,%esp
 80497ed:	c7 45 e8 1c c1 04 08 	movl   $0x804c11c,-0x18(%ebp) // 链表首地址放在ebp-0x18
 80497f4:	83 ec 04             	sub    $0x4,%esp
 80497f7:	6a 07                	push   $0x7 // 参数, 代表读7个整数
 80497f9:	8d 45 cc             	lea    -0x34(%ebp),%eax // ebp-0x34的地址作为参数, 存输入的7个数
 80497fc:	50                   	push   %eax 
 80497fd:	ff 75 08             	push   0x8(%ebp) // 用户输入字符串指针, 作为参数入栈
 8049800:	e8 18 03 00 00       	call   8049b1d <read_n_numbers> // 调用函数分离数字
 8049805:	83 c4 10             	add    $0x10,%esp // 参数退栈
 8049808:	85 c0                	test   %eax,%eax // 检查返回值是不是0
 804980a:	75 0a                	jne    8049816 <phase_6+0x2f> // 不是0就跳转
 804980c:	b8 00 00 00 00       	mov    $0x0,%eax
 8049811:	e9 37 01 00 00       	jmp    804994d <phase_6+0x166> // 是0就退出
 8049816:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp) // 不是0跳转到这里, -0x10(%ebp)存临时变量count计数器
 804981d:	eb 60                	jmp    804987f <phase_6+0x98> // 检查循环条件
 804981f:	8b 45 f0             	mov    -0x10(%ebp),%eax // count<=6, 把count计数器的值放到eax
 8049822:	8b 44 85 cc          	mov    -0x34(%ebp,%eax,4),%eax // ebp-0x34是输入7个数的首地址, eax = A[eax/count]
 8049826:	85 c0                	test   %eax,%eax // 看eax是不是0
 8049828:	7e 0c                	jle    8049836 <phase_6+0x4f> // eax<=0则跳转到爆炸, 所以输入的数>0
 804982a:	8b 45 f0             	mov    -0x10(%ebp),%eax // count计数器的值放到eax
 804982d:	8b 44 85 cc          	mov    -0x34(%ebp,%eax,4),%eax // eax = A[eax/count] // 输入的第count个数放到eax
 8049831:	83 f8 07             	cmp    $0x7,%eax // eax和7的关系
 8049834:	7e 0f                	jle    8049845 <phase_6+0x5e> // eax <= 7就跳过下面的爆炸, 所以输入的数应该0-7
 8049836:	e8 04 06 00 00       	call   8049e3f <explode_bomb>
 804983b:	b8 00 00 00 00       	mov    $0x0,%eax
 8049840:	e9 08 01 00 00       	jmp    804994d <phase_6+0x166>
 8049845:	8b 45 f0             	mov    -0x10(%ebp),%eax // 跳转到这里, count的值放到eax(i)
 8049848:	83 c0 01             	add    $0x1,%eax // eax = eax + 1 = count + 1
 804984b:	89 45 ec             	mov    %eax,-0x14(%ebp) // eax的值放到ebp-0x14 = count+1(j)
 804984e:	eb 25                	jmp    8049875 <phase_6+0x8e> // 跳转
 8049850:	8b 45 f0             	mov    -0x10(%ebp),%eax // count+1<=6, 跳转回来, eax = count
 8049853:	8b 54 85 cc          	mov    -0x34(%ebp,%eax,4),%edx // edx = A[eax/count/i] 
 8049857:	8b 45 ec             	mov    -0x14(%ebp),%eax // ebp-0x14存的是count+1, eax = count+1
 804985a:	8b 44 85 cc          	mov    -0x34(%ebp,%eax,4),%eax // eax = A[eax/count+1/j]
 804985e:	39 c2                	cmp    %eax,%edx // 比较数组前后相邻的数
 8049860:	75 0f                	jne    8049871 <phase_6+0x8a> // 不相等就跳转, 相等就爆炸
 8049862:	e8 d8 05 00 00       	call   8049e3f <explode_bomb>
 8049867:	b8 00 00 00 00       	mov    $0x0,%eax
 804986c:	e9 dc 00 00 00       	jmp    804994d <phase_6+0x166>
 8049871:	83 45 ec 01          	addl   $0x1,-0x14(%ebp) // j+1
 8049875:	83 7d ec 06          	cmpl   $0x6,-0x14(%ebp) // 跳到这里, 看count+1(j)与6的关系
 8049879:	7e d5                	jle    8049850 <phase_6+0x69> // count+1(j)<=6则跳转回去
 804987b:	83 45 f0 01          	addl   $0x1,-0x10(%ebp) // count+1(j)>6, 把count(i)+1
 804987f:	83 7d f0 06          	cmpl   $0x6,-0x10(%ebp) // 检查循环条件, count和6的关系
 8049883:	7e 9a                	jle    804981f <phase_6+0x38> // 如果count<=6就跳转回去
 8049885:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp) // 上面确认了相邻两个数不相等, 重置count(i) = 0
 804988c:	eb 36                	jmp    80498c4 <phase_6+0xdd> // 检查循环条件
 804988e:	8b 45 e8             	mov    -0x18(%ebp),%eax // ebp-0x18, 链表首地址, 存到eax
 8049891:	89 45 f4             	mov    %eax,-0xc(%ebp) // 又存到ebp-0xc
 8049894:	c7 45 ec 01 00 00 00 	movl   $0x1,-0x14(%ebp) // 一个变量j = 1, 存在ebp-0x14
 804989b:	eb 0d                	jmp    80498aa <phase_6+0xc3> 
 804989d:	8b 45 f4             	mov    -0xc(%ebp),%eax // 链表首地址放到eax(下面跳到这里)
 80498a0:	8b 40 08             	mov    0x8(%eax),%eax // 把首地址向高位移动, 即eax存下一个结点的地址
 80498a3:	89 45 f4             	mov    %eax,-0xc(%ebp) // 把下一个结点的地址存到ebp-0xc
 80498a6:	83 45 ec 01          	addl   $0x1,-0x14(%ebp) // j+1
 80498aa:	8b 45 f0             	mov    -0x10(%ebp),%eax // 把i存到eax
 80498ad:	8b 44 85 cc          	mov    -0x34(%ebp,%eax,4),%eax // eax = A[i]
 80498b1:	39 45 ec             	cmp    %eax,-0x14(%ebp) // 比较eax(A[i])和j, 输入的数, 在链表中找到下标为A[i]的数
 80498b4:	7c e7                	jl     804989d <phase_6+0xb6> // j < A[i], 跳转到上面
 80498b6:	8b 45 f0             	mov    -0x10(%ebp),%eax // i的值放到eax
 80498b9:	8b 55 f4             	mov    -0xc(%ebp),%edx // 链表首地址放到edx
 80498bc:	89 54 85 b0          	mov    %edx,-0x50(%ebp,%eax,4) // 链表首地址存到ebp-0x50
 80498c0:	83 45 f0 01          	addl   $0x1,-0x10(%ebp) // i+1
 80498c4:	83 7d f0 06          	cmpl   $0x6,-0x10(%ebp) // 检查循环条件, i与6的关系
 80498c8:	7e c4                	jle    804988e <phase_6+0xa7> i如果<=6, 就跳转回去
 80498ca:	8b 45 b0             	mov    -0x50(%ebp),%eax // 
 80498cd:	89 45 e8             	mov    %eax,-0x18(%ebp)
 80498d0:	8b 45 e8             	mov    -0x18(%ebp),%eax
 80498d3:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80498d6:	c7 45 f0 01 00 00 00 	movl   $0x1,-0x10(%ebp)
 80498dd:	eb 1a                	jmp    80498f9 <phase_6+0x112>
 80498df:	8b 45 f0             	mov    -0x10(%ebp),%eax
 80498e2:	8b 54 85 b0          	mov    -0x50(%ebp,%eax,4),%edx
 80498e6:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80498e9:	89 50 08             	mov    %edx,0x8(%eax)
 80498ec:	8b 45 f4             	mov    -0xc(%ebp),%eax
 80498ef:	8b 40 08             	mov    0x8(%eax),%eax
 80498f2:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80498f5:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 80498f9:	83 7d f0 06          	cmpl   $0x6,-0x10(%ebp)
 80498fd:	7e e0                	jle    80498df <phase_6+0xf8>
 80498ff:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049902:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
 8049909:	8b 45 e8             	mov    -0x18(%ebp),%eax
 804990c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804990f:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8049916:	eb 2a                	jmp    8049942 <phase_6+0x15b>
 8049918:	8b 45 f4             	mov    -0xc(%ebp),%eax
 804991b:	8b 10                	mov    (%eax),%edx
 804991d:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049920:	8b 40 08             	mov    0x8(%eax),%eax
 8049923:	8b 00                	mov    (%eax),%eax
 8049925:	39 c2                	cmp    %eax,%edx
 8049927:	7e 0c                	jle    8049935 <phase_6+0x14e>
 8049929:	e8 11 05 00 00       	call   8049e3f <explode_bomb>
 804992e:	b8 00 00 00 00       	mov    $0x0,%eax
 8049933:	eb 18                	jmp    804994d <phase_6+0x166>
 8049935:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049938:	8b 40 08             	mov    0x8(%eax),%eax
 804993b:	89 45 f4             	mov    %eax,-0xc(%ebp)
 804993e:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8049942:	83 7d f0 05          	cmpl   $0x5,-0x10(%ebp)
 8049946:	7e d0                	jle    8049918 <phase_6+0x131>
 8049948:	b8 01 00 00 00       	mov    $0x1,%eax
 804994d:	c9                   	leave
 804994e:	c3                   	ret

0804994f <fun7>:
 804994f:	55                   	push   %ebp
 8049950:	89 e5                	mov    %esp,%ebp
 8049952:	83 ec 08             	sub    $0x8,%esp
 8049955:	83 7d 08 00          	cmpl   $0x0,0x8(%ebp)
 8049959:	75 07                	jne    8049962 <fun7+0x13>
 804995b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 8049960:	eb 4e                	jmp    80499b0 <fun7+0x61>
 8049962:	8b 45 08             	mov    0x8(%ebp),%eax
 8049965:	8b 00                	mov    (%eax),%eax
 8049967:	39 45 0c             	cmp    %eax,0xc(%ebp)
 804996a:	7d 19                	jge    8049985 <fun7+0x36>
 804996c:	8b 45 08             	mov    0x8(%ebp),%eax
 804996f:	8b 40 04             	mov    0x4(%eax),%eax
 8049972:	83 ec 08             	sub    $0x8,%esp
 8049975:	ff 75 0c             	push   0xc(%ebp)
 8049978:	50                   	push   %eax
 8049979:	e8 d1 ff ff ff       	call   804994f <fun7>
 804997e:	83 c4 10             	add    $0x10,%esp
 8049981:	01 c0                	add    %eax,%eax
 8049983:	eb 2b                	jmp    80499b0 <fun7+0x61>
 8049985:	8b 45 08             	mov    0x8(%ebp),%eax
 8049988:	8b 00                	mov    (%eax),%eax
 804998a:	39 45 0c             	cmp    %eax,0xc(%ebp)
 804998d:	75 07                	jne    8049996 <fun7+0x47>
 804998f:	b8 00 00 00 00       	mov    $0x0,%eax
 8049994:	eb 1a                	jmp    80499b0 <fun7+0x61>
 8049996:	8b 45 08             	mov    0x8(%ebp),%eax
 8049999:	8b 40 08             	mov    0x8(%eax),%eax
 804999c:	83 ec 08             	sub    $0x8,%esp
 804999f:	ff 75 0c             	push   0xc(%ebp)
 80499a2:	50                   	push   %eax
 80499a3:	e8 a7 ff ff ff       	call   804994f <fun7>
 80499a8:	83 c4 10             	add    $0x10,%esp
 80499ab:	01 c0                	add    %eax,%eax
 80499ad:	83 c0 01             	add    $0x1,%eax
 80499b0:	c9                   	leave
 80499b1:	c3                   	ret

080499b2 <secret_phase>:
 80499b2:	55                   	push   %ebp
 80499b3:	89 e5                	mov    %esp,%ebp
 80499b5:	83 ec 18             	sub    $0x18,%esp
 80499b8:	e8 3f 03 00 00       	call   8049cfc <read_line>
 80499bd:	89 45 f4             	mov    %eax,-0xc(%ebp)
 80499c0:	83 ec 0c             	sub    $0xc,%esp
 80499c3:	ff 75 f4             	push   -0xc(%ebp)
 80499c6:	e8 35 f7 ff ff       	call   8049100 <atoi@plt>
 80499cb:	83 c4 10             	add    $0x10,%esp
 80499ce:	89 45 f0             	mov    %eax,-0x10(%ebp)
 80499d1:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 80499d5:	7e 09                	jle    80499e0 <secret_phase+0x2e>
 80499d7:	81 7d f0 e9 03 00 00 	cmpl   $0x3e9,-0x10(%ebp)
 80499de:	7e 0c                	jle    80499ec <secret_phase+0x3a>
 80499e0:	e8 5a 04 00 00       	call   8049e3f <explode_bomb>
 80499e5:	b8 00 00 00 00       	mov    $0x0,%eax
 80499ea:	eb 42                	jmp    8049a2e <secret_phase+0x7c>
 80499ec:	83 ec 08             	sub    $0x8,%esp
 80499ef:	ff 75 f0             	push   -0x10(%ebp)
 80499f2:	68 d0 c1 04 08       	push   $0x804c1d0
 80499f7:	e8 53 ff ff ff       	call   804994f <fun7>
 80499fc:	83 c4 10             	add    $0x10,%esp
 80499ff:	89 45 ec             	mov    %eax,-0x14(%ebp)
 8049a02:	83 7d ec 01          	cmpl   $0x1,-0x14(%ebp)
 8049a06:	74 0c                	je     8049a14 <secret_phase+0x62>
 8049a08:	e8 32 04 00 00       	call   8049e3f <explode_bomb>
 8049a0d:	b8 00 00 00 00       	mov    $0x0,%eax
 8049a12:	eb 1a                	jmp    8049a2e <secret_phase+0x7c>
 8049a14:	83 ec 0c             	sub    $0xc,%esp
 8049a17:	68 ec a1 04 08       	push   $0x804a1ec
 8049a1c:	e8 6f f6 ff ff       	call   8049090 <puts@plt>
 8049a21:	83 c4 10             	add    $0x10,%esp
 8049a24:	e8 3f 04 00 00       	call   8049e68 <phase_defused>
 8049a29:	b8 01 00 00 00       	mov    $0x1,%eax
 8049a2e:	c9                   	leave
 8049a2f:	c3                   	ret

08049a30 <sig_handler>:
 8049a30:	55                   	push   %ebp
 8049a31:	89 e5                	mov    %esp,%ebp
 8049a33:	83 ec 08             	sub    $0x8,%esp
 8049a36:	83 ec 0c             	sub    $0xc,%esp
 8049a39:	68 14 a2 04 08       	push   $0x804a214
 8049a3e:	e8 4d f6 ff ff       	call   8049090 <puts@plt>
 8049a43:	83 c4 10             	add    $0x10,%esp
 8049a46:	83 ec 0c             	sub    $0xc,%esp
 8049a49:	6a 03                	push   $0x3
 8049a4b:	e8 20 f6 ff ff       	call   8049070 <sleep@plt>
 8049a50:	83 c4 10             	add    $0x10,%esp
 8049a53:	83 ec 0c             	sub    $0xc,%esp
 8049a56:	68 4c a2 04 08       	push   $0x804a24c
 8049a5b:	e8 d0 f5 ff ff       	call   8049030 <printf@plt>
 8049a60:	83 c4 10             	add    $0x10,%esp
 8049a63:	a1 24 c2 04 08       	mov    0x804c224,%eax
 8049a68:	83 ec 0c             	sub    $0xc,%esp
 8049a6b:	50                   	push   %eax
 8049a6c:	e8 cf f5 ff ff       	call   8049040 <fflush@plt>
 8049a71:	83 c4 10             	add    $0x10,%esp
 8049a74:	83 ec 0c             	sub    $0xc,%esp
 8049a77:	6a 01                	push   $0x1
 8049a79:	e8 f2 f5 ff ff       	call   8049070 <sleep@plt>
 8049a7e:	83 c4 10             	add    $0x10,%esp
 8049a81:	83 ec 0c             	sub    $0xc,%esp
 8049a84:	68 54 a2 04 08       	push   $0x804a254
 8049a89:	e8 02 f6 ff ff       	call   8049090 <puts@plt>
 8049a8e:	83 c4 10             	add    $0x10,%esp
 8049a91:	83 ec 0c             	sub    $0xc,%esp
 8049a94:	6a 10                	push   $0x10
 8049a96:	e8 05 f6 ff ff       	call   80490a0 <exit@plt>

08049a9b <invalid_phase>:
 8049a9b:	55                   	push   %ebp
 8049a9c:	89 e5                	mov    %esp,%ebp
 8049a9e:	83 ec 08             	sub    $0x8,%esp
 8049aa1:	83 ec 08             	sub    $0x8,%esp
 8049aa4:	ff 75 08             	push   0x8(%ebp)
 8049aa7:	68 5c a2 04 08       	push   $0x804a25c
 8049aac:	e8 7f f5 ff ff       	call   8049030 <printf@plt>
 8049ab1:	83 c4 10             	add    $0x10,%esp
 8049ab4:	83 ec 0c             	sub    $0xc,%esp
 8049ab7:	6a 08                	push   $0x8
 8049ab9:	e8 e2 f5 ff ff       	call   80490a0 <exit@plt>

08049abe <read_six_numbers>:
 8049abe:	55                   	push   %ebp
 8049abf:	89 e5                	mov    %esp,%ebp
 8049ac1:	56                   	push   %esi
 8049ac2:	53                   	push   %ebx
 8049ac3:	83 ec 10             	sub    $0x10,%esp
 8049ac6:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049ac9:	8d 70 14             	lea    0x14(%eax),%esi
 8049acc:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049acf:	8d 58 10             	lea    0x10(%eax),%ebx
 8049ad2:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049ad5:	8d 48 0c             	lea    0xc(%eax),%ecx
 8049ad8:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049adb:	8d 50 08             	lea    0x8(%eax),%edx
 8049ade:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049ae1:	83 c0 04             	add    $0x4,%eax
 8049ae4:	56                   	push   %esi
 8049ae5:	53                   	push   %ebx
 8049ae6:	51                   	push   %ecx
 8049ae7:	52                   	push   %edx
 8049ae8:	50                   	push   %eax
 8049ae9:	ff 75 0c             	push   0xc(%ebp)
 8049aec:	68 6d a2 04 08       	push   $0x804a26d
 8049af1:	ff 75 08             	push   0x8(%ebp)
 8049af4:	e8 d7 f5 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 8049af9:	83 c4 20             	add    $0x20,%esp
 8049afc:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049aff:	83 7d f4 05          	cmpl   $0x5,-0xc(%ebp)
 8049b03:	7f 0c                	jg     8049b11 <read_six_numbers+0x53>
 8049b05:	e8 35 03 00 00       	call   8049e3f <explode_bomb>
 8049b0a:	b8 00 00 00 00       	mov    $0x0,%eax
 8049b0f:	eb 05                	jmp    8049b16 <read_six_numbers+0x58>
 8049b11:	b8 01 00 00 00       	mov    $0x1,%eax
 8049b16:	8d 65 f8             	lea    -0x8(%ebp),%esp
 8049b19:	5b                   	pop    %ebx
 8049b1a:	5e                   	pop    %esi
 8049b1b:	5d                   	pop    %ebp
 8049b1c:	c3                   	ret

08049b1d <read_n_numbers>:
 8049b1d:	55                   	push   %ebp
 8049b1e:	89 e5                	mov    %esp,%ebp
 8049b20:	83 ec 18             	sub    $0x18,%esp
 8049b23:	c7 45 f0 00 00 00 00 	movl   $0x0,-0x10(%ebp)
 8049b2a:	eb 70                	jmp    8049b9c <read_n_numbers+0x7f>
 8049b2c:	83 7d f0 00          	cmpl   $0x0,-0x10(%ebp)
 8049b30:	75 18                	jne    8049b4a <read_n_numbers+0x2d>
 8049b32:	83 ec 08             	sub    $0x8,%esp
 8049b35:	68 7f a2 04 08       	push   $0x804a27f
 8049b3a:	ff 75 08             	push   0x8(%ebp)
 8049b3d:	e8 ae f5 ff ff       	call   80490f0 <strtok@plt>
 8049b42:	83 c4 10             	add    $0x10,%esp
 8049b45:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049b48:	eb 15                	jmp    8049b5f <read_n_numbers+0x42>
 8049b4a:	83 ec 08             	sub    $0x8,%esp
 8049b4d:	68 7f a2 04 08       	push   $0x804a27f
 8049b52:	6a 00                	push   $0x0
 8049b54:	e8 97 f5 ff ff       	call   80490f0 <strtok@plt>
 8049b59:	83 c4 10             	add    $0x10,%esp
 8049b5c:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049b5f:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049b63:	74 27                	je     8049b8c <read_n_numbers+0x6f>
 8049b65:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049b68:	8d 14 85 00 00 00 00 	lea    0x0(,%eax,4),%edx
 8049b6f:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049b72:	01 d0                	add    %edx,%eax
 8049b74:	83 ec 04             	sub    $0x4,%esp
 8049b77:	50                   	push   %eax
 8049b78:	68 83 a2 04 08       	push   $0x804a283
 8049b7d:	ff 75 f4             	push   -0xc(%ebp)
 8049b80:	e8 4b f5 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 8049b85:	83 c4 10             	add    $0x10,%esp
 8049b88:	85 c0                	test   %eax,%eax
 8049b8a:	7f 0c                	jg     8049b98 <read_n_numbers+0x7b>
 8049b8c:	e8 ae 02 00 00       	call   8049e3f <explode_bomb>
 8049b91:	b8 00 00 00 00       	mov    $0x0,%eax
 8049b96:	eb 11                	jmp    8049ba9 <read_n_numbers+0x8c>
 8049b98:	83 45 f0 01          	addl   $0x1,-0x10(%ebp)
 8049b9c:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049b9f:	3b 45 10             	cmp    0x10(%ebp),%eax
 8049ba2:	7c 88                	jl     8049b2c <read_n_numbers+0xf>
 8049ba4:	b8 01 00 00 00       	mov    $0x1,%eax
 8049ba9:	c9                   	leave
 8049baa:	c3                   	ret

08049bab <string_length>:
 8049bab:	55                   	push   %ebp
 8049bac:	89 e5                	mov    %esp,%ebp
 8049bae:	83 ec 10             	sub    $0x10,%esp
 8049bb1:	8b 45 08             	mov    0x8(%ebp),%eax
 8049bb4:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8049bb7:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%ebp)
 8049bbe:	eb 08                	jmp    8049bc8 <string_length+0x1d>
 8049bc0:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
 8049bc4:	83 45 fc 01          	addl   $0x1,-0x4(%ebp)
 8049bc8:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8049bcb:	0f b6 00             	movzbl (%eax),%eax
 8049bce:	84 c0                	test   %al,%al
 8049bd0:	75 ee                	jne    8049bc0 <string_length+0x15>
 8049bd2:	8b 45 fc             	mov    -0x4(%ebp),%eax
 8049bd5:	c9                   	leave
 8049bd6:	c3                   	ret

08049bd7 <strings_not_equal>:
 8049bd7:	55                   	push   %ebp
 8049bd8:	89 e5                	mov    %esp,%ebp
 8049bda:	53                   	push   %ebx
 8049bdb:	83 ec 10             	sub    $0x10,%esp
 8049bde:	ff 75 08             	push   0x8(%ebp)
 8049be1:	e8 c5 ff ff ff       	call   8049bab <string_length>
 8049be6:	83 c4 04             	add    $0x4,%esp
 8049be9:	89 c3                	mov    %eax,%ebx
 8049beb:	ff 75 0c             	push   0xc(%ebp)
 8049bee:	e8 b8 ff ff ff       	call   8049bab <string_length>
 8049bf3:	83 c4 04             	add    $0x4,%esp
 8049bf6:	39 c3                	cmp    %eax,%ebx
 8049bf8:	74 07                	je     8049c01 <strings_not_equal+0x2a>
 8049bfa:	b8 01 00 00 00       	mov    $0x1,%eax
 8049bff:	eb 3c                	jmp    8049c3d <strings_not_equal+0x66>
 8049c01:	8b 45 08             	mov    0x8(%ebp),%eax
 8049c04:	89 45 f8             	mov    %eax,-0x8(%ebp)
 8049c07:	8b 45 0c             	mov    0xc(%ebp),%eax
 8049c0a:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049c0d:	eb 1f                	jmp    8049c2e <strings_not_equal+0x57>
 8049c0f:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8049c12:	0f b6 10             	movzbl (%eax),%edx
 8049c15:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049c18:	0f b6 00             	movzbl (%eax),%eax
 8049c1b:	38 c2                	cmp    %al,%dl
 8049c1d:	74 07                	je     8049c26 <strings_not_equal+0x4f>
 8049c1f:	b8 01 00 00 00       	mov    $0x1,%eax
 8049c24:	eb 17                	jmp    8049c3d <strings_not_equal+0x66>
 8049c26:	83 45 f8 01          	addl   $0x1,-0x8(%ebp)
 8049c2a:	83 45 f4 01          	addl   $0x1,-0xc(%ebp)
 8049c2e:	8b 45 f8             	mov    -0x8(%ebp),%eax
 8049c31:	0f b6 00             	movzbl (%eax),%eax
 8049c34:	84 c0                	test   %al,%al
 8049c36:	75 d7                	jne    8049c0f <strings_not_equal+0x38>
 8049c38:	b8 00 00 00 00       	mov    $0x0,%eax
 8049c3d:	8b 5d fc             	mov    -0x4(%ebp),%ebx
 8049c40:	c9                   	leave
 8049c41:	c3                   	ret

08049c42 <initialize_bomb>:
 8049c42:	55                   	push   %ebp
 8049c43:	89 e5                	mov    %esp,%ebp
 8049c45:	83 ec 08             	sub    $0x8,%esp
 8049c48:	83 ec 08             	sub    $0x8,%esp
 8049c4b:	68 30 9a 04 08       	push   $0x8049a30
 8049c50:	6a 02                	push   $0x2
 8049c52:	e8 09 f4 ff ff       	call   8049060 <signal@plt>
 8049c57:	83 c4 10             	add    $0x10,%esp
 8049c5a:	90                   	nop
 8049c5b:	c9                   	leave
 8049c5c:	c3                   	ret

08049c5d <initialize_bomb_solve>:
 8049c5d:	55                   	push   %ebp
 8049c5e:	89 e5                	mov    %esp,%ebp
 8049c60:	90                   	nop
 8049c61:	5d                   	pop    %ebp
 8049c62:	c3                   	ret

08049c63 <blank_line>:
 8049c63:	55                   	push   %ebp
 8049c64:	89 e5                	mov    %esp,%ebp
 8049c66:	83 ec 08             	sub    $0x8,%esp
 8049c69:	eb 30                	jmp    8049c9b <blank_line+0x38>
 8049c6b:	e8 a0 f4 ff ff       	call   8049110 <__ctype_b_loc@plt>
 8049c70:	8b 08                	mov    (%eax),%ecx
 8049c72:	8b 45 08             	mov    0x8(%ebp),%eax
 8049c75:	8d 50 01             	lea    0x1(%eax),%edx
 8049c78:	89 55 08             	mov    %edx,0x8(%ebp)
 8049c7b:	0f b6 00             	movzbl (%eax),%eax
 8049c7e:	0f be c0             	movsbl %al,%eax
 8049c81:	01 c0                	add    %eax,%eax
 8049c83:	01 c8                	add    %ecx,%eax
 8049c85:	0f b7 00             	movzwl (%eax),%eax
 8049c88:	0f b7 c0             	movzwl %ax,%eax
 8049c8b:	25 00 20 00 00       	and    $0x2000,%eax
 8049c90:	85 c0                	test   %eax,%eax
 8049c92:	75 07                	jne    8049c9b <blank_line+0x38>
 8049c94:	b8 00 00 00 00       	mov    $0x0,%eax
 8049c99:	eb 0f                	jmp    8049caa <blank_line+0x47>
 8049c9b:	8b 45 08             	mov    0x8(%ebp),%eax
 8049c9e:	0f b6 00             	movzbl (%eax),%eax
 8049ca1:	84 c0                	test   %al,%al
 8049ca3:	75 c6                	jne    8049c6b <blank_line+0x8>
 8049ca5:	b8 01 00 00 00       	mov    $0x1,%eax
 8049caa:	c9                   	leave
 8049cab:	c3                   	ret

08049cac <skip>:
 8049cac:	55                   	push   %ebp
 8049cad:	89 e5                	mov    %esp,%ebp
 8049caf:	83 ec 18             	sub    $0x18,%esp
 8049cb2:	8b 0d 30 c2 04 08    	mov    0x804c230,%ecx
 8049cb8:	8b 15 2c c2 04 08    	mov    0x804c22c,%edx
 8049cbe:	89 d0                	mov    %edx,%eax
 8049cc0:	c1 e0 02             	shl    $0x2,%eax
 8049cc3:	01 d0                	add    %edx,%eax
 8049cc5:	c1 e0 04             	shl    $0x4,%eax
 8049cc8:	05 40 c2 04 08       	add    $0x804c240,%eax
 8049ccd:	83 ec 04             	sub    $0x4,%esp
 8049cd0:	51                   	push   %ecx
 8049cd1:	6a 50                	push   $0x50
 8049cd3:	50                   	push   %eax
 8049cd4:	e8 77 f3 ff ff       	call   8049050 <fgets@plt>
 8049cd9:	83 c4 10             	add    $0x10,%esp
 8049cdc:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049cdf:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049ce3:	74 12                	je     8049cf7 <skip+0x4b>
 8049ce5:	83 ec 0c             	sub    $0xc,%esp
 8049ce8:	ff 75 f4             	push   -0xc(%ebp)
 8049ceb:	e8 73 ff ff ff       	call   8049c63 <blank_line>
 8049cf0:	83 c4 10             	add    $0x10,%esp
 8049cf3:	85 c0                	test   %eax,%eax
 8049cf5:	75 bb                	jne    8049cb2 <skip+0x6>
 8049cf7:	8b 45 f4             	mov    -0xc(%ebp),%eax
 8049cfa:	c9                   	leave
 8049cfb:	c3                   	ret

08049cfc <read_line>:
 8049cfc:	55                   	push   %ebp
 8049cfd:	89 e5                	mov    %esp,%ebp
 8049cff:	83 ec 18             	sub    $0x18,%esp
 8049d02:	e8 a5 ff ff ff       	call   8049cac <skip>
 8049d07:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049d0a:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049d0e:	75 79                	jne    8049d89 <read_line+0x8d>
 8049d10:	8b 15 30 c2 04 08    	mov    0x804c230,%edx
 8049d16:	a1 20 c2 04 08       	mov    0x804c220,%eax
 8049d1b:	39 c2                	cmp    %eax,%edx
 8049d1d:	75 1a                	jne    8049d39 <read_line+0x3d>
 8049d1f:	83 ec 0c             	sub    $0xc,%esp
 8049d22:	68 86 a2 04 08       	push   $0x804a286
 8049d27:	e8 64 f3 ff ff       	call   8049090 <puts@plt>
 8049d2c:	83 c4 10             	add    $0x10,%esp
 8049d2f:	83 ec 0c             	sub    $0xc,%esp
 8049d32:	6a 08                	push   $0x8
 8049d34:	e8 67 f3 ff ff       	call   80490a0 <exit@plt>
 8049d39:	83 ec 0c             	sub    $0xc,%esp
 8049d3c:	68 a4 a2 04 08       	push   $0x804a2a4
 8049d41:	e8 3a f3 ff ff       	call   8049080 <getenv@plt>
 8049d46:	83 c4 10             	add    $0x10,%esp
 8049d49:	85 c0                	test   %eax,%eax
 8049d4b:	74 0a                	je     8049d57 <read_line+0x5b>
 8049d4d:	83 ec 0c             	sub    $0xc,%esp
 8049d50:	6a 00                	push   $0x0
 8049d52:	e8 49 f3 ff ff       	call   80490a0 <exit@plt>
 8049d57:	a1 20 c2 04 08       	mov    0x804c220,%eax
 8049d5c:	a3 30 c2 04 08       	mov    %eax,0x804c230
 8049d61:	e8 46 ff ff ff       	call   8049cac <skip>
 8049d66:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049d69:	83 7d f4 00          	cmpl   $0x0,-0xc(%ebp)
 8049d6d:	75 1a                	jne    8049d89 <read_line+0x8d>
 8049d6f:	83 ec 0c             	sub    $0xc,%esp
 8049d72:	68 86 a2 04 08       	push   $0x804a286
 8049d77:	e8 14 f3 ff ff       	call   8049090 <puts@plt>
 8049d7c:	83 c4 10             	add    $0x10,%esp
 8049d7f:	83 ec 0c             	sub    $0xc,%esp
 8049d82:	6a 00                	push   $0x0
 8049d84:	e8 17 f3 ff ff       	call   80490a0 <exit@plt>
 8049d89:	8b 15 2c c2 04 08    	mov    0x804c22c,%edx
 8049d8f:	89 d0                	mov    %edx,%eax
 8049d91:	c1 e0 02             	shl    $0x2,%eax
 8049d94:	01 d0                	add    %edx,%eax
 8049d96:	c1 e0 04             	shl    $0x4,%eax
 8049d99:	05 40 c2 04 08       	add    $0x804c240,%eax
 8049d9e:	83 ec 0c             	sub    $0xc,%esp
 8049da1:	50                   	push   %eax
 8049da2:	e8 09 f3 ff ff       	call   80490b0 <strlen@plt>
 8049da7:	83 c4 10             	add    $0x10,%esp
 8049daa:	89 45 f0             	mov    %eax,-0x10(%ebp)
 8049dad:	83 7d f0 4e          	cmpl   $0x4e,-0x10(%ebp)
 8049db1:	7e 4d                	jle    8049e00 <read_line+0x104>
 8049db3:	83 ec 0c             	sub    $0xc,%esp
 8049db6:	68 af a2 04 08       	push   $0x804a2af
 8049dbb:	e8 d0 f2 ff ff       	call   8049090 <puts@plt>
 8049dc0:	83 c4 10             	add    $0x10,%esp
 8049dc3:	8b 15 2c c2 04 08    	mov    0x804c22c,%edx
 8049dc9:	8d 42 01             	lea    0x1(%edx),%eax
 8049dcc:	a3 2c c2 04 08       	mov    %eax,0x804c22c
 8049dd1:	89 d0                	mov    %edx,%eax
 8049dd3:	c1 e0 02             	shl    $0x2,%eax
 8049dd6:	01 d0                	add    %edx,%eax
 8049dd8:	c1 e0 04             	shl    $0x4,%eax
 8049ddb:	05 40 c2 04 08       	add    $0x804c240,%eax
 8049de0:	c7 00 2a 2a 2a 74    	movl   $0x742a2a2a,(%eax)
 8049de6:	c7 40 04 72 75 6e 63 	movl   $0x636e7572,0x4(%eax)
 8049ded:	c7 40 08 61 74 65 64 	movl   $0x64657461,0x8(%eax)
 8049df4:	c7 40 0c 2a 2a 2a 00 	movl   $0x2a2a2a,0xc(%eax)
 8049dfb:	e8 3f 00 00 00       	call   8049e3f <explode_bomb>
 8049e00:	8b 15 2c c2 04 08    	mov    0x804c22c,%edx
 8049e06:	8b 45 f0             	mov    -0x10(%ebp),%eax
 8049e09:	8d 48 ff             	lea    -0x1(%eax),%ecx
 8049e0c:	89 d0                	mov    %edx,%eax
 8049e0e:	c1 e0 02             	shl    $0x2,%eax
 8049e11:	01 d0                	add    %edx,%eax
 8049e13:	c1 e0 04             	shl    $0x4,%eax
 8049e16:	01 c8                	add    %ecx,%eax
 8049e18:	05 40 c2 04 08       	add    $0x804c240,%eax
 8049e1d:	c6 00 00             	movb   $0x0,(%eax)
 8049e20:	8b 15 2c c2 04 08    	mov    0x804c22c,%edx
 8049e26:	8d 42 01             	lea    0x1(%edx),%eax
 8049e29:	a3 2c c2 04 08       	mov    %eax,0x804c22c
 8049e2e:	89 d0                	mov    %edx,%eax
 8049e30:	c1 e0 02             	shl    $0x2,%eax
 8049e33:	01 d0                	add    %edx,%eax
 8049e35:	c1 e0 04             	shl    $0x4,%eax
 8049e38:	05 40 c2 04 08       	add    $0x804c240,%eax
 8049e3d:	c9                   	leave
 8049e3e:	c3                   	ret

08049e3f <explode_bomb>:
 8049e3f:	55                   	push   %ebp
 8049e40:	89 e5                	mov    %esp,%ebp
 8049e42:	83 ec 08             	sub    $0x8,%esp
 8049e45:	83 ec 0c             	sub    $0xc,%esp
 8049e48:	68 ca a2 04 08       	push   $0x804a2ca
 8049e4d:	e8 3e f2 ff ff       	call   8049090 <puts@plt>
 8049e52:	83 c4 10             	add    $0x10,%esp
 8049e55:	83 ec 0c             	sub    $0xc,%esp
 8049e58:	68 d3 a2 04 08       	push   $0x804a2d3
 8049e5d:	e8 2e f2 ff ff       	call   8049090 <puts@plt>
 8049e62:	83 c4 10             	add    $0x10,%esp
 8049e65:	90                   	nop
 8049e66:	c9                   	leave
 8049e67:	c3                   	ret

08049e68 <phase_defused>:
 8049e68:	55                   	push   %ebp
 8049e69:	89 e5                	mov    %esp,%ebp
 8049e6b:	83 ec 68             	sub    $0x68,%esp
 8049e6e:	a1 2c c2 04 08       	mov    0x804c22c,%eax
 8049e73:	83 f8 07             	cmp    $0x7,%eax
 8049e76:	75 77                	jne    8049eef <phase_defused+0x87>
 8049e78:	83 ec 0c             	sub    $0xc,%esp
 8049e7b:	8d 45 a4             	lea    -0x5c(%ebp),%eax
 8049e7e:	50                   	push   %eax
 8049e7f:	8d 45 9c             	lea    -0x64(%ebp),%eax
 8049e82:	50                   	push   %eax
 8049e83:	8d 45 a0             	lea    -0x60(%ebp),%eax
 8049e86:	50                   	push   %eax
 8049e87:	68 ea a2 04 08       	push   $0x804a2ea
 8049e8c:	68 80 c3 04 08       	push   $0x804c380
 8049e91:	e8 3a f2 ff ff       	call   80490d0 <__isoc99_sscanf@plt>
 8049e96:	83 c4 20             	add    $0x20,%esp
 8049e99:	89 45 f4             	mov    %eax,-0xc(%ebp)
 8049e9c:	83 7d f4 03          	cmpl   $0x3,-0xc(%ebp)
 8049ea0:	75 3d                	jne    8049edf <phase_defused+0x77>
 8049ea2:	83 ec 08             	sub    $0x8,%esp
 8049ea5:	68 f3 a2 04 08       	push   $0x804a2f3
 8049eaa:	8d 45 a4             	lea    -0x5c(%ebp),%eax
 8049ead:	50                   	push   %eax
 8049eae:	e8 24 fd ff ff       	call   8049bd7 <strings_not_equal>
 8049eb3:	83 c4 10             	add    $0x10,%esp
 8049eb6:	85 c0                	test   %eax,%eax
 8049eb8:	75 25                	jne    8049edf <phase_defused+0x77>
 8049eba:	83 ec 0c             	sub    $0xc,%esp
 8049ebd:	68 fc a2 04 08       	push   $0x804a2fc
 8049ec2:	e8 c9 f1 ff ff       	call   8049090 <puts@plt>
 8049ec7:	83 c4 10             	add    $0x10,%esp
 8049eca:	83 ec 0c             	sub    $0xc,%esp
 8049ecd:	68 24 a3 04 08       	push   $0x804a324
 8049ed2:	e8 b9 f1 ff ff       	call   8049090 <puts@plt>
 8049ed7:	83 c4 10             	add    $0x10,%esp
 8049eda:	e8 d3 fa ff ff       	call   80499b2 <secret_phase>
 8049edf:	83 ec 0c             	sub    $0xc,%esp
 8049ee2:	68 5c a3 04 08       	push   $0x804a35c
 8049ee7:	e8 a4 f1 ff ff       	call   8049090 <puts@plt>
 8049eec:	83 c4 10             	add    $0x10,%esp
 8049eef:	90                   	nop
 8049ef0:	c9                   	leave
 8049ef1:	c3                   	ret
 8049ef2:	66 90                	xchg   %ax,%ax
 8049ef4:	66 90                	xchg   %ax,%ax
 8049ef6:	66 90                	xchg   %ax,%ax
 8049ef8:	66 90                	xchg   %ax,%ax
 8049efa:	66 90                	xchg   %ax,%ax
 8049efc:	66 90                	xchg   %ax,%ax
 8049efe:	66 90                	xchg   %ax,%ax

08049f00 <__libc_csu_init>:
 8049f00:	55                   	push   %ebp
 8049f01:	57                   	push   %edi
 8049f02:	56                   	push   %esi
 8049f03:	53                   	push   %ebx
 8049f04:	e8 67 f2 ff ff       	call   8049170 <__x86.get_pc_thunk.bx>
 8049f09:	81 c3 f7 20 00 00    	add    $0x20f7,%ebx
 8049f0f:	83 ec 0c             	sub    $0xc,%esp
 8049f12:	8b 6c 24 28          	mov    0x28(%esp),%ebp
 8049f16:	e8 e5 f0 ff ff       	call   8049000 <_init>
 8049f1b:	8d b3 10 ff ff ff    	lea    -0xf0(%ebx),%esi
 8049f21:	8d 83 0c ff ff ff    	lea    -0xf4(%ebx),%eax
 8049f27:	29 c6                	sub    %eax,%esi
 8049f29:	c1 fe 02             	sar    $0x2,%esi
 8049f2c:	74 1f                	je     8049f4d <__libc_csu_init+0x4d>
 8049f2e:	31 ff                	xor    %edi,%edi
 8049f30:	83 ec 04             	sub    $0x4,%esp
 8049f33:	55                   	push   %ebp
 8049f34:	ff 74 24 2c          	push   0x2c(%esp)
 8049f38:	ff 74 24 2c          	push   0x2c(%esp)
 8049f3c:	ff 94 bb 0c ff ff ff 	call   *-0xf4(%ebx,%edi,4)
 8049f43:	83 c7 01             	add    $0x1,%edi
 8049f46:	83 c4 10             	add    $0x10,%esp
 8049f49:	39 fe                	cmp    %edi,%esi
 8049f4b:	75 e3                	jne    8049f30 <__libc_csu_init+0x30>
 8049f4d:	83 c4 0c             	add    $0xc,%esp
 8049f50:	5b                   	pop    %ebx
 8049f51:	5e                   	pop    %esi
 8049f52:	5f                   	pop    %edi
 8049f53:	5d                   	pop    %ebp
 8049f54:	c3                   	ret
 8049f55:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 8049f5c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

08049f60 <__libc_csu_fini>:
 8049f60:	c3                   	ret

Disassembly of section .fini:

08049f64 <_fini>:
 8049f64:	53                   	push   %ebx
 8049f65:	83 ec 08             	sub    $0x8,%esp
 8049f68:	e8 03 f2 ff ff       	call   8049170 <__x86.get_pc_thunk.bx>
 8049f6d:	81 c3 93 20 00 00    	add    $0x2093,%ebx
 8049f73:	83 c4 08             	add    $0x8,%esp
 8049f76:	5b                   	pop    %ebx
 8049f77:	c3                   	ret
