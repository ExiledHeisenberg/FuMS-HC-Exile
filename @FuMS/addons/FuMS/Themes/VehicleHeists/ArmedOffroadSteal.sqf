// 	ArmedOffroadSteal.sqf
// 	TheOneWhoKnocks
// 	02/02/2020
// 	Dynamic mission to spawn an armed vehcile with guards
//
//	This work is licensed under the Creative Commons Attribution-NonCommercial-NoDerivatives 4.0 International License.
//  To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-nd/4.0/.
//  
//  Be cautious when editing data.

[
	["ArmedOffroadSteal", 300], 	// Mission Title NOSPACES!, and encounter radius.  This example has no options
	["Armed Offroad Steal","hd_objective","ELLIPSE","ColorKhaki","DiagGrid",300],    // Map Markers ["MapText", "SHAPE", "COLOR", "FILL", size];
	[  
		[					// NOTIFICATION Messages and Map display Control.
			false, "ALL",0, // Notify players via Radio Message, radio channel, range from encounter center (0=unlimited.
			true, 			// Notify players via global toast message
			true,			// Show encounter area on the map
			600,    		// Win delay: Time in seconds after a WIN before mission cleanup is performed
			300       		// Lose delay: Time in seconds after a lose before mission cleanup is performed
							//NOTE: the above delay must occur before the mission is considered 'complete' by the mission manager control loop.
		],
		[
			"Armed Offroad vehicle damaged",	// The first line is the title of the pop-up box
			"An armed offroad vehicle has been damaged and is parked at a small base! Go and steal it"		// The second line is the actual text in the box
		],
		
		// Mission Success Message
		[
			"Armed Offroad stolen!",
			"Convicts killed everyone and made off with the Armed Offroad"
		],
	  
		// Mission Failure Message
		[
			"Armed Offroad gone",
			"The attackers drove off in the Armed Offroad and escaped attack."
		] 
	],
	[  																		//  Loot Config:  Refer to LootData.sqf for specifics																		

		["SmokeBomb" , 	[-10,-10] ], //[static loot, offset location] - spawns with the mission
		["None" , 		[5,5] ], // Win loot, offset location - spawns after mission success
		["None" , 		[0,0] ]  // Failure loot, offset location - spawns on mission failure
	],
	[	
		// paste your array of building objects here
		// Loot vehicle
		// Class Name, 			Offset, 	Rotation, 	Condition Array [Fuel, Ammo, Engine Damage, FuelTank Damage, Hull Damage, Optional Fire/Smoke parameter.
		//		Effect options: "FIRE_SMALL", "FIRE_MEDIUM", "FIRE_BIG", "SMOKE_SMALL", "SMOKE_MEDIUM", "SMOKE_BIG" 
		// ["I_UGV_01_rcws_F",	[0,100],   	0, 			[.5,   1,     .5,         .5,         .5]				]  
		// ["I_UGV_01_rcws_F",	[0,100],   	0, 			[.5,   1,     .5,         .5,         .5], "FIRE_SMALL"]   

		[CAMS_Mil_ArmedOffroad_E,						[-10,-10],				0,			[.5,   1,     .5,         .5,         .5]],
		// BUILDINGS: persist = 0: building deleted at event completion, 1= building remains until server reset.
		// [classname        			[X offset,y offset],	rotation,	persist until restart (0:Flase, 1:True) ]
		// ["CamoNet_INDP_big_F",        [-20, 10],				0,        	0]
		
		["76n6ClamShell_EP1",			[-6.98804,-15.313],		0,			0],
		["Land_ScrapHeap_2_F",			[12.4622,5.20117],		0,			0],
		["Land_Lampa_sidl_2",			[11.0742,3.27734],		0,			0],
		["CampEast_EP1",				[-3.75806,0.942627],	0,			0],
		["MetalBarrel_burning_F",		[-2.52075,-2.05981],	0,			0],
		["Land_MetalCase_01_large_F",	[-6.05566,-1.16357],	0,			0],
		["Land_WaterTank_F",			[-5.29736,3.33496],		88.8556,	0]
		
	  
	],
	[ 	// AI GROUPS. Only options marked 'Def:' implemented.

	],
	[			// Vehicles	
	],
	[
		[
			//Define all the triggers this mission will be using
			// Trigger names must be unique within each mission.
			// NOTE: "FuMS_KillMe" is a reserved trigger word. Do not use!!!
			// NOTE: "OK" is a reserved trigger. Do not define it here.
			//  "OK" can be used in the actions section to force an action to occur at mission start!	
			["SpawnGuards",	["ProxPlayer", 	[-50,-50], 700, 1]],
			["HeliBoarded",	["ProxPlayer", 	[0,0], 100, 1]],
			["Offroad",		["TakeVehicle", 	"0", 50]],
			["Timer", 		["TimerNoPlayers", 		1800]],	//30 minutes	
			["KillMost",	["BodyCount",6] ]
			
//			["LUCNT",		["LowUnitCount","EAST",1,0,[0,0]]  ]			
		],
		[
			// Define what actions should occur when above trigger logics evaluate to true
			// Note: a comma between two logics is interpreted as "AND"
			[["CHILD",	["SpawnGuards",[0,0],1,10000]],["SpawnGuards"     ]],  
			[["WIN"],	["Offroad"     			]],
			[["LOSE"],	["Timer"				]],
			[["END"],	["Offroad","OR","Timer"	]]  
		]

  
	]


];