// ImmersionFX.sqf
// FoxCars
// TheOneWhoKnocks
// Overwrites the global variables used by DEMS to integrate custom content into system

// Global variables in this file are available to the AI creation and Loot creation portions of DEMS
// Any where you would normally place an item class name, one of these variables may be substituted in its place.
// When DEMS encounters one of these defined arrays, it will select one of the items from the array at random to use
// in the particular application (ie AI Uniform, loot in a box, etc).

private ["_immersionData","_cartName","_debugCart"];


///////////////////////////////////////////////////
// CART config ////////////////////////////////////
///////////////////////////////////////////////////
_cartName = "FoxCars"; 	// Change this to match the directory name of the content you are adding
_debugCart = false;		// Setting this to true adds additional info to log for troubleshooting purposes



_immersionData = 
[
	/*
	/////////////////////////////////////// AI Models 
	[
		"ImFX_AiModel_E",1,false,
		[
			// This will be the default enemy soldier (EAST)			
		]
	],
	
	////////////////////////////////////// Air Assets
	[
		"ImFX_Air_Patrol",1,false,
		[
			// Aircrat that should be used in air patrol roles (Used specificaly by DAPE)
			// NOTE: These MUST have a default crew assigned to them, otherwise the vehicle will just crash.  Not all content
			// providers crew all vehicles, be sure to test in the editor first toensure they have a deafult crew in the model
		]
	],
	[
		"ImFX_Air_Interceptor",1,false,
		[
			// Aircraft that should be used as interceptors (Used specificaly by DAPE)
			// NOTE: These MUST have a default crew assigned to them, otherwise the vehicle will just crash.  Not all content
			// providers crew all vehicles, be sure to test in the editor first toensure they have a deafult crew in the model
		]
	],
	[
		"ImFX_Air_Airdrop",0,true,
		[
			// Helos you want to use for airdrop type roles
		]
	],

	/////////////////////////////////////// Heli Assets
	[
		"ImFX_Heli_Escort",0,true,
		[
			// Helos you want to use for escort type roles
		]
	],
	[
		"ImFX_Heli_Transport",0,true,
		[
			// Helos you want to use in transport type roles
		]
	],
	[
		"ImFX_Heli_Troops",0,true,
		[
			// Helos you want to use as troop transport type roles
		]
	],
	[
		"ImFX_Air_Rescue_Heli",1,false,
		// NOTE: These MUST have a default crew assigned to them, otherwise the vehicle will just crash.  Not all content
		// providers crew all vehicles, be sure to test in the editor first toensure they have a deafult crew in the model
		[
			// Helos you want to use for Air Rescue type roles (Used specificaly by DAPE)
		]
	],

	
	/////////////////////////////////////// Land Assets

	[
		"ImFX_Land_Armed_Guard",0,true,
		[
			// Vehicles that will serve as armed guard roles
		]
	],	
	[
		"ImFX_Land_Armed_Transport",0,true,
		[
			// Vehicle that will serve as armed troop transports
		]
	],	
	[
		"ImFX_Land_Unarmed_Transport",0,true,
		[
			// Vehicle that will serve as unarmed troop transports
		]
	],	
	[
		"ImFX_Land_Civ_Truck",0,true,
		[
			// Vehicle that will serve as civilian transports
		]
	],	
	[
		"ImFX_Land_Civ_Car",0,true,
		[
			// Vehicle that will serve as civilian cars
		]
	],
	///////////////// DAPE Loot Tables
	[
		"ImFX_DAPE_lootWeapons",1,false,
		[
			// Weapons you want included as part of DAPE loot weapons found in rescue helicopter
		]
	],
	[
		"ImFX_DAPE_lootItems",1,false,
		[
			// Weapons you want included as part of DAPE loot items found in rescue helicopter
		]
	],
	*/
	/////////////////////////////////////// Misc Assets
	// Add any other groupings you want here
	[
		"ImFX_Land_LootCar",1,false,
		[
			"Fox_LandCruiserPolice",			// 2006 Toyota Land Cruiser Police - Yellow Camo Pattern
			"Fox_Landrover","Fox_Landrover2",	// Landrover Fox Performance - Yellow, Orange
			"Fox_Tahoe",						// The Anerican - Black SUV
			"Fox_Tahoe_Apocalypse",				// The Nomad - Survivor Skinned SUV	
			"Fox_LandCruiser",					// The Cruiser CSAT Camo - Yellow Camo (Land Cruiser)
			"Fox_LandCruiser2",					// The Cruiser Green Camo
			"Fox_LandCruiser3",					// The Cruiser Black Camo
			"Fox_Patrol",						// The Insurgent CSAT Camo - Yellow Camo (Small Dickmobile)
			"Fox_Patrol2",						// The Insurgent Green Camo
			"Fox_Patrol3",						// The Insurgent Black Camo
			"Fox_Pickup_Apocalypse",			// The Renegade (Survivor Open Bed Pickup)
			"Fox_Pickup_6S",					// The Renegade (Survivor Covered Bed Pickup)
			"Fox_Pickup_Tow",					// The Renegade (Survivor Towtruck)
			
			
			"Fox_RickGrimes",					// Rick Grimes CVI (Clean Cop Car)
			"Fox_Wanderer",						// NYPD Survivor Ride			
			"fox_R34_Fox",						// Fox Custom Skinned Charger
			"Fox_CobraR_Police",				// Survivor PD Mustang

			"Fox_ChallengerO",					// The Defiant - Orange Challenger
			"Fox_ChallengerBR",					// The Defiant - Black Red Challenger
			"Fox_ChallengerW",					// The Defiant - White Challenger
			"Fox_ChallengerDev2",				// The Defiant - White Red Challenger
			"Fox_ChallengerYB",					// The Defiant - Yellow Black Challenger
			
			
			"Fox_Daytona",						// The General - Survivor Daytona
			"Fox_DaytonaGeneral",				// The General - Army Daytona
			"Fox_DaytonaStratos",				// The General - Stratospheric Daytona
			
			"Fox_Interceptor",					// The Interceptor - Survivor Camero
			
			"Fox_F40",							// The Intruder - Monster Sports Car
			"Fox_GNX",							// The Outlaw - Monster Buick
			"Fox_Outsider",						// The Outsider - Monster Charger?
			"Fox_Charger_Apocalypse",			// The Raider - Monster Charger?
			"Fox_M5TG",							// The Responder - Monster Station Wagon
			"Fox_Viper",						// The Runner - Monster Corvettes
			"fox_R34_Apocalypse"				// The Samurai - Monster Skyline

		]
	]
	
	
	
];

/////////////////////////////////////////////////////////////////////////////////////////////////
// Map Immersion Data
/////////////////////////////////////////////////////////////////////////////////////////////////

_swapArray = 
[
	//["Land_wpp_Turbine_V1_F","Land_WX_Windmill",180] // [Orig classname, new classname, rotation adjustment]
];


/////////////////////////////
// Cart processing //////////
/////////////////////////////
_hold = [_cartName,_immersionData,_debugCart] spawn CAMS_fnc_loadCart;
if (isNil "_hold") exitWith { diag_log format ["[CAMS:%1] Cart(%2): ImmersionFX.sqf: ERROR in cart loading function",CAMS_Version,_cartName];CAMS_isStable=false;};
waitUntil { ScriptDone _hold};

_oldSwapArray = missionNameSpace getvariable ["ImFX_BuildingSwap",[]];
_newSwapArray = _oldSwapArray + _swapArray;
missionNameSpace setVariable ["ImFX_BuildingSwap",_newSwapArray,true];