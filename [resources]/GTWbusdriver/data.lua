--[[
********************************************************************************
	Project owner:		RageQuit community
	Project name: 		GTW-RPG
	Developers:   		Mr_Moose

	Source code:		https://github.com/GTWCode/GTW-RPG/
	Bugtracker: 		http://forum.404rq.com/bug-reports/
	Suggestions:		http://forum.404rq.com/mta-servers-development/

	Version:    		Open source
	License:    		BSD 2-Clause
	Status:     		Stable release
********************************************************************************
]]--

-- List of vehicles that are considered to be a bus
bus_vehicles = {
	[431] = true,
	[437] = true
}

-- List over all bus routes
bus_routes = {
        -- Name of route to display in list
        ["[Los Santos] city route, (connects important points of the city)"] = {
                -- x, y, z, rot
                [1]={ 1824.931640625, -1833.20703125, 13.519610404968, 359.42855834961 },
            	[2]={ 1978.208984375, -1755.6064453125, 13.46879863739, 270.19781494141 },
            	[3]={ 2057.6005859375, -1615.38671875, 13.484937667847, 270.46154785156 },
            	[4]={ 2248.21875, -1660.02734375, 15.386902809143, 253.40660095215 },
            	[5]={ 2410.4140625, -1946.9833984375, 13.472555160522, 179.82415771484 },
           	[6]={ 2757.873046875, -2458.9150390625, 13.593187332153, 180.17582702637 },
            	[7]={ 2228.26953125, -2606.2314453125, 13.455602645874, 0.83517456054688 },
            	[8]={ 1660.4013671875, -2321.8935546875, -2.7541844844818, 269.49450683594 },
            	[9]={ 1666.0224609375, -2250.908203125, 13.467248916626, 89.626373291016 },
            	[10]={ 1278.7548828125, -2444.3935546875, 8.2926816940308, 85.93408203125 },
            	[11]={ 978.98046875, -1781.0087890625, 14.18835067749, 75.648345947266 },
            	[12]={ 824.26953125, -1597.1884765625, 13.48930644989, 47.692321777344 },
            	[13]={ 507.0947265625, -1413.7890625, 16.081996917725, 109.0549621582 },
            	[14]={ 320.3818359375, -1619.279296875, 33.277744293213, 181.40660095215 },
            	[15]={ 180.05859375, -1738.47265625, 4.2659597396851, 273.53848266602 },
            	[16]={ 431.6669921875, -1775.9814453125, 5.3873581886292, 269.0549621582 },
            	[17]={ 758.46484375, -1735.541015625, 10.775959968567, 1.4505615234375 },
            	[18]={ 800.5, -1364.3876953125, 13.497741699219, 359.16482543945 },
            	[19]={ 645.00390625, -563.517578125, 16.284717559814, 359.60440063477 },
           	[20]={ 828.4052734375, -555.853515625, 16.292934417725, 179.38464355469 },
            	[21]={ 1154.228515625, -912.6923828125, 42.800029754639, 185.53846740723 },
           	[22]={ 1498.818359375, -962.0693359375, 36.275588989258, 263.16482543945 },
            	[23]={ 2342.935546875, -1157.728515625, 27.128765106201, 270.02197265625 },
          	[24]={ 2447.6845703125, -1327.115234375, 23.926212310791, 179.47253417969 },
           	[25]={ 2250.896484375, -1729.0673828125, 13.47848033905, 89.890106201172 },
            	[26]={ 2078.4287109375, -1849.4794921875, 13.482578277588, 180.35163879395 },
        },
        ["[San Fierro] city route, (connects important points of the city)"] = {
                -- x, y, z, rot
                [1]={ -2417.078125, 1383.1298828125, 7.1370935440063, 89.714294433594 },
            	[2]={ -2666.978515625, 1307.6005859375, 55.524719238281, 0.30770874023438 },
        	[3]={ -2538.0107421875, 2328.041015625, 4.9221935272217, 269.67031860352 },
        	[4]={ -2355.27734375, 2413.3505859375, 6.9519548416138, 54.813201904297 },
        	[5]={ -1928.046875, 2386.255859375, 49.596778869629, 201.0989074707 },
        	[6]={ -1471.1416015625, 1841.908203125, 32.678363800049, 273.62637329102 },
        	[7]={ -1199.1298828125, 1827.0888671875, 41.815635681152, 319.07693481445 },
        	[8]={ -1073.5478515625, 2115.7041015625, 88.060287475586, 297.53848266602 },
        	[9]={ -1422.4033203125, 2650.5654296875, 55.788024902344, 359.34066772461 },
        	[10]={ -1531.5478515625, 2548.1318359375, 55.789257049561, 267.29669189453 },
        	[11]={ -815.0361328125, 2723.771484375, 45.590808868408, 271.69232177734 },
        	[12]={ -226.6337890625, 2698.0986328125, 62.635204315186, 269.23077392578 },
        	[13]={ -381.93359375, 2226.7548828125, 42.189002990723, 194.59341430664 },
        	[14]={ -402.947265625, 1753.0673828125, 42.923820495605, 151.69232177734 },
        	[15]={ -242.7421875, 1201.630859375, 19.694484710693, 89.098907470703 },
        	[16]={ -278.87890625, 1045.4423828125, 19.690744400024, 180 },
        	[17]={ -294.861328125, 836.8408203125, 12.4993019104, 1.2747497558594 },
        	[18]={ -724.05859375, 946.7841796875, 12.240016937256, 176.0439453125 },
        	[19]={ -2009.8271484375, 293.087890625, 34.372013092041, 180 },
        	[20]={ -1993.685546875, 139.4775390625, 27.635587692261, 179.912109375 },
        	[21]={ -2170.5986328125, -6.9248046875, 35.272281646729, 179.56042480469 },
        	[22]={ -2498.314453125, -29.6591796875, 25.70601272583, 0.21978759765625 },
        	[23]={ -2703.34765625, 268.060546875, 4.2785601615906, 359.42855834961 },
        	[24]={ -2667.0439453125, 619.763671875, 14.553286552429, 269.58242797852 },
        	[25]={ -2417.931640625, 560.05078125, 24.840911865234, 269.75823974609 },
        	[26]={ -2381.2607421875, 787.259765625, 35.112995147705, 358.46154785156 },
        	[27]={ -2381.1552734375, 1008.2021484375, 52.34602355957, 358.28570556641 },
        	[28]={ -2009.751953125, 888.5439453125, 45.398990631104, 179.47253417969 },
        	[29]={ -1840.2529296875, 600.4873046875, 35.1162109375, 269.93408203125 },
        	[30]={ -1634.205078125, 725.6181640625, 14.557755470276, 269.67031860352 },
        	[31]={ -1757.6376953125, 954.3525390625, 24.842969894409, 89.626373291016 },
        	[32]={ -1635.30859375, 1255.78125, 7.1439824104309, 44.263732910156 },
        },
        ["[Las Venturas] city route, (connects important points of the city)"] = {
                -- x, y, z, rot
                [1]={ 2290.7666015625, 678.8076171875, 10.7724609375, 0.21978759765625 },
		[2]={ 2113.658203125, 676.33984375, 10.773535728455, 87.428558349609 },
		[3]={ 1894.1728515625, 636.2470703125, 10.771872520447, 89.362640380859 },
		[4]={ 2150.87890625, 940.251953125, 10.783952713013, 359.42855834961 },
		[5]={ 1932.1806640625, 936.4765625, 10.773614883423, 89.626373291016 },
		[6]={ 1716.4208984375, 1415.072265625, 10.591500282288, 6.9010925292969 },
		[7]={ 1875.4013671875, 1584.4794921875, 10.925440788269, 89.538452148438 },
        },
        ["[State] Original state route, (a long route covering all smaller towns)"] = {
                -- x, y, z, rot
                [1]={ 1824.818359375, -1840.83984375, 13.515539169312, 0.043975830078125 },
            	[2]={ 2750.28515625, -1894.2314453125, 10.982697486877, 270.19781494141 },
        	[3]={ 2340.345703125, 126.572265625, 26.437435150146, 180 },
        	[4]={ 1358.8525390625, 222.1025390625, 19.500825881958, 66.153839111328 },
        	[5]={ 1244.9931640625, 349.0595703125, 19.510011672974, 65.362640380859 },
        	[6]={ 229.494140625, -133.837890625, 1.5302613973618, 180 },
        	[7]={ 638.3662109375, -557.5439453125, 16.291219711304, 180 },
        	[8]={ -115.3662109375, -1159.0224609375, 2.2702896595001, 155.38464355469 },
        	[9]={ -48.3046875, -1583.38671875, 3.0861170291901, 142.72528076172 },
        	[10]={ -715.1279296875, -2329.4169921875, 35.020561218262, 159.42858886719 },
        	[11]={ -972.2265625, -1927.89453125, 80.391189575195, 346.59341430664 },
        	[12]={ -1916.82421875, -1778.580078125, 30.213380813599, 124.96704101563 },
        	[13]={ -2259.20703125, -2202.009765625, 33.148960113525, 118.9010925293 },
            	[14]={ -2056.396484375, -2486.3916015625, 30.576242446899, 231.34065246582 },
            	[15]={ -2806.1201171875, -153.095703125, 7.1323294639587, 359.42855834961 },
            	[16]={ -2703.6474609375, 251.4677734375, 4.2803363800049, 359.69232177734 },
            	[17]={ -2670.439453125, 620.080078125, 14.553267478943, 269.49450683594 },
            	[18]={ -2603.783203125, 985.9716796875, 78.226203918457, 359.69232177734 },
            	[19]={ -2285.1875, 2364.7509765625, 5.0324692726135, 56.307708740234 },
            	[20]={ -1926.8857421875, 2382.9443359375, 49.219272613525, 201.27473449707 },
            	[21]={ -1467.3251953125, 1841.935546875, 32.522895812988, 274.41760253906 },
        	[22]={ -1200.2802734375, 1826.490234375, 41.445804595947, 316 },
        	[23]={ -1422.3779296875, 2646.9306640625, 55.414581298828, 359.69232177734 },
        	[24]={ -1602.7958984375, 2674.8193359375, 54.555450439453, 88.747253417969 },
        	[25]={ -1101.6181640625, 2359.0078125, 85.231590270996, 184.39561462402 },
        	[26]={ -849.31640625, 1522.046875, 20.700908660889, 173.93408203125 },
        	[27]={ -304.0283203125, 833.4521484375, 12.418985366821, 182.81318664551 },
        	[28]={ -186.904296875, 1134.638671875, 19.316837310791, 359.86813354492 },
        	[29]={ 172.0048828125, 1142.5712890625, 13.951126098633, 240.30769348145 },
        	[30]={ 642.177734375, 1712.4267578125, 6.7192668914795, 311.25274658203 },
        	[31]={ 1728.439453125, 1526.30859375, 10.398948669434, 182.81318664551 },
        	[32]={ 2159.8076171875, 1682.3779296875, 10.422255516052, 2.0659484863281 },
        	[33]={ 2156.1689453125, 2192.2705078125, 10.398954391479, 0.043975830078125 },
        	[34]={ 2318.25390625, 2409.6552734375, 10.398954391479, 270.63735961914 },
        	[35]={ 2171.8017578125, 2776.9794921875, 10.398955345154, 89.538452148438 },
        },
	["[State] Brownstreak replacement, (a route following the railroad counter clockwise)"] = {
		[1]={ 1804.6904296875, -1910.634765625, 13.499828338623, 359.42855834961 },
		[2]={ 2189.4521484375, -1700.4970703125, 13.601998329163, 355.73626708984 },
		[3]={ 2273.9560546875, -1329.4306640625, 23.928192138672, 358.19781494141 },
		[4]={ 2883.896484375, -48.58203125, 18.213655471802, 9.8021850585938 },
		[5]={ 2422.82421875, 45.15234375, 26.433757781982, 90.417572021484 },
		[6]={ 2251.81640625, 45.3330078125, 26.436800003052, 89.626373291016 },
		[7]={ 1353.673828125, 262.09375, 19.506698608398, 335.16482543945 },
		[8]={ 1250.876953125, 346.53125, 19.507274627686, 65.802185058594 },
		[9]={ 561.2578125, 664.0615234375, 3.6697607040405, 247.07691955566 },
		[10]={ 2829.326171875, 1288.4560546875, 10.871359825134, 359.78021240234 },
		[11]={ 1431.119140625, 2608.400390625, 10.770132064819, 91.472534179688 },
		[12]={ 1598.265625, 1876.5859375, 10.772087097168, 89.97802734375 },
		[13]={ 908.86328125, 742.990234375, 10.897902488708, 108.61538696289 },
		[14]={ 13.6826171875, 1264.9599609375, 10.243775367737, 76.087921142578 },
		[15]={ -295.0888671875, 853.45703125, 10.703110694885, 359.9560546875 },
		[16]={ -866.4765625, 1102.5849609375, 26.075029373169, 14.197814941406 },
		[17]={ -1993.7109375, 147.974609375, 27.639808654785, 179.912109375 },
		[18]={ -1358.2880859375, -1670.7763671875, 45.481510162354, 241.09889221191 },
		[19]={ -93.3388671875, -1109.619140625, 2.2697031497955, 158.81317138672 },
		[20]={ 826.0556640625, -1330.994140625, 13.49754524231, 270.8132019043 },
	}
}
