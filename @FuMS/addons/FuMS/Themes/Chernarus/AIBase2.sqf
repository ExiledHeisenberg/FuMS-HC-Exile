// 	AIBase1.sqf
// 	TheOneWhoKnocks
// 	4/20/19
// 	Spawn location should be 4129.35,11023 as this map is specific to Chernarus
// 	This mission was ported from Clarkycal/ClarkycalLad mission that he has developed for the DMS mission system
//  Includes additoinal work by 
//	ORIGINAL CREDITS
/*
	"Ai Base" DMS static mission for Chernarus.
	Created by Clarkycal/ClarkycalLad using templates by eraser1 with mission code layout and features inspired by mission files from [CiC]red_ned and Riker. Thanks guys!	
	http://www.exilemod.com/topic/21734-release-dms-chernarus-static-ai-base-mission/
*/
//
//	This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License.
// To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
// 
// Be cautious when editing data.

[
	["AIBase2", 250], 	// Mission Title NOSPACES!, and encounter radius.  This example has no options
	["Military Soldiers Base 2","hd_objective","ELLIPSE","ColorRed","SolidBorder",250],    // Map Markers ["MapText", "SHAPE", "COLOR", "FILL", size];
	[  
		[				// NOTIFICATION Messages and Map display Control.
		false, "ALL",0, // Notify players via Radio Message, radio channel, range from encounter center (0=unlimited.
		true, 			// Notify players via global toast message
		true,			// Show encounter area on the map
		900,    		// Win delay: Time in seconds after a WIN before mission cleanup is performed
		10       		// Lose delay: Time in seconds after a lose before mission cleanup is performed
						//NOTE: the above delay must occur before the mission is considered 'complete' by the mission manager control loop.
		],
		[		
			"Military Soldiers Base",	// The first line is the title of the pop-up box
			"A large group of Military Soldiers have built a base and are awaiting your arrival....."		// The second line is the actual text in the box
		],
		
		// Mission Success Message
		[
			"Military Soldiers Base!",
			"Convicts have successfully killed the Military Soldiers and claimed all the loot for themselves!"
		],
	  
		// Mission Failure Message
		[
			"Military Soldiers Base",
			"The Military Soldiers have finished their beers and buggered off..."
		] 
	],
	[  	//  Loot Config:  Refer to LootData.sqf for specifics		

		["None" , 		[5,5] ], //[static loot, offset location] - spawns with the mission
		[	
			["AIBase1Loot" , 		[4085.28,10946.1,0]	],
			["AIBase1Loot" , 		[4134.72,11025.9,0]	],
			["AIBase1MedLoot" , 	[4173.56,11038.2,0]	],
			["AIBase1BuildLoot", 	[4044.35,10990.8,0]	],
			["AIBase1HELoot" , 		[
										[4183.65,10991,0],
										[4136.48,10937.9,0],
										[4101.73,11053.2,0],
										[4101.73,11053.2,0],
										[4097.91,10996,0]
									]
			]
		], // Win loot, offset location - spawns after mission success
		//["None" , 		[5,5] ], //[static loot, offset location] - spawns with the mission
		["None" , 		[0,0] ]  // Failure loot, offset location - spawns on mission failure
	],
	[	
		// Loot vehicle
		// Class Name, 			Offset, 	Rotation, 	Condition Array [Fuel, Ammo, Engine Damage, FuelTank Damage, Hull Damage, Optional Fire/Smoke parameter.
		//		Effect options: "FIRE_SMALL", "FIRE_MEDIUM", "FIRE_BIG", "SMOKE_SMALL", "SMOKE_MEDIUM", "SMOKE_BIG" 
		// ["I_UGV_01_rcws_F",	[0,100],   	0, 			[.5,   1,     .5,         .5,         .5]				]  
		// ["I_UGV_01_rcws_F",	[0,100],   	0, 			[.5,   1,     .5,         .5,         .5], "FIRE_SMALL"]   
		
		// SUGGESTED SPAWN POINTS FROM ORIGINAL MAP 
		// USED TO FIND GOOD LOCATIONS FOR SPAWN
		["Sign_Arrow_Blue_F", [4085,11009,0], 0, 0],
		["Sign_Arrow_Blue_F", [4077.07,10979.6,0], 0, 0],
		["Sign_Arrow_Blue_F", [4102.46,10956.9,0], 0, 0],
		["Sign_Arrow_Blue_F", [4148.29,10971,0], 0, 0],
		["Sign_Arrow_Blue_F", [4109.96,11021,0], 0, 0],
		["Sign_Arrow_Blue_F", [4102.27,11081.4,0], 0, 0],
		["Sign_Arrow_Blue_F", [4157.98,11104.7,0], 0, 0],
		["Sign_Arrow_Blue_F", [4196.95,11048.1,0], 0, 0],
		
		
		// BUILDINGS: persist = 0: building deleted at event completion, 1= building remains until server reset.
		["M3Editor-ASL", [-1,-1], "NONE", 0,
												
			[	// paste your array of building objects here
				["Land_A_statue02",[4061.453369,11014.639648,336.601013],[[-0.720841,-0.692763,-0.0216243],[-0.0299852,0,0.99955]],[false,false]],
				["WarfareBAircraftFactory_CDF",[4154.208496,10979.507813,338.820099],[[-0.732061,0.681128,-0.0122979],[-0.00749312,0.0100004,0.999922]],[false,false]],
				["RU_WarfareBAircraftFactory",[4192.990723,11057.09375,338.671356],[[-0.77266,0.634804,-0.00455907],[-0.0100007,-0.00499109,0.999938]],[false,false]],
				["Ins_WarfareBArtilleryRadar",[4107,10938.366211,338.286499],[[-0.750861,0.66046,0],[0,0,1]],[false,false]],
				["Land_Mil_ControlTower_EP1",[4121.652344,10920.859375,339.0680542],[[0.732248,-0.681039,0],[0,0,1]],[false,false]],
				["Land_BagFenceRound",[4127.885742,11032.256836,338.0514832],[[-0.797605,0.60304,-0.0129781],[-0.0124963,0.00499106,0.999909]],[false,false]],
				["Land_BagFenceRound",[4127.693359,11034.490234,338.0359192],[[-0.704169,-0.710013,-0.00525628],[-0.0124963,0.00499106,0.999909]],[false,false]],
				["Land_BagFenceRound",[4125.717285,11032.0341797,338.013031],[[0.584983,0.811018,0.00675525],[-0.0149978,0.00248947,0.999884]],[false,false]],
				["Land_BagFenceRound",[4124.310059,11031.923828,337.999023],[[-0.792386,0.609873,-0.0134039],[-0.0149978,0.00248947,0.999884]],[false,false]],
				["Land_BagFenceRound",[4121.95752,11033.935547,337.950714],[[0.732702,-0.680431,0.0126843],[-0.0149978,0.00248947,0.999884]],[false,false]],
				["Land_BagFenceRound",[4122.141113,11031.695313,337.961304],[[0.638848,0.769312,0.00573333],[-0.0149978,0.00500282,0.999875]],[false,false]],
				["Land_BagFenceRound",[4127.62207,11035.788086,338.0302429],[[-0.69831,0.71569,-0.0122995],[-0.0124963,0.00499106,0.999909]],[false,false]],
				["Land_BagFenceRound",[4127.500488,11037.960938,338.0212708],[[-0.637097,-0.77076,-0.00604301],[-0.0124963,0.00248956,0.999919]],[false,false]],
				["Land_BagFenceRound",[4125.272461,11037.813477,337.988068],[[0.736953,-0.675856,0.0108927],[-0.0124963,0.00248956,0.999919]],[false,false]],
				["Land_BagFenceRound",[4123.918457,11037.617188,337.97757],[[-0.601169,-0.799091,-0.00702773],[-0.0149978,0.00248947,0.999884]],[false,false]],
				["Land_BagFenceRound",[4121.757324,11037.396484,337.939056],[[0.742234,-0.670019,0.0128014],[-0.0149978,0.00248947,0.999884]],[false,false]],
				["Land_BagFenceRound",[4121.946289,11035.15625,337.948517],[[0.615421,0.788165,0.00726871],[-0.0149978,0.00248947,0.999884]],[false,false]],
				["Land_BagFenceRound",[4121.881348,11107.501953,338.611145],[[-0.755811,0.654748,0.00742115],[-0.00750901,-0.0199998,0.999772]],[false,false]],
				["Land_BagFenceRound",[4121.770508,11109.674805,338.663147],[[-0.675964,-0.736668,-0.0198136],[-0.00750901,-0.0199998,0.999772]],[false,false]],
				["Land_BagFenceRound",[4119.724609,11107.275391,338.587219],[[0.658294,0.752496,0.0199854],[-0.00750107,-0.0199908,0.999772]],[false,false]],
				["Land_BagFenceRound",[4118.302734,11107.170898,338.57666],[[-0.638296,0.769718,0.0106018],[-0.00750107,-0.0199908,0.999772]],[false,false]],
				["Land_BagFenceRound",[4115.958984,11109.189453,338.607056],[[0.721229,-0.692645,-0.00844472],[-0.00750107,-0.0199998,0.999772]],[false,false]],
				["Land_BagFenceRound",[4116.144043,11106.933594,338.552979],[[0.467092,0.883955,0.0211794],[-0.00750107,-0.0199908,0.999772]],[false,false]],
				["Land_BagFenceRound",[4121.692871,11110.966797,338.677429],[[-0.761604,0.647999,0.00753236],[-0.00499145,-0.0174886,0.999835]],[false,false]],
				["Land_BagFenceRound",[4121.504883,11113.210938,338.727417],[[-0.677569,-0.735237,-0.0180921],[-0.00500338,-0.0199911,0.999788]],[false,false]],
				["Land_BagFenceRound",[4119.342285,11112.994141,338.707458],[[0.82342,-0.567409,-0.00516759],[-0.00750107,-0.0199908,0.999772]],[false,false]],
				["Land_BagFenceRound",[4117.994141,11112.797852,338.697784],[[-0.517219,-0.855596,-0.0209885],[-0.00750107,-0.0199908,0.999772]],[false,false]],
				["Land_BagFenceRound",[4115.76416,11112.641602,338.673889],[[0.797628,-0.60312,-0.00607515],[-0.00750107,-0.0199908,0.999772]],[false,false]],
				["Land_BagFenceRound",[4115.943359,11110.40332,338.621613],[[0.696193,0.717587,0.0195783],[-0.00750107,-0.0199998,0.999772]],[false,false]],
				["Land_BagFenceRound",[4226.0986328,11038.552734,338.89328],[[-0.76358,0.6457,-0.00412044],[-0.00750107,-0.00248932,0.999969]],[false,false]],
				["Land_BagFenceRound",[4225.989746,11040.734375,338.89679],[[-0.662105,-0.749395,-0.00496663],[-0.00750107,0,0.999972]],[false,false]],
				["Land_BagFenceRound",[4223.941406,11038.341797,338.87384],[[0.603636,0.797245,0.00500492],[-0.00500338,-0.00248936,0.999984]],[false,false]],
				["Land_BagFenceRound",[4222.522461,11038.220703,338.868713],[[-0.762074,0.647486,-0.00220116],[-0.00500338,-0.00248936,0.999984]],[false,false]],
				["Land_BagFenceRound",[4220.175781,11040.249023,338.859772],[[0.748845,-0.662734,0.0037468],[-0.00500338,0,0.999987]],[false,false]],
				["Land_BagFenceRound",[4220.361328,11038.0166016,338.855133],[[0.605558,0.795785,0.00500369],[-0.00499145,-0.00248936,0.999984]],[false,false]],
				["Land_BagFenceRound",[4225.91748,11042.0400391,338.896118],[[-0.764486,0.644615,-0.00573462],[-0.00750107,0,0.999972]],[false,false]],
				["Land_BagFenceRound",[4225.725098,11044.266602,338.897278],[[-0.671172,-0.74125,-0.00873459],[-0.00750107,-0.0049912,0.999959]],[false,false]],
				["Land_BagFenceRound",[4223.568848,11044.0585938,338.877441],[[0.772764,-0.634689,0.0022865],[-0.00500338,-0.00248936,0.999984]],[false,false]],
				["Land_BagFenceRound",[4222.21582,11043.859375,338.872101],[[-0.525459,-0.850815,-0.0026291],[-0.00500338,0,0.999987]],[false,false]],
				["Land_BagFenceRound",[4219.97998,11043.712891,338.858459],[[0.644327,-0.764735,0.00483328],[-0.00750107,0,0.999972]],[false,false]],
				["Land_BagFenceRound",[4220.158691,11041.467773,338.859711],[[0.57862,0.815592,0.00289509],[-0.00500338,0,0.999987]],[false,false]],
				["Land_BagFenceRound",[4154.265625,10942.0605469,339.0510559],[[-0.68799,0.725711,-0.00361372],[0,0.0049795,0.999988]],[false,false]],
				["Land_BagFenceRound",[4154.150879,10944.240234,339.0388184],[[-0.625916,-0.779888,0.00194174],[0,0.00248975,0.999997]],[false,false]],
				["Land_BagFenceRound",[4152.104492,10941.841797,339.052063],[[0.555064,0.831797,-0.00414198],[0,0.0049795,0.999988]],[false,false]],
				["Land_BagFenceRound",[4150.686035,10941.720703,339.0525818],[[-0.767403,0.641157,-0.00319268],[0,0.0049795,0.999988]],[false,false]],
				["Land_BagFenceRound",[4148.339355,10943.748047,339.0401306],[[0.78216,-0.62307,0.00310261],[0,0.0049795,0.999988]],[false,false]],
				["Land_BagFenceRound",[4148.524902,10941.516602,339.0474548],[[0.678717,0.7344,-0.000138631],[-0.00248975,0.00248975,0.999994]],[false,false]],
				["Land_BagFenceRound",[4154.0800781,10945.547852,339.0367737],[[-0.739557,0.673092,-0.00167584],[0,0.00248975,0.999997]],[false,false]],
				["Land_BagFenceRound",[4153.885742,10947.775391,339.0299683],[[-0.625031,-0.780597,0.0019435],[0,0.00248975,0.999997]],[false,false]],
				["Land_BagFenceRound",[4151.724609,10947.547852,339.0292664],[[0.748135,-0.663537,0.00351473],[-0.00248975,0.00248975,0.999994]],[false,false]],
				["Land_BagFenceRound",[4150.371582,10947.359375,339.0276489],[[-0.69162,-0.722261,7.62825e-005],[-0.00248975,0.00248975,0.999994]],[false,false]],
				["Land_BagFenceRound",[4148.143066,10947.209961,339.0227661],[[0.748439,-0.663195,0.00331826],[0,0.00500338,0.999987]],[false,false]],
				["Land_BagFenceRound",[4148.325684,10944.96582,339.036438],[[0.587032,0.809553,-0.00405055],[0,0.00500338,0.999987]],[false,false]],
				["Land_BagFenceRound",[4046.971191,11032.62793,336.229065],[[-0.759548,0.650205,-0.0179088],[-0.0299852,-0.00749751,0.999522]],[false,false]],
				["Land_BagFenceRound",[4046.778076,11034.852539,336.243805],[[-0.639202,-0.768635,-0.0249414],[-0.0299852,-0.00749751,0.999522]],[false,false]],
				["Land_BagFenceRound",[4044.802979,11032.405273,336.148529],[[0.637306,0.770209,0.0248963],[-0.0299852,-0.00749751,0.999522]],[false,false]],
				["Land_BagFenceRound",[4043.395752,11032.289063,336.119263],[[-0.758944,0.65091,-0.0178854],[-0.0299852,-0.00749751,0.999522]],[false,false]],
				["Land_BagFenceRound",[4041.0458984,11034.314453,336.054657],[[0.707372,-0.706662,0.0159201],[-0.0299852,-0.00749751,0.999522]],[false,false]],
				["Land_BagFenceRound",[4041.228027,11032.0722656,336.0394897],[[0.539135,0.841919,0.0224891],[-0.0299852,-0.00749751,0.999522]],[false,false]],
				["Land_BagFenceRound",[4046.705078,11036.157227,336.247375],[[-0.760343,0.649317,-0.0163152],[-0.0299832,-0.00999587,0.9995]],[false,false]],
				["Land_BagFenceRound",[4046.592041,11038.334961,336.270996],[[-0.681403,-0.731382,-0.0277553],[-0.0299832,-0.00999587,0.9995]],[false,false]],
				["Land_BagFenceRound",[4044.357422,11038.180664,336.188049],[[0.782102,-0.622912,0.017232],[-0.0299832,-0.00999587,0.9995]],[false,false]],
				["Land_BagFenceRound",[4043.00463867,11037.989258,336.157745],[[-0.626106,-0.77923,-0.0281431],[-0.0324838,-0.00999509,0.999422]],[false,false]],
				["Land_BagFenceRound",[4040.849121,11037.78125,336.0734863],[[0.802262,-0.59665,0.019592],[-0.0299852,-0.00749751,0.999522]],[false,false]],
				["Land_BagFenceRound",[4041.0324707,11035.526367,336.0587463],[[0.649377,0.76005,0.0251822],[-0.0299852,-0.00749751,0.999522]],[false,false]],
				["USMC_WarfareBBarracks",[4097.972656,11097.25293,338.0405884],[[0.616104,0.787255,0.0254214],[-0.0125011,-0.0224972,0.999669]],[false,false]],
				["Land_Fort_Watchtower",[4142.501953,11019.186523,338.310059],[[0.683996,0.729484,0.00137471],[-0.0100007,0.00749274,0.999922]],[false,false]],
				["Land_CamoNet_NATO",[4135.553711,10938.634766,339.0315857],[[-0.738536,0.674205,-0.00351739],[-0.00248975,0.00248975,0.999994]],[false,false]],
				["TK_WarfareBContructionSite1_Base_EP1",[4057.354736,11033.52832,339.149292],[[-0.753601,0.657049,-0.0193199],[-0.0299852,-0.00500101,0.999538]],[false,false]],
				["TK_GUE_WarfareBContructionSite1_Base_EP1",[4074.40625,11001.943359,337.0654907],[[-0.752656,0.657839,-0.027514],[-0.0299852,0.00749769,0.999522]],[false,false]],
				["TK_GUE_WarfareBContructionSite_Base_EP1",[4061.486084,11037.892578,336.684021],[[-0.705356,-0.708537,-0.0211577],[-0.0274846,-0.00248845,0.999619]],[false,false]],
				["TK_GUE_WarfareBContructionSite_Base_EP1",[4057.316406,11033.477539,336.545532],[[-0.753641,0.657002,-0.0193213],[-0.0299852,-0.00500101,0.999538]],[false,false]],
				["TK_GUE_WarfareBContructionSite_Base_EP1",[4053.208252,11028.999023,336.399902],[[-0.751687,0.659239,-0.0192575],[-0.0299932,-0.00500101,0.999538]],[false,false]],
				["Land_Carpet_rack_EP1",[4076.994629,10991.435547,337.22583],[[-0.750475,0.660257,-0.0291163],[-0.0299832,0.00999621,0.9995]],[false,false]],
				["Land_Stanek_1C",[4074.404785,10994.102539,337.126343],[[-0.758571,0.651004,-0.0276401],[-0.0299852,0.00749769,0.999522]],[false,false]],
				["Land_CratesWooden_F",[4083.0527344,10995.973633,337.372253],[[-0.751096,0.65955,-0.0291278],[-0.0299832,0.00999621,0.9995]],[false,false]],
				["Land_Scrap_MRAP_01_F",[4244.478516,11059.256836,339.105774],[[-0.754917,0.655812,0.0032656],[0,-0.00497941,0.999988]],[false,false]],
				["Land_fort_artillery_nest",[4119.294922,11029.839844,337.907166],[[-0.69682,-0.717213,-0.00686356],[-0.0149978,0.00500282,0.999875]],[false,false]],
				["Land_fort_artillery_nest",[4130.348633,11040.353516,338.0701904],[[0.665223,0.746617,0.00645779],[-0.0125011,0.00248956,0.999919]],[false,false]],
				["Land_fort_rampart",[4130.489258,10940.800781,338.986725],[[-0.69534,0.718626,-0.00886151],[-0.00499145,0.00750097,0.999959]],[false,false]],
				["Land_fort_rampart",[4137.078125,10947.136719,338.97403],[[-0.695755,0.718244,-0.00705804],[-0.00499145,0.00499139,0.999975]],[false,false]],
				["Land_Farm_WTower",[4211.601563,11052.481445,338.818726],[[-0.766963,0.641677,-0.00415583],[-0.00750107,-0.00248932,0.999969]],[false,false]],
				["MASH_EP1",[4120.475586,10995.776367,338.219788],[[0.749608,0.661865,0.00483829],[-0.0174891,0.0124992,0.999769]],[false,false]],
				["MASH_EP1",[4125.594727,10990.379883,338.373749],[[0.706732,0.70748,0.00175989],[-0.0149978,0.0124949,0.999809]],[false,false]],
				["INS_WarfareBFieldhHospital",[4147.143066,11096.720703,338.596863],[[-0.748421,0.663197,0.0059923],[-0.00750107,-0.0174988,0.999819]],[false,false]],
				["RU_WarfareBFieldhHospital",[4164.25293,10952.373047,339.0289001],[[-0.785108,0.619357,-0.00154205],[0,0.00248975,0.999997]],[false,false]],
				["USMC_WarfareBFieldhHospital",[4167.974121,11096.290039,338.805786],[[-0.761688,0.64794,0.00209758],[-0.0100007,-0.0149931,0.999838]],[false,false]],
				["USMC_WarfareBFieldhHospital",[4150.271484,11077.775391,338.39032],[[-0.7504,0.660984,0.000751637],[-0.0100007,-0.0124906,0.999872]],[false,false]],
				["Fortress2",[4138.542969,10994.411133,338.502075],[[0.696278,-0.717596,0.0158755],[-0.0124916,0.00999992,0.999872]],[false,false]],
				["Land_GeneralStore_01a_PMC",[4119.129395,10965.855469,338.660339],[[0.705818,0.708391,0.00171903],[-0.0174891,0.0149995,0.999735]],[false,false]],
				["PowGen_Big",[4132.921387,11007.230469,338.282959],[[-0.102589,-0.994686,0.0086664],[-0.0124916,0.00999992,0.999872]],[false,false]],
				["Land_Ss_hangar",[4174.46875,10996.572266,338.790771],[[0.721996,-0.691817,0.0105275],[-0.00500338,0.00999462,0.999938]],[false,false]],
				["TK_GUE_WarfareBBarrier5x_EP1",[4153.454102,10962.837891,338.938354],[[-0.730702,0.682617,-0.0104745],[-0.00499145,0.0100006,0.999938]],[false,false]],
				["Land_A_Hospital",[4066.800049,10973.431641,336.964233],[[-0.661561,-0.749892,0],[0,0,1]],[false,false]],
				["LAV25_HQ_unfolded",[4142.943848,10934.376953,339.0573425],[[-0.736923,0.675974,-0.00183476],[-0.00248975,0,0.999997]],[false,false]],
				["Land_Ind_Workshop01_03",[4037.617432,10984.198242,335.793915],[[-0.747697,0.663279,-0.0317798],[-0.0424653,0,0.999098]],[false,false]],
				["Gue_WarfareBLightFactory",[4137.76709,11122.96582,339.0702515],[[-0.768201,0.6401,0.0118349],[-0.00750107,-0.0274838,0.999594]],[false,false]],
				["Land_Market_shelter_EP1",[4066.153564,10994.445313,336.860352],[[-0.668434,-0.743596,-0.0161475],[-0.0324838,0.00749711,0.999444]],[false,false]],
				["Land_Market_stalls_01_EP1",[4087.168945,11002.540039,337.445099],[[-0.747266,0.664034,-0.0255343],[-0.0274933,0.00749823,0.999594]],[false,false]],
				["Land_Market_stalls_01_EP1",[4087.780273,10982.341797,337.67569],[[-0.735402,0.676943,-0.0305286],[-0.0299932,0.0124907,0.999472]],[false,false]],
				["Land_Market_stalls_01_EP1",[4103.291016,10985.546875,338.0312805],[[-0.738287,0.673958,-0.0267175],[-0.0224913,0.0149901,0.999635]],[false,false]],
				["Land_Cargo_House_V1_F",[4140.625,11047.382813,338.149384],[[0.700903,0.713257,0],[0,0,1]],[false,false]],
				["Land_Cargo_House_V1_F",[4147.927734,11040.133789,338.248932],[[0.688222,0.725501,0],[0,0,1]],[false,false]],
				["Land_Medevac_house_V1_F",[4161.0932617,11052.279297,338.330933],[[-0.759542,0.650458,0],[0,0,1]],[false,false]],
				["Land_Medevac_house_V1_F",[4150.571289,11062.431641,338.255371],[[-0.759542,0.650458,0],[0,0,1]],[false,false]],
				["Land_Medevac_house_V1_F",[4138.893066,11072.78125,338.216736],[[-0.759542,0.650458,0],[0,0,1]],[false,false]],
				["Land_Medevac_house_V1_F",[4128.369141,11082.938477,338.230408],[[-0.759542,0.650458,0],[0,0,1]],[false,false]],
				["Land_Cargo_HQ_V1_F",[4101.73291,11053.21875,337.646423],[[-0.759542,0.650458,0],[0,0,1]],[false,false]],
				["Land_Medevac_HQ_V1_F",[4169.239258,11069.485352,338.463531],[[-0.759542,0.650458,0],[0,0,1]],[false,false]],
				["Land_Cargo_Tower_V1_F",[4127.516113,11137.44043,339.359924],[[-0.759544,0.650456,0],[0,0,1]],[false,false]],
				["Land_Cargo_Tower_V1_F",[4173.733887,10963.110352,339.00448608],[[-0.759544,0.650456,0],[0,0,1]],[false,false]],
				["Land_A_Office01_EP1",[4075.552979,11070.919922,337.332611],[[-0.759646,0.650337,0],[0,0,1]],[false,false]],
				["Land_Offices_01_V1_F",[4208.832031,11024.989258,338.803741],[[-0.754812,0.655941,0],[0,0,1]],[false,false]],
				["Land_stand_small_EP1",[4093.819092,10986.303711,337.76709],[[-0.74365,0.668026,-0.0269383],[-0.024984,0.0124972,0.99961]],[false,false]],
				["Land_A_statue01",[4090.102051,11063.625,337.500397],[[0.754804,-0.655895,0.00853408],[-0.0199917,-0.00999837,0.99975]],[false,false]],
				["CampEast",[4123.608398,11063.158203,338.00558472],[[0.678189,0.734754,0.0139813],[-0.0124963,-0.00749219,0.999894]],[false,false]],
				["CampEast",[4130.3125,11056.792969,338.0446777],[[0.663448,0.74815,0.0103786],[-0.0100007,-0.00500301,0.999937]],[false,false]],
				["CampEast",[4116.786621,11071.0400391,337.969421],[[0.680788,0.732347,0.0139957],[-0.0124963,-0.00749219,0.999894]],[false,false]],
				["TK_WarfareBUAVterminal_Base_EP1",[4180.746582,11030.850586,338.574219],[[-0.764681,0.644347,-0.00895242],[-0.00750107,0.00499131,0.999959]],[false,false]],
				["Land_ScrapHeap_1_F",[4255.472656,11040.261719,339.0222168],[[-0.762101,0.64745,0.0032394],[0,-0.00500326,0.999987]],[false,false]],
				["Land_ScrapHeap_1_F",[4012.151123,11031.478516,334.901154],[[-0.76062,0.64852,-0.0296457],[-0.0474467,-0.0099891,0.998824]],[false,false]],
				["Land_ScrapHeap_2_F",[4022.261719,11052.974609,335.578156],[[-0.763097,0.646279,-0.00263242],[-0.0224913,-0.0224856,0.999494]],[false,false]],
				["INS_WarfareBVehicleServicePoint",[4154.00195313,11030.0146484,338.367645],[[-0.995467,0.0945048,-0.0106591],[-0.00999474,0.00750069,0.999922]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4145.614746,10914.660156,339.0599976],[[-0.761653,0.647985,0],[0,0,1]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4155.763184,10926.672852,339.0599976],[[-0.772079,0.635527,0],[0,0,1]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4176.0375977,10950.793945,339.0465393],[[0.753883,-0.656999,0.00351277],[-0.00248975,0.00248975,0.999994]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4165.759766,10938.780273,339.0599976],[[-0.767222,0.641382,0],[0,0,1]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4186.166504,10962.612305,339.0259399],[[-0.77133,0.636425,-0.00350498],[-0.00248975,0.00248975,0.999994]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4196.17627,10974.642578,338.993225],[[-0.762031,0.647533,-0.00322443],[0,0.0049795,0.999988]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4216.584961,10998.421875,338.948761],[[-0.761197,0.648485,-0.00675972],[-0.00248975,0.00750104,0.999969]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4206.37207,10986.521484,338.973206],[[-0.757592,0.652708,-0.00515203],[-0.00248975,0.00500336,0.999984]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4226.738281,11010.408203,338.929565],[[-0.764651,0.644435,-0.00350829],[-0.00248975,0.00248975,0.999994]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4242.0195313,11037.492188,338.9617],[[0.948583,-0.316529,0],[0,0,1]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4235.798828,11023.283203,338.943756],[[0.872754,-0.48816,0],[0,0,1]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4224.106445,11058.0654297,338.929749],[[0.601258,0.798965,0.0119965],[-0.00999474,-0.0074924,0.999922]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4212.624023,11068.814453,338.925781],[[0.755245,0.655442,0],[0,0,1]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4201.493652,11079.624023,338.884521],[[0.626095,0.779461,0.0210836],[-0.0149978,-0.014996,0.999775]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4190.496582,11090.762695,338.896973],[[0.791599,0.610694,0.0205865],[-0.0125011,-0.017498,0.999769]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4179.731445,11101.97168,339.0798645],[[0.63777,0.769237,0.0390345],[-0.0249936,-0.0299838,0.999238]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4167.581543,11111.735352,339.101776],[[0.614934,0.78721,0.0464385],[-0.0274846,-0.0374577,0.99892]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4158.125,11123.782227,339.371826],[[-0.91406,-0.402746,-0.0478608],[-0.0324838,-0.0449291,0.998462]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4148.866699,11135.855469,339.761963],[[0.652137,0.758052,0.00863424],[0.0100004,-0.0199903,0.99975]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4124.00292969,11144.745117,339.665466],[[-0.729634,0.683472,0.0223699],[-0.0324838,-0.0673161,0.997203]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4113.367676,11133.228516,339.204529],[[-0.742333,0.669215,0.0330658],[0.0174888,-0.0299805,0.999397]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4093.331543,11109.365234,338.425171],[[-0.757049,0.653179,0.0152878],[-0.0100007,-0.0349808,0.999338]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4103.294922,11121.301758,338.847076],[[-0.787747,0.615702,0.0191529],[-0.00499145,-0.0374714,0.999285]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4084.241699,11098.59668,338.00595093],[[-0.760085,0.649808,0.00456403],[-0.0174993,-0.027489,0.999469]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4074.25293,11086.629883,337.535431],[[-0.757606,0.652685,-0.00588842],[-0.0249936,-0.0199941,0.999488]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4054.105957,11062.787109,336.667053],[[-0.755221,0.655052,-0.0234168],[-0.0374783,-0.00748751,0.999269]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4064.175537,11074.698242,337.0787354],[[-0.759791,0.64992,-0.0179183],[-0.0299852,-0.00749751,0.999522]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4044.0129395,11050.852539,336.265076],[[-0.756911,0.653044,-0.0248681],[-0.0349809,-0.00248787,0.999385]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4026.248779,11022.863281,335.500183],[[-0.796553,0.604568,0],[0,0,1]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4031.764648,11046.0830078,335.730804],[[0.231654,0.972769,0.00752855],[-0.032482,0,0.999472]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4136.202148,11145.238281,339.979218],[[0.525796,0.850252,0.0246946],[-0.00248975,-0.0274931,0.999619]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4124.959473,10900.457031,339.062439],[[-0.61574,-0.787947,-0.00196151],[0,-0.00248939,0.999997]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4113.207031,10910.651367,339.0982666],[[-0.672903,-0.739722,0.00351686],[0.00248939,0.00248975,0.999994]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4089.929932,10931.681641,338.573975],[[-0.657666,-0.753303,-0.00326078],[-0.0249936,0.0174938,0.999535]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4101.67334,10921.273438,338.958252],[[-0.673029,-0.739612,0.00250799],[-0.0100007,0.0124909,0.999872]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4077.881836,10941.691406,338.00363159],[[-0.623577,-0.781738,-0.00619536],[-0.0349741,0.0199795,0.999188]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4065.864014,10951.68457,337.336761],[[-0.649201,-0.76045,-0.0159185],[-0.0449609,0.0174748,0.998836]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4042.128418,10971.931641,336.032135],[[-0.64432,-0.764449,-0.0216515],[-0.0424639,0.0074943,0.99907]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4053.998047,10961.804688,336.656891],[[-0.640771,-0.767491,-0.0192523],[-0.0449596,0.0124789,0.998911]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4030.184814,10982.120117,335.487976],[[-0.650833,-0.758717,-0.0276573],[-0.0424569,0,0.999098]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4021.736328,11009.538086,335.272308],[[-0.999909,0.0135175,0],[0,0,1]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4023.264404,10994.71875,335.266541],[[-0.978593,-0.202226,-0.0382119],[-0.037472,-0.00748751,0.99927]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4023.129395,11032.0419922,335.403839],[[0.313411,0.949446,0.0180348],[-0.0499397,-0.00248628,0.998749]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4144.893555,10964.173828,338.8815],[[-0.714393,-0.699743,0.00168296],[-0.00499145,0.00750097,0.999959]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4133.606445,10974.97168,338.667877],[[0.67953,0.733648,-0.000544961],[-0.00999474,0.0100002,0.9999]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4122.275879,10985.733398,338.376434],[[-0.687428,-0.726252,0.00058118],[-0.0149978,0.0149962,0.999775]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4110.98291,10996.526367,338.0469971],[[-0.691003,-0.722822,-0.00659713],[-0.0199977,0.00999274,0.99975]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4099.740723,11007.378906,337.704071],[[-0.697466,-0.716516,-0.0120633],[-0.0249936,0.00749872,0.999659]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4088.451172,11018.188477,337.369171],[[-0.681433,-0.731725,-0.015081],[-0.0274933,0.00500149,0.999609]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4065.832764,11039.733398,336.805389],[[0.683059,0.730118,0.0189124],[-0.0249936,-0.00251245,0.999684]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4054.611328,11050.466797,336.611786],[[-0.698388,-0.715234,-0.0263561],[-0.0274846,-0.00999659,0.999572]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4117.0322266,11086.887695,338.181366],[[0.962401,0.271254,0.0143741],[-0.0100007,-0.0174985,0.999797]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4124.604492,11073.714844,338.0918274],[[-0.721532,-0.692237,-0.0141395],[-0.0100007,-0.00999986,0.9999]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4135.69873,11062.901367,338.137543],[[-0.675201,-0.737559,-0.0104432],[-0.0100007,-0.00500301,0.999937]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4147.0263672,11052.149414,338.213867],[[-0.685102,-0.728415,-0.00684776],[-0.00999474,0,0.99995]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4158.400391,11041.296875,338.327423],[[-0.695176,-0.71884,0.000177361],[-0.00750107,0.00750086,0.999944]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4170.103516,11030.700195,338.480347],[[-0.644314,-0.76476,-0.000709659],[-0.00999474,0.00749274,0.999922]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4181.96582,11020.428711,338.642273],[[-0.659596,-0.751609,0.00422445],[-0.00499145,0.0100006,0.999938]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4193.617188,11009.921875,338.780701],[[-0.679861,-0.733338,0.00223958],[-0.00749312,0.0100004,0.999922]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4236.92627,11054.12207,339.0154419],[[-0.0532873,0.998569,0.00458453],[-0.00750107,-0.0049912,0.999959]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4251.850586,11045.982422,339.0257568],[[0.0680907,-0.997668,-0.00463988],[-0.00499145,-0.00499127,0.999975]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4135.448242,10902.728516,339.0599976],[[-0.759296,0.650746,0],[0,0,1]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4121.630371,11095.416016,338.36673],[[-0.0261586,0.999509,0.0172318],[-0.0100007,-0.0174985,0.999797]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4077.123047,11028.927734,337.0775757],[[-0.700732,-0.713209,-0.0175193],[-0.0249936,0,0.999688]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4190.893066,11078.160156,338.772522],[[-0.77398,0.633208,-0.00140751],[-0.00999474,-0.00999414,0.9999]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4164.195313,11047.135742,338.368286],[[-0.762016,0.647517,-0.00732827],[-0.00750107,0.00248968,0.999969]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4141.100098,11107.887695,338.741821],[[-0.781848,0.623445,0.00543892],[-0.00500338,-0.0149975,0.999875]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4150.674805,11120.25,339.0328064],[[-0.796414,0.604379,0.0212213],[-0.00749312,-0.0449501,0.998961]],[false,false]],
				["Land_Hlaska",[4048.656738,11050.347656,336.416168],[[-0.758597,0.651268,-0.0194987],[-0.0299852,-0.00500101,0.999538]],[false,false]],
				["Land_Hlaska",[4236.727539,11040.359375,338.943756],[[0.997841,-0.0655014,0.00481769],[-0.00499145,-0.00248936,0.999984]],[false,false]],
				["Land_Hlaska",[4120.853516,11090.341797,338.275726],[[-0.766066,0.642758,0.00229475],[-0.00749312,-0.0125004,0.999894]],[false,false]],
				["Land_Barn_W_02",[4035.532959,11008.972656,335.721375],[[-0.0853888,0.996348,-0.000507931],[-0.0349741,-0.00248787,0.999385]],[false,false]],
				["Land_transport_cart_EP1",[4089.442871,10991.0537109,337.599518],[[-0.742618,0.669166,-0.0271182],[-0.0274933,0.00999692,0.999572]],[false,false]],
				["Land_Shed_W03",[4058.121338,11041.955078,336.628632],[[0.742653,0.669261,0.0235881],[-0.0249936,-0.00749854,0.999659]],[false,false]],
				["TK_GUE_WarfareBBarrier10xTall_EP1",[4202.755371,11001.453125,338.875854],[[-0.679872,-0.733331,0.000275549],[-0.00499145,0.00500332,0.999975]],[false,false]],
				["CDF_WarfareBUAVterminal",[4109.93457,11015.367188,337.831085],[[-0.763655,0.645321,-0.0198201],[-0.0174993,0.00999917,0.999797]],[false,false]],
				["CampEast",[4089.955078,11034.141602,337.383087],[[-0.768962,-0.63911,-0.0153805],[-0.0199977,0,0.9998]],[false,false]]
			]
			
		]
	  
	],
	[ 	// AI GROUPS. Only options marked 'Def:' implemented.
		//[["EAST","COMBAT","RED","VEE"],   	[  [3,"Rifleman_E"]  ],   				["Loiter",		[18297.931641,15587.395508,0.00136185],[18297.931641,15587.395508,0.00136185],[50]   ]],
		//[["EAST","AWARE","YELLOW","COLUMN"],  [  [1,"Sniper_E"]  ],   				["TowerGuard",	[18440.494141,15581.865234,17.889561],[18440.494141,15581.865234,17.889561],[10, "ANY"]   ]],
		//[["EAST","AWARE","YELLOW","COLUMN"],  [  [1,"Sniper_E"]  ],   				["TowerGuard",	[18271.00390625,15474.366211,18.0308838],[18271.00390625,15474.366211,18.0308838],[10, "ANY"]   ]],
		//[["EAST","AWARE","YELLOW","COLUMN"],  [  [1,"Sniper_E"]  ],   				["TowerGuard",	[18180.560547,15560.74707,17.798668],[18180.560547,15560.74707,17.798668],[10, "ANY"]   ]],
		//[["EAST","AWARE","YELLOW","COLUMN"],  [  [1,"Sniper_E"]  ],   				["TowerGuard",	[18164.910156,15541.244141,4.348576],[18164.910156,15541.244141,4.348576],[10, "ANY"]   ]],
		//[["EAST","AWARE","YELLOW","COLUMN"],  [  [1,"Sniper_E"]  ],   				["TowerGuard",	[18291.595703,15584.178711,4.353832],[18291.595703,15584.178711,4.353832],[10, "ANY"]   ]],
		//[["EAST","AWARE","YELLOW","COLUMN"],  [  [1,"Sniper_E"]  ],   				["TowerGuard",	[18307.537109,15588.579102,4.360596],[18307.537109,15588.579102,4.360596],[10, "ANY"]   ]],
		//[["EAST","AWARE","YELLOW","COLUMN"],  [  [1,"Sniper_E"]  ],   				["TowerGuard",	[18426.212891,15537.683594,4.300941],[18426.212891,15537.683594,4.300941],[10, "ANY"]   ]],
		//[["EAST","COMBAT","RED","VEE"],   	[  [4,"Rifleman_E"]  ],   				["BoxPatrol",	[0,0],[0,0],[200]   ]],
		//[["EAST","COMBAT","RED","COLUMN"],  [  [4,"Rifleman_E"]  ],   				["Explore",		[0,0],[0,0],[100]   ]],
		//[["EAST","COMBAT","RED","VEE"],   	[  [4,"Rifleman_E"]  ],   				["BoxPatrol",	[0,0],[0,0],[100]   ]],
		//[["EAST","COMBAT","RED","COLUMN"],  [  [4,"Rifleman_E"]  ],   				["Explore",		[0,0],[0,0],[200]   ]],
		//[["EAST","COMBAT","RED","COLUMN"],  [  [1,"Sniper_E"],[3,"Rifleman_E"]  ],   	["Explore",		[0,0],[0,0],[200]   ]]

	],
	[			// Vehicles	
		[  		// Static Guns 
			[   // Vehicle                     Offset     				Direction   CargoLoot (see Loot section below for more detail!)
				[  "O_HMG_01_high_F"       	,[4223.43,11041,0],			[0],     	"None" ],
				[  "O_HMG_01_high_F"        ,[4151.12,10944.5,0],		[0],        "None" ], 
				[  "O_HMG_01_high_F"        ,[4043.76,11035.3,0],		[0],        "None" ], 
				[  "O_HMG_01_high_F"   		,[4119.05,11110.4,0],		[0],     	"None" ],				
				[  "O_HMG_01_high_F"   		,[4124.99,11034.5,0],		[0],     	"None" ]   
				// If driver-less vehicles are desired, place them at the bottom of the list AND have less drivers than vehicles in the next section
				// NOTE: Troops WILL be placed into 'driver-less' vehicles if the other vehicles are full!!!
			],
			[  
				// Drivers                          	# and type  |         Patrol     |    spawn   | dest       | 'Patrol' options
				[
					["EAST","COMBAT","RED","COLUMN"],   [  [5, "Rifleman_E"]  ],   ["Gunner",[0,0],[0,0],[0]   ]

				]
				// proceed from origin, move from City to City, stay on the roads, then RTB and despawn
			],
				// Troops : These are distributed across all vehicles in this convoy.                                                         
			[   //  Troop behaviour and side options    	# and type of Troops       Patrol logic |  spawn     |dest |'Patrol' options
				// 'dest' for troops is where they will go to perform their 'Patrol Logic' once the disembark the convoy IF their vehicle's driver group is using the 'Convoy' patrol logic.
				// otherwise troops will remain in vehicle unless it is engaged. Once vehicle destroyed, Troops will move onto their 'Patrol Logic'.
			]
		],
		[
			[   // Vehicle                     Offset     			Crew and number   	CargoLoot 		Damage
				[  FuMS_Mil_ArmedOffroads,	[4179.81,11122.1,0],	[1,"Rifleman_E"],      "TruckJunk",		[0.25]      ]

				// If driver-less vehicles are desired, place them at the bottom of the list AND have less drivers than vehicles in the next section
				// NOTE: Troops WILL be placed into 'driver-less' vehicles if the other vehicles are full!!!
			],
			[  
				// Drivers                          	# and type  |         Patrol     |    spawn   | dest       | 'Patrol' options
				[
					["EAST","COMBAT","RED","COLUMN"],[  [1, "Driver_E"]  ], ["BoxPatrol",[0,0],[75,-75],[100]   ]
				]
			],	// Troops : These are distributed across all vehicles in this convoy. 
			[   //  Troop behaviour and side options    	# and type of Troops       Patrol logic |  spawn     |dest |'Patrol' options
				// 'dest' for troops is where they will go to perform their 'Patrol Logic' once the disembark the convoy IF their vehicle's driver group is using the 'Convoy' patrol logic.
				// otherwise troops will remain in vehicle unless it is engaged. Once vehicle destroyed, Troops will move onto their 'Patrol Logic'.
				[
					["EAST","COMBAT","RED","COLUMN"],[[1,"SMG_E"]],["BoxPatrol",[0,0],[0,0],[75]]
				]

			]
		],
		[
			
			[   // Vehicle                     Offset     			Crew and number   	CargoLoot 		Damage
				[  FuMS_Mil_ArmedOffroads,	[4017.39,10948.5,0],	[1,"Rifleman_E"],      "TruckJunk",		[0.25]      ]

				// If driver-less vehicles are desired, place them at the bottom of the list AND have less drivers than vehicles in the next section
				// NOTE: Troops WILL be placed into 'driver-less' vehicles if the other vehicles are full!!!
			],
			[  
				// Drivers                          	# and type  |         Patrol     |    spawn   | dest       | 'Patrol' options
				[
					["EAST","COMBAT","RED","COLUMN"],[  [1, "Driver_E"]  ], ["BoxPatrol",[0,0],[-75,75],[100]   ]	
				]
			],	// Troops : These are distributed across all vehicles in this convoy. 
			[   //  Troop behaviour and side options    	# and type of Troops       Patrol logic |  spawn     |dest |'Patrol' options
				// 'dest' for troops is where they will go to perform their 'Patrol Logic' once the disembark the convoy IF their vehicle's driver group is using the 'Convoy' patrol logic.
				// otherwise troops will remain in vehicle unless it is engaged. Once vehicle destroyed, Troops will move onto their 'Patrol Logic'.
				[
					["EAST","COMBAT","RED","COLUMN"],[[1,"SMG_E"]],["BoxPatrol",[0,0],[0,0],[75]]
				]

			]
			
			
		]	
	],
	[
		[
			//Define all the triggers this mission will be using
			// Trigger names must be unique within each mission.
			// NOTE: "FuMS_KillMe" is a reserved trigger word. Do not use!!!
			// NOTE: "OK" is a reserved trigger. Do not define it here.
			//  "OK" can be used in the actions section to force an action to occur at mission start!	 
			["Timer",		["TimerNoPlayers", 1800] ],   				// Trigger true if the mission timer reaches 1800 seconds
			["AllDead",		["LowUnitCount","EAST",1,250,[0,0]]  ],		// Always leaves one behind as a special surprise for players.
			["LUCNT",		["LowUnitCount","EAST",10,250,[0,0]]  ],		// Triggers call for reinforcements
			["PLAYERNEAR",	["ProxPlayer",[4129.35,11023,0], 100, 1]]
		],
		[
			// Define what actions should occur when above trigger logics evaluate to true
			// Note: a comma between two logics is interpreted as "AND"
			[["WIN"],["AllDead","PLAYERNEAR"    ]],
			[["LOSE"],["TIMER"     ]],
			[["CHILD",	["Help_Helo",[0,0],5,300]],["LUCNT"     ]],  
			[["END"],["TIMER","OR","PLAYERNEAR", "AllDead"   ]]  
		]
	]


];








				/*			


private _objects = [
	["TK_GUE_WarfareBBarrier10xTall_EP1",[-19.5884,-23.1123,0.000366211],240.123,[true,false]],
	["TK_GUE_WarfareBBarrier10xTall_EP1",[-29.728,-4.85254,0.000366211],240.123,[true,false]],
	["TK_GUE_WarfareBBarrier10xTall_EP1",[-8.58838,-31.6426,0.000366211],194.884,[true,false]],
	["TK_GUE_WarfareBBarrier10xTall_EP1",[-31.5181,8.86719,0.000366211],104.923,[true,false]],
	["TK_GUE_WarfareBBarrier10xTall_EP1",[23.5518,-19.6523,0.000366211],150.043,[true,false]],
	["TK_GUE_WarfareBBarrier10xTall_EP1",[5.31201,-29.833,0.000366211],150.043,[true,false]],
	["TK_GUE_WarfareBBarrier10xTall_EP1",[32.0718,-8.64258,0.000366211],104.804,[true,false]],
	["TK_GUE_WarfareBBarrier10xTall_EP1",[20.0718,23.4268,0.000366211],59.8588,[true,false]],
	["TK_GUE_WarfareBBarrier10xTall_EP1",[30.312,5.2168,0.000366211],59.8588,[true,false]],
	["TK_GUE_WarfareBBarrier10xTall_EP1",[9.04199,31.9072,0.000366211],14.6196,[true,false]],
	["TK_GUE_WarfareBBarrier10xTall_EP1",[-4.92822,30.0576,0.000366211],150.043,[true,false]],
	["TK_GUE_WarfareBBarrier10xTall_EP1",[-23.1685,19.877,0.000366211],150.043,[true,false]],
	["Land_Mil_Barracks_i",[-1.71826,16.7168,0.000366211],239.926,[true,false]],
	["Land_Mil_Barracks_i",[-12.5781,10.4473,0.000366211],239.926,[true,false]],
	["CampEast",[-23.1582,11.2275,-0.0400696],151.096,[true,false]],
	["CampEast",[-25.728,-0.522461,-0.0400696],151.096,[true,false]],
	["CampEast",[-15.2983,-19.543,-0.0400696],330.451,[true,false]],
	["CampEast",[-3.19824,-24.9131,-0.0400696],331.611,[true,false]],
	["Land_Mil_Barracks_i",[13.1616,-10.2725,0.000366211],60.107,[true,false]],
	["Land_Mil_Barracks_i",[2.29199,-16.5127,0.000366211],60.107,[true,false]],
	["Land_Mil_Barracks_i",[-1.1084,-0.692383,0.000366211],330.289,[true,false]],
	["Land_BagBunker_Tower_F",[14.8516,23.1572,-0.00198364],328.669,[true,false]],
	["Land_BagBunker_Tower_F",[27.2017,0.836914,-0.00198364],328.669,[true,false]],
	["Land_Razorwire_F",[16.8618,9.97754,6.10352e-005],0,[true,false]]
];

private _center = [3300,10000,0];
{
	private _object =  create3DENEntity ["Object",(_x select 0),(_x select 1),true];
	_object setDir (_x select 2);
	_object setPosATL (_center vectorAdd (_x select 1));
	_object enableSimulationGlobal ((_x select 3) select 0);
	_object allowDamage ((_x select 3) select 1);
} forEach _objects;						

						private _objects = [
					["TK_GUE_WarfareBBarrier10xTall_EP1",[74.4819,85.8389,-0.0221558],0,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[58.8916,85.8389,-0.0221252],0,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[27.7417,85.7393,-0.0236511],0,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[43.2817,85.7393,-0.0252991],0,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[13.6416,85.6387,-0.032135],0,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-1.9585,85.5391,-0.0292969],0,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-33.1685,85.5391,-0.0178833],0,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-17.5684,85.5391,-0.0241699],0,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-48.7983,85.5391,-0.0149536],0,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-78.2983,81.1387,-0.00180054],325.422,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-64.3984,85.4395,-0.0153809],0,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-85.498,53.9395,0.00894165],273.101,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-86.3584,38.3389,0.00643921],273.096,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-87.1582,22.7393,0.00466919],273.091,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-88.0181,7.13867,0.00302124],273.089,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-88.9482,-8.46094,0.00271606],273.087,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-89.8081,-24.0605,0.000152588],273.082,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-90.6084,-39.6611,0.000549316],273.082,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-91.4683,-55.1611,0.00256348],273.08,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-86.1582,-79.1611,0.0214539],179.706,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-70.5581,-79.0605,0.0224609],179.706,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-39.4082,-78.7607,0.00177002],179.706,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-54.9482,-78.9609,-0.000762939],179.706,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-25.3081,-78.6611,-0.00186157],179.706,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-9.71826,-78.4609,0.00167847],179.706,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[21.4917,-78.2607,0.000793457],179.706,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[5.8916,-78.3613,0.00115967],179.706,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[37.1216,-78.1611,0.000793457],179.706,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[66.6016,-73.6611,0.00088501],145.116,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[48.7119,-84.3613,0.00991821],237.054,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-92.3184,-70.7607,0.00238037],273.082,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[97.9819,79.3389,-0.00970459],269.948,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[98.0117,63.7393,-0.00564575],269.971,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[98.0815,32.6387,-0.00088501],269.984,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[98.0317,48.1387,-0.00350952],269.979,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[98.2017,18.5391,0.000274658],269.993,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[98.2319,2.93945,0.000152588],269.996,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[98.2915,-28.2607,0.0015564],270.019,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[98.2617,-12.6611,0.00167847],270.007,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[98.3218,-43.9609,0.000274658],270.023,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[79.2417,-64.7607,0.0159607],145.096,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[92.0718,-55.8613,0.0155334],145.095,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[64.6118,-83.7607,0.00942993],237.053,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[37.3418,54.8389,0.00216675],273.082,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[36.4819,39.2393,0.00201416],273.082,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[35.6816,23.6387,0.00170898],273.082,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[34.8218,8.03906,0.00177002],273.082,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[33.8916,-7.56055,0.000427246],273.079,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[33.0317,-23.1611,0.000640869],273.079,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[31.3716,-54.3613,-0.00119019],273.079,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[30.5215,-69.8613,0.00234985],273.079,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-37.3081,-45.8613,-0.0106812],305.098,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-32.5283,-31.9609,0.00296021],273.085,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-31.6685,-16.3613,0.00613403],273.094,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-30.8682,-0.760742,0.00588989],273.093,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-30.0083,14.8389,0.00762939],273.096,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-29.0781,30.4395,0.00802612],273.099,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-28.2183,45.9395,0.00598145],273.101,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-27.4185,61.5391,0.00738525],273.106,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-26.5581,77.1387,0.0090332],273.112,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-90.8384,66.2393,0.0154419],220.303,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-90.0781,81.8389,0.0157776],220.3,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[90.1519,85.8389,-0.021637],0,[true,false]],
					["Land_Offices_01_V1_F",[-42.2583,62.1387,-0.00161743],272.074,[true,false]],
					["Land_A_Office01_EP1",[1.36182,-67.2607,0.00357056],0,[true,false]],
					["Land_Hlaska",[33.4819,-74.8613,-0.00692749],0,[true,false]],
					["Land_Hlaska",[-80.2583,75.0391,-0.00216675],141.773,[true,false]],
					["CampEast",[-26.3481,-30.3613,3.05176e-005],93.2497,[true,false]],
					["CampEast",[-25.6382,-18.2607,-0.00311279],93.2556,[true,false]],
					["Land_Ss_hangar",[-8.34814,56.8389,-0.0518494],182.534,[true,false]],
					["Land_Scrap_MRAP_01_F",[-99.6484,68.6387,-0.00216675],356.031,[true,false]],
					["Land_ScrapHeap_1_F",[-92.3784,89.3389,0.00439453],0,[true,false]],
					["Land_ScrapHeap_2_F",[49.6616,-96.0605,-0.0103455],267.759,[true,false]],
					["Land_ScrapHeap_1_F",[72.5615,-89.7607,0.00256348],0,[true,false]],
					["TK_WarfareBUAVterminal_Base_EP1",[-42.5781,30.0391,-0.00946045],31.1692,[true,false]],
					["Land_Mil_House_dam_EP1",[25.0215,-8.26074,-0.0805054],93.5106,[true,false]],
					["Land_BagFenceRound",[-3.30811,-2.36133,-0.012146],0,[true,false]],
					["Land_BagFenceRound",[-4.87842,-3.96094,-0.00146484],270.034,[true,false]],
					["Land_BagFenceRound",[-1.72852,-3.86133,0.000976563],89.5266,[true,false]],
					["Land_BagFenceRound",[-0.728516,-4.86133,-0.0127869],0,[true,false]],
					["Land_BagFenceRound",[-0.728516,-7.96094,0.0120239],180.08,[true,false]],
					["Land_BagFenceRound",[0.851563,-6.36133,0.000640869],89.5236,[true,false]],
					["Land_BagFenceRound",[-5.81836,-4.86133,-0.013855],0,[true,false]],
					["Land_BagFenceRound",[-7.38818,-6.36133,0.000305176],270.038,[true,false]],
					["Land_BagFenceRound",[-5.82813,-7.96094,0.0116272],180.08,[true,false]],
					["Land_BagFenceRound",[-4.79834,-8.86133,-0.00192261],270.038,[true,false]],
					["Land_BagFenceRound",[-3.22852,-10.3613,0.0134583],180.08,[true,false]],
					["Land_BagFenceRound",[-1.64844,-8.76074,0.000823975],89.5266,[true,false]],
					["TK_GUE_WarfareBBarrier5x_EP1",[32.7217,62.0391,0.000183105],0,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-47.1685,-45.9609,-0.0191956],42.5095,[true,false]],
					["Land_Medevac_house_V1_F",[-40.1182,9.83887,-0.0116577],271.784,[true,false]],
					["Land_Medevac_house_V1_F",[-40.9883,-4.76074,-0.00375366],271.784,[true,false]],
					["Land_Medevac_house_V1_F",[-41.248,-20.3613,0.000518799],271.784,[true,false]],
					["Land_Medevac_house_V1_F",[-42.1182,-34.9609,0.00012207],271.784,[true,false]],
					["Land_Medevac_HQ_V1_F",[-58.4785,4.83887,-0.000274658],1.46135,[true,false]],
					["RU_WarfareBAircraftFactory",[-64.5181,30.9395,-0.0393982],0,[true,false]],
					["Land_Cargo_HQ_V1_F",[-2.21826,-35.8613,0.00167847],0,[true,false]],
					["Land_Cargo_House_V1_F",[-23.1782,-4.06055,0.000762939],88.773,[true,false]],
					["Land_Cargo_House_V1_F",[-22.3281,7.73926,-0.000335693],88.773,[true,false]],
					["Land_Cargo_Tower_V1_F",[-82.9585,-71.0605,-0.00198364],0,[true,false]],
					["CampEast",[-27.0283,-42.5605,-0.00149536],93.2497,[true,false]],
					["Land_Mil_ControlTower_EP1",[89.6118,70.8389,-0.185608],89.9878,[true,false]],
					["Land_BagFenceRound",[-56.3281,-56.8613,-0.0128784],0,[true,false]],
					["Land_BagFenceRound",[-57.9082,-58.3613,-0.000549316],270.026,[true,false]],
					["Land_BagFenceRound",[-54.7583,-58.3613,0.000274658],89.5206,[true,false]],
					["Land_BagFenceRound",[-53.748,-59.3613,-0.0137634],0,[true,false]],
					["Land_BagFenceRound",[-53.7583,-62.4609,0.0100098],180.08,[true,false]],
					["Land_BagFenceRound",[-52.1685,-60.8613,-0.000579834],89.5206,[true,false]],
					["Land_BagFenceRound",[-58.8384,-59.2607,-0.0104675],0,[true,false]],
					["Land_BagFenceRound",[-60.4185,-60.8613,-0.00256348],270.026,[true,false]],
					["Land_BagFenceRound",[-58.8481,-62.3613,0.0125732],180.08,[true,false]],
					["Land_BagFenceRound",[-57.8184,-63.2607,0],270.026,[true,false]],
					["Land_BagFenceRound",[-56.2583,-64.8613,0.0107727],180.08,[true,false]],
					["Land_BagFenceRound",[-54.6685,-63.2607,0.000518799],89.5177,[true,false]],
					["Land_BagFenceRound",[-71.9785,68.1387,-0.00933838],0,[true,false]],
					["Land_BagFenceRound",[-73.5581,66.6387,0.00634766],270.053,[true,false]],
					["Land_BagFenceRound",[-70.4082,66.6387,-0.00540161],89.5446,[true,false]],
					["Land_BagFenceRound",[-69.3984,65.6387,-0.00952148],0,[true,false]],
					["Land_BagFenceRound",[-69.4082,62.5391,0.0088501],180.08,[true,false]],
					["Land_BagFenceRound",[-67.8281,64.1387,-0.00457764],89.542,[true,false]],
					["Land_BagFenceRound",[-74.498,65.7393,-0.0101929],0,[true,false]],
					["Land_BagFenceRound",[-76.0684,64.1387,0.00280762],270.048,[true,false]],
					["Land_BagFenceRound",[-74.5083,62.6387,0.00784302],180.08,[true,false]],
					["Land_BagFenceRound",[-73.4785,61.7393,0.00366211],270.048,[true,false]],
					["Land_BagFenceRound",[-71.9082,60.1387,0.00643921],180.08,[true,false]],
					["Land_BagFenceRound",[-70.3184,61.7393,-0.00619507],89.546,[true,false]],
					["Land_A_Hospital",[85.0518,1.13867,0.068573],270.64,[true,false]],
					["Land_BagFenceRound",[48.0415,76.3389,-0.01297],0,[true,false]],
					["Land_BagFenceRound",[46.4619,74.8389,-0.000976563],270.023,[true,false]],
					["Land_BagFenceRound",[49.6118,74.8389,0.00128174],89.5148,[true,false]],
					["Land_BagFenceRound",[50.6216,73.8389,-0.0140686],0,[true,false]],
					["Land_BagFenceRound",[50.6118,70.7393,0.0113525],180.08,[true,false]],
					["Land_BagFenceRound",[52.1919,72.3389,0.000732422],89.5119,[true,false]],
					["Land_BagFenceRound",[45.5215,73.9395,-0.0113525],0,[true,false]],
					["Land_BagFenceRound",[43.9517,72.3389,-0.00195313],270.026,[true,false]],
					["Land_BagFenceRound",[45.5215,70.8389,0.0140076],180.08,[true,false]],
					["Land_BagFenceRound",[46.5518,69.9395,-0.000579834],270.023,[true,false]],
					["Land_BagFenceRound",[48.1118,68.3389,0.0118713],180.08,[true,false]],
					["Land_BagFenceRound",[49.7017,69.9395,0.0017395],89.5148,[true,false]],
					["Land_BagFenceRound",[49.0415,-64.0605,-0.0126648],0,[true,false]],
					["Land_BagFenceRound",[47.4717,-65.6611,-0.00436401],270.022,[true,false]],
					["Land_BagFenceRound",[50.6216,-65.5605,0.00308228],89.5147,[true,false]],
					["Land_BagFenceRound",[51.6216,-66.5605,-0.0131226],0,[true,false]],
					["Land_BagFenceRound",[51.6118,-69.6611,0.0120544],180.08,[true,false]],
					["Land_BagFenceRound",[53.2017,-68.0605,0.00158691],89.5147,[true,false]],
					["Land_BagFenceRound",[46.5317,-66.5605,-0.0153503],0,[true,false]],
					["Land_BagFenceRound",[44.9517,-68.0605,-0.00198364],270.022,[true,false]],
					["Land_BagFenceRound",[46.5215,-69.6611,0.0108337],180.08,[true,false]],
					["Land_BagFenceRound",[47.5518,-70.5605,-0.0039978],270.023,[true,false]],
					["Land_BagFenceRound",[49.1118,-72.0605,0.00894165],180.08,[true,false]],
					["Land_BagFenceRound",[50.7017,-70.4609,0.00149536],89.515,[true,false]],
					["Ins_WarfareBArtilleryRadar",[81.5918,42.8389,-0.0714417],0,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[32.2319,-38.7607,-0.000183105],273.079,[true,false]],
					["Land_Market_stalls_01_EP1",[45.7417,-13.9609,0.0122681],90.2017,[true,false]],
					["Land_CratesWooden_F",[55.5615,-12.0605,0.00112915],25.6609,[true,false]],
					["Land_Stanek_1C",[60.4619,-18.1611,0.000946045],0,[true,false]],
					["Land_Carpet_rack_EP1",[60.8018,-14.4609,-0.00259399],93.722,[true,false]],
					["Land_Market_stalls_01_EP1",[60.6919,-0.361328,0.0142212],90.1986,[true,false]],
					["Land_Market_stalls_01_EP1",[48.1719,9.33887,0.031311],131.907,[true,false]],
					["Land_stand_small_EP1",[52.8315,0.338867,-0.00012207],0,[true,false]],
					["Land_transport_cart_EP1",[52.9917,-4.76074,-0.0010376],0,[true,false]],
					["Land_GeneralStore_01a_PMC",[60.4316,30.7393,0.0749817],0,[true,false]],
					["Land_Ind_Workshop01_03",[91.9116,-39.6611,-0.00247192],359.752,[true,false]],
					["INS_WarfareBFieldhHospital",[-64.7983,-29.6611,0.00323486],1.21793,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-79.1582,15.6387,-0.0168457],0,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-38.2285,15.5391,-0.0205078],0,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-71.5283,-40.7607,0.0189209],179.706,[true,false]],
					["TK_GUE_WarfareBBarrier10xTall_EP1",[-82.4883,-40.7607,0.0197144],179.706,[true,false]],
					["Gue_WarfareBLightFactory",[-78.6382,-53.8613,0.0148315],0,[true,false]],
					["CDF_WarfareBUAVterminal",[16.5518,-41.4609,0.0120239],0,[true,false]],
					["INS_WarfareBVehicleServicePoint",[-18.5884,18.9395,-0.0228882],305.759,[true,false]],
					["USMC_WarfareBFieldhHospital",[-78.0181,-13.5605,0.0602112],2.92803,[true,false]],
					["USMC_WarfareBFieldhHospital",[-52.4385,-14.9609,-0.0602417],183.549,[true,false]],
					["WarfareBAircraftFactory_CDF",[19.6318,51.9395,-0.101715],50.5335,[true,false]],
					["MASH_EP1",[29.2217,15.7393,-0.0246582],95.2381,[true,false]],
					["MASH_EP1",[29.9917,23.1387,-0.021759],95.2281,[true,false]],
					["Fortress2",[18.2715,30.5391,-0.0120544],189.888,[true,false]],
					["USMC_WarfareBBarracks",[-33.2183,-67.3613,0.0472717],267.312,[true,false]],
					["Land_fort_artillery_nest",[5.8916,-7.66113,0.00308228],277.226,[true,false]],
					["Land_fort_artillery_nest",[-11.5581,-5.66113,0.00549316],94.1135,[true,false]],
					["Land_Fort_Watchtower",[-2.88818,17.2393,-0.0136108],302.561,[true,false]],
					["Land_Barn_W_02",[74.4517,-57.3613,-0.0207825],232.599,[true,false]],
					["Land_A_statue02",[53.2817,-41.3613,-0.00402832],0,[true,false]],
					["Land_A_statue01",[-2.55811,-51.4609,-0.00460815],0,[true,false]],
					["Land_Market_shelter_EP1",[74.5518,-30.6611,-0.0239258],0,[true,false]],
					["TK_GUE_WarfareBContructionSite_Base_EP1",[35.6016,-56.4609,-0.000335693],92.4908,[true,false]],
					["TK_GUE_WarfareBContructionSite_Base_EP1",[41.6616,-56.7607,-0.00323486],92.4874,[true,false]],
					["TK_GUE_WarfareBContructionSite_Base_EP1",[47.7417,-56.9609,0.000152588],92.4874,[true,false]],
					["TK_WarfareBContructionSite1_Base_EP1",[41.6016,-56.7607,-2.6051],91.3965,[true,false]],
					["Land_Shed_W03",[34.7017,-61.6611,-0.0198669],94.0499,[true,false]],
					["Land_Hlaska",[-41.6182,-43.8613,-0.00912476],328.978,[true,false]],
					["Land_Farm_WTower",[-64.5083,50.6387,-0.00674438],0,[true,false]],
					["TK_GUE_WarfareBContructionSite1_Base_EP1",[54.502,-23.2607,-0.00180054],133.738,[true,false]],
					["Land_fort_rampart",[61.7715,60.4395,0.0865784],332.604,[true,false]],
					["Land_fort_rampart",[53.9517,58.7393,0.0841064],3.81937,[true,false]],
					["Land_CamoNet_NATO",[75.4316,65.2393,0.00424194],194.834,[true,false]],
					["LAV25_HQ_unfolded",[61.2417,72.7393,-0.0012207],0,[true,false]],
					["Land_Cargo_Tower_V1_F",[19.3916,77.4395,-0.000457764],0,[true,false]],
					["RU_WarfareBFieldhHospital",[34.9517,79.9395,0.00247192],0,[true,false]],
					["PowGen_Big",[12.4219,17.7393,0.0267029],320.42,[true,false]]
				];
				private _center = [0,0,0];
				{
					private _object = (_x select 0) createVehicle [0,0,0];
					_object setDir (_x select 2);
					_object setPosATL (_center vectorAdd (_x select 1));
					_object enableSimulationGlobal ((_x select 3) select 0);
					_object allowDamage ((_x select 3) select 1);
				} forEach _objects;				
*/


			
			
			
			
			
