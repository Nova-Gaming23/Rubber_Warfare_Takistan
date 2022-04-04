// Hud modes setup
   mando_hud_init_code = 
   {
		[0.67,0.89,0.20,false]execVm"mando_missiles\huds\custom\custom_radar.sqf";
		if (vehicle player isKindOf "ibr_viggen1") then
		{
			[]execVm"mando_missiles\huds\custom\custom_hud_ils.sqf";
		}
   };

   mando_hud_modes = [];
   mando_hud_modes = mando_hud_modes + [[
   0,		
   false,	
   1,           
   ["Air"],
   0.17,
   "Air - RBS24",
   0.015,
   6,
   1000,
   3000,
   3
   ]];
   
   mando_hud_modes = mando_hud_modes + [[
   1,
   false,
   1,
   ["LandVehicle"],
   0.1,
   "AG - rb75",
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
   "AG - rb75 (Ground)",
   0.015,
   4,
   500,
   3000,
   3
   ]];

   mando_hud_modes = mando_hud_modes + [[
   2,
   false,
   3,
   ["LandVehicle"],
   0.,
   "TOW",
   0.015,
   3,
   800,
   3000,	
   3
   ]];
   
   mando_hud_modes = mando_hud_modes + [[
   5,		
   false,	
   1,           
   ["Air"],
   0.17,
   "Air - R73",
   0.015,
   3,
   1000,
   3000,
   3
   ]];
   
   mando_hud_modes = mando_hud_modes + [[
   3,
   false,
   4,
   ["LOCATIONS"],
   0,
   "CCIP/Nav FAB 250",
   0.015,
   6,
   800,
   3000,
   3
   ]];   

   mando_hud_modes = mando_hud_modes + [[
   4,
   false,
   4,
   ["LOCATIONS"],
   0,
   "CCIP/Nav FAB 500",
   0.015,
   6,
   800,
   3000,
   3
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"ibr_AIM9M_Launcher"]];    
   

   // Missile parameters for RB75 (mando_hud_missile = 1)
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"ibr_AGM65_Launcher"]];
   
   // Missile parameters for TOW (2)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "R_S8T_AT",
   [0,0,0],
   0,
   0,
   10, 
   278,
   80,
   objNull,
   0,
   5000,
   2,
   500,
   mando_missile_path+"warheads\mando_missileheadat2.sqf",
   mando_missile_path+"exhausts\mando_towsmoke.sqf",
   "mando_missile1",
   29,
   6,
   false,
   1,
   0,
   0.2,
   false,
   true,
   "",
   7,
   7,
   1,
   false,
   20,
   20,
   0,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"TOWLauncherGazelle"]];
   
   
   // Missile parameters for AirBombLauncher (3)
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"PRACS_AirBombLauncher"]];
   
   // Missile parameters for AirBombLauncher (4)
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"PRACS_FABBombLauncher"]];

   // R73 (5);
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
   5,
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
   55,
   35,
   1,
   true,
   60,
   65,
   0.5,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"R73Launcher"]];
   