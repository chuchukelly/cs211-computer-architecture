
bomb:     file format elf32-i386


Disassembly of section .init:

00002000 <_init>:
    2000:	f3 0f 1e fb          	endbr32 
    2004:	53                   	push   %ebx
    2005:	83 ec 08             	sub    $0x8,%esp
    2008:	e8 53 02 00 00       	call   2260 <__x86.get_pc_thunk.bx>
    200d:	81 c3 5b 4f 00 00    	add    $0x4f5b,%ebx
    2013:	8b 83 8c 00 00 00    	mov    0x8c(%ebx),%eax
    2019:	85 c0                	test   %eax,%eax
    201b:	74 02                	je     201f <_init+0x1f>
    201d:	ff d0                	call   *%eax
    201f:	83 c4 08             	add    $0x8,%esp
    2022:	5b                   	pop    %ebx
    2023:	c3                   	ret    

Disassembly of section .plt:

00002030 <strcmp@plt-0x10>:
    2030:	ff b3 04 00 00 00    	push   0x4(%ebx)
    2036:	ff a3 08 00 00 00    	jmp    *0x8(%ebx)
    203c:	00 00                	add    %al,(%eax)
	...

00002040 <strcmp@plt>:
    2040:	ff a3 0c 00 00 00    	jmp    *0xc(%ebx)
    2046:	68 00 00 00 00       	push   $0x0
    204b:	e9 e0 ff ff ff       	jmp    2030 <_init+0x30>

00002050 <__libc_start_main@plt>:
    2050:	ff a3 10 00 00 00    	jmp    *0x10(%ebx)
    2056:	68 08 00 00 00       	push   $0x8
    205b:	e9 d0 ff ff ff       	jmp    2030 <_init+0x30>

00002060 <read@plt>:
    2060:	ff a3 14 00 00 00    	jmp    *0x14(%ebx)
    2066:	68 10 00 00 00       	push   $0x10
    206b:	e9 c0 ff ff ff       	jmp    2030 <_init+0x30>

00002070 <fflush@plt>:
    2070:	ff a3 18 00 00 00    	jmp    *0x18(%ebx)
    2076:	68 18 00 00 00       	push   $0x18
    207b:	e9 b0 ff ff ff       	jmp    2030 <_init+0x30>

00002080 <fgets@plt>:
    2080:	ff a3 1c 00 00 00    	jmp    *0x1c(%ebx)
    2086:	68 20 00 00 00       	push   $0x20
    208b:	e9 a0 ff ff ff       	jmp    2030 <_init+0x30>

00002090 <signal@plt>:
    2090:	ff a3 20 00 00 00    	jmp    *0x20(%ebx)
    2096:	68 28 00 00 00       	push   $0x28
    209b:	e9 90 ff ff ff       	jmp    2030 <_init+0x30>

000020a0 <sleep@plt>:
    20a0:	ff a3 24 00 00 00    	jmp    *0x24(%ebx)
    20a6:	68 30 00 00 00       	push   $0x30
    20ab:	e9 80 ff ff ff       	jmp    2030 <_init+0x30>

000020b0 <alarm@plt>:
    20b0:	ff a3 28 00 00 00    	jmp    *0x28(%ebx)
    20b6:	68 38 00 00 00       	push   $0x38
    20bb:	e9 70 ff ff ff       	jmp    2030 <_init+0x30>

000020c0 <strcpy@plt>:
    20c0:	ff a3 2c 00 00 00    	jmp    *0x2c(%ebx)
    20c6:	68 40 00 00 00       	push   $0x40
    20cb:	e9 60 ff ff ff       	jmp    2030 <_init+0x30>

000020d0 <gethostname@plt>:
    20d0:	ff a3 30 00 00 00    	jmp    *0x30(%ebx)
    20d6:	68 48 00 00 00       	push   $0x48
    20db:	e9 50 ff ff ff       	jmp    2030 <_init+0x30>

000020e0 <getenv@plt>:
    20e0:	ff a3 34 00 00 00    	jmp    *0x34(%ebx)
    20e6:	68 50 00 00 00       	push   $0x50
    20eb:	e9 40 ff ff ff       	jmp    2030 <_init+0x30>

000020f0 <malloc@plt>:
    20f0:	ff a3 38 00 00 00    	jmp    *0x38(%ebx)
    20f6:	68 58 00 00 00       	push   $0x58
    20fb:	e9 30 ff ff ff       	jmp    2030 <_init+0x30>

00002100 <puts@plt>:
    2100:	ff a3 3c 00 00 00    	jmp    *0x3c(%ebx)
    2106:	68 60 00 00 00       	push   $0x60
    210b:	e9 20 ff ff ff       	jmp    2030 <_init+0x30>

00002110 <__memmove_chk@plt>:
    2110:	ff a3 40 00 00 00    	jmp    *0x40(%ebx)
    2116:	68 68 00 00 00       	push   $0x68
    211b:	e9 10 ff ff ff       	jmp    2030 <_init+0x30>

00002120 <exit@plt>:
    2120:	ff a3 44 00 00 00    	jmp    *0x44(%ebx)
    2126:	68 70 00 00 00       	push   $0x70
    212b:	e9 00 ff ff ff       	jmp    2030 <_init+0x30>

00002130 <strlen@plt>:
    2130:	ff a3 48 00 00 00    	jmp    *0x48(%ebx)
    2136:	68 78 00 00 00       	push   $0x78
    213b:	e9 f0 fe ff ff       	jmp    2030 <_init+0x30>

00002140 <write@plt>:
    2140:	ff a3 4c 00 00 00    	jmp    *0x4c(%ebx)
    2146:	68 80 00 00 00       	push   $0x80
    214b:	e9 e0 fe ff ff       	jmp    2030 <_init+0x30>

00002150 <strcasecmp@plt>:
    2150:	ff a3 50 00 00 00    	jmp    *0x50(%ebx)
    2156:	68 88 00 00 00       	push   $0x88
    215b:	e9 d0 fe ff ff       	jmp    2030 <_init+0x30>

00002160 <__isoc99_sscanf@plt>:
    2160:	ff a3 54 00 00 00    	jmp    *0x54(%ebx)
    2166:	68 90 00 00 00       	push   $0x90
    216b:	e9 c0 fe ff ff       	jmp    2030 <_init+0x30>

00002170 <fopen@plt>:
    2170:	ff a3 58 00 00 00    	jmp    *0x58(%ebx)
    2176:	68 98 00 00 00       	push   $0x98
    217b:	e9 b0 fe ff ff       	jmp    2030 <_init+0x30>

00002180 <__errno_location@plt>:
    2180:	ff a3 5c 00 00 00    	jmp    *0x5c(%ebx)
    2186:	68 a0 00 00 00       	push   $0xa0
    218b:	e9 a0 fe ff ff       	jmp    2030 <_init+0x30>

00002190 <__printf_chk@plt>:
    2190:	ff a3 60 00 00 00    	jmp    *0x60(%ebx)
    2196:	68 a8 00 00 00       	push   $0xa8
    219b:	e9 90 fe ff ff       	jmp    2030 <_init+0x30>

000021a0 <socket@plt>:
    21a0:	ff a3 64 00 00 00    	jmp    *0x64(%ebx)
    21a6:	68 b0 00 00 00       	push   $0xb0
    21ab:	e9 80 fe ff ff       	jmp    2030 <_init+0x30>

000021b0 <__fprintf_chk@plt>:
    21b0:	ff a3 68 00 00 00    	jmp    *0x68(%ebx)
    21b6:	68 b8 00 00 00       	push   $0xb8
    21bb:	e9 70 fe ff ff       	jmp    2030 <_init+0x30>

000021c0 <gethostbyname@plt>:
    21c0:	ff a3 6c 00 00 00    	jmp    *0x6c(%ebx)
    21c6:	68 c0 00 00 00       	push   $0xc0
    21cb:	e9 60 fe ff ff       	jmp    2030 <_init+0x30>

000021d0 <strtol@plt>:
    21d0:	ff a3 70 00 00 00    	jmp    *0x70(%ebx)
    21d6:	68 c8 00 00 00       	push   $0xc8
    21db:	e9 50 fe ff ff       	jmp    2030 <_init+0x30>

000021e0 <connect@plt>:
    21e0:	ff a3 74 00 00 00    	jmp    *0x74(%ebx)
    21e6:	68 d0 00 00 00       	push   $0xd0
    21eb:	e9 40 fe ff ff       	jmp    2030 <_init+0x30>

000021f0 <close@plt>:
    21f0:	ff a3 78 00 00 00    	jmp    *0x78(%ebx)
    21f6:	68 d8 00 00 00       	push   $0xd8
    21fb:	e9 30 fe ff ff       	jmp    2030 <_init+0x30>

00002200 <__ctype_b_loc@plt>:
    2200:	ff a3 7c 00 00 00    	jmp    *0x7c(%ebx)
    2206:	68 e0 00 00 00       	push   $0xe0
    220b:	e9 20 fe ff ff       	jmp    2030 <_init+0x30>

00002210 <__sprintf_chk@plt>:
    2210:	ff a3 80 00 00 00    	jmp    *0x80(%ebx)
    2216:	68 e8 00 00 00       	push   $0xe8
    221b:	e9 10 fe ff ff       	jmp    2030 <_init+0x30>

Disassembly of section .plt.got:

00002220 <__cxa_finalize@plt>:
    2220:	ff a3 88 00 00 00    	jmp    *0x88(%ebx)
    2226:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00002230 <_start>:
    2230:	f3 0f 1e fb          	endbr32 
    2234:	31 ed                	xor    %ebp,%ebp
    2236:	5e                   	pop    %esi
    2237:	89 e1                	mov    %esp,%ecx
    2239:	83 e4 f0             	and    $0xfffffff0,%esp
    223c:	50                   	push   %eax
    223d:	54                   	push   %esp
    223e:	52                   	push   %edx
    223f:	e8 18 00 00 00       	call   225c <_start+0x2c>
    2244:	81 c3 24 4d 00 00    	add    $0x4d24,%ebx
    224a:	6a 00                	push   $0x0
    224c:	6a 00                	push   $0x0
    224e:	51                   	push   %ecx
    224f:	56                   	push   %esi
    2250:	ff b3 90 00 00 00    	push   0x90(%ebx)
    2256:	e8 f5 fd ff ff       	call   2050 <__libc_start_main@plt>
    225b:	f4                   	hlt    
    225c:	8b 1c 24             	mov    (%esp),%ebx
    225f:	c3                   	ret    

00002260 <__x86.get_pc_thunk.bx>:
    2260:	8b 1c 24             	mov    (%esp),%ebx
    2263:	c3                   	ret    
    2264:	66 90                	xchg   %ax,%ax
    2266:	66 90                	xchg   %ax,%ax
    2268:	66 90                	xchg   %ax,%ax
    226a:	66 90                	xchg   %ax,%ax
    226c:	66 90                	xchg   %ax,%ax
    226e:	66 90                	xchg   %ax,%ax

00002270 <deregister_tm_clones>:
    2270:	e8 e4 00 00 00       	call   2359 <__x86.get_pc_thunk.dx>
    2275:	81 c2 f3 4c 00 00    	add    $0x4cf3,%edx
    227b:	8d 8a d8 07 00 00    	lea    0x7d8(%edx),%ecx
    2281:	8d 82 d8 07 00 00    	lea    0x7d8(%edx),%eax
    2287:	39 c8                	cmp    %ecx,%eax
    2289:	74 1d                	je     22a8 <deregister_tm_clones+0x38>
    228b:	8b 82 84 00 00 00    	mov    0x84(%edx),%eax
    2291:	85 c0                	test   %eax,%eax
    2293:	74 13                	je     22a8 <deregister_tm_clones+0x38>
    2295:	55                   	push   %ebp
    2296:	89 e5                	mov    %esp,%ebp
    2298:	83 ec 14             	sub    $0x14,%esp
    229b:	51                   	push   %ecx
    229c:	ff d0                	call   *%eax
    229e:	83 c4 10             	add    $0x10,%esp
    22a1:	c9                   	leave  
    22a2:	c3                   	ret    
    22a3:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    22a7:	90                   	nop
    22a8:	c3                   	ret    
    22a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000022b0 <register_tm_clones>:
    22b0:	e8 a4 00 00 00       	call   2359 <__x86.get_pc_thunk.dx>
    22b5:	81 c2 b3 4c 00 00    	add    $0x4cb3,%edx
    22bb:	55                   	push   %ebp
    22bc:	89 e5                	mov    %esp,%ebp
    22be:	53                   	push   %ebx
    22bf:	8d 8a d8 07 00 00    	lea    0x7d8(%edx),%ecx
    22c5:	8d 82 d8 07 00 00    	lea    0x7d8(%edx),%eax
    22cb:	83 ec 04             	sub    $0x4,%esp
    22ce:	29 c8                	sub    %ecx,%eax
    22d0:	89 c3                	mov    %eax,%ebx
    22d2:	c1 e8 1f             	shr    $0x1f,%eax
    22d5:	c1 fb 02             	sar    $0x2,%ebx
    22d8:	01 d8                	add    %ebx,%eax
    22da:	d1 f8                	sar    %eax
    22dc:	74 14                	je     22f2 <register_tm_clones+0x42>
    22de:	8b 92 94 00 00 00    	mov    0x94(%edx),%edx
    22e4:	85 d2                	test   %edx,%edx
    22e6:	74 0a                	je     22f2 <register_tm_clones+0x42>
    22e8:	83 ec 08             	sub    $0x8,%esp
    22eb:	50                   	push   %eax
    22ec:	51                   	push   %ecx
    22ed:	ff d2                	call   *%edx
    22ef:	83 c4 10             	add    $0x10,%esp
    22f2:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    22f5:	c9                   	leave  
    22f6:	c3                   	ret    
    22f7:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
    22fe:	66 90                	xchg   %ax,%ax

00002300 <__do_global_dtors_aux>:
    2300:	f3 0f 1e fb          	endbr32 
    2304:	55                   	push   %ebp
    2305:	89 e5                	mov    %esp,%ebp
    2307:	53                   	push   %ebx
    2308:	e8 53 ff ff ff       	call   2260 <__x86.get_pc_thunk.bx>
    230d:	81 c3 5b 4c 00 00    	add    $0x4c5b,%ebx
    2313:	83 ec 04             	sub    $0x4,%esp
    2316:	80 bb 00 08 00 00 00 	cmpb   $0x0,0x800(%ebx)
    231d:	75 27                	jne    2346 <__do_global_dtors_aux+0x46>
    231f:	8b 83 88 00 00 00    	mov    0x88(%ebx),%eax
    2325:	85 c0                	test   %eax,%eax
    2327:	74 11                	je     233a <__do_global_dtors_aux+0x3a>
    2329:	83 ec 0c             	sub    $0xc,%esp
    232c:	ff b3 9c 00 00 00    	push   0x9c(%ebx)
    2332:	e8 e9 fe ff ff       	call   2220 <__cxa_finalize@plt>
    2337:	83 c4 10             	add    $0x10,%esp
    233a:	e8 31 ff ff ff       	call   2270 <deregister_tm_clones>
    233f:	c6 83 00 08 00 00 01 	movb   $0x1,0x800(%ebx)
    2346:	8b 5d fc             	mov    -0x4(%ebp),%ebx
    2349:	c9                   	leave  
    234a:	c3                   	ret    
    234b:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    234f:	90                   	nop

00002350 <frame_dummy>:
    2350:	f3 0f 1e fb          	endbr32 
    2354:	e9 57 ff ff ff       	jmp    22b0 <register_tm_clones>

00002359 <__x86.get_pc_thunk.dx>:
    2359:	8b 14 24             	mov    (%esp),%edx
    235c:	c3                   	ret    

0000235d <main>:
    235d:	8d 4c 24 04          	lea    0x4(%esp),%ecx
    2361:	83 e4 f0             	and    $0xfffffff0,%esp
    2364:	ff 71 fc             	push   -0x4(%ecx)
    2367:	55                   	push   %ebp
    2368:	89 e5                	mov    %esp,%ebp
    236a:	53                   	push   %ebx
    236b:	51                   	push   %ecx
    236c:	8b 01                	mov    (%ecx),%eax
    236e:	8b 59 04             	mov    0x4(%ecx),%ebx
    2371:	83 f8 01             	cmp    $0x1,%eax
    2374:	0f 84 5b 01 00 00    	je     24d5 <main+0x178>
    237a:	83 f8 02             	cmp    $0x2,%eax
    237d:	0f 85 7e 01 00 00    	jne    2501 <main+0x1a4>
    2383:	83 ec 08             	sub    $0x8,%esp
    2386:	68 08 40 00 00       	push   $0x4008
    238b:	ff 73 04             	push   0x4(%ebx)
    238e:	e8 fc ff ff ff       	call   238f <main+0x32>
    2393:	a3 6c 77 00 00       	mov    %eax,0x776c
    2398:	83 c4 10             	add    $0x10,%esp
    239b:	85 c0                	test   %eax,%eax
    239d:	0f 84 41 01 00 00    	je     24e4 <main+0x187>
    23a3:	e8 b4 06 00 00       	call   2a5c <initialize_bomb>
    23a8:	83 ec 0c             	sub    $0xc,%esp
    23ab:	68 98 40 00 00       	push   $0x4098
    23b0:	e8 fc ff ff ff       	call   23b1 <main+0x54>
    23b5:	c7 04 24 d4 40 00 00 	movl   $0x40d4,(%esp)
    23bc:	e8 fc ff ff ff       	call   23bd <main+0x60>
    23c1:	e8 00 09 00 00       	call   2cc6 <read_line>
    23c6:	89 04 24             	mov    %eax,(%esp)
    23c9:	e8 50 01 00 00       	call   251e <phase_1>
    23ce:	e8 e7 09 00 00       	call   2dba <phase_defused>
    23d3:	c7 04 24 00 41 00 00 	movl   $0x4100,(%esp)
    23da:	e8 fc ff ff ff       	call   23db <main+0x7e>
    23df:	e8 e2 08 00 00       	call   2cc6 <read_line>
    23e4:	89 04 24             	mov    %eax,(%esp)
    23e7:	e8 74 01 00 00       	call   2560 <phase_2>
    23ec:	e8 c9 09 00 00       	call   2dba <phase_defused>
    23f1:	c7 04 24 41 40 00 00 	movl   $0x4041,(%esp)
    23f8:	e8 fc ff ff ff       	call   23f9 <main+0x9c>
    23fd:	e8 c4 08 00 00       	call   2cc6 <read_line>
    2402:	89 04 24             	mov    %eax,(%esp)
    2405:	e8 79 01 00 00       	call   2583 <phase_3>
    240a:	e8 ab 09 00 00       	call   2dba <phase_defused>
    240f:	c7 04 24 5f 40 00 00 	movl   $0x405f,(%esp)
    2416:	e8 fc ff ff ff       	call   2417 <main+0xba>
    241b:	e8 a6 08 00 00       	call   2cc6 <read_line>
    2420:	89 04 24             	mov    %eax,(%esp)
    2423:	e8 f7 01 00 00       	call   261f <phase_4>
    2428:	e8 8d 09 00 00       	call   2dba <phase_defused>
    242d:	c7 04 24 2c 41 00 00 	movl   $0x412c,(%esp)
    2434:	e8 fc ff ff ff       	call   2435 <main+0xd8>
    2439:	e8 88 08 00 00       	call   2cc6 <read_line>
    243e:	89 04 24             	mov    %eax,(%esp)
    2441:	e8 68 02 00 00       	call   26ae <phase_5>
    2446:	e8 6f 09 00 00       	call   2dba <phase_defused>
    244b:	c7 04 24 70 40 00 00 	movl   $0x4070,(%esp)
    2452:	e8 fc ff ff ff       	call   2453 <main+0xf6>
    2457:	e8 6a 08 00 00       	call   2cc6 <read_line>
    245c:	89 04 24             	mov    %eax,(%esp)
    245f:	e8 ee 02 00 00       	call   2752 <phase_6>
    2464:	e8 51 09 00 00       	call   2dba <phase_defused>
    2469:	c7 04 24 50 41 00 00 	movl   $0x4150,(%esp)
    2470:	e8 fc ff ff ff       	call   2471 <main+0x114>
    2475:	e8 4c 08 00 00       	call   2cc6 <read_line>
    247a:	89 04 24             	mov    %eax,(%esp)
    247d:	e8 26 03 00 00       	call   27a8 <phase_7>
    2482:	e8 33 09 00 00       	call   2dba <phase_defused>
    2487:	c7 04 24 70 41 00 00 	movl   $0x4170,(%esp)
    248e:	e8 fc ff ff ff       	call   248f <main+0x132>
    2493:	e8 2e 08 00 00       	call   2cc6 <read_line>
    2498:	89 04 24             	mov    %eax,(%esp)
    249b:	e8 54 03 00 00       	call   27f4 <phase_8>
    24a0:	e8 15 09 00 00       	call   2dba <phase_defused>
    24a5:	c7 04 24 8e 40 00 00 	movl   $0x408e,(%esp)
    24ac:	e8 fc ff ff ff       	call   24ad <main+0x150>
    24b1:	e8 10 08 00 00       	call   2cc6 <read_line>
    24b6:	89 04 24             	mov    %eax,(%esp)
    24b9:	e8 62 04 00 00       	call   2920 <phase_9>
    24be:	e8 f7 08 00 00       	call   2dba <phase_defused>
    24c3:	83 c4 10             	add    $0x10,%esp
    24c6:	b8 00 00 00 00       	mov    $0x0,%eax
    24cb:	8d 65 f8             	lea    -0x8(%ebp),%esp
    24ce:	59                   	pop    %ecx
    24cf:	5b                   	pop    %ebx
    24d0:	5d                   	pop    %ebp
    24d1:	8d 61 fc             	lea    -0x4(%ecx),%esp
    24d4:	c3                   	ret    
    24d5:	a1 00 00 00 00       	mov    0x0,%eax
    24da:	a3 6c 77 00 00       	mov    %eax,0x776c
    24df:	e9 bf fe ff ff       	jmp    23a3 <main+0x46>
    24e4:	ff 73 04             	push   0x4(%ebx)
    24e7:	ff 33                	push   (%ebx)
    24e9:	68 0a 40 00 00       	push   $0x400a
    24ee:	6a 01                	push   $0x1
    24f0:	e8 fc ff ff ff       	call   24f1 <main+0x194>
    24f5:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
    24fc:	e8 fc ff ff ff       	call   24fd <main+0x1a0>
    2501:	83 ec 04             	sub    $0x4,%esp
    2504:	ff 33                	push   (%ebx)
    2506:	68 27 40 00 00       	push   $0x4027
    250b:	6a 01                	push   $0x1
    250d:	e8 fc ff ff ff       	call   250e <main+0x1b1>
    2512:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
    2519:	e8 fc ff ff ff       	call   251a <main+0x1bd>

0000251e <phase_1>:
    251e:	83 ec 20             	sub    $0x20,%esp
    2521:	c7 44 24 10 00 00 00 	movl   $0x0,0x10(%esp)
    2528:	00 
    2529:	8d 44 24 10          	lea    0x10(%esp),%eax
    252d:	50                   	push   %eax
    252e:	68 60 44 00 00       	push   $0x4460
    2533:	ff 74 24 2c          	push   0x2c(%esp)
    2537:	e8 fc ff ff ff       	call   2538 <phase_1+0x1a>
    253c:	83 c4 10             	add    $0x10,%esp
    253f:	83 f8 01             	cmp    $0x1,%eax
    2542:	75 0e                	jne    2552 <phase_1+0x34>
    2544:	81 7c 24 0c 33 01 00 	cmpl   $0x133,0xc(%esp)
    254b:	00 
    254c:	75 0b                	jne    2559 <phase_1+0x3b>
    254e:	83 c4 1c             	add    $0x1c,%esp
    2551:	c3                   	ret    
    2552:	e8 f5 06 00 00       	call   2c4c <explode_bomb>
    2557:	eb eb                	jmp    2544 <phase_1+0x26>
    2559:	e8 ee 06 00 00       	call   2c4c <explode_bomb>
    255e:	eb ee                	jmp    254e <phase_1+0x30>

00002560 <phase_2>:
    2560:	83 ec 14             	sub    $0x14,%esp
    2563:	68 90 41 00 00       	push   $0x4190
    2568:	ff 74 24 1c          	push   0x1c(%esp)
    256c:	e8 93 04 00 00       	call   2a04 <strings_not_equal>
    2571:	83 c4 10             	add    $0x10,%esp
    2574:	85 c0                	test   %eax,%eax
    2576:	75 04                	jne    257c <phase_2+0x1c>
    2578:	83 c4 0c             	add    $0xc,%esp
    257b:	c3                   	ret    
    257c:	e8 cb 06 00 00       	call   2c4c <explode_bomb>
    2581:	eb f5                	jmp    2578 <phase_2+0x18>

00002583 <phase_3>:
    2583:	83 ec 18             	sub    $0x18,%esp
    2586:	68 d4 41 00 00       	push   $0x41d4
    258b:	e8 56 04 00 00       	call   29e6 <string_length>
    2590:	83 c0 01             	add    $0x1,%eax
    2593:	89 04 24             	mov    %eax,(%esp)
    2596:	e8 fc ff ff ff       	call   2597 <phase_3+0x14>
    259b:	c7 00 55 73 65 20    	movl   $0x20657355,(%eax)
    25a1:	c7 40 04 68 65 6c 70 	movl   $0x706c6568,0x4(%eax)
    25a8:	c7 40 08 20 68 65 6c 	movl   $0x6c656820,0x8(%eax)
    25af:	c7 40 0c 70 20 74 6f 	movl   $0x6f742070,0xc(%eax)
    25b6:	c7 40 10 20 67 65 74 	movl   $0x74656720,0x10(%eax)
    25bd:	c7 40 14 20 61 73 73 	movl   $0x73736120,0x14(%eax)
    25c4:	c7 40 18 69 73 74 61 	movl   $0x61747369,0x18(%eax)
    25cb:	c7 40 1c 6e 63 65 20 	movl   $0x2065636e,0x1c(%eax)
    25d2:	c7 40 20 66 6f 72 20 	movl   $0x20726f66,0x20(%eax)
    25d9:	c7 40 24 67 65 74 74 	movl   $0x74746567,0x24(%eax)
    25e0:	c7 40 28 69 6e 67 20 	movl   $0x20676e69,0x28(%eax)
    25e7:	c7 40 2c 61 73 73 69 	movl   $0x69737361,0x2c(%eax)
    25ee:	c7 40 30 73 74 61 6e 	movl   $0x6e617473,0x30(%eax)
    25f5:	c7 40 34 63 65 2e 00 	movl   $0x2e6563,0x34(%eax)
    25fc:	c6 40 2b 6c          	movb   $0x6c,0x2b(%eax)
    2600:	83 c4 08             	add    $0x8,%esp
    2603:	50                   	push   %eax
    2604:	ff 74 24 1c          	push   0x1c(%esp)
    2608:	e8 f7 03 00 00       	call   2a04 <strings_not_equal>
    260d:	83 c4 10             	add    $0x10,%esp
    2610:	85 c0                	test   %eax,%eax
    2612:	75 04                	jne    2618 <phase_3+0x95>
    2614:	83 c4 0c             	add    $0xc,%esp
    2617:	c3                   	ret    
    2618:	e8 2f 06 00 00       	call   2c4c <explode_bomb>
    261d:	eb f5                	jmp    2614 <phase_3+0x91>

0000261f <phase_4>:
    261f:	57                   	push   %edi
    2620:	56                   	push   %esi
    2621:	53                   	push   %ebx
    2622:	8b 7c 24 10          	mov    0x10(%esp),%edi
    2626:	83 ec 0c             	sub    $0xc,%esp
    2629:	57                   	push   %edi
    262a:	e8 b7 03 00 00       	call   29e6 <string_length>
    262f:	83 c0 01             	add    $0x1,%eax
    2632:	89 04 24             	mov    %eax,(%esp)
    2635:	e8 fc ff ff ff       	call   2636 <phase_4+0x17>
    263a:	89 c6                	mov    %eax,%esi
    263c:	83 c4 10             	add    $0x10,%esp
    263f:	f6 07 df             	testb  $0xdf,(%edi)
    2642:	74 5a                	je     269e <phase_4+0x7f>
    2644:	89 fb                	mov    %edi,%ebx
    2646:	83 c3 01             	add    $0x1,%ebx
    2649:	f6 03 df             	testb  $0xdf,(%ebx)
    264c:	75 f8                	jne    2646 <phase_4+0x27>
    264e:	39 df                	cmp    %ebx,%edi
    2650:	74 4e                	je     26a0 <phase_4+0x81>
    2652:	89 f2                	mov    %esi,%edx
    2654:	89 d8                	mov    %ebx,%eax
    2656:	83 e8 01             	sub    $0x1,%eax
    2659:	0f b6 08             	movzbl (%eax),%ecx
    265c:	88 0a                	mov    %cl,(%edx)
    265e:	83 c2 01             	add    $0x1,%edx
    2661:	39 c7                	cmp    %eax,%edi
    2663:	75 f1                	jne    2656 <phase_4+0x37>
    2665:	89 da                	mov    %ebx,%edx
    2667:	29 c2                	sub    %eax,%edx
    2669:	8d 04 16             	lea    (%esi,%edx,1),%eax
    266c:	0f b6 13             	movzbl (%ebx),%edx
    266f:	84 d2                	test   %dl,%dl
    2671:	74 0f                	je     2682 <phase_4+0x63>
    2673:	88 10                	mov    %dl,(%eax)
    2675:	83 c0 01             	add    $0x1,%eax
    2678:	83 c3 01             	add    $0x1,%ebx
    267b:	0f b6 13             	movzbl (%ebx),%edx
    267e:	84 d2                	test   %dl,%dl
    2680:	75 f1                	jne    2673 <phase_4+0x54>
    2682:	c6 00 00             	movb   $0x0,(%eax)
    2685:	83 ec 08             	sub    $0x8,%esp
    2688:	56                   	push   %esi
    2689:	68 0c 42 00 00       	push   $0x420c
    268e:	e8 71 03 00 00       	call   2a04 <strings_not_equal>
    2693:	83 c4 10             	add    $0x10,%esp
    2696:	85 c0                	test   %eax,%eax
    2698:	75 0d                	jne    26a7 <phase_4+0x88>
    269a:	5b                   	pop    %ebx
    269b:	5e                   	pop    %esi
    269c:	5f                   	pop    %edi
    269d:	c3                   	ret    
    269e:	89 fb                	mov    %edi,%ebx
    26a0:	e8 a7 05 00 00       	call   2c4c <explode_bomb>
    26a5:	eb ab                	jmp    2652 <phase_4+0x33>
    26a7:	e8 a0 05 00 00       	call   2c4c <explode_bomb>
    26ac:	eb ec                	jmp    269a <phase_4+0x7b>

000026ae <phase_5>:
    26ae:	56                   	push   %esi
    26af:	53                   	push   %ebx
    26b0:	83 ec 18             	sub    $0x18,%esp
    26b3:	8d 44 24 10          	lea    0x10(%esp),%eax
    26b7:	50                   	push   %eax
    26b8:	68 60 44 00 00       	push   $0x4460
    26bd:	ff 74 24 2c          	push   0x2c(%esp)
    26c1:	e8 fc ff ff ff       	call   26c2 <phase_5+0x14>
    26c6:	83 c4 10             	add    $0x10,%esp
    26c9:	83 f8 01             	cmp    $0x1,%eax
    26cc:	75 19                	jne    26e7 <phase_5+0x39>
    26ce:	8b 74 24 0c          	mov    0xc(%esp),%esi
    26d2:	85 f6                	test   %esi,%esi
    26d4:	7e 34                	jle    270a <phase_5+0x5c>
    26d6:	b8 00 00 00 00       	mov    $0x0,%eax
    26db:	b9 00 00 00 00       	mov    $0x0,%ecx
    26e0:	ba 01 00 00 00       	mov    $0x1,%edx
    26e5:	eb 09                	jmp    26f0 <phase_5+0x42>
    26e7:	e8 60 05 00 00       	call   2c4c <explode_bomb>
    26ec:	eb e0                	jmp    26ce <phase_5+0x20>
    26ee:	89 da                	mov    %ebx,%edx
    26f0:	8d 1c 0a             	lea    (%edx,%ecx,1),%ebx
    26f3:	83 c0 01             	add    $0x1,%eax
    26f6:	89 d1                	mov    %edx,%ecx
    26f8:	39 f0                	cmp    %esi,%eax
    26fa:	75 f2                	jne    26ee <phase_5+0x40>
    26fc:	81 fb 55 10 00 00    	cmp    $0x1055,%ebx
    2702:	75 06                	jne    270a <phase_5+0x5c>
    2704:	83 c4 14             	add    $0x14,%esp
    2707:	5b                   	pop    %ebx
    2708:	5e                   	pop    %esi
    2709:	c3                   	ret    
    270a:	e8 3d 05 00 00       	call   2c4c <explode_bomb>
    270f:	eb f3                	jmp    2704 <phase_5+0x56>

00002711 <func6>:
    2711:	57                   	push   %edi
    2712:	56                   	push   %esi
    2713:	53                   	push   %ebx
    2714:	8b 5c 24 10          	mov    0x10(%esp),%ebx
    2718:	8b 7c 24 14          	mov    0x14(%esp),%edi
    271c:	b8 00 00 00 00       	mov    $0x0,%eax
    2721:	85 db                	test   %ebx,%ebx
    2723:	7e 29                	jle    274e <func6+0x3d>
    2725:	89 f8                	mov    %edi,%eax
    2727:	83 fb 01             	cmp    $0x1,%ebx
    272a:	74 22                	je     274e <func6+0x3d>
    272c:	83 ec 08             	sub    $0x8,%esp
    272f:	57                   	push   %edi
    2730:	8d 43 ff             	lea    -0x1(%ebx),%eax
    2733:	50                   	push   %eax
    2734:	e8 d8 ff ff ff       	call   2711 <func6>
    2739:	83 c4 08             	add    $0x8,%esp
    273c:	8d 34 38             	lea    (%eax,%edi,1),%esi
    273f:	57                   	push   %edi
    2740:	83 eb 02             	sub    $0x2,%ebx
    2743:	53                   	push   %ebx
    2744:	e8 c8 ff ff ff       	call   2711 <func6>
    2749:	83 c4 10             	add    $0x10,%esp
    274c:	01 f0                	add    %esi,%eax
    274e:	5b                   	pop    %ebx
    274f:	5e                   	pop    %esi
    2750:	5f                   	pop    %edi
    2751:	c3                   	ret    

00002752 <phase_6>:
    2752:	83 ec 1c             	sub    $0x1c,%esp
    2755:	8d 44 24 0c          	lea    0xc(%esp),%eax
    2759:	50                   	push   %eax
    275a:	8d 44 24 0c          	lea    0xc(%esp),%eax
    275e:	50                   	push   %eax
    275f:	68 5d 44 00 00       	push   $0x445d
    2764:	ff 74 24 2c          	push   0x2c(%esp)
    2768:	e8 fc ff ff ff       	call   2769 <phase_6+0x17>
    276d:	83 c4 10             	add    $0x10,%esp
    2770:	83 f8 02             	cmp    $0x2,%eax
    2773:	75 0c                	jne    2781 <phase_6+0x2f>
    2775:	8b 44 24 0c          	mov    0xc(%esp),%eax
    2779:	83 e8 02             	sub    $0x2,%eax
    277c:	83 f8 02             	cmp    $0x2,%eax
    277f:	76 05                	jbe    2786 <phase_6+0x34>
    2781:	e8 c6 04 00 00       	call   2c4c <explode_bomb>
    2786:	83 ec 08             	sub    $0x8,%esp
    2789:	ff 74 24 14          	push   0x14(%esp)
    278d:	6a 09                	push   $0x9
    278f:	e8 7d ff ff ff       	call   2711 <func6>
    2794:	83 c4 10             	add    $0x10,%esp
    2797:	39 44 24 08          	cmp    %eax,0x8(%esp)
    279b:	75 04                	jne    27a1 <phase_6+0x4f>
    279d:	83 c4 1c             	add    $0x1c,%esp
    27a0:	c3                   	ret    
    27a1:	e8 a6 04 00 00       	call   2c4c <explode_bomb>
    27a6:	eb f5                	jmp    279d <phase_6+0x4b>

000027a8 <phase_7>:
    27a8:	53                   	push   %ebx
    27a9:	83 ec 14             	sub    $0x14,%esp
    27ac:	8b 5c 24 1c          	mov    0x1c(%esp),%ebx
    27b0:	53                   	push   %ebx
    27b1:	e8 30 02 00 00       	call   29e6 <string_length>
    27b6:	83 c4 10             	add    $0x10,%esp
    27b9:	83 f8 06             	cmp    $0x6,%eax
    27bc:	75 28                	jne    27e6 <phase_7+0x3e>
    27be:	89 d8                	mov    %ebx,%eax
    27c0:	83 c3 06             	add    $0x6,%ebx
    27c3:	b9 00 00 00 00       	mov    $0x0,%ecx
    27c8:	0f b6 10             	movzbl (%eax),%edx
    27cb:	83 e2 0f             	and    $0xf,%edx
    27ce:	03 0c 95 60 42 00 00 	add    0x4260(,%edx,4),%ecx
    27d5:	83 c0 01             	add    $0x1,%eax
    27d8:	39 d8                	cmp    %ebx,%eax
    27da:	75 ec                	jne    27c8 <phase_7+0x20>
    27dc:	83 f9 30             	cmp    $0x30,%ecx
    27df:	75 0c                	jne    27ed <phase_7+0x45>
    27e1:	83 c4 08             	add    $0x8,%esp
    27e4:	5b                   	pop    %ebx
    27e5:	c3                   	ret    
    27e6:	e8 61 04 00 00       	call   2c4c <explode_bomb>
    27eb:	eb d1                	jmp    27be <phase_7+0x16>
    27ed:	e8 5a 04 00 00       	call   2c4c <explode_bomb>
    27f2:	eb ed                	jmp    27e1 <phase_7+0x39>

000027f4 <phase_8>:
    27f4:	55                   	push   %ebp
    27f5:	57                   	push   %edi
    27f6:	56                   	push   %esi
    27f7:	53                   	push   %ebx
    27f8:	83 ec 44             	sub    $0x44,%esp
    27fb:	8d 7c 24 20          	lea    0x20(%esp),%edi
    27ff:	57                   	push   %edi
    2800:	ff 74 24 5c          	push   0x5c(%esp)
    2804:	e8 82 04 00 00       	call   2c8b <read_six_numbers>
    2809:	83 c4 10             	add    $0x10,%esp
    280c:	bd 00 00 00 00       	mov    $0x0,%ebp
    2811:	eb 21                	jmp    2834 <phase_8+0x40>
    2813:	e8 34 04 00 00       	call   2c4c <explode_bomb>
    2818:	eb 26                	jmp    2840 <phase_8+0x4c>
    281a:	83 c3 01             	add    $0x1,%ebx
    281d:	83 fb 06             	cmp    $0x6,%ebx
    2820:	74 0f                	je     2831 <phase_8+0x3d>
    2822:	8b 44 9c 18          	mov    0x18(%esp,%ebx,4),%eax
    2826:	39 06                	cmp    %eax,(%esi)
    2828:	75 f0                	jne    281a <phase_8+0x26>
    282a:	e8 1d 04 00 00       	call   2c4c <explode_bomb>
    282f:	eb e9                	jmp    281a <phase_8+0x26>
    2831:	83 c7 04             	add    $0x4,%edi
    2834:	89 fe                	mov    %edi,%esi
    2836:	8b 07                	mov    (%edi),%eax
    2838:	83 e8 01             	sub    $0x1,%eax
    283b:	83 f8 05             	cmp    $0x5,%eax
    283e:	77 d3                	ja     2813 <phase_8+0x1f>
    2840:	83 c5 01             	add    $0x1,%ebp
    2843:	83 fd 05             	cmp    $0x5,%ebp
    2846:	7f 04                	jg     284c <phase_8+0x58>
    2848:	89 eb                	mov    %ebp,%ebx
    284a:	eb d6                	jmp    2822 <phase_8+0x2e>
    284c:	bb 00 00 00 00       	mov    $0x0,%ebx
    2851:	89 de                	mov    %ebx,%esi
    2853:	8b 4c 9c 18          	mov    0x18(%esp,%ebx,4),%ecx
    2857:	b8 01 00 00 00       	mov    $0x1,%eax
    285c:	ba d4 70 00 00       	mov    $0x70d4,%edx
    2861:	83 f9 01             	cmp    $0x1,%ecx
    2864:	7e 0a                	jle    2870 <phase_8+0x7c>
    2866:	8b 52 08             	mov    0x8(%edx),%edx
    2869:	83 c0 01             	add    $0x1,%eax
    286c:	39 c8                	cmp    %ecx,%eax
    286e:	75 f6                	jne    2866 <phase_8+0x72>
    2870:	89 14 b4             	mov    %edx,(%esp,%esi,4)
    2873:	83 c3 01             	add    $0x1,%ebx
    2876:	83 fb 06             	cmp    $0x6,%ebx
    2879:	75 d6                	jne    2851 <phase_8+0x5d>
    287b:	8b 1c 24             	mov    (%esp),%ebx
    287e:	8b 44 24 04          	mov    0x4(%esp),%eax
    2882:	89 43 08             	mov    %eax,0x8(%ebx)
    2885:	8b 54 24 08          	mov    0x8(%esp),%edx
    2889:	89 50 08             	mov    %edx,0x8(%eax)
    288c:	8b 44 24 0c          	mov    0xc(%esp),%eax
    2890:	89 42 08             	mov    %eax,0x8(%edx)
    2893:	8b 54 24 10          	mov    0x10(%esp),%edx
    2897:	89 50 08             	mov    %edx,0x8(%eax)
    289a:	8b 44 24 14          	mov    0x14(%esp),%eax
    289e:	89 42 08             	mov    %eax,0x8(%edx)
    28a1:	c7 40 08 00 00 00 00 	movl   $0x0,0x8(%eax)
    28a8:	be 05 00 00 00       	mov    $0x5,%esi
    28ad:	eb 08                	jmp    28b7 <phase_8+0xc3>
    28af:	8b 5b 08             	mov    0x8(%ebx),%ebx
    28b2:	83 ee 01             	sub    $0x1,%esi
    28b5:	74 10                	je     28c7 <phase_8+0xd3>
    28b7:	8b 43 08             	mov    0x8(%ebx),%eax
    28ba:	8b 00                	mov    (%eax),%eax
    28bc:	39 03                	cmp    %eax,(%ebx)
    28be:	7d ef                	jge    28af <phase_8+0xbb>
    28c0:	e8 87 03 00 00       	call   2c4c <explode_bomb>
    28c5:	eb e8                	jmp    28af <phase_8+0xbb>
    28c7:	83 c4 3c             	add    $0x3c,%esp
    28ca:	5b                   	pop    %ebx
    28cb:	5e                   	pop    %esi
    28cc:	5f                   	pop    %edi
    28cd:	5d                   	pop    %ebp
    28ce:	c3                   	ret    

000028cf <fun9>:
    28cf:	53                   	push   %ebx
    28d0:	83 ec 08             	sub    $0x8,%esp
    28d3:	8b 54 24 10          	mov    0x10(%esp),%edx
    28d7:	8b 4c 24 14          	mov    0x14(%esp),%ecx
    28db:	85 d2                	test   %edx,%edx
    28dd:	74 3a                	je     2919 <fun9+0x4a>
    28df:	8b 1a                	mov    (%edx),%ebx
    28e1:	39 cb                	cmp    %ecx,%ebx
    28e3:	7f 0c                	jg     28f1 <fun9+0x22>
    28e5:	b8 00 00 00 00       	mov    $0x0,%eax
    28ea:	75 18                	jne    2904 <fun9+0x35>
    28ec:	83 c4 08             	add    $0x8,%esp
    28ef:	5b                   	pop    %ebx
    28f0:	c3                   	ret    
    28f1:	83 ec 08             	sub    $0x8,%esp
    28f4:	51                   	push   %ecx
    28f5:	ff 72 04             	push   0x4(%edx)
    28f8:	e8 d2 ff ff ff       	call   28cf <fun9>
    28fd:	83 c4 10             	add    $0x10,%esp
    2900:	01 c0                	add    %eax,%eax
    2902:	eb e8                	jmp    28ec <fun9+0x1d>
    2904:	83 ec 08             	sub    $0x8,%esp
    2907:	51                   	push   %ecx
    2908:	ff 72 08             	push   0x8(%edx)
    290b:	e8 bf ff ff ff       	call   28cf <fun9>
    2910:	83 c4 10             	add    $0x10,%esp
    2913:	8d 44 00 01          	lea    0x1(%eax,%eax,1),%eax
    2917:	eb d3                	jmp    28ec <fun9+0x1d>
    2919:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    291e:	eb cc                	jmp    28ec <fun9+0x1d>

00002920 <phase_9>:
    2920:	53                   	push   %ebx
    2921:	83 ec 0c             	sub    $0xc,%esp
    2924:	6a 0a                	push   $0xa
    2926:	6a 00                	push   $0x0
    2928:	ff 74 24 1c          	push   0x1c(%esp)
    292c:	e8 fc ff ff ff       	call   292d <phase_9+0xd>
    2931:	89 c3                	mov    %eax,%ebx
    2933:	8d 40 ff             	lea    -0x1(%eax),%eax
    2936:	83 c4 10             	add    $0x10,%esp
    2939:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    293e:	77 1b                	ja     295b <phase_9+0x3b>
    2940:	83 ec 08             	sub    $0x8,%esp
    2943:	53                   	push   %ebx
    2944:	68 20 70 00 00       	push   $0x7020
    2949:	e8 81 ff ff ff       	call   28cf <fun9>
    294e:	83 c4 10             	add    $0x10,%esp
    2951:	83 f8 02             	cmp    $0x2,%eax
    2954:	75 0c                	jne    2962 <phase_9+0x42>
    2956:	83 c4 08             	add    $0x8,%esp
    2959:	5b                   	pop    %ebx
    295a:	c3                   	ret    
    295b:	e8 ec 02 00 00       	call   2c4c <explode_bomb>
    2960:	eb de                	jmp    2940 <phase_9+0x20>
    2962:	e8 e5 02 00 00       	call   2c4c <explode_bomb>
    2967:	eb ed                	jmp    2956 <phase_9+0x36>

00002969 <sig_handler>:
    2969:	56                   	push   %esi
    296a:	5e                   	pop    %esi
    296b:	83 ec 18             	sub    $0x18,%esp
    296e:	68 a0 42 00 00       	push   $0x42a0
    2973:	e8 fc ff ff ff       	call   2974 <sig_handler+0xb>
    2978:	c7 04 24 03 00 00 00 	movl   $0x3,(%esp)
    297f:	e8 fc ff ff ff       	call   2980 <sig_handler+0x17>
    2984:	83 c4 08             	add    $0x8,%esp
    2987:	68 d9 43 00 00       	push   $0x43d9
    298c:	6a 01                	push   $0x1
    298e:	e8 fc ff ff ff       	call   298f <sig_handler+0x26>
    2993:	83 c4 04             	add    $0x4,%esp
    2996:	ff 35 00 00 00 00    	push   0x0
    299c:	e8 fc ff ff ff       	call   299d <sig_handler+0x34>
    29a1:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    29a8:	e8 fc ff ff ff       	call   29a9 <sig_handler+0x40>
    29ad:	c7 04 24 e1 43 00 00 	movl   $0x43e1,(%esp)
    29b4:	e8 fc ff ff ff       	call   29b5 <sig_handler+0x4c>
    29b9:	c7 04 24 10 00 00 00 	movl   $0x10,(%esp)
    29c0:	e8 fc ff ff ff       	call   29c1 <sig_handler+0x58>

000029c5 <invalid_phase>:
    29c5:	56                   	push   %esi
    29c6:	5e                   	pop    %esi
    29c7:	83 ec 10             	sub    $0x10,%esp
    29ca:	ff 74 24 14          	push   0x14(%esp)
    29ce:	68 e9 43 00 00       	push   $0x43e9
    29d3:	6a 01                	push   $0x1
    29d5:	e8 fc ff ff ff       	call   29d6 <invalid_phase+0x11>
    29da:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
    29e1:	e8 fc ff ff ff       	call   29e2 <invalid_phase+0x1d>

000029e6 <string_length>:
    29e6:	8b 54 24 04          	mov    0x4(%esp),%edx
    29ea:	80 3a 00             	cmpb   $0x0,(%edx)
    29ed:	74 0f                	je     29fe <string_length+0x18>
    29ef:	b8 00 00 00 00       	mov    $0x0,%eax
    29f4:	83 c0 01             	add    $0x1,%eax
    29f7:	80 3c 02 00          	cmpb   $0x0,(%edx,%eax,1)
    29fb:	75 f7                	jne    29f4 <string_length+0xe>
    29fd:	c3                   	ret    
    29fe:	b8 00 00 00 00       	mov    $0x0,%eax
    2a03:	c3                   	ret    

00002a04 <strings_not_equal>:
    2a04:	57                   	push   %edi
    2a05:	56                   	push   %esi
    2a06:	53                   	push   %ebx
    2a07:	8b 5c 24 10          	mov    0x10(%esp),%ebx
    2a0b:	8b 74 24 14          	mov    0x14(%esp),%esi
    2a0f:	53                   	push   %ebx
    2a10:	e8 d1 ff ff ff       	call   29e6 <string_length>
    2a15:	89 c7                	mov    %eax,%edi
    2a17:	89 34 24             	mov    %esi,(%esp)
    2a1a:	e8 c7 ff ff ff       	call   29e6 <string_length>
    2a1f:	83 c4 04             	add    $0x4,%esp
    2a22:	89 c2                	mov    %eax,%edx
    2a24:	b8 01 00 00 00       	mov    $0x1,%eax
    2a29:	39 d7                	cmp    %edx,%edi
    2a2b:	75 2b                	jne    2a58 <strings_not_equal+0x54>
    2a2d:	0f b6 03             	movzbl (%ebx),%eax
    2a30:	84 c0                	test   %al,%al
    2a32:	74 18                	je     2a4c <strings_not_equal+0x48>
    2a34:	38 06                	cmp    %al,(%esi)
    2a36:	75 1b                	jne    2a53 <strings_not_equal+0x4f>
    2a38:	83 c3 01             	add    $0x1,%ebx
    2a3b:	83 c6 01             	add    $0x1,%esi
    2a3e:	0f b6 03             	movzbl (%ebx),%eax
    2a41:	84 c0                	test   %al,%al
    2a43:	75 ef                	jne    2a34 <strings_not_equal+0x30>
    2a45:	b8 00 00 00 00       	mov    $0x0,%eax
    2a4a:	eb 0c                	jmp    2a58 <strings_not_equal+0x54>
    2a4c:	b8 00 00 00 00       	mov    $0x0,%eax
    2a51:	eb 05                	jmp    2a58 <strings_not_equal+0x54>
    2a53:	b8 01 00 00 00       	mov    $0x1,%eax
    2a58:	5b                   	pop    %ebx
    2a59:	5e                   	pop    %esi
    2a5a:	5f                   	pop    %edi
    2a5b:	c3                   	ret    

00002a5c <initialize_bomb>:
    2a5c:	56                   	push   %esi
    2a5d:	53                   	push   %ebx
    2a5e:	81 ec 00 10 00 00    	sub    $0x1000,%esp
    2a64:	83 0c 24 00          	orl    $0x0,(%esp)
    2a68:	81 ec 00 10 00 00    	sub    $0x1000,%esp
    2a6e:	83 0c 24 00          	orl    $0x0,(%esp)
    2a72:	83 ec 4c             	sub    $0x4c,%esp
    2a75:	68 69 29 00 00       	push   $0x2969
    2a7a:	6a 02                	push   $0x2
    2a7c:	e8 fc ff ff ff       	call   2a7d <initialize_bomb+0x21>
    2a81:	83 c4 08             	add    $0x8,%esp
    2a84:	6a 40                	push   $0x40
    2a86:	8d 84 24 0c 20 00 00 	lea    0x200c(%esp),%eax
    2a8d:	50                   	push   %eax
    2a8e:	e8 fc ff ff ff       	call   2a8f <initialize_bomb+0x33>
    2a93:	83 c4 10             	add    $0x10,%esp
    2a96:	85 c0                	test   %eax,%eax
    2a98:	75 4a                	jne    2ae4 <initialize_bomb+0x88>
    2a9a:	89 c3                	mov    %eax,%ebx
    2a9c:	a1 40 75 00 00       	mov    0x7540,%eax
    2aa1:	8d b4 24 00 20 00 00 	lea    0x2000(%esp),%esi
    2aa8:	85 c0                	test   %eax,%eax
    2aaa:	74 1f                	je     2acb <initialize_bomb+0x6f>
    2aac:	83 ec 08             	sub    $0x8,%esp
    2aaf:	56                   	push   %esi
    2ab0:	50                   	push   %eax
    2ab1:	e8 fc ff ff ff       	call   2ab2 <initialize_bomb+0x56>
    2ab6:	83 c4 10             	add    $0x10,%esp
    2ab9:	85 c0                	test   %eax,%eax
    2abb:	74 60                	je     2b1d <initialize_bomb+0xc1>
    2abd:	83 c3 01             	add    $0x1,%ebx
    2ac0:	8b 04 9d 40 75 00 00 	mov    0x7540(,%ebx,4),%eax
    2ac7:	85 c0                	test   %eax,%eax
    2ac9:	75 e1                	jne    2aac <initialize_bomb+0x50>
    2acb:	83 ec 0c             	sub    $0xc,%esp
    2ace:	68 10 43 00 00       	push   $0x4310
    2ad3:	e8 fc ff ff ff       	call   2ad4 <initialize_bomb+0x78>
    2ad8:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
    2adf:	e8 fc ff ff ff       	call   2ae0 <initialize_bomb+0x84>
    2ae4:	83 ec 0c             	sub    $0xc,%esp
    2ae7:	68 d8 42 00 00       	push   $0x42d8
    2aec:	e8 fc ff ff ff       	call   2aed <initialize_bomb+0x91>
    2af1:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
    2af8:	e8 fc ff ff ff       	call   2af9 <initialize_bomb+0x9d>
    2afd:	83 ec 04             	sub    $0x4,%esp
    2b00:	8d 44 24 04          	lea    0x4(%esp),%eax
    2b04:	50                   	push   %eax
    2b05:	68 fa 43 00 00       	push   $0x43fa
    2b0a:	6a 01                	push   $0x1
    2b0c:	e8 fc ff ff ff       	call   2b0d <initialize_bomb+0xb1>
    2b11:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
    2b18:	e8 fc ff ff ff       	call   2b19 <initialize_bomb+0xbd>
    2b1d:	83 ec 0c             	sub    $0xc,%esp
    2b20:	8d 44 24 0c          	lea    0xc(%esp),%eax
    2b24:	50                   	push   %eax
    2b25:	e8 8f 0b 00 00       	call   36b9 <init_driver>
    2b2a:	83 c4 10             	add    $0x10,%esp
    2b2d:	85 c0                	test   %eax,%eax
    2b2f:	78 cc                	js     2afd <initialize_bomb+0xa1>
    2b31:	81 c4 44 20 00 00    	add    $0x2044,%esp
    2b37:	5b                   	pop    %ebx
    2b38:	5e                   	pop    %esi
    2b39:	c3                   	ret    

00002b3a <initialize_bomb_solve>:
    2b3a:	c3                   	ret    

00002b3b <blank_line>:
    2b3b:	56                   	push   %esi
    2b3c:	53                   	push   %ebx
    2b3d:	83 ec 04             	sub    $0x4,%esp
    2b40:	8b 74 24 10          	mov    0x10(%esp),%esi
    2b44:	0f b6 1e             	movzbl (%esi),%ebx
    2b47:	84 db                	test   %bl,%bl
    2b49:	74 1b                	je     2b66 <blank_line+0x2b>
    2b4b:	e8 fc ff ff ff       	call   2b4c <blank_line+0x11>
    2b50:	83 c6 01             	add    $0x1,%esi
    2b53:	0f be db             	movsbl %bl,%ebx
    2b56:	8b 00                	mov    (%eax),%eax
    2b58:	f6 44 58 01 20       	testb  $0x20,0x1(%eax,%ebx,2)
    2b5d:	75 e5                	jne    2b44 <blank_line+0x9>
    2b5f:	b8 00 00 00 00       	mov    $0x0,%eax
    2b64:	eb 05                	jmp    2b6b <blank_line+0x30>
    2b66:	b8 01 00 00 00       	mov    $0x1,%eax
    2b6b:	83 c4 04             	add    $0x4,%esp
    2b6e:	5b                   	pop    %ebx
    2b6f:	5e                   	pop    %esi
    2b70:	c3                   	ret    

00002b71 <skip>:
    2b71:	53                   	push   %ebx
    2b72:	83 ec 08             	sub    $0x8,%esp
    2b75:	83 ec 04             	sub    $0x4,%esp
    2b78:	ff 35 6c 77 00 00    	push   0x776c
    2b7e:	6a 55                	push   $0x55
    2b80:	6b 05 d8 77 00 00 55 	imul   $0x55,0x77d8,%eax
    2b87:	05 e0 77 00 00       	add    $0x77e0,%eax
    2b8c:	50                   	push   %eax
    2b8d:	e8 fc ff ff ff       	call   2b8e <skip+0x1d>
    2b92:	89 c3                	mov    %eax,%ebx
    2b94:	83 c4 10             	add    $0x10,%esp
    2b97:	85 c0                	test   %eax,%eax
    2b99:	74 10                	je     2bab <skip+0x3a>
    2b9b:	83 ec 0c             	sub    $0xc,%esp
    2b9e:	50                   	push   %eax
    2b9f:	e8 97 ff ff ff       	call   2b3b <blank_line>
    2ba4:	83 c4 10             	add    $0x10,%esp
    2ba7:	85 c0                	test   %eax,%eax
    2ba9:	75 ca                	jne    2b75 <skip+0x4>
    2bab:	89 d8                	mov    %ebx,%eax
    2bad:	83 c4 08             	add    $0x8,%esp
    2bb0:	5b                   	pop    %ebx
    2bb1:	c3                   	ret    

00002bb2 <send_msg>:
    2bb2:	53                   	push   %ebx
    2bb3:	8d 84 24 00 c0 ff ff 	lea    -0x4000(%esp),%eax
    2bba:	81 ec 00 10 00 00    	sub    $0x1000,%esp
    2bc0:	83 0c 24 00          	orl    $0x0,(%esp)
    2bc4:	39 c4                	cmp    %eax,%esp
    2bc6:	75 f2                	jne    2bba <send_msg+0x8>
    2bc8:	83 ec 08             	sub    $0x8,%esp
    2bcb:	8b 0d d8 77 00 00    	mov    0x77d8,%ecx
    2bd1:	8d 41 ff             	lea    -0x1(%ecx),%eax
    2bd4:	6b c0 55             	imul   $0x55,%eax,%eax
    2bd7:	05 e0 77 00 00       	add    $0x77e0,%eax
    2bdc:	83 bc 24 10 40 00 00 	cmpl   $0x0,0x4010(%esp)
    2be3:	00 
    2be4:	ba 14 44 00 00       	mov    $0x4414,%edx
    2be9:	bb 1c 44 00 00       	mov    $0x441c,%ebx
    2bee:	0f 44 d3             	cmove  %ebx,%edx
    2bf1:	50                   	push   %eax
    2bf2:	51                   	push   %ecx
    2bf3:	52                   	push   %edx
    2bf4:	ff 35 20 75 00 00    	push   0x7520
    2bfa:	68 25 44 00 00       	push   $0x4425
    2bff:	68 00 20 00 00       	push   $0x2000
    2c04:	6a 01                	push   $0x1
    2c06:	8d 9c 24 1c 20 00 00 	lea    0x201c(%esp),%ebx
    2c0d:	53                   	push   %ebx
    2c0e:	e8 fc ff ff ff       	call   2c0f <send_msg+0x5d>
    2c13:	83 c4 20             	add    $0x20,%esp
    2c16:	54                   	push   %esp
    2c17:	6a 00                	push   $0x0
    2c19:	53                   	push   %ebx
    2c1a:	68 20 71 00 00       	push   $0x7120
    2c1f:	e8 4f 0c 00 00       	call   3873 <driver_post>
    2c24:	83 c4 10             	add    $0x10,%esp
    2c27:	85 c0                	test   %eax,%eax
    2c29:	78 08                	js     2c33 <send_msg+0x81>
    2c2b:	81 c4 08 40 00 00    	add    $0x4008,%esp
    2c31:	5b                   	pop    %ebx
    2c32:	c3                   	ret    
    2c33:	83 ec 0c             	sub    $0xc,%esp
    2c36:	8d 44 24 0c          	lea    0xc(%esp),%eax
    2c3a:	50                   	push   %eax
    2c3b:	e8 fc ff ff ff       	call   2c3c <send_msg+0x8a>
    2c40:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c47:	e8 fc ff ff ff       	call   2c48 <send_msg+0x96>

00002c4c <explode_bomb>:
    2c4c:	56                   	push   %esi
    2c4d:	5e                   	pop    %esi
    2c4e:	83 ec 18             	sub    $0x18,%esp
    2c51:	68 31 44 00 00       	push   $0x4431
    2c56:	e8 fc ff ff ff       	call   2c57 <explode_bomb+0xb>
    2c5b:	c7 04 24 3a 44 00 00 	movl   $0x443a,(%esp)
    2c62:	e8 fc ff ff ff       	call   2c63 <explode_bomb+0x17>
    2c67:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2c6e:	e8 3f ff ff ff       	call   2bb2 <send_msg>
    2c73:	c7 04 24 48 43 00 00 	movl   $0x4348,(%esp)
    2c7a:	e8 fc ff ff ff       	call   2c7b <explode_bomb+0x2f>
    2c7f:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
    2c86:	e8 fc ff ff ff       	call   2c87 <explode_bomb+0x3b>

00002c8b <read_six_numbers>:
    2c8b:	83 ec 0c             	sub    $0xc,%esp
    2c8e:	8b 44 24 14          	mov    0x14(%esp),%eax
    2c92:	8d 50 14             	lea    0x14(%eax),%edx
    2c95:	52                   	push   %edx
    2c96:	8d 50 10             	lea    0x10(%eax),%edx
    2c99:	52                   	push   %edx
    2c9a:	8d 50 0c             	lea    0xc(%eax),%edx
    2c9d:	52                   	push   %edx
    2c9e:	8d 50 08             	lea    0x8(%eax),%edx
    2ca1:	52                   	push   %edx
    2ca2:	8d 50 04             	lea    0x4(%eax),%edx
    2ca5:	52                   	push   %edx
    2ca6:	50                   	push   %eax
    2ca7:	68 51 44 00 00       	push   $0x4451
    2cac:	ff 74 24 2c          	push   0x2c(%esp)
    2cb0:	e8 fc ff ff ff       	call   2cb1 <read_six_numbers+0x26>
    2cb5:	83 c4 20             	add    $0x20,%esp
    2cb8:	83 f8 05             	cmp    $0x5,%eax
    2cbb:	7e 04                	jle    2cc1 <read_six_numbers+0x36>
    2cbd:	83 c4 0c             	add    $0xc,%esp
    2cc0:	c3                   	ret    
    2cc1:	e8 86 ff ff ff       	call   2c4c <explode_bomb>

00002cc6 <read_line>:
    2cc6:	57                   	push   %edi
    2cc7:	56                   	push   %esi
    2cc8:	53                   	push   %ebx
    2cc9:	e8 a3 fe ff ff       	call   2b71 <skip>
    2cce:	85 c0                	test   %eax,%eax
    2cd0:	74 3e                	je     2d10 <read_line+0x4a>
    2cd2:	8b 1d d8 77 00 00    	mov    0x77d8,%ebx
    2cd8:	6b f3 55             	imul   $0x55,%ebx,%esi
    2cdb:	81 c6 e0 77 00 00    	add    $0x77e0,%esi
    2ce1:	83 ec 0c             	sub    $0xc,%esp
    2ce4:	56                   	push   %esi
    2ce5:	e8 fc ff ff ff       	call   2ce6 <read_line+0x20>
    2cea:	83 c4 10             	add    $0x10,%esp
    2ced:	83 f8 53             	cmp    $0x53,%eax
    2cf0:	0f 8f 8e 00 00 00    	jg     2d84 <read_line+0xbe>
    2cf6:	6b d3 55             	imul   $0x55,%ebx,%edx
    2cf9:	c6 84 10 df 77 00 00 	movb   $0x0,0x77df(%eax,%edx,1)
    2d00:	00 
    2d01:	83 c3 01             	add    $0x1,%ebx
    2d04:	89 1d d8 77 00 00    	mov    %ebx,0x77d8
    2d0a:	89 f0                	mov    %esi,%eax
    2d0c:	5b                   	pop    %ebx
    2d0d:	5e                   	pop    %esi
    2d0e:	5f                   	pop    %edi
    2d0f:	c3                   	ret    
    2d10:	a1 00 00 00 00       	mov    0x0,%eax
    2d15:	39 05 6c 77 00 00    	cmp    %eax,0x776c
    2d1b:	74 1e                	je     2d3b <read_line+0x75>
    2d1d:	83 ec 0c             	sub    $0xc,%esp
    2d20:	68 81 44 00 00       	push   $0x4481
    2d25:	e8 fc ff ff ff       	call   2d26 <read_line+0x60>
    2d2a:	83 c4 10             	add    $0x10,%esp
    2d2d:	85 c0                	test   %eax,%eax
    2d2f:	74 23                	je     2d54 <read_line+0x8e>
    2d31:	83 ec 0c             	sub    $0xc,%esp
    2d34:	6a 00                	push   $0x0
    2d36:	e8 fc ff ff ff       	call   2d37 <read_line+0x71>
    2d3b:	83 ec 0c             	sub    $0xc,%esp
    2d3e:	68 63 44 00 00       	push   $0x4463
    2d43:	e8 fc ff ff ff       	call   2d44 <read_line+0x7e>
    2d48:	c7 04 24 08 00 00 00 	movl   $0x8,(%esp)
    2d4f:	e8 fc ff ff ff       	call   2d50 <read_line+0x8a>
    2d54:	a1 00 00 00 00       	mov    0x0,%eax
    2d59:	a3 6c 77 00 00       	mov    %eax,0x776c
    2d5e:	e8 0e fe ff ff       	call   2b71 <skip>
    2d63:	85 c0                	test   %eax,%eax
    2d65:	0f 85 67 ff ff ff    	jne    2cd2 <read_line+0xc>
    2d6b:	83 ec 0c             	sub    $0xc,%esp
    2d6e:	68 63 44 00 00       	push   $0x4463
    2d73:	e8 fc ff ff ff       	call   2d74 <read_line+0xae>
    2d78:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    2d7f:	e8 fc ff ff ff       	call   2d80 <read_line+0xba>
    2d84:	83 ec 0c             	sub    $0xc,%esp
    2d87:	68 8c 44 00 00       	push   $0x448c
    2d8c:	e8 fc ff ff ff       	call   2d8d <read_line+0xc7>
    2d91:	a1 d8 77 00 00       	mov    0x77d8,%eax
    2d96:	8d 50 01             	lea    0x1(%eax),%edx
    2d99:	89 15 d8 77 00 00    	mov    %edx,0x77d8
    2d9f:	6b c0 55             	imul   $0x55,%eax,%eax
    2da2:	05 e0 77 00 00       	add    $0x77e0,%eax
    2da7:	be a7 44 00 00       	mov    $0x44a7,%esi
    2dac:	b9 04 00 00 00       	mov    $0x4,%ecx
    2db1:	89 c7                	mov    %eax,%edi
    2db3:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    2db5:	e8 92 fe ff ff       	call   2c4c <explode_bomb>

00002dba <phase_defused>:
    2dba:	83 ec 18             	sub    $0x18,%esp
    2dbd:	6a 01                	push   $0x1
    2dbf:	e8 ee fd ff ff       	call   2bb2 <send_msg>
    2dc4:	83 c4 10             	add    $0x10,%esp
    2dc7:	83 3d d8 77 00 00 09 	cmpl   $0x9,0x77d8
    2dce:	74 04                	je     2dd4 <phase_defused+0x1a>
    2dd0:	83 c4 0c             	add    $0xc,%esp
    2dd3:	c3                   	ret    
    2dd4:	83 ec 0c             	sub    $0xc,%esp
    2dd7:	68 6c 43 00 00       	push   $0x436c
    2ddc:	e8 fc ff ff ff       	call   2ddd <phase_defused+0x23>
    2de1:	c7 04 24 98 43 00 00 	movl   $0x4398,(%esp)
    2de8:	e8 fc ff ff ff       	call   2de9 <phase_defused+0x2f>
    2ded:	83 c4 10             	add    $0x10,%esp
    2df0:	eb de                	jmp    2dd0 <phase_defused+0x16>

00002df2 <sigalrm_handler>:
    2df2:	56                   	push   %esi
    2df3:	5e                   	pop    %esi
    2df4:	83 ec 0c             	sub    $0xc,%esp
    2df7:	6a 00                	push   $0x0
    2df9:	68 30 47 00 00       	push   $0x4730
    2dfe:	6a 01                	push   $0x1
    2e00:	ff 35 00 00 00 00    	push   0x0
    2e06:	e8 fc ff ff ff       	call   2e07 <sigalrm_handler+0x15>
    2e0b:	c7 04 24 01 00 00 00 	movl   $0x1,(%esp)
    2e12:	e8 fc ff ff ff       	call   2e13 <sigalrm_handler+0x21>

00002e17 <rio_readlineb>:
    2e17:	55                   	push   %ebp
    2e18:	57                   	push   %edi
    2e19:	56                   	push   %esi
    2e1a:	53                   	push   %ebx
    2e1b:	83 ec 1c             	sub    $0x1c,%esp
    2e1e:	89 d7                	mov    %edx,%edi
    2e20:	83 f9 01             	cmp    $0x1,%ecx
    2e23:	76 7e                	jbe    2ea3 <rio_readlineb+0x8c>
    2e25:	89 c3                	mov    %eax,%ebx
    2e27:	8d 44 0a ff          	lea    -0x1(%edx,%ecx,1),%eax
    2e2b:	89 44 24 0c          	mov    %eax,0xc(%esp)
    2e2f:	bd 01 00 00 00       	mov    $0x1,%ebp
    2e34:	8d 73 0c             	lea    0xc(%ebx),%esi
    2e37:	eb 4f                	jmp    2e88 <rio_readlineb+0x71>
    2e39:	e8 fc ff ff ff       	call   2e3a <rio_readlineb+0x23>
    2e3e:	83 38 04             	cmpl   $0x4,(%eax)
    2e41:	75 4e                	jne    2e91 <rio_readlineb+0x7a>
    2e43:	83 ec 04             	sub    $0x4,%esp
    2e46:	68 00 20 00 00       	push   $0x2000
    2e4b:	56                   	push   %esi
    2e4c:	ff 33                	push   (%ebx)
    2e4e:	e8 fc ff ff ff       	call   2e4f <rio_readlineb+0x38>
    2e53:	89 43 04             	mov    %eax,0x4(%ebx)
    2e56:	83 c4 10             	add    $0x10,%esp
    2e59:	85 c0                	test   %eax,%eax
    2e5b:	78 dc                	js     2e39 <rio_readlineb+0x22>
    2e5d:	74 37                	je     2e96 <rio_readlineb+0x7f>
    2e5f:	89 73 08             	mov    %esi,0x8(%ebx)
    2e62:	8b 53 08             	mov    0x8(%ebx),%edx
    2e65:	0f b6 0a             	movzbl (%edx),%ecx
    2e68:	83 c2 01             	add    $0x1,%edx
    2e6b:	89 53 08             	mov    %edx,0x8(%ebx)
    2e6e:	83 e8 01             	sub    $0x1,%eax
    2e71:	89 43 04             	mov    %eax,0x4(%ebx)
    2e74:	83 c7 01             	add    $0x1,%edi
    2e77:	88 4f ff             	mov    %cl,-0x1(%edi)
    2e7a:	80 f9 0a             	cmp    $0xa,%cl
    2e7d:	74 2f                	je     2eae <rio_readlineb+0x97>
    2e7f:	83 c5 01             	add    $0x1,%ebp
    2e82:	3b 7c 24 0c          	cmp    0xc(%esp),%edi
    2e86:	74 22                	je     2eaa <rio_readlineb+0x93>
    2e88:	8b 43 04             	mov    0x4(%ebx),%eax
    2e8b:	85 c0                	test   %eax,%eax
    2e8d:	7e b4                	jle    2e43 <rio_readlineb+0x2c>
    2e8f:	eb d1                	jmp    2e62 <rio_readlineb+0x4b>
    2e91:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    2e96:	85 c0                	test   %eax,%eax
    2e98:	75 21                	jne    2ebb <rio_readlineb+0xa4>
    2e9a:	83 fd 01             	cmp    $0x1,%ebp
    2e9d:	75 0f                	jne    2eae <rio_readlineb+0x97>
    2e9f:	89 c5                	mov    %eax,%ebp
    2ea1:	eb 0e                	jmp    2eb1 <rio_readlineb+0x9a>
    2ea3:	bd 01 00 00 00       	mov    $0x1,%ebp
    2ea8:	eb 04                	jmp    2eae <rio_readlineb+0x97>
    2eaa:	8b 7c 24 0c          	mov    0xc(%esp),%edi
    2eae:	c6 07 00             	movb   $0x0,(%edi)
    2eb1:	89 e8                	mov    %ebp,%eax
    2eb3:	83 c4 1c             	add    $0x1c,%esp
    2eb6:	5b                   	pop    %ebx
    2eb7:	5e                   	pop    %esi
    2eb8:	5f                   	pop    %edi
    2eb9:	5d                   	pop    %ebp
    2eba:	c3                   	ret    
    2ebb:	bd ff ff ff ff       	mov    $0xffffffff,%ebp
    2ec0:	eb ef                	jmp    2eb1 <rio_readlineb+0x9a>

00002ec2 <submitr>:
    2ec2:	55                   	push   %ebp
    2ec3:	57                   	push   %edi
    2ec4:	56                   	push   %esi
    2ec5:	53                   	push   %ebx
    2ec6:	8d 84 24 00 60 ff ff 	lea    -0xa000(%esp),%eax
    2ecd:	81 ec 00 10 00 00    	sub    $0x1000,%esp
    2ed3:	83 0c 24 00          	orl    $0x0,(%esp)
    2ed7:	39 c4                	cmp    %eax,%esp
    2ed9:	75 f2                	jne    2ecd <submitr+0xb>
    2edb:	83 ec 50             	sub    $0x50,%esp
    2ede:	c7 84 24 24 20 00 00 	movl   $0x0,0x2024(%esp)
    2ee5:	00 00 00 00 
    2ee9:	6a 00                	push   $0x0
    2eeb:	6a 01                	push   $0x1
    2eed:	6a 02                	push   $0x2
    2eef:	e8 fc ff ff ff       	call   2ef0 <submitr+0x2e>
    2ef4:	83 c4 10             	add    $0x10,%esp
    2ef7:	85 c0                	test   %eax,%eax
    2ef9:	0f 88 45 01 00 00    	js     3044 <submitr+0x182>
    2eff:	89 c5                	mov    %eax,%ebp
    2f01:	83 ec 0c             	sub    $0xc,%esp
    2f04:	ff b4 24 6c a0 00 00 	push   0xa06c(%esp)
    2f0b:	e8 fc ff ff ff       	call   2f0c <submitr+0x4a>
    2f10:	83 c4 10             	add    $0x10,%esp
    2f13:	85 c0                	test   %eax,%eax
    2f15:	0f 84 7e 01 00 00    	je     3099 <submitr+0x1d7>
    2f1b:	8d 9c 24 30 a0 00 00 	lea    0xa030(%esp),%ebx
    2f22:	c7 84 24 30 a0 00 00 	movl   $0x0,0xa030(%esp)
    2f29:	00 00 00 00 
    2f2d:	c7 84 24 34 a0 00 00 	movl   $0x0,0xa034(%esp)
    2f34:	00 00 00 00 
    2f38:	c7 84 24 38 a0 00 00 	movl   $0x0,0xa038(%esp)
    2f3f:	00 00 00 00 
    2f43:	c7 84 24 3c a0 00 00 	movl   $0x0,0xa03c(%esp)
    2f4a:	00 00 00 00 
    2f4e:	66 c7 84 24 30 a0 00 	movw   $0x2,0xa030(%esp)
    2f55:	00 02 00 
    2f58:	6a 0c                	push   $0xc
    2f5a:	ff 70 0c             	push   0xc(%eax)
    2f5d:	8b 40 10             	mov    0x10(%eax),%eax
    2f60:	ff 30                	push   (%eax)
    2f62:	8d 84 24 40 a0 00 00 	lea    0xa040(%esp),%eax
    2f69:	50                   	push   %eax
    2f6a:	e8 fc ff ff ff       	call   2f6b <submitr+0xa9>
    2f6f:	0f b7 84 24 74 a0 00 	movzwl 0xa074(%esp),%eax
    2f76:	00 
    2f77:	66 c1 c0 08          	rol    $0x8,%ax
    2f7b:	66 89 84 24 42 a0 00 	mov    %ax,0xa042(%esp)
    2f82:	00 
    2f83:	83 c4 0c             	add    $0xc,%esp
    2f86:	6a 10                	push   $0x10
    2f88:	53                   	push   %ebx
    2f89:	55                   	push   %ebp
    2f8a:	e8 fc ff ff ff       	call   2f8b <submitr+0xc9>
    2f8f:	83 c4 10             	add    $0x10,%esp
    2f92:	85 c0                	test   %eax,%eax
    2f94:	0f 88 72 01 00 00    	js     310c <submitr+0x24a>
    2f9a:	83 ec 0c             	sub    $0xc,%esp
    2f9d:	ff b4 24 80 a0 00 00 	push   0xa080(%esp)
    2fa4:	e8 fc ff ff ff       	call   2fa5 <submitr+0xe3>
    2fa9:	83 c4 04             	add    $0x4,%esp
    2fac:	89 c3                	mov    %eax,%ebx
    2fae:	ff b4 24 74 a0 00 00 	push   0xa074(%esp)
    2fb5:	e8 fc ff ff ff       	call   2fb6 <submitr+0xf4>
    2fba:	83 c4 04             	add    $0x4,%esp
    2fbd:	89 c7                	mov    %eax,%edi
    2fbf:	ff b4 24 78 a0 00 00 	push   0xa078(%esp)
    2fc6:	e8 fc ff ff ff       	call   2fc7 <submitr+0x105>
    2fcb:	83 c4 04             	add    $0x4,%esp
    2fce:	89 c6                	mov    %eax,%esi
    2fd0:	ff b4 24 7c a0 00 00 	push   0xa07c(%esp)
    2fd7:	e8 fc ff ff ff       	call   2fd8 <submitr+0x116>
    2fdc:	83 c4 10             	add    $0x10,%esp
    2fdf:	89 c2                	mov    %eax,%edx
    2fe1:	8d 84 37 80 00 00 00 	lea    0x80(%edi,%esi,1),%eax
    2fe8:	01 d0                	add    %edx,%eax
    2fea:	8d 14 5b             	lea    (%ebx,%ebx,2),%edx
    2fed:	01 d0                	add    %edx,%eax
    2fef:	3d 00 20 00 00       	cmp    $0x2000,%eax
    2ff4:	0f 87 77 01 00 00    	ja     3171 <submitr+0x2af>
    2ffa:	8d 94 24 24 40 00 00 	lea    0x4024(%esp),%edx
    3001:	b9 00 08 00 00       	mov    $0x800,%ecx
    3006:	b8 00 00 00 00       	mov    $0x0,%eax
    300b:	89 d7                	mov    %edx,%edi
    300d:	f3 ab                	rep stos %eax,%es:(%edi)
    300f:	83 ec 0c             	sub    $0xc,%esp
    3012:	ff b4 24 80 a0 00 00 	push   0xa080(%esp)
    3019:	e8 fc ff ff ff       	call   301a <submitr+0x158>
    301e:	83 c4 10             	add    $0x10,%esp
    3021:	89 c7                	mov    %eax,%edi
    3023:	85 c0                	test   %eax,%eax
    3025:	0f 84 5a 02 00 00    	je     3285 <submitr+0x3c3>
    302b:	8b 9c 24 74 a0 00 00 	mov    0xa074(%esp),%ebx
    3032:	8d b4 24 24 40 00 00 	lea    0x4024(%esp),%esi
    3039:	89 6c 24 0c          	mov    %ebp,0xc(%esp)
    303d:	89 dd                	mov    %ebx,%ebp
    303f:	e9 bf 01 00 00       	jmp    3203 <submitr+0x341>
    3044:	8b 84 24 78 a0 00 00 	mov    0xa078(%esp),%eax
    304b:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
    3051:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
    3058:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
    305f:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
    3066:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
    306d:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
    3074:	c7 40 18 63 72 65 61 	movl   $0x61657263,0x18(%eax)
    307b:	c7 40 1c 74 65 20 73 	movl   $0x73206574,0x1c(%eax)
    3082:	c7 40 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%eax)
    3089:	66 c7 40 24 74 00    	movw   $0x74,0x24(%eax)
    308f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3094:	e9 a0 04 00 00       	jmp    3539 <submitr+0x677>
    3099:	8b 84 24 78 a0 00 00 	mov    0xa078(%esp),%eax
    30a0:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
    30a6:	c7 40 04 72 3a 20 44 	movl   $0x44203a72,0x4(%eax)
    30ad:	c7 40 08 4e 53 20 69 	movl   $0x6920534e,0x8(%eax)
    30b4:	c7 40 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%eax)
    30bb:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
    30c2:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
    30c9:	c7 40 18 72 65 73 6f 	movl   $0x6f736572,0x18(%eax)
    30d0:	c7 40 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%eax)
    30d7:	c7 40 20 73 65 72 76 	movl   $0x76726573,0x20(%eax)
    30de:	c7 40 24 65 72 20 61 	movl   $0x61207265,0x24(%eax)
    30e5:	c7 40 28 64 64 72 65 	movl   $0x65726464,0x28(%eax)
    30ec:	66 c7 40 2c 73 73    	movw   $0x7373,0x2c(%eax)
    30f2:	c6 40 2e 00          	movb   $0x0,0x2e(%eax)
    30f6:	83 ec 0c             	sub    $0xc,%esp
    30f9:	55                   	push   %ebp
    30fa:	e8 fc ff ff ff       	call   30fb <submitr+0x239>
    30ff:	83 c4 10             	add    $0x10,%esp
    3102:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3107:	e9 2d 04 00 00       	jmp    3539 <submitr+0x677>
    310c:	8b 84 24 78 a0 00 00 	mov    0xa078(%esp),%eax
    3113:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
    3119:	c7 40 04 72 3a 20 55 	movl   $0x55203a72,0x4(%eax)
    3120:	c7 40 08 6e 61 62 6c 	movl   $0x6c62616e,0x8(%eax)
    3127:	c7 40 0c 65 20 74 6f 	movl   $0x6f742065,0xc(%eax)
    312e:	c7 40 10 20 63 6f 6e 	movl   $0x6e6f6320,0x10(%eax)
    3135:	c7 40 14 6e 65 63 74 	movl   $0x7463656e,0x14(%eax)
    313c:	c7 40 18 20 74 6f 20 	movl   $0x206f7420,0x18(%eax)
    3143:	c7 40 1c 74 68 65 20 	movl   $0x20656874,0x1c(%eax)
    314a:	c7 40 20 73 65 72 76 	movl   $0x76726573,0x20(%eax)
    3151:	66 c7 40 24 65 72    	movw   $0x7265,0x24(%eax)
    3157:	c6 40 26 00          	movb   $0x0,0x26(%eax)
    315b:	83 ec 0c             	sub    $0xc,%esp
    315e:	55                   	push   %ebp
    315f:	e8 fc ff ff ff       	call   3160 <submitr+0x29e>
    3164:	83 c4 10             	add    $0x10,%esp
    3167:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    316c:	e9 c8 03 00 00       	jmp    3539 <submitr+0x677>
    3171:	8b 84 24 78 a0 00 00 	mov    0xa078(%esp),%eax
    3178:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
    317e:	c7 40 04 72 3a 20 52 	movl   $0x52203a72,0x4(%eax)
    3185:	c7 40 08 65 73 75 6c 	movl   $0x6c757365,0x8(%eax)
    318c:	c7 40 0c 74 20 73 74 	movl   $0x74732074,0xc(%eax)
    3193:	c7 40 10 72 69 6e 67 	movl   $0x676e6972,0x10(%eax)
    319a:	c7 40 14 20 74 6f 6f 	movl   $0x6f6f7420,0x14(%eax)
    31a1:	c7 40 18 20 6c 61 72 	movl   $0x72616c20,0x18(%eax)
    31a8:	c7 40 1c 67 65 2e 20 	movl   $0x202e6567,0x1c(%eax)
    31af:	c7 40 20 49 6e 63 72 	movl   $0x72636e49,0x20(%eax)
    31b6:	c7 40 24 65 61 73 65 	movl   $0x65736165,0x24(%eax)
    31bd:	c7 40 28 20 53 55 42 	movl   $0x42555320,0x28(%eax)
    31c4:	c7 40 2c 4d 49 54 52 	movl   $0x5254494d,0x2c(%eax)
    31cb:	c7 40 30 5f 4d 41 58 	movl   $0x58414d5f,0x30(%eax)
    31d2:	c7 40 34 42 55 46 00 	movl   $0x465542,0x34(%eax)
    31d9:	83 ec 0c             	sub    $0xc,%esp
    31dc:	55                   	push   %ebp
    31dd:	e8 fc ff ff ff       	call   31de <submitr+0x31c>
    31e2:	83 c4 10             	add    $0x10,%esp
    31e5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    31ea:	e9 4a 03 00 00       	jmp    3539 <submitr+0x677>
    31ef:	3c 5f                	cmp    $0x5f,%al
    31f1:	75 72                	jne    3265 <submitr+0x3a3>
    31f3:	88 06                	mov    %al,(%esi)
    31f5:	8d 76 01             	lea    0x1(%esi),%esi
    31f8:	83 c3 01             	add    $0x1,%ebx
    31fb:	8d 44 3d 00          	lea    0x0(%ebp,%edi,1),%eax
    31ff:	39 c3                	cmp    %eax,%ebx
    3201:	74 7e                	je     3281 <submitr+0x3bf>
    3203:	0f b6 03             	movzbl (%ebx),%eax
    3206:	8d 50 d6             	lea    -0x2a(%eax),%edx
    3209:	80 fa 0f             	cmp    $0xf,%dl
    320c:	77 e1                	ja     31ef <submitr+0x32d>
    320e:	b9 d9 ff 00 00       	mov    $0xffd9,%ecx
    3213:	0f a3 d1             	bt     %edx,%ecx
    3216:	72 db                	jb     31f3 <submitr+0x331>
    3218:	3c 5f                	cmp    $0x5f,%al
    321a:	74 d7                	je     31f3 <submitr+0x331>
    321c:	8d 50 e0             	lea    -0x20(%eax),%edx
    321f:	80 fa 5f             	cmp    $0x5f,%dl
    3222:	76 08                	jbe    322c <submitr+0x36a>
    3224:	3c 09                	cmp    $0x9,%al
    3226:	0f 85 ff 03 00 00    	jne    362b <submitr+0x769>
    322c:	83 ec 0c             	sub    $0xc,%esp
    322f:	0f b6 c0             	movzbl %al,%eax
    3232:	50                   	push   %eax
    3233:	68 3a 48 00 00       	push   $0x483a
    3238:	6a 08                	push   $0x8
    323a:	6a 01                	push   $0x1
    323c:	8d 44 24 34          	lea    0x34(%esp),%eax
    3240:	50                   	push   %eax
    3241:	e8 fc ff ff ff       	call   3242 <submitr+0x380>
    3246:	0f b6 44 24 38       	movzbl 0x38(%esp),%eax
    324b:	88 06                	mov    %al,(%esi)
    324d:	0f b6 44 24 39       	movzbl 0x39(%esp),%eax
    3252:	88 46 01             	mov    %al,0x1(%esi)
    3255:	0f b6 44 24 3a       	movzbl 0x3a(%esp),%eax
    325a:	88 46 02             	mov    %al,0x2(%esi)
    325d:	83 c4 20             	add    $0x20,%esp
    3260:	8d 76 03             	lea    0x3(%esi),%esi
    3263:	eb 93                	jmp    31f8 <submitr+0x336>
    3265:	89 c2                	mov    %eax,%edx
    3267:	83 e2 df             	and    $0xffffffdf,%edx
    326a:	83 ea 41             	sub    $0x41,%edx
    326d:	80 fa 19             	cmp    $0x19,%dl
    3270:	76 81                	jbe    31f3 <submitr+0x331>
    3272:	3c 20                	cmp    $0x20,%al
    3274:	75 a6                	jne    321c <submitr+0x35a>
    3276:	c6 06 2b             	movb   $0x2b,(%esi)
    3279:	8d 76 01             	lea    0x1(%esi),%esi
    327c:	e9 77 ff ff ff       	jmp    31f8 <submitr+0x336>
    3281:	8b 6c 24 0c          	mov    0xc(%esp),%ebp
    3285:	8d 84 24 24 40 00 00 	lea    0x4024(%esp),%eax
    328c:	50                   	push   %eax
    328d:	ff b4 24 74 a0 00 00 	push   0xa074(%esp)
    3294:	ff b4 24 74 a0 00 00 	push   0xa074(%esp)
    329b:	ff b4 24 74 a0 00 00 	push   0xa074(%esp)
    32a2:	68 c8 47 00 00       	push   $0x47c8
    32a7:	68 00 20 00 00       	push   $0x2000
    32ac:	6a 01                	push   $0x1
    32ae:	8d 9c 24 40 60 00 00 	lea    0x6040(%esp),%ebx
    32b5:	53                   	push   %ebx
    32b6:	e8 fc ff ff ff       	call   32b7 <submitr+0x3f5>
    32bb:	83 c4 14             	add    $0x14,%esp
    32be:	53                   	push   %ebx
    32bf:	e8 fc ff ff ff       	call   32c0 <submitr+0x3fe>
    32c4:	83 c4 10             	add    $0x10,%esp
    32c7:	89 c3                	mov    %eax,%ebx
    32c9:	8d b4 24 24 60 00 00 	lea    0x6024(%esp),%esi
    32d0:	bf 00 00 00 00       	mov    $0x0,%edi
    32d5:	85 c0                	test   %eax,%eax
    32d7:	0f 85 34 01 00 00    	jne    3411 <submitr+0x54f>
    32dd:	89 ac 24 24 80 00 00 	mov    %ebp,0x8024(%esp)
    32e4:	c7 84 24 28 80 00 00 	movl   $0x0,0x8028(%esp)
    32eb:	00 00 00 00 
    32ef:	8d 84 24 30 80 00 00 	lea    0x8030(%esp),%eax
    32f6:	89 84 24 2c 80 00 00 	mov    %eax,0x802c(%esp)
    32fd:	b9 00 20 00 00       	mov    $0x2000,%ecx
    3302:	8d 94 24 24 60 00 00 	lea    0x6024(%esp),%edx
    3309:	8d 84 24 24 80 00 00 	lea    0x8024(%esp),%eax
    3310:	e8 02 fb ff ff       	call   2e17 <rio_readlineb>
    3315:	85 c0                	test   %eax,%eax
    3317:	0f 8e 18 01 00 00    	jle    3435 <submitr+0x573>
    331d:	83 ec 0c             	sub    $0xc,%esp
    3320:	8d 44 24 2c          	lea    0x2c(%esp),%eax
    3324:	50                   	push   %eax
    3325:	8d 84 24 30 20 00 00 	lea    0x2030(%esp),%eax
    332c:	50                   	push   %eax
    332d:	8d 84 24 38 20 00 00 	lea    0x2038(%esp),%eax
    3334:	50                   	push   %eax
    3335:	68 41 48 00 00       	push   $0x4841
    333a:	8d 84 24 40 60 00 00 	lea    0x6040(%esp),%eax
    3341:	50                   	push   %eax
    3342:	e8 fc ff ff ff       	call   3343 <submitr+0x481>
    3347:	8b 84 24 40 20 00 00 	mov    0x2040(%esp),%eax
    334e:	83 c4 20             	add    $0x20,%esp
    3351:	3d c8 00 00 00       	cmp    $0xc8,%eax
    3356:	0f 85 56 01 00 00    	jne    34b2 <submitr+0x5f0>
    335c:	8d 9c 24 24 60 00 00 	lea    0x6024(%esp),%ebx
    3363:	83 ec 08             	sub    $0x8,%esp
    3366:	68 52 48 00 00       	push   $0x4852
    336b:	53                   	push   %ebx
    336c:	e8 fc ff ff ff       	call   336d <submitr+0x4ab>
    3371:	83 c4 10             	add    $0x10,%esp
    3374:	85 c0                	test   %eax,%eax
    3376:	0f 84 67 01 00 00    	je     34e3 <submitr+0x621>
    337c:	b9 00 20 00 00       	mov    $0x2000,%ecx
    3381:	89 da                	mov    %ebx,%edx
    3383:	8d 84 24 24 80 00 00 	lea    0x8024(%esp),%eax
    338a:	e8 88 fa ff ff       	call   2e17 <rio_readlineb>
    338f:	85 c0                	test   %eax,%eax
    3391:	7f d0                	jg     3363 <submitr+0x4a1>
    3393:	8b 84 24 78 a0 00 00 	mov    0xa078(%esp),%eax
    339a:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
    33a0:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
    33a7:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
    33ae:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
    33b5:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
    33bc:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
    33c3:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
    33ca:	c7 40 1c 20 68 65 61 	movl   $0x61656820,0x1c(%eax)
    33d1:	c7 40 20 64 65 72 73 	movl   $0x73726564,0x20(%eax)
    33d8:	c7 40 24 20 66 72 6f 	movl   $0x6f726620,0x24(%eax)
    33df:	c7 40 28 6d 20 73 65 	movl   $0x6573206d,0x28(%eax)
    33e6:	c7 40 2c 72 76 65 72 	movl   $0x72657672,0x2c(%eax)
    33ed:	c6 40 30 00          	movb   $0x0,0x30(%eax)
    33f1:	83 ec 0c             	sub    $0xc,%esp
    33f4:	55                   	push   %ebp
    33f5:	e8 fc ff ff ff       	call   33f6 <submitr+0x534>
    33fa:	83 c4 10             	add    $0x10,%esp
    33fd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3402:	e9 32 01 00 00       	jmp    3539 <submitr+0x677>
    3407:	01 c6                	add    %eax,%esi
    3409:	29 c3                	sub    %eax,%ebx
    340b:	0f 84 cc fe ff ff    	je     32dd <submitr+0x41b>
    3411:	83 ec 04             	sub    $0x4,%esp
    3414:	53                   	push   %ebx
    3415:	56                   	push   %esi
    3416:	55                   	push   %ebp
    3417:	e8 fc ff ff ff       	call   3418 <submitr+0x556>
    341c:	83 c4 10             	add    $0x10,%esp
    341f:	85 c0                	test   %eax,%eax
    3421:	7f e4                	jg     3407 <submitr+0x545>
    3423:	e8 fc ff ff ff       	call   3424 <submitr+0x562>
    3428:	83 38 04             	cmpl   $0x4,(%eax)
    342b:	0f 85 91 01 00 00    	jne    35c2 <submitr+0x700>
    3431:	89 f8                	mov    %edi,%eax
    3433:	eb d2                	jmp    3407 <submitr+0x545>
    3435:	8b 84 24 78 a0 00 00 	mov    0xa078(%esp),%eax
    343c:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
    3442:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
    3449:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
    3450:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
    3457:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
    345e:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
    3465:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
    346c:	c7 40 1c 20 66 69 72 	movl   $0x72696620,0x1c(%eax)
    3473:	c7 40 20 73 74 20 68 	movl   $0x68207473,0x20(%eax)
    347a:	c7 40 24 65 61 64 65 	movl   $0x65646165,0x24(%eax)
    3481:	c7 40 28 72 20 66 72 	movl   $0x72662072,0x28(%eax)
    3488:	c7 40 2c 6f 6d 20 73 	movl   $0x73206d6f,0x2c(%eax)
    348f:	c7 40 30 65 72 76 65 	movl   $0x65767265,0x30(%eax)
    3496:	66 c7 40 34 72 00    	movw   $0x72,0x34(%eax)
    349c:	83 ec 0c             	sub    $0xc,%esp
    349f:	55                   	push   %ebp
    34a0:	e8 fc ff ff ff       	call   34a1 <submitr+0x5df>
    34a5:	83 c4 10             	add    $0x10,%esp
    34a8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    34ad:	e9 87 00 00 00       	jmp    3539 <submitr+0x677>
    34b2:	83 ec 08             	sub    $0x8,%esp
    34b5:	8d 54 24 28          	lea    0x28(%esp),%edx
    34b9:	52                   	push   %edx
    34ba:	50                   	push   %eax
    34bb:	68 54 47 00 00       	push   $0x4754
    34c0:	6a ff                	push   $0xffffffff
    34c2:	6a 01                	push   $0x1
    34c4:	ff b4 24 94 a0 00 00 	push   0xa094(%esp)
    34cb:	e8 fc ff ff ff       	call   34cc <submitr+0x60a>
    34d0:	83 c4 14             	add    $0x14,%esp
    34d3:	55                   	push   %ebp
    34d4:	e8 fc ff ff ff       	call   34d5 <submitr+0x613>
    34d9:	83 c4 10             	add    $0x10,%esp
    34dc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    34e1:	eb 56                	jmp    3539 <submitr+0x677>
    34e3:	b9 00 20 00 00       	mov    $0x2000,%ecx
    34e8:	8d 94 24 24 60 00 00 	lea    0x6024(%esp),%edx
    34ef:	8d 84 24 24 80 00 00 	lea    0x8024(%esp),%eax
    34f6:	e8 1c f9 ff ff       	call   2e17 <rio_readlineb>
    34fb:	85 c0                	test   %eax,%eax
    34fd:	7e 45                	jle    3544 <submitr+0x682>
    34ff:	83 ec 08             	sub    $0x8,%esp
    3502:	8d 84 24 2c 60 00 00 	lea    0x602c(%esp),%eax
    3509:	50                   	push   %eax
    350a:	ff b4 24 84 a0 00 00 	push   0xa084(%esp)
    3511:	e8 fc ff ff ff       	call   3512 <submitr+0x650>
    3516:	89 2c 24             	mov    %ebp,(%esp)
    3519:	e8 fc ff ff ff       	call   351a <submitr+0x658>
    351e:	83 c4 08             	add    $0x8,%esp
    3521:	68 55 48 00 00       	push   $0x4855
    3526:	ff b4 24 84 a0 00 00 	push   0xa084(%esp)
    352d:	e8 fc ff ff ff       	call   352e <submitr+0x66c>
    3532:	83 c4 10             	add    $0x10,%esp
    3535:	f7 d8                	neg    %eax
    3537:	19 c0                	sbb    %eax,%eax
    3539:	81 c4 4c a0 00 00    	add    $0xa04c,%esp
    353f:	5b                   	pop    %ebx
    3540:	5e                   	pop    %esi
    3541:	5f                   	pop    %edi
    3542:	5d                   	pop    %ebp
    3543:	c3                   	ret    
    3544:	8b 84 24 78 a0 00 00 	mov    0xa078(%esp),%eax
    354b:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
    3551:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
    3558:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
    355f:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
    3566:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
    356d:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
    3574:	c7 40 18 72 65 61 64 	movl   $0x64616572,0x18(%eax)
    357b:	c7 40 1c 20 73 74 61 	movl   $0x61747320,0x1c(%eax)
    3582:	c7 40 20 74 75 73 20 	movl   $0x20737574,0x20(%eax)
    3589:	c7 40 24 6d 65 73 73 	movl   $0x7373656d,0x24(%eax)
    3590:	c7 40 28 61 67 65 20 	movl   $0x20656761,0x28(%eax)
    3597:	c7 40 2c 66 72 6f 6d 	movl   $0x6d6f7266,0x2c(%eax)
    359e:	c7 40 30 20 73 65 72 	movl   $0x72657320,0x30(%eax)
    35a5:	c7 40 34 76 65 72 00 	movl   $0x726576,0x34(%eax)
    35ac:	83 ec 0c             	sub    $0xc,%esp
    35af:	55                   	push   %ebp
    35b0:	e8 fc ff ff ff       	call   35b1 <submitr+0x6ef>
    35b5:	83 c4 10             	add    $0x10,%esp
    35b8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    35bd:	e9 77 ff ff ff       	jmp    3539 <submitr+0x677>
    35c2:	8b 84 24 78 a0 00 00 	mov    0xa078(%esp),%eax
    35c9:	c7 00 45 72 72 6f    	movl   $0x6f727245,(%eax)
    35cf:	c7 40 04 72 3a 20 43 	movl   $0x43203a72,0x4(%eax)
    35d6:	c7 40 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%eax)
    35dd:	c7 40 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%eax)
    35e4:	c7 40 10 61 62 6c 65 	movl   $0x656c6261,0x10(%eax)
    35eb:	c7 40 14 20 74 6f 20 	movl   $0x206f7420,0x14(%eax)
    35f2:	c7 40 18 77 72 69 74 	movl   $0x74697277,0x18(%eax)
    35f9:	c7 40 1c 65 20 74 6f 	movl   $0x6f742065,0x1c(%eax)
    3600:	c7 40 20 20 74 68 65 	movl   $0x65687420,0x20(%eax)
    3607:	c7 40 24 20 73 65 72 	movl   $0x72657320,0x24(%eax)
    360e:	c7 40 28 76 65 72 00 	movl   $0x726576,0x28(%eax)
    3615:	83 ec 0c             	sub    $0xc,%esp
    3618:	55                   	push   %ebp
    3619:	e8 fc ff ff ff       	call   361a <submitr+0x758>
    361e:	83 c4 10             	add    $0x10,%esp
    3621:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3626:	e9 0e ff ff ff       	jmp    3539 <submitr+0x677>
    362b:	8b 6c 24 0c          	mov    0xc(%esp),%ebp
    362f:	a1 84 47 00 00       	mov    0x4784,%eax
    3634:	8b 8c 24 78 a0 00 00 	mov    0xa078(%esp),%ecx
    363b:	89 01                	mov    %eax,(%ecx)
    363d:	a1 c3 47 00 00       	mov    0x47c3,%eax
    3642:	8b 8c 24 78 a0 00 00 	mov    0xa078(%esp),%ecx
    3649:	89 41 3f             	mov    %eax,0x3f(%ecx)
    364c:	8b 84 24 78 a0 00 00 	mov    0xa078(%esp),%eax
    3653:	8d 78 04             	lea    0x4(%eax),%edi
    3656:	83 e7 fc             	and    $0xfffffffc,%edi
    3659:	29 f8                	sub    %edi,%eax
    365b:	be 84 47 00 00       	mov    $0x4784,%esi
    3660:	29 c6                	sub    %eax,%esi
    3662:	83 c0 43             	add    $0x43,%eax
    3665:	c1 e8 02             	shr    $0x2,%eax
    3668:	89 c1                	mov    %eax,%ecx
    366a:	f3 a5                	rep movsl %ds:(%esi),%es:(%edi)
    366c:	83 ec 0c             	sub    $0xc,%esp
    366f:	55                   	push   %ebp
    3670:	e8 fc ff ff ff       	call   3671 <submitr+0x7af>
    3675:	83 c4 10             	add    $0x10,%esp
    3678:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    367d:	e9 b7 fe ff ff       	jmp    3539 <submitr+0x677>

00003682 <init_timeout>:
    3682:	53                   	push   %ebx
    3683:	83 ec 08             	sub    $0x8,%esp
    3686:	8b 5c 24 10          	mov    0x10(%esp),%ebx
    368a:	85 db                	test   %ebx,%ebx
    368c:	75 05                	jne    3693 <init_timeout+0x11>
    368e:	83 c4 08             	add    $0x8,%esp
    3691:	5b                   	pop    %ebx
    3692:	c3                   	ret    
    3693:	83 ec 08             	sub    $0x8,%esp
    3696:	68 f2 2d 00 00       	push   $0x2df2
    369b:	6a 0e                	push   $0xe
    369d:	e8 fc ff ff ff       	call   369e <init_timeout+0x1c>
    36a2:	85 db                	test   %ebx,%ebx
    36a4:	b8 00 00 00 00       	mov    $0x0,%eax
    36a9:	0f 48 d8             	cmovs  %eax,%ebx
    36ac:	89 1c 24             	mov    %ebx,(%esp)
    36af:	e8 fc ff ff ff       	call   36b0 <init_timeout+0x2e>
    36b4:	83 c4 10             	add    $0x10,%esp
    36b7:	eb d5                	jmp    368e <init_timeout+0xc>

000036b9 <init_driver>:
    36b9:	57                   	push   %edi
    36ba:	56                   	push   %esi
    36bb:	53                   	push   %ebx
    36bc:	83 ec 18             	sub    $0x18,%esp
    36bf:	8b 74 24 28          	mov    0x28(%esp),%esi
    36c3:	6a 01                	push   $0x1
    36c5:	6a 0d                	push   $0xd
    36c7:	e8 fc ff ff ff       	call   36c8 <init_driver+0xf>
    36cc:	83 c4 08             	add    $0x8,%esp
    36cf:	6a 01                	push   $0x1
    36d1:	6a 1d                	push   $0x1d
    36d3:	e8 fc ff ff ff       	call   36d4 <init_driver+0x1b>
    36d8:	83 c4 08             	add    $0x8,%esp
    36db:	6a 01                	push   $0x1
    36dd:	6a 1d                	push   $0x1d
    36df:	e8 fc ff ff ff       	call   36e0 <init_driver+0x27>
    36e4:	83 c4 0c             	add    $0xc,%esp
    36e7:	6a 00                	push   $0x0
    36e9:	6a 01                	push   $0x1
    36eb:	6a 02                	push   $0x2
    36ed:	e8 fc ff ff ff       	call   36ee <init_driver+0x35>
    36f2:	83 c4 10             	add    $0x10,%esp
    36f5:	85 c0                	test   %eax,%eax
    36f7:	0f 88 93 00 00 00    	js     3790 <init_driver+0xd7>
    36fd:	89 c3                	mov    %eax,%ebx
    36ff:	83 ec 0c             	sub    $0xc,%esp
    3702:	68 ef 44 00 00       	push   $0x44ef
    3707:	e8 fc ff ff ff       	call   3708 <init_driver+0x4f>
    370c:	83 c4 10             	add    $0x10,%esp
    370f:	85 c0                	test   %eax,%eax
    3711:	0f 84 c4 00 00 00    	je     37db <init_driver+0x122>
    3717:	89 e7                	mov    %esp,%edi
    3719:	c7 04 24 00 00 00 00 	movl   $0x0,(%esp)
    3720:	c7 44 24 04 00 00 00 	movl   $0x0,0x4(%esp)
    3727:	00 
    3728:	c7 44 24 08 00 00 00 	movl   $0x0,0x8(%esp)
    372f:	00 
    3730:	c7 44 24 0c 00 00 00 	movl   $0x0,0xc(%esp)
    3737:	00 
    3738:	66 c7 04 24 02 00    	movw   $0x2,(%esp)
    373e:	6a 0c                	push   $0xc
    3740:	ff 70 0c             	push   0xc(%eax)
    3743:	8b 40 10             	mov    0x10(%eax),%eax
    3746:	ff 30                	push   (%eax)
    3748:	8d 44 24 10          	lea    0x10(%esp),%eax
    374c:	50                   	push   %eax
    374d:	e8 fc ff ff ff       	call   374e <init_driver+0x95>
    3752:	66 c7 44 24 12 3b 6c 	movw   $0x6c3b,0x12(%esp)
    3759:	83 c4 0c             	add    $0xc,%esp
    375c:	6a 10                	push   $0x10
    375e:	57                   	push   %edi
    375f:	53                   	push   %ebx
    3760:	e8 fc ff ff ff       	call   3761 <init_driver+0xa8>
    3765:	89 fc                	mov    %edi,%esp
    3767:	85 c0                	test   %eax,%eax
    3769:	0f 88 d8 00 00 00    	js     3847 <init_driver+0x18e>
    376f:	83 ec 0c             	sub    $0xc,%esp
    3772:	53                   	push   %ebx
    3773:	e8 fc ff ff ff       	call   3774 <init_driver+0xbb>
    3778:	66 c7 06 4f 4b       	movw   $0x4b4f,(%esi)
    377d:	c6 46 02 00          	movb   $0x0,0x2(%esi)
    3781:	83 c4 10             	add    $0x10,%esp
    3784:	b8 00 00 00 00       	mov    $0x0,%eax
    3789:	83 c4 10             	add    $0x10,%esp
    378c:	5b                   	pop    %ebx
    378d:	5e                   	pop    %esi
    378e:	5f                   	pop    %edi
    378f:	c3                   	ret    
    3790:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
    3796:	c7 46 04 72 3a 20 43 	movl   $0x43203a72,0x4(%esi)
    379d:	c7 46 08 6c 69 65 6e 	movl   $0x6e65696c,0x8(%esi)
    37a4:	c7 46 0c 74 20 75 6e 	movl   $0x6e752074,0xc(%esi)
    37ab:	c7 46 10 61 62 6c 65 	movl   $0x656c6261,0x10(%esi)
    37b2:	c7 46 14 20 74 6f 20 	movl   $0x206f7420,0x14(%esi)
    37b9:	c7 46 18 63 72 65 61 	movl   $0x61657263,0x18(%esi)
    37c0:	c7 46 1c 74 65 20 73 	movl   $0x73206574,0x1c(%esi)
    37c7:	c7 46 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%esi)
    37ce:	66 c7 46 24 74 00    	movw   $0x74,0x24(%esi)
    37d4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    37d9:	eb ae                	jmp    3789 <init_driver+0xd0>
    37db:	c7 06 45 72 72 6f    	movl   $0x6f727245,(%esi)
    37e1:	c7 46 04 72 3a 20 44 	movl   $0x44203a72,0x4(%esi)
    37e8:	c7 46 08 4e 53 20 69 	movl   $0x6920534e,0x8(%esi)
    37ef:	c7 46 0c 73 20 75 6e 	movl   $0x6e752073,0xc(%esi)
    37f6:	c7 46 10 61 62 6c 65 	movl   $0x656c6261,0x10(%esi)
    37fd:	c7 46 14 20 74 6f 20 	movl   $0x206f7420,0x14(%esi)
    3804:	c7 46 18 72 65 73 6f 	movl   $0x6f736572,0x18(%esi)
    380b:	c7 46 1c 6c 76 65 20 	movl   $0x2065766c,0x1c(%esi)
    3812:	c7 46 20 73 65 72 76 	movl   $0x76726573,0x20(%esi)
    3819:	c7 46 24 65 72 20 61 	movl   $0x61207265,0x24(%esi)
    3820:	c7 46 28 64 64 72 65 	movl   $0x65726464,0x28(%esi)
    3827:	66 c7 46 2c 73 73    	movw   $0x7373,0x2c(%esi)
    382d:	c6 46 2e 00          	movb   $0x0,0x2e(%esi)
    3831:	83 ec 0c             	sub    $0xc,%esp
    3834:	53                   	push   %ebx
    3835:	e8 fc ff ff ff       	call   3836 <init_driver+0x17d>
    383a:	83 c4 10             	add    $0x10,%esp
    383d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    3842:	e9 42 ff ff ff       	jmp    3789 <init_driver+0xd0>
    3847:	83 ec 0c             	sub    $0xc,%esp
    384a:	68 ef 44 00 00       	push   $0x44ef
    384f:	68 14 48 00 00       	push   $0x4814
    3854:	6a ff                	push   $0xffffffff
    3856:	6a 01                	push   $0x1
    3858:	56                   	push   %esi
    3859:	e8 fc ff ff ff       	call   385a <init_driver+0x1a1>
    385e:	83 c4 14             	add    $0x14,%esp
    3861:	53                   	push   %ebx
    3862:	e8 fc ff ff ff       	call   3863 <init_driver+0x1aa>
    3867:	89 fc                	mov    %edi,%esp
    3869:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    386e:	e9 16 ff ff ff       	jmp    3789 <init_driver+0xd0>

00003873 <driver_post>:
    3873:	53                   	push   %ebx
    3874:	83 ec 08             	sub    $0x8,%esp
    3877:	8b 54 24 10          	mov    0x10(%esp),%edx
    387b:	8b 44 24 18          	mov    0x18(%esp),%eax
    387f:	8b 5c 24 1c          	mov    0x1c(%esp),%ebx
    3883:	85 c0                	test   %eax,%eax
    3885:	75 17                	jne    389e <driver_post+0x2b>
    3887:	85 d2                	test   %edx,%edx
    3889:	74 05                	je     3890 <driver_post+0x1d>
    388b:	80 3a 00             	cmpb   $0x0,(%edx)
    388e:	75 34                	jne    38c4 <driver_post+0x51>
    3890:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
    3895:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
    3899:	83 c4 08             	add    $0x8,%esp
    389c:	5b                   	pop    %ebx
    389d:	c3                   	ret    
    389e:	83 ec 04             	sub    $0x4,%esp
    38a1:	ff 74 24 18          	push   0x18(%esp)
    38a5:	68 58 48 00 00       	push   $0x4858
    38aa:	6a 01                	push   $0x1
    38ac:	e8 fc ff ff ff       	call   38ad <driver_post+0x3a>
    38b1:	66 c7 03 4f 4b       	movw   $0x4b4f,(%ebx)
    38b6:	c6 43 02 00          	movb   $0x0,0x2(%ebx)
    38ba:	83 c4 10             	add    $0x10,%esp
    38bd:	b8 00 00 00 00       	mov    $0x0,%eax
    38c2:	eb d5                	jmp    3899 <driver_post+0x26>
    38c4:	83 ec 04             	sub    $0x4,%esp
    38c7:	53                   	push   %ebx
    38c8:	ff 74 24 1c          	push   0x1c(%esp)
    38cc:	68 6f 48 00 00       	push   $0x486f
    38d1:	52                   	push   %edx
    38d2:	68 7e 48 00 00       	push   $0x487e
    38d7:	68 6c 3b 00 00       	push   $0x3b6c
    38dc:	68 ef 44 00 00       	push   $0x44ef
    38e1:	e8 dc f5 ff ff       	call   2ec2 <submitr>
    38e6:	83 c4 20             	add    $0x20,%esp
    38e9:	eb ae                	jmp    3899 <driver_post+0x26>

Disassembly of section .fini:

000038ec <_fini>:
    38ec:	f3 0f 1e fb          	endbr32 
    38f0:	53                   	push   %ebx
    38f1:	83 ec 08             	sub    $0x8,%esp
    38f4:	e8 67 e9 ff ff       	call   2260 <__x86.get_pc_thunk.bx>
    38f9:	81 c3 6f 36 00 00    	add    $0x366f,%ebx
    38ff:	83 c4 08             	add    $0x8,%esp
    3902:	5b                   	pop    %ebx
    3903:	c3                   	ret    
