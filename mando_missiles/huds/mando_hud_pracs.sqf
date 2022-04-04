// Hud modes setup
   mando_hud_init_code = 
   {
		[0.67,0.89,0.20,false]execVm"mando_missiles\huds\custom\custom_radar.sqf";
		if ((vehicle player isKindOf "PRACS_F15") || 
			(vehicle player isKindOf "PRACS_Etendard") ||
			(vehicle player isKindOf "PRACS_F16")) then
		{
			[]execVm"mando_missiles\huds\custom\custom_hud_ils.sqf";
		};

		if (vehicle player isKindOf "PRACS_F16") then
		{			
			["F16"]execVm"mando_missiles\huds\custom\custom_hud_maptgt.sqf";
		};
   };

   mando_hud_modes = [];
   mando_hud_modes = mando_hud_modes + [[
   0,		
   false,	
   1,           
   ["Air"],
   0.17,
   "Air - AIM9",
   0.015,
   6,
   1000,
   3000,
   3
   ]];

   mando_hud_modes = mando_hud_modes + [[
   14,
   false,	
   1,           
   ["Air"],
   0.17,
   "Air - AIM9",
   0.015,
   6,
   1000,
   3000,
   3
   ]];
   
   mando_hud_modes = mando_hud_modes + [[
   12,		// Missile to be used
   false,	// Keep coords set in mando_assignvehicle_by_
   1,           // Guidance type 0 Radar, 1 IR, 2 SARH, 3 Manual
   ["Air"],     // Type of targets ["Air"], [""LandVehicle"], ["RADAR"], ["REMOTE"] or ["GROUND"]
   0.17,	// Aim circle diameter
   "Air - Magic", // HUD Text
   0.015,        // IR accuracy for headon shots or radar accuracy for ECM targets
   6,		// Number of simultaneously detected HUD targets (max is 6)
   1000, 	// Sensor width / 2 in meters
   5000,	// Sensor length / 2 in meters
   3            // Normal time to lock
   ]];
   
   mando_hud_modes = mando_hud_modes + [[
   1,
   false,
   1,
   ["LandVehicle"],
   0.1,
   "AG - AGM65",
   0.015,
   4,
   500,
   3000,
   3
   ]];

   mando_hud_modes = mando_hud_modes + [[
   1,
   false,
   1,
   ["GROUND"],
   0.1,
   "AG - AGM65 (Ground)",
   0.015,
   4,
   500,
   3000,
   3
   ]];

   mando_hud_modes = mando_hud_modes + [[
   16,
   false,
   1,
   ["LandVehicle"],
   0.1,
   "AG - AGM65",
   0.015,
   4,
   500,
   3000,
   3
   ]];

   mando_hud_modes = mando_hud_modes + [[
   16,
   false,
   1,
   ["GROUND"],
   0.1,
   "AG - AGM65 (Ground)",
   0.015,
   4,
   500,
   3000,
   3
   ]];

   mando_hud_modes = mando_hud_modes + [[
   20,
   false,
   2,
   ["RADAR"],
   0.17,
   "Anti-Radar",
   0.015,
   6,
   1000,
   6000,
   2
   ]];

   mando_hud_modes = mando_hud_modes + [[
   21,
   false,
   0,
   ["GROUND"],
   0.1,
   "JDAM (Ground)",
   0.015,
   4,
   500,
   3000,
   3
   ]];

   
   mando_hud_modes = mando_hud_modes + [[
   2,
   false,
   4,
   ["LOCATIONS"],
   0,
   "CCIP/Nav Mk81",
   0.015,
   6,
   800,
   3000,
   3
   ]];   

   mando_hud_modes = mando_hud_modes + [[
   7,
   false,
   4,
   ["LOCATIONS"],
   0,
   "CCIP/Nav Mk81",
   0.015,
   6,
   800,
   3000,
   3
   ]];   
   
   mando_hud_modes = mando_hud_modes + [[
   8,
   false,
   4,
   ["LOCATIONS"],
   0,
   "CCIP/Nav Mk82",
   0.015,
   6,
   800,
   3000,
   3
   ]];   

   mando_hud_modes = mando_hud_modes + [[
   17,
   false,
   4,
   ["LOCATIONS"],
   0,
   "CCIP/Nav Mk82",
   0.015,
   6,
   800,
   3000,
   3
   ]];      
   
   mando_hud_modes = mando_hud_modes + [[
   9,
   false,
   4,
   ["LOCATIONS"],
   0,
   "CCIP/Nav Mk83",
   0.015,
   6,
   800,
   3000,
   3
   ]];   

   mando_hud_modes = mando_hud_modes + [[
   18,
   false,
   4,
   ["LOCATIONS"],
   0,
   "CCIP/Nav Mk84",
   0.015,
   6,
   800,
   3000,
   3
   ]];      
   
   mando_hud_modes = mando_hud_modes + [[
   10,
   false,
   4,
   ["LOCATIONS"],
   0,
   "CCIP/Nav CBU",
   0.015,
   6,
   800,
   3000,
   3
   ]];   

   mando_hud_modes = mando_hud_modes + [[
   19,
   false,
   4,
   ["LOCATIONS"],
   0,
   "CCIP/Nav CBU",
   0.015,
   6,
   800,
   3000,
   3
   ]];      
   
   mando_hud_modes = mando_hud_modes + [[
   11,
   false,
   4,
   ["LOCATIONS"],
   0,
   "CCIP/Nav ET750",
   0.015,
   6,
   800,
   3000,
   3
   ]];   
   
   mando_hud_modes = mando_hud_modes + [[
   3,
   false,
   4,
   ["LOCATIONS"],
   0,
   "CCIP/Nav 750lb",
   0.015,
   6,
   800,
   3000,
   3
   ]];   

   mando_hud_modes = mando_hud_modes + [[
   4,
   false,
   0,
   ["Air"],
   0.19,
   "Air - AIM120",
   0.03,        // IR accuracy for headon shots or radar accuracy for ECM targets
   6,		// Number of simultaneously detected HUD targets (max is 6)
   1000, 	// Sensor width / 2 in meters
   10000,	// Sensor length / 2 in meters
   3            // Normal time to lock
   ]];

   mando_hud_modes = mando_hud_modes + [[
   15,
   false,
   0,
   ["Air"],
   0.19,
   "Air - AIM120",
   0.03,        // IR accuracy for headon shots or radar accuracy for ECM targets
   6,		// Number of simultaneously detected HUD targets (max is 6)
   1000, 	// Sensor width / 2 in meters
   10000,	// Sensor length / 2 in meters
   3            // Normal time to lock
   ]];
   
   
   mando_hud_modes = mando_hud_modes + [[
   5,
   false,
   2,
   ["Air"],
   0.14,
   "Air - AIM7 (SARH)",
   0.03,        // IR accuracy for headon shots or radar accuracy for ECM targets
   6,		// Number of simultaneously detected HUD targets (max is 6)
   500, 	// Sensor width / 2 in meters
   10000,	// Sensor length / 2 in meters
   4            // Normal time to lock
   ]];

   mando_hud_modes = mando_hud_modes + [[
   6,
   false,
   2,
   ["Air"],
   0.14,
   "Air - R530 (SARH)",
   0.03,        // IR accuracy for headon shots or radar accuracy for ECM targets
   6,		// Number of simultaneously detected HUD targets (max is 6)
   500, 	// Sensor width / 2 in meters
   10000,	// Sensor length / 2 in meters
   5            // Normal time to lock
   ]];
   

   mando_hud_modes = mando_hud_modes + [[
   13,
   false,
   0,
   ["LandVehicle"],
   0.1,
   "Exocet (Local)",
   0.015,        // IR accuracy for headon shots or radar accuracy for ECM targets
   3,		// Number of simultaneously detected HUD targets (max is 6)
   500, 	// Sensor width / 2 in meters
   10000,	// Sensor length / 2 in meters
   3            // Normal time to lock
   ]];

   mando_hud_modes = mando_hud_modes + [[
   13,
   false,
   0,
   ["REMOTE"],
   0.18,
   "Exocet (Remote)",
   0.015,        // IR accuracy for headon shots or radar accuracy for ECM targets
   3,		// Number of simultaneously detected HUD targets (max is 6)
   500, 	// Sensor width / 2 in meters
   10000,	// Sensor length / 2 in meters
   3            // Normal time to lock
   ]];

   
   mando_hud_modes = mando_hud_modes + [[
   -1,
   false,
   1,
   ["LOCATIONS"],
   0,
   "Navigation",
   0.015,
   6,
   800,
   3000,
   3
   ]];

   mando_hud_num_modes = count mando_hud_modes;


   mando_hud_misp = [];
   mando_missileidxbase = [];

   // Missile parameters for AIM9 (mando_hud_missile = 0);
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   100,
   600,
   200,
   objNull,
   10,
   5000,
   2,
   500,
   mando_missile_path+"warheads\mando_missilehead1a.sqf",
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",
   "mando_missile1",
   29,
   10,
   false,
   1,
   0,
   0.2,
   false,
   false,
   "",
   65,
   65,
   1,
   true,
   65,
   65,
   1,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"SidewinderLaucher", "SidewinderLaucher_AH1Z"]];    
   

   // Missile parameters for AGM65 (mando_hud_missile = 1)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   5,
   278,
   120,
   objNull,
   0,
   8000,
   2,
   100,
   mando_missile_path+"warheads\mando_missilehead1_nohe.sqf",
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",
   "mando_missile1",
   29,
   30,
   false,
   2,
   1,
   0.5,
   false,
   false,
   "",
   45,
   45,
   1,
   true,
   45,
   75,
   0,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"PRACS_A4_MaverickLauncher", "PRACS_MaverickLauncher"]];      
   
   // Missile parameters for Mk81 (2)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   0,
   0,
   0,
   objNull,
   5,
   5000,
   2,
   500,
   mando_missile_path+"warheads\mando_missilehead1a.sqf",
   "",
   "mando_missile1",
   29,
   10,
   false,
   1,
   0,
   0.2,
   false,
   false,
   "",
   55,
   35,
   1,
   true,
   60,
   65,
   1,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"PRACS_A4_Mk81_Launcher"]];
   
   // Missile parameters for 750lb (3)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   0,
   0,
   0,
   objNull,
   5,
   5000,
   2,
   500,
   mando_missile_path+"warheads\mando_missilehead1a.sqf",
   "",
   "mando_missile1",
   29,
   10,
   false,
   1,
   0,
   0.2,
   false,
   false,
   "",
   55,
   35,
   1,
   true,
   60,
   65,
   1,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"PRACS_A4_750lb_Launcher"]];

   // Missile parameters for AMRAAM (4)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   100,
   800,
   150,
   objNull,
   10,
   12000,
   1,
   100,
   mando_missile_path+"warheads\mando_missilehead1a.sqf",
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",
   "mando_missile1",
   29,
   25,
   false,
   2,
   0,
   0.5,
   false,
   false,
   "",
   55,
   55,
   1,
   true,
   75,
   75,
   1,
   mando_minchaffdist
   ]];  

   mando_missileidxbase = mando_missileidxbase + [[-1,"PRACS_F15_AIM120_Launcher","PRACS_M3AIM120_Launcher"]];

   // Missile parameters for Sparrow (5)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   100,
   750,
   200,
   objNull,
   10,
   10000,
   2,
   100,
   mando_missile_path+"warheads\mando_missilehead1a.sqf",
   "",
   "mando_missile1",
   29,
   25,
   false,
   2,
   0,
   1,
   false,
   false,
   "",
   35,
   35,
   1,
   false,
   35,
   35,
   1,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"PRACS_F15_AIM7_Launcher","PRACS_F16_AIM7_Launcher"]];
   
   // Missile parameters for R530 (mando_hud_missile = 6);
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   100, 	// speedini 
   700, 	// speedmax 
   250,		// acceleration
   objNull, 	// target (calculated by the firing action)
   10, 		// boomrange
   10000, 	// activerange
   2, 		// modeinit
   500, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1a.sqf", 	// boomscript
   "",	// smokescript
   "mando_missile1", 	// soundrsc
   29, 		// sounddur 
   20, 		// endurance
   false,	// terrainavoidance
   1, 		// updatefreq
   0.2, 	// delayinit 
   0.2, 	// controltime
   false, 	// detectable 
   false, 	// debug
   "", 		// launchscript
   45, 		// hagility
   45, 		// vagility
   1, 		// accuracy
   true, 	// intercept
   55, 		// scanarch 
   55,		// scanarcv
   1,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"PRACS_R530_Launcher"]];
   
   // Missile parameters for Mk81 (7)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   0,
   0,
   0,
   objNull,
   5,
   5000,
   2,
   500,
   mando_missile_path+"warheads\mando_missilehead1a.sqf",
   "",
   "mando_missile1",
   29,
   10,
   false,
   1,
   0,
   0.2,
   false,
   false,
   "",
   55,
   35,
   1,
   true,
   60,
   65,
   1,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"PRACS_Mk81_Launcher"]];
   
   
   // Missile parameters for Mk82 (8)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   0,
   0,
   0,
   objNull,
   5,
   5000,
   2,
   500,
   mando_missile_path+"warheads\mando_missilehead1a.sqf",
   "",
   "mando_missile1",
   29,
   10,
   false,
   1,
   0,
   0.2,
   false,
   false,
   "",
   55,
   35,
   1,
   true,
   60,
   65,
   1,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"PRACS_M3_Mk82_Launcher"]];
   
   
   // Missile parameters for Mk83 (9)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   0,
   0,
   0,
   objNull,
   5,
   5000,
   2,
   500,
   mando_missile_path+"warheads\mando_missilehead1a.sqf",
   "",
   "mando_missile1",
   29,
   10,
   false,
   1,
   0,
   0.2,
   false,
   false,
   "",
   55,
   35,
   1,
   true,
   60,
   65,
   1,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"PRACS_M3_Mk83_Launcher","PRACS_F16_Mk83_Launcher"]];

   // Missile parameters for CBU52 (10)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   0,
   0,
   0,
   objNull,
   5,
   5000,
   2,
   500,
   mando_missile_path+"warheads\mando_missilehead1a.sqf",
   "",
   "mando_missile1",
   29,
   10,
   false,
   1,
   0,
   0.2,
   false,
   false,
   "",
   55,
   35,
   1,
   true,
   60,
   65,
   1,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"PRACS_CBU52_Launcher", "PRACS_ET_CBU84_Launcher"]];

   
   // Missile parameters for PRACS_ET_750_Launcher (11)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   0,
   0,
   0,
   objNull,
   5,
   5000,
   2,
   500,
   mando_missile_path+"warheads\mando_missilehead1a.sqf",
   "",
   "mando_missile1",
   29,
   10,
   false,
   1,
   0,
   0.2,
   false,
   false,
   "",
   55,
   35,
   1,
   true,
   60,
   65,
   1,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"PRACS_ET_750_Launcher"]];

   // Magic (12)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   100, 	// speedini 
   700, 	// speedmax 
   200,		// acceleration
   objNull, 	// target (calculated by the firing action)
   10, 		// boomrange
   5000, 	// activerange
   2, 		// modeinit
   500, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1a.sqf", 	// boomscript
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",	// smokescript
   "mando_missile1", 	// soundrsc
   29, 		// sounddur 
   5, 		// endurance
   false,	// terrainavoidance
   1, 		// updatefreq
   0.2, 	// delayinit 
   0.2, 	// controltime
   false, 	// detectable 
   false, 	// debug
   "", 		// launchscript
   65, 		// hagility
   65, 		// vagility
   1, 		// accuracy
   true, 	// intercept
   60, 		// scanarch 
   65,		// scanarcv
   1,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"PRACS_ET_Magic_Launcher"]];
   
   // Exocet (13)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   5,
   315,
   150,
   objNull,
   0,
   1000,
   0,
   60,
   mando_missile_path+"warheads\mando_missilehead1_nohe.sqf",
   "",
   "",
   29,
   60,
   false,
   2,
   1,
   0,
   true,
   false,
   "",
   40,
   50,
   1,
   true,
   90,
   90,
   0.5,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"PRACS_ET_Exocet_Launcher"]];
   
   
   // AIM9 (14)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   100,
   600,
   200,
   objNull,
   10,
   5000,
   2,
   500,
   mando_missile_path+"warheads\mando_missilehead1a.sqf",
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",
   "mando_missile1",
   29,
   10,
   false,
   1,
   0,
   0.2,
   false,
   false,
   "",
   65,
   65,
   1,
   true,
   65,
   65,
   1,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"PRACS_F16_SidewinderLauncher"]];    
   
   // Missile parameters for AMRAAM (15)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   100,
   800,
   150,
   objNull,
   10,
   12000,
   1,
   100,
   mando_missile_path+"warheads\mando_missilehead1a.sqf",
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",
   "mando_missile1",
   29,
   25,
   false,
   2,
   0,
   0.5,
   false,
   false,
   "",
   55,
   55,
   1,
   true,
   75,
   75,
   1,
   mando_minchaffdist
   ]];  

   mando_missileidxbase = mando_missileidxbase + [[-1,"PRACS_F16_AIM120_Launcher"]];

   // AGM65 (16)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   5,
   278,
   120,
   objNull,
   0,
   8000,
   2,
   100,
   mando_missile_path+"warheads\mando_missilehead1_nohe.sqf",
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",
   "mando_missile1",
   29,
   30,
   false,
   2,
   1,
   0.5,
   false,
   false,
   "",
   45,
   45,
   1,
   true,
   45,
   75,
   0,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"MaverickLauncher","PRACS_Maverick_Launcher"]];      
   
   
   // Mk82 (17)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   0,
   0,
   0,
   objNull,
   5,
   5000,
   2,
   500,
   mando_missile_path+"warheads\mando_missilehead1a.sqf",
   "",
   "mando_missile1",
   29,
   10,
   false,
   1,
   0,
   0.2,
   false,
   false,
   "",
   55,
   35,
   1,
   true,
   60,
   65,
   1,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"PRACS_F16_Mk82r_Launcher","PRACS_F16Mk82_Launcher"]];
   
   // Mk84 (18)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   0,
   0,
   0,
   objNull,
   5,
   5000,
   2,
   500,
   mando_missile_path+"warheads\mando_missilehead1a.sqf",
   "",
   "mando_missile1",
   29,
   10,
   false,
   1,
   0,
   0.2,
   false,
   false,
   "",
   55,
   35,
   1,
   true,
   60,
   65,
   1,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"PRACS_F16Mk84_Launcher"]];

   // Missile parameters for CBU84 (19)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   0,
   0,
   0,
   objNull,
   5,
   5000,
   2,
   500,
   mando_missile_path+"warheads\mando_missilehead1a.sqf",
   "",
   "mando_missile1",
   29,
   10,
   false,
   1,
   0,
   0.2,
   false,
   false,
   "",
   55,
   35,
   1,
   true,
   60,
   65,
   1,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"PRACS_F16CBU84_Launcher"]];
   
   // AGM88 Harm (20)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   100,
   800,
   150,
   objNull,
   0,
   1500,
   1,
   300,
   mando_missile_path+"warheads\mando_missilehead1a.sqf",
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",
   "mando_missile1",
   29,
   25,
   false,
   2,
   0,
   0.5,
   false,
   false,
   "",
   55,
   65,
   1,
   true,
   75,
   75,
   0,
   mando_minchaffdist
   ]];  

   mando_missileidxbase = mando_missileidxbase + [[-1,"PRACS_AGM88_Launcher"]];
   
   // JDAM Bombs (21);
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   0, 
   0,
   10,
   objNull,
   0,
   8000,
   2,
   500,
   mando_missile_path+"warheads\mando_missilehead1_nohe.sqf",
   "",
   "",
   29,
   15,
   false,
   1,
   1,
   0,
   false,
   false,
   "",
   15,
   15,
   1,
   false,
   180,
   180,
   0,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"PRACS_JDAM_Launcher"]];
   
   