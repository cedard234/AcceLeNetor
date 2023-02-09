// module kernel_matrix_trained(conv1_kernel,conv2_kernel,conv3_kernel,connect_matrix);
//     parameter bitwidth=32;
//     output reg signed [bitwidth-1:0] conv1_kernel [1:0][4:0][4:0];
// 	output reg signed [bitwidth-1:0] conv2_kernel [1:0][1:0][4:0][4:0];
// 	output reg signed [bitwidth-1:0] conv3_kernel [9:0][1:0][4:0][4:0];
// 	output reg signed [bitwidth-1:0] connect_matrix [9:0][9:0];
//     always@(*) begin
initial begin
conv1_kernel[0][0][0]=	-585	;
conv1_kernel[0][0][1]=	-405	;
conv1_kernel[0][0][2]=	183	;
conv1_kernel[0][0][3]=	-100	;
conv1_kernel[0][0][4]=	213	;
conv1_kernel[0][1][0]=	-718	;
conv1_kernel[0][1][1]=	192	;
conv1_kernel[0][1][2]=	180	;
conv1_kernel[0][1][3]=	187	;
conv1_kernel[0][1][4]=	102	;
conv1_kernel[0][2][0]=	-568	;
conv1_kernel[0][2][1]=	550	;
conv1_kernel[0][2][2]=	305	;
conv1_kernel[0][2][3]=	293	;
conv1_kernel[0][2][4]=	-39	;
conv1_kernel[0][3][0]=	-217	;
conv1_kernel[0][3][1]=	123	;
conv1_kernel[0][3][2]=	253	;
conv1_kernel[0][3][3]=	133	;
conv1_kernel[0][3][4]=	35	;
conv1_kernel[0][4][0]=	-141	;
conv1_kernel[0][4][1]=	272	;
conv1_kernel[0][4][2]=	-52	;
conv1_kernel[0][4][3]=	-114	;
conv1_kernel[0][4][4]=	-282	;
conv1_kernel[1][0][0]=	112	;
conv1_kernel[1][0][1]=	36	;
conv1_kernel[1][0][2]=	54	;
conv1_kernel[1][0][3]=	-94	;
conv1_kernel[1][0][4]=	-128	;
conv1_kernel[1][1][0]=	211	;
conv1_kernel[1][1][1]=	71	;
conv1_kernel[1][1][2]=	-15	;
conv1_kernel[1][1][3]=	4	;
conv1_kernel[1][1][4]=	-30	;
conv1_kernel[1][2][0]=	186	;
conv1_kernel[1][2][1]=	227	;
conv1_kernel[1][2][2]=	17	;
conv1_kernel[1][2][3]=	4	;
conv1_kernel[1][2][4]=	243	;
conv1_kernel[1][3][0]=	-50	;
conv1_kernel[1][3][1]=	335	;
conv1_kernel[1][3][2]=	535	;
conv1_kernel[1][3][3]=	226	;
conv1_kernel[1][3][4]=	51	;
conv1_kernel[1][4][0]=	-2	;
conv1_kernel[1][4][1]=	-46	;
conv1_kernel[1][4][2]=	16	;
conv1_kernel[1][4][3]=	119	;
conv1_kernel[1][4][4]=	124	;
conv2_kernel[0][0][0][0]=	177	;
conv2_kernel[0][0][0][1]=	431	;
conv2_kernel[0][0][0][2]=	550	;
conv2_kernel[0][0][0][3]=	-2	;
conv2_kernel[0][0][0][4]=	-48	;
conv2_kernel[0][0][1][0]=	-561	;
conv2_kernel[0][0][1][1]=	399	;
conv2_kernel[0][0][1][2]=	280	;
conv2_kernel[0][0][1][3]=	-182	;
conv2_kernel[0][0][1][4]=	-188	;
conv2_kernel[0][0][2][0]=	128	;
conv2_kernel[0][0][2][1]=	-232	;
conv2_kernel[0][0][2][2]=	-79	;
conv2_kernel[0][0][2][3]=	51	;
conv2_kernel[0][0][2][4]=	359	;
conv2_kernel[0][0][3][0]=	222	;
conv2_kernel[0][0][3][1]=	39	;
conv2_kernel[0][0][3][2]=	-9	;
conv2_kernel[0][0][3][3]=	477	;
conv2_kernel[0][0][3][4]=	175	;
conv2_kernel[0][0][4][0]=	20	;
conv2_kernel[0][0][4][1]=	-483	;
conv2_kernel[0][0][4][2]=	-629	;
conv2_kernel[0][0][4][3]=	-911	;
conv2_kernel[0][0][4][4]=	-134	;
conv2_kernel[0][1][0][0]=	-485	;
conv2_kernel[0][1][0][1]=	-232	;
conv2_kernel[0][1][0][2]=	64	;
conv2_kernel[0][1][0][3]=	258	;
conv2_kernel[0][1][0][4]=	-438	;
conv2_kernel[0][1][1][0]=	-652	;
conv2_kernel[0][1][1][1]=	0	;
conv2_kernel[0][1][1][2]=	50	;
conv2_kernel[0][1][1][3]=	211	;
conv2_kernel[0][1][1][4]=	495	;
conv2_kernel[0][1][2][0]=	505	;
conv2_kernel[0][1][2][1]=	935	;
conv2_kernel[0][1][2][2]=	1098	;
conv2_kernel[0][1][2][3]=	1267	;
conv2_kernel[0][1][2][4]=	368	;
conv2_kernel[0][1][3][0]=	-284	;
conv2_kernel[0][1][3][1]=	-428	;
conv2_kernel[0][1][3][2]=	-12	;
conv2_kernel[0][1][3][3]=	-479	;
conv2_kernel[0][1][3][4]=	-1449	;
conv2_kernel[0][1][4][0]=	-138	;
conv2_kernel[0][1][4][1]=	152	;
conv2_kernel[0][1][4][2]=	-467	;
conv2_kernel[0][1][4][3]=	-724	;
conv2_kernel[0][1][4][4]=	23	;
conv2_kernel[1][0][0][0]=	648	;
conv2_kernel[1][0][0][1]=	446	;
conv2_kernel[1][0][0][2]=	-237	;
conv2_kernel[1][0][0][3]=	-483	;
conv2_kernel[1][0][0][4]=	-190	;
conv2_kernel[1][0][1][0]=	-541	;
conv2_kernel[1][0][1][1]=	-750	;
conv2_kernel[1][0][1][2]=	441	;
conv2_kernel[1][0][1][3]=	-35	;
conv2_kernel[1][0][1][4]=	-461	;
conv2_kernel[1][0][2][0]=	-597	;
conv2_kernel[1][0][2][1]=	-541	;
conv2_kernel[1][0][2][2]=	369	;
conv2_kernel[1][0][2][3]=	392	;
conv2_kernel[1][0][2][4]=	185	;
conv2_kernel[1][0][3][0]=	153	;
conv2_kernel[1][0][3][1]=	-321	;
conv2_kernel[1][0][3][2]=	-987	;
conv2_kernel[1][0][3][3]=	-55	;
conv2_kernel[1][0][3][4]=	65	;
conv2_kernel[1][0][4][0]=	243	;
conv2_kernel[1][0][4][1]=	132	;
conv2_kernel[1][0][4][2]=	98	;
conv2_kernel[1][0][4][3]=	-42	;
conv2_kernel[1][0][4][4]=	59	;
conv2_kernel[1][1][0][0]=	-761	;
conv2_kernel[1][1][0][1]=	-516	;
conv2_kernel[1][1][0][2]=	-664	;
conv2_kernel[1][1][0][3]=	-685	;
conv2_kernel[1][1][0][4]=	-774	;
conv2_kernel[1][1][1][0]=	-186	;
conv2_kernel[1][1][1][1]=	-939	;
conv2_kernel[1][1][1][2]=	166	;
conv2_kernel[1][1][1][3]=	302	;
conv2_kernel[1][1][1][4]=	568	;
conv2_kernel[1][1][2][0]=	1988	;
conv2_kernel[1][1][2][1]=	1724	;
conv2_kernel[1][1][2][2]=	754	;
conv2_kernel[1][1][2][3]=	77	;
conv2_kernel[1][1][2][4]=	560	;
conv2_kernel[1][1][3][0]=	-796	;
conv2_kernel[1][1][3][1]=	261	;
conv2_kernel[1][1][3][2]=	2	;
conv2_kernel[1][1][3][3]=	235	;
conv2_kernel[1][1][3][4]=	-177	;
conv2_kernel[1][1][4][0]=	-1165	;
conv2_kernel[1][1][4][1]=	-206	;
conv2_kernel[1][1][4][2]=	224	;
conv2_kernel[1][1][4][3]=	162	;
conv2_kernel[1][1][4][4]=	-54	;
conv3_kernel[0][0][0][0]=	-1047	;
conv3_kernel[0][0][0][1]=	-239	;
conv3_kernel[0][0][0][2]=	304	;
conv3_kernel[0][0][0][3]=	391	;
conv3_kernel[0][0][0][4]=	88	;
conv3_kernel[0][0][1][0]=	-464	;
conv3_kernel[0][0][1][1]=	-50	;
conv3_kernel[0][0][1][2]=	79	;
conv3_kernel[0][0][1][3]=	-105	;
conv3_kernel[0][0][1][4]=	279	;
conv3_kernel[0][0][2][0]=	445	;
conv3_kernel[0][0][2][1]=	277	;
conv3_kernel[0][0][2][2]=	317	;
conv3_kernel[0][0][2][3]=	116	;
conv3_kernel[0][0][2][4]=	18	;
conv3_kernel[0][0][3][0]=	197	;
conv3_kernel[0][0][3][1]=	-73	;
conv3_kernel[0][0][3][2]=	505	;
conv3_kernel[0][0][3][3]=	-360	;
conv3_kernel[0][0][3][4]=	215	;
conv3_kernel[0][0][4][0]=	104	;
conv3_kernel[0][0][4][1]=	-258	;
conv3_kernel[0][0][4][2]=	115	;
conv3_kernel[0][0][4][3]=	29	;
conv3_kernel[0][0][4][4]=	21	;
conv3_kernel[0][1][0][0]=	-1047	;
conv3_kernel[0][1][0][1]=	-239	;
conv3_kernel[0][1][0][2]=	304	;
conv3_kernel[0][1][0][3]=	391	;
conv3_kernel[0][1][0][4]=	88	;
conv3_kernel[0][1][1][0]=	-464	;
conv3_kernel[0][1][1][1]=	-50	;
conv3_kernel[0][1][1][2]=	79	;
conv3_kernel[0][1][1][3]=	-105	;
conv3_kernel[0][1][1][4]=	279	;
conv3_kernel[0][1][2][0]=	445	;
conv3_kernel[0][1][2][1]=	277	;
conv3_kernel[0][1][2][2]=	317	;
conv3_kernel[0][1][2][3]=	116	;
conv3_kernel[0][1][2][4]=	18	;
conv3_kernel[0][1][3][0]=	197	;
conv3_kernel[0][1][3][1]=	-73	;
conv3_kernel[0][1][3][2]=	505	;
conv3_kernel[0][1][3][3]=	-360	;
conv3_kernel[0][1][3][4]=	215	;
conv3_kernel[0][1][4][0]=	104	;
conv3_kernel[0][1][4][1]=	-258	;
conv3_kernel[0][1][4][2]=	115	;
conv3_kernel[0][1][4][3]=	29	;
conv3_kernel[0][1][4][4]=	21	;
conv3_kernel[1][0][0][0]=	592	;
conv3_kernel[1][0][0][1]=	303	;
conv3_kernel[1][0][0][2]=	-85	;
conv3_kernel[1][0][0][3]=	-223	;
conv3_kernel[1][0][0][4]=	-1324	;
conv3_kernel[1][0][1][0]=	199	;
conv3_kernel[1][0][1][1]=	193	;
conv3_kernel[1][0][1][2]=	-185	;
conv3_kernel[1][0][1][3]=	-61	;
conv3_kernel[1][0][1][4]=	-1294	;
conv3_kernel[1][0][2][0]=	-803	;
conv3_kernel[1][0][2][1]=	-177	;
conv3_kernel[1][0][2][2]=	-11	;
conv3_kernel[1][0][2][3]=	39	;
conv3_kernel[1][0][2][4]=	857	;
conv3_kernel[1][0][3][0]=	-396	;
conv3_kernel[1][0][3][1]=	455	;
conv3_kernel[1][0][3][2]=	626	;
conv3_kernel[1][0][3][3]=	-16	;
conv3_kernel[1][0][3][4]=	662	;
conv3_kernel[1][0][4][0]=	627	;
conv3_kernel[1][0][4][1]=	597	;
conv3_kernel[1][0][4][2]=	-130	;
conv3_kernel[1][0][4][3]=	-169	;
conv3_kernel[1][0][4][4]=	-78	;
conv3_kernel[1][1][0][0]=	592	;
conv3_kernel[1][1][0][1]=	303	;
conv3_kernel[1][1][0][2]=	-85	;
conv3_kernel[1][1][0][3]=	-223	;
conv3_kernel[1][1][0][4]=	-1324	;
conv3_kernel[1][1][1][0]=	199	;
conv3_kernel[1][1][1][1]=	193	;
conv3_kernel[1][1][1][2]=	-185	;
conv3_kernel[1][1][1][3]=	-61	;
conv3_kernel[1][1][1][4]=	-1294	;
conv3_kernel[1][1][2][0]=	-803	;
conv3_kernel[1][1][2][1]=	-177	;
conv3_kernel[1][1][2][2]=	-11	;
conv3_kernel[1][1][2][3]=	39	;
conv3_kernel[1][1][2][4]=	857	;
conv3_kernel[1][1][3][0]=	-396	;
conv3_kernel[1][1][3][1]=	455	;
conv3_kernel[1][1][3][2]=	626	;
conv3_kernel[1][1][3][3]=	-16	;
conv3_kernel[1][1][3][4]=	662	;
conv3_kernel[1][1][4][0]=	627	;
conv3_kernel[1][1][4][1]=	597	;
conv3_kernel[1][1][4][2]=	-130	;
conv3_kernel[1][1][4][3]=	-169	;
conv3_kernel[1][1][4][4]=	-78	;
conv3_kernel[2][0][0][0]=	479	;
conv3_kernel[2][0][0][1]=	668	;
conv3_kernel[2][0][0][2]=	-256	;
conv3_kernel[2][0][0][3]=	280	;
conv3_kernel[2][0][0][4]=	-589	;
conv3_kernel[2][0][1][0]=	-252	;
conv3_kernel[2][0][1][1]=	223	;
conv3_kernel[2][0][1][2]=	154	;
conv3_kernel[2][0][1][3]=	-45	;
conv3_kernel[2][0][1][4]=	-691	;
conv3_kernel[2][0][2][0]=	119	;
conv3_kernel[2][0][2][1]=	120	;
conv3_kernel[2][0][2][2]=	-180	;
conv3_kernel[2][0][2][3]=	945	;
conv3_kernel[2][0][2][4]=	555	;
conv3_kernel[2][0][3][0]=	145	;
conv3_kernel[2][0][3][1]=	-30	;
conv3_kernel[2][0][3][2]=	31	;
conv3_kernel[2][0][3][3]=	942	;
conv3_kernel[2][0][3][4]=	279	;
conv3_kernel[2][0][4][0]=	-103	;
conv3_kernel[2][0][4][1]=	-344	;
conv3_kernel[2][0][4][2]=	-478	;
conv3_kernel[2][0][4][3]=	-59	;
conv3_kernel[2][0][4][4]=	239	;
conv3_kernel[2][1][0][0]=	479	;
conv3_kernel[2][1][0][1]=	668	;
conv3_kernel[2][1][0][2]=	-256	;
conv3_kernel[2][1][0][3]=	280	;
conv3_kernel[2][1][0][4]=	-589	;
conv3_kernel[2][1][1][0]=	-252	;
conv3_kernel[2][1][1][1]=	223	;
conv3_kernel[2][1][1][2]=	154	;
conv3_kernel[2][1][1][3]=	-45	;
conv3_kernel[2][1][1][4]=	-691	;
conv3_kernel[2][1][2][0]=	119	;
conv3_kernel[2][1][2][1]=	120	;
conv3_kernel[2][1][2][2]=	-180	;
conv3_kernel[2][1][2][3]=	945	;
conv3_kernel[2][1][2][4]=	555	;
conv3_kernel[2][1][3][0]=	145	;
conv3_kernel[2][1][3][1]=	-30	;
conv3_kernel[2][1][3][2]=	31	;
conv3_kernel[2][1][3][3]=	942	;
conv3_kernel[2][1][3][4]=	279	;
conv3_kernel[2][1][4][0]=	-103	;
conv3_kernel[2][1][4][1]=	-344	;
conv3_kernel[2][1][4][2]=	-478	;
conv3_kernel[2][1][4][3]=	-59	;
conv3_kernel[2][1][4][4]=	239	;
conv3_kernel[3][0][0][0]=	161	;
conv3_kernel[3][0][0][1]=	-255	;
conv3_kernel[3][0][0][2]=	203	;
conv3_kernel[3][0][0][3]=	-214	;
conv3_kernel[3][0][0][4]=	-323	;
conv3_kernel[3][0][1][0]=	348	;
conv3_kernel[3][0][1][1]=	-179	;
conv3_kernel[3][0][1][2]=	-7	;
conv3_kernel[3][0][1][3]=	19	;
conv3_kernel[3][0][1][4]=	551	;
conv3_kernel[3][0][2][0]=	-12	;
conv3_kernel[3][0][2][1]=	-510	;
conv3_kernel[3][0][2][2]=	9	;
conv3_kernel[3][0][2][3]=	409	;
conv3_kernel[3][0][2][4]=	277	;
conv3_kernel[3][0][3][0]=	-313	;
conv3_kernel[3][0][3][1]=	-146	;
conv3_kernel[3][0][3][2]=	264	;
conv3_kernel[3][0][3][3]=	-936	;
conv3_kernel[3][0][3][4]=	-148	;
conv3_kernel[3][0][4][0]=	524	;
conv3_kernel[3][0][4][1]=	310	;
conv3_kernel[3][0][4][2]=	469	;
conv3_kernel[3][0][4][3]=	-106	;
conv3_kernel[3][0][4][4]=	-510	;
conv3_kernel[3][1][0][0]=	161	;
conv3_kernel[3][1][0][1]=	-255	;
conv3_kernel[3][1][0][2]=	203	;
conv3_kernel[3][1][0][3]=	-214	;
conv3_kernel[3][1][0][4]=	-323	;
conv3_kernel[3][1][1][0]=	348	;
conv3_kernel[3][1][1][1]=	-179	;
conv3_kernel[3][1][1][2]=	-7	;
conv3_kernel[3][1][1][3]=	19	;
conv3_kernel[3][1][1][4]=	551	;
conv3_kernel[3][1][2][0]=	-12	;
conv3_kernel[3][1][2][1]=	-510	;
conv3_kernel[3][1][2][2]=	9	;
conv3_kernel[3][1][2][3]=	409	;
conv3_kernel[3][1][2][4]=	277	;
conv3_kernel[3][1][3][0]=	-313	;
conv3_kernel[3][1][3][1]=	-146	;
conv3_kernel[3][1][3][2]=	264	;
conv3_kernel[3][1][3][3]=	-936	;
conv3_kernel[3][1][3][4]=	-148	;
conv3_kernel[3][1][4][0]=	524	;
conv3_kernel[3][1][4][1]=	310	;
conv3_kernel[3][1][4][2]=	469	;
conv3_kernel[3][1][4][3]=	-106	;
conv3_kernel[3][1][4][4]=	-510	;
conv3_kernel[4][0][0][0]=	-122	;
conv3_kernel[4][0][0][1]=	515	;
conv3_kernel[4][0][0][2]=	793	;
conv3_kernel[4][0][0][3]=	1246	;
conv3_kernel[4][0][0][4]=	795	;
conv3_kernel[4][0][1][0]=	152	;
conv3_kernel[4][0][1][1]=	59	;
conv3_kernel[4][0][1][2]=	87	;
conv3_kernel[4][0][1][3]=	180	;
conv3_kernel[4][0][1][4]=	386	;
conv3_kernel[4][0][2][0]=	-403	;
conv3_kernel[4][0][2][1]=	-122	;
conv3_kernel[4][0][2][2]=	355	;
conv3_kernel[4][0][2][3]=	-570	;
conv3_kernel[4][0][2][4]=	-723	;
conv3_kernel[4][0][3][0]=	-154	;
conv3_kernel[4][0][3][1]=	23	;
conv3_kernel[4][0][3][2]=	588	;
conv3_kernel[4][0][3][3]=	-380	;
conv3_kernel[4][0][3][4]=	-17	;
conv3_kernel[4][0][4][0]=	137	;
conv3_kernel[4][0][4][1]=	-178	;
conv3_kernel[4][0][4][2]=	315	;
conv3_kernel[4][0][4][3]=	88	;
conv3_kernel[4][0][4][4]=	-460	;
conv3_kernel[4][1][0][0]=	-122	;
conv3_kernel[4][1][0][1]=	515	;
conv3_kernel[4][1][0][2]=	793	;
conv3_kernel[4][1][0][3]=	1246	;
conv3_kernel[4][1][0][4]=	795	;
conv3_kernel[4][1][1][0]=	152	;
conv3_kernel[4][1][1][1]=	59	;
conv3_kernel[4][1][1][2]=	87	;
conv3_kernel[4][1][1][3]=	180	;
conv3_kernel[4][1][1][4]=	386	;
conv3_kernel[4][1][2][0]=	-403	;
conv3_kernel[4][1][2][1]=	-122	;
conv3_kernel[4][1][2][2]=	355	;
conv3_kernel[4][1][2][3]=	-570	;
conv3_kernel[4][1][2][4]=	-723	;
conv3_kernel[4][1][3][0]=	-154	;
conv3_kernel[4][1][3][1]=	23	;
conv3_kernel[4][1][3][2]=	588	;
conv3_kernel[4][1][3][3]=	-380	;
conv3_kernel[4][1][3][4]=	-17	;
conv3_kernel[4][1][4][0]=	137	;
conv3_kernel[4][1][4][1]=	-178	;
conv3_kernel[4][1][4][2]=	315	;
conv3_kernel[4][1][4][3]=	88	;
conv3_kernel[4][1][4][4]=	-460	;
conv3_kernel[5][0][0][0]=	1234	;
conv3_kernel[5][0][0][1]=	533	;
conv3_kernel[5][0][0][2]=	369	;
conv3_kernel[5][0][0][3]=	-273	;
conv3_kernel[5][0][0][4]=	-538	;
conv3_kernel[5][0][1][0]=	712	;
conv3_kernel[5][0][1][1]=	186	;
conv3_kernel[5][0][1][2]=	58	;
conv3_kernel[5][0][1][3]=	-53	;
conv3_kernel[5][0][1][4]=	133	;
conv3_kernel[5][0][2][0]=	237	;
conv3_kernel[5][0][2][1]=	-99	;
conv3_kernel[5][0][2][2]=	-140	;
conv3_kernel[5][0][2][3]=	41	;
conv3_kernel[5][0][2][4]=	-357	;
conv3_kernel[5][0][3][0]=	0	;
conv3_kernel[5][0][3][1]=	207	;
conv3_kernel[5][0][3][2]=	-147	;
conv3_kernel[5][0][3][3]=	-46	;
conv3_kernel[5][0][3][4]=	-31	;
conv3_kernel[5][0][4][0]=	51	;
conv3_kernel[5][0][4][1]=	-375	;
conv3_kernel[5][0][4][2]=	-368	;
conv3_kernel[5][0][4][3]=	134	;
conv3_kernel[5][0][4][4]=	-552	;
conv3_kernel[5][1][0][0]=	1234	;
conv3_kernel[5][1][0][1]=	533	;
conv3_kernel[5][1][0][2]=	369	;
conv3_kernel[5][1][0][3]=	-273	;
conv3_kernel[5][1][0][4]=	-538	;
conv3_kernel[5][1][1][0]=	712	;
conv3_kernel[5][1][1][1]=	186	;
conv3_kernel[5][1][1][2]=	58	;
conv3_kernel[5][1][1][3]=	-53	;
conv3_kernel[5][1][1][4]=	133	;
conv3_kernel[5][1][2][0]=	237	;
conv3_kernel[5][1][2][1]=	-99	;
conv3_kernel[5][1][2][2]=	-140	;
conv3_kernel[5][1][2][3]=	41	;
conv3_kernel[5][1][2][4]=	-357	;
conv3_kernel[5][1][3][0]=	0	;
conv3_kernel[5][1][3][1]=	207	;
conv3_kernel[5][1][3][2]=	-147	;
conv3_kernel[5][1][3][3]=	-46	;
conv3_kernel[5][1][3][4]=	-31	;
conv3_kernel[5][1][4][0]=	51	;
conv3_kernel[5][1][4][1]=	-375	;
conv3_kernel[5][1][4][2]=	-368	;
conv3_kernel[5][1][4][3]=	134	;
conv3_kernel[5][1][4][4]=	-552	;
conv3_kernel[6][0][0][0]=	-183	;
conv3_kernel[6][0][0][1]=	-744	;
conv3_kernel[6][0][0][2]=	-382	;
conv3_kernel[6][0][0][3]=	91	;
conv3_kernel[6][0][0][4]=	554	;
conv3_kernel[6][0][1][0]=	-247	;
conv3_kernel[6][0][1][1]=	276	;
conv3_kernel[6][0][1][2]=	144	;
conv3_kernel[6][0][1][3]=	142	;
conv3_kernel[6][0][1][4]=	374	;
conv3_kernel[6][0][2][0]=	277	;
conv3_kernel[6][0][2][1]=	-29	;
conv3_kernel[6][0][2][2]=	-219	;
conv3_kernel[6][0][2][3]=	935	;
conv3_kernel[6][0][2][4]=	292	;
conv3_kernel[6][0][3][0]=	-132	;
conv3_kernel[6][0][3][1]=	294	;
conv3_kernel[6][0][3][2]=	-101	;
conv3_kernel[6][0][3][3]=	385	;
conv3_kernel[6][0][3][4]=	603	;
conv3_kernel[6][0][4][0]=	483	;
conv3_kernel[6][0][4][1]=	-181	;
conv3_kernel[6][0][4][2]=	-8	;
conv3_kernel[6][0][4][3]=	140	;
conv3_kernel[6][0][4][4]=	-152	;
conv3_kernel[6][1][0][0]=	-183	;
conv3_kernel[6][1][0][1]=	-744	;
conv3_kernel[6][1][0][2]=	-382	;
conv3_kernel[6][1][0][3]=	91	;
conv3_kernel[6][1][0][4]=	554	;
conv3_kernel[6][1][1][0]=	-247	;
conv3_kernel[6][1][1][1]=	276	;
conv3_kernel[6][1][1][2]=	144	;
conv3_kernel[6][1][1][3]=	142	;
conv3_kernel[6][1][1][4]=	374	;
conv3_kernel[6][1][2][0]=	277	;
conv3_kernel[6][1][2][1]=	-29	;
conv3_kernel[6][1][2][2]=	-219	;
conv3_kernel[6][1][2][3]=	935	;
conv3_kernel[6][1][2][4]=	292	;
conv3_kernel[6][1][3][0]=	-132	;
conv3_kernel[6][1][3][1]=	294	;
conv3_kernel[6][1][3][2]=	-101	;
conv3_kernel[6][1][3][3]=	385	;
conv3_kernel[6][1][3][4]=	603	;
conv3_kernel[6][1][4][0]=	483	;
conv3_kernel[6][1][4][1]=	-181	;
conv3_kernel[6][1][4][2]=	-8	;
conv3_kernel[6][1][4][3]=	140	;
conv3_kernel[6][1][4][4]=	-152	;
conv3_kernel[7][0][0][0]=	-241	;
conv3_kernel[7][0][0][1]=	-8	;
conv3_kernel[7][0][0][2]=	-664	;
conv3_kernel[7][0][0][3]=	-345	;
conv3_kernel[7][0][0][4]=	-63	;
conv3_kernel[7][0][1][0]=	-1135	;
conv3_kernel[7][0][1][1]=	70	;
conv3_kernel[7][0][1][2]=	289	;
conv3_kernel[7][0][1][3]=	144	;
conv3_kernel[7][0][1][4]=	64	;
conv3_kernel[7][0][2][0]=	206	;
conv3_kernel[7][0][2][1]=	199	;
conv3_kernel[7][0][2][2]=	137	;
conv3_kernel[7][0][2][3]=	113	;
conv3_kernel[7][0][2][4]=	263	;
conv3_kernel[7][0][3][0]=	393	;
conv3_kernel[7][0][3][1]=	46	;
conv3_kernel[7][0][3][2]=	-35	;
conv3_kernel[7][0][3][3]=	-370	;
conv3_kernel[7][0][3][4]=	-998	;
conv3_kernel[7][0][4][0]=	-38	;
conv3_kernel[7][0][4][1]=	38	;
conv3_kernel[7][0][4][2]=	-231	;
conv3_kernel[7][0][4][3]=	103	;
conv3_kernel[7][0][4][4]=	533	;
conv3_kernel[7][1][0][0]=	-241	;
conv3_kernel[7][1][0][1]=	-8	;
conv3_kernel[7][1][0][2]=	-664	;
conv3_kernel[7][1][0][3]=	-345	;
conv3_kernel[7][1][0][4]=	-63	;
conv3_kernel[7][1][1][0]=	-1135	;
conv3_kernel[7][1][1][1]=	70	;
conv3_kernel[7][1][1][2]=	289	;
conv3_kernel[7][1][1][3]=	144	;
conv3_kernel[7][1][1][4]=	64	;
conv3_kernel[7][1][2][0]=	206	;
conv3_kernel[7][1][2][1]=	199	;
conv3_kernel[7][1][2][2]=	137	;
conv3_kernel[7][1][2][3]=	113	;
conv3_kernel[7][1][2][4]=	263	;
conv3_kernel[7][1][3][0]=	393	;
conv3_kernel[7][1][3][1]=	46	;
conv3_kernel[7][1][3][2]=	-35	;
conv3_kernel[7][1][3][3]=	-370	;
conv3_kernel[7][1][3][4]=	-998	;
conv3_kernel[7][1][4][0]=	-38	;
conv3_kernel[7][1][4][1]=	38	;
conv3_kernel[7][1][4][2]=	-231	;
conv3_kernel[7][1][4][3]=	103	;
conv3_kernel[7][1][4][4]=	533	;
conv3_kernel[8][0][0][0]=	-1222	;
conv3_kernel[8][0][0][1]=	-470	;
conv3_kernel[8][0][0][2]=	237	;
conv3_kernel[8][0][0][3]=	-53	;
conv3_kernel[8][0][0][4]=	355	;
conv3_kernel[8][0][1][0]=	-1855	;
conv3_kernel[8][0][1][1]=	40	;
conv3_kernel[8][0][1][2]=	34	;
conv3_kernel[8][0][1][3]=	77	;
conv3_kernel[8][0][1][4]=	-126	;
conv3_kernel[8][0][2][0]=	357	;
conv3_kernel[8][0][2][1]=	-288	;
conv3_kernel[8][0][2][2]=	255	;
conv3_kernel[8][0][2][3]=	206	;
conv3_kernel[8][0][2][4]=	647	;
conv3_kernel[8][0][3][0]=	-37	;
conv3_kernel[8][0][3][1]=	-48	;
conv3_kernel[8][0][3][2]=	155	;
conv3_kernel[8][0][3][3]=	-247	;
conv3_kernel[8][0][3][4]=	-45	;
conv3_kernel[8][0][4][0]=	283	;
conv3_kernel[8][0][4][1]=	112	;
conv3_kernel[8][0][4][2]=	-35	;
conv3_kernel[8][0][4][3]=	124	;
conv3_kernel[8][0][4][4]=	-80	;
conv3_kernel[8][1][0][0]=	-1222	;
conv3_kernel[8][1][0][1]=	-470	;
conv3_kernel[8][1][0][2]=	237	;
conv3_kernel[8][1][0][3]=	-53	;
conv3_kernel[8][1][0][4]=	355	;
conv3_kernel[8][1][1][0]=	-1855	;
conv3_kernel[8][1][1][1]=	40	;
conv3_kernel[8][1][1][2]=	34	;
conv3_kernel[8][1][1][3]=	77	;
conv3_kernel[8][1][1][4]=	-126	;
conv3_kernel[8][1][2][0]=	357	;
conv3_kernel[8][1][2][1]=	-288	;
conv3_kernel[8][1][2][2]=	255	;
conv3_kernel[8][1][2][3]=	206	;
conv3_kernel[8][1][2][4]=	647	;
conv3_kernel[8][1][3][0]=	-37	;
conv3_kernel[8][1][3][1]=	-48	;
conv3_kernel[8][1][3][2]=	155	;
conv3_kernel[8][1][3][3]=	-247	;
conv3_kernel[8][1][3][4]=	-45	;
conv3_kernel[8][1][4][0]=	283	;
conv3_kernel[8][1][4][1]=	112	;
conv3_kernel[8][1][4][2]=	-35	;
conv3_kernel[8][1][4][3]=	124	;
conv3_kernel[8][1][4][4]=	-80	;
conv3_kernel[9][0][0][0]=	683	;
conv3_kernel[9][0][0][1]=	-451	;
conv3_kernel[9][0][0][2]=	-455	;
conv3_kernel[9][0][0][3]=	-790	;
conv3_kernel[9][0][0][4]=	-376	;
conv3_kernel[9][0][1][0]=	652	;
conv3_kernel[9][0][1][1]=	-284	;
conv3_kernel[9][0][1][2]=	270	;
conv3_kernel[9][0][1][3]=	291	;
conv3_kernel[9][0][1][4]=	137	;
conv3_kernel[9][0][2][0]=	-50	;
conv3_kernel[9][0][2][1]=	-228	;
conv3_kernel[9][0][2][2]=	1122	;
conv3_kernel[9][0][2][3]=	652	;
conv3_kernel[9][0][2][4]=	7	;
conv3_kernel[9][0][3][0]=	-300	;
conv3_kernel[9][0][3][1]=	-250	;
conv3_kernel[9][0][3][2]=	676	;
conv3_kernel[9][0][3][3]=	-483	;
conv3_kernel[9][0][3][4]=	17	;
conv3_kernel[9][0][4][0]=	57	;
conv3_kernel[9][0][4][1]=	-609	;
conv3_kernel[9][0][4][2]=	697	;
conv3_kernel[9][0][4][3]=	380	;
conv3_kernel[9][0][4][4]=	-358	;
conv3_kernel[9][1][0][0]=	683	;
conv3_kernel[9][1][0][1]=	-451	;
conv3_kernel[9][1][0][2]=	-455	;
conv3_kernel[9][1][0][3]=	-790	;
conv3_kernel[9][1][0][4]=	-376	;
conv3_kernel[9][1][1][0]=	652	;
conv3_kernel[9][1][1][1]=	-284	;
conv3_kernel[9][1][1][2]=	270	;
conv3_kernel[9][1][1][3]=	291	;
conv3_kernel[9][1][1][4]=	137	;
conv3_kernel[9][1][2][0]=	-50	;
conv3_kernel[9][1][2][1]=	-228	;
conv3_kernel[9][1][2][2]=	1122	;
conv3_kernel[9][1][2][3]=	652	;
conv3_kernel[9][1][2][4]=	7	;
conv3_kernel[9][1][3][0]=	-300	;
conv3_kernel[9][1][3][1]=	-250	;
conv3_kernel[9][1][3][2]=	676	;
conv3_kernel[9][1][3][3]=	-483	;
conv3_kernel[9][1][3][4]=	17	;
conv3_kernel[9][1][4][0]=	57	;
conv3_kernel[9][1][4][1]=	-609	;
conv3_kernel[9][1][4][2]=	697	;
conv3_kernel[9][1][4][3]=	380	;
conv3_kernel[9][1][4][4]=	-358	;
connect_matrix [0][0]=	-11364738	;
connect_matrix [0][1]=	12893841	;
connect_matrix [0][2]=	-1766408	;
connect_matrix [0][3]=	-10199834	;
connect_matrix [0][4]=	1710939	;
connect_matrix [0][5]=	-2023305	;
connect_matrix [0][6]=	-697627	;
connect_matrix [0][7]=	-472432	;
connect_matrix [0][8]=	6642325	;
connect_matrix [0][9]=	-6288114	;
connect_matrix [1][0]=	14033877	;
connect_matrix [1][1]=	-4611040	;
connect_matrix [1][2]=	-13252912	;
connect_matrix [1][3]=	-10281218	;
connect_matrix [1][4]=	-61479	;
connect_matrix [1][5]=	5013868	;
connect_matrix [1][6]=	5250554	;
connect_matrix [1][7]=	-24681982	;
connect_matrix [1][8]=	13017543	;
connect_matrix [1][9]=	19298018	;
connect_matrix [2][0]=	5361820	;
connect_matrix [2][1]=	11128112	;
connect_matrix [2][2]=	-494200	;
connect_matrix [2][3]=	4863636	;
connect_matrix [2][4]=	-11880249	;
connect_matrix [2][5]=	6411994	;
connect_matrix [2][6]=	1498458	;
connect_matrix [2][7]=	-5772908	;
connect_matrix [2][8]=	-14841840	;
connect_matrix [2][9]=	-688157	;
connect_matrix [3][0]=	-3578052	;
connect_matrix [3][1]=	-403593	;
connect_matrix [3][2]=	-8456921	;
connect_matrix [3][3]=	-139117	;
connect_matrix [3][4]=	-2256151	;
connect_matrix [3][5]=	12441824	;
connect_matrix [3][6]=	-3459323	;
connect_matrix [3][7]=	5707852	;
connect_matrix [3][8]=	-11916239	;
connect_matrix [3][9]=	5845619	;
connect_matrix [4][0]=	-60352	;
connect_matrix [4][1]=	-4798178	;
connect_matrix [4][2]=	-1438476	;
connect_matrix [4][3]=	-4328102	;
connect_matrix [4][4]=	-8821822	;
connect_matrix [4][5]=	-12168779	;
connect_matrix [4][6]=	16725380	;
connect_matrix [4][7]=	7384940	;
connect_matrix [4][8]=	-5156538	;
connect_matrix [4][9]=	5975122	;
connect_matrix [5][0]=	4656800	;
connect_matrix [5][1]=	-8387257	;
connect_matrix [5][2]=	-8931142	;
connect_matrix [5][3]=	-3277608	;
connect_matrix [5][4]=	11107237	;
connect_matrix [5][5]=	6439770	;
connect_matrix [5][6]=	-1913878	;
connect_matrix [5][7]=	5182111	;
connect_matrix [5][8]=	-1658754	;
connect_matrix [5][9]=	-9873255	;
connect_matrix [6][0]=	-13708062	;
connect_matrix [6][1]=	6793796	;
connect_matrix [6][2]=	5391037	;
connect_matrix [6][3]=	2436376	;
connect_matrix [6][4]=	16167648	;
connect_matrix [6][5]=	-23856936	;
connect_matrix [6][6]=	3395148	;
connect_matrix [6][7]=	-3567117	;
connect_matrix [6][8]=	-3781283	;
connect_matrix [6][9]=	-4093351	;
connect_matrix [7][0]=	-8273274	;
connect_matrix [7][1]=	-11346566	;
connect_matrix [7][2]=	14176621	;
connect_matrix [7][3]=	5157778	;
connect_matrix [7][4]=	-1280552	;
connect_matrix [7][5]=	7389520	;
connect_matrix [7][6]=	-92140	;
connect_matrix [7][7]=	-10204495	;
connect_matrix [7][8]=	7185552	;
connect_matrix [7][9]=	4384244	;
connect_matrix [8][0]=	1810784	;
connect_matrix [8][1]=	-528560	;
connect_matrix [8][2]=	624627	;
connect_matrix [8][3]=	15088907	;
connect_matrix [8][4]=	-3590168	;
connect_matrix [8][5]=	-2448962	;
connect_matrix [8][6]=	-7496224	;
connect_matrix [8][7]=	3048736	;
connect_matrix [8][8]=	2948590	;
connect_matrix [8][9]=	-2406809	;
connect_matrix [9][0]=	7040095	;
connect_matrix [9][1]=	-1826136	;
connect_matrix [9][2]=	9839793	;
connect_matrix [9][3]=	-5212341	;
connect_matrix [9][4]=	-2952002	;
connect_matrix [9][5]=	-6096080	;
connect_matrix [9][6]=	-9252823	;
connect_matrix [9][7]=	11103399	;
connect_matrix [9][8]=	-8247542	;
connect_matrix [9][9]=	4488422	;


end
//     end
// endmodule