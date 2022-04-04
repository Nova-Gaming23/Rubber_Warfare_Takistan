// Missile parameters setup
   mando_hud_misp = [];
   mando_missileidxbase = [];

   // Missile parameters for AIM9X (mando_hud_missile = 0);
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
   55,
   35,
   1,
   true,
   60,
   65,
   1,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_AIM9X_Launcher"]]; 

   // Missile parameters for AMRAAM (mando_hud_missile = 1)
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
   5,
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_AIM120Launcher","GLT_AIM120_Launcher"]];

   // Missile parameters for Sparrow (mando_hud_missile = 2)
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_AIM7Launcher","GLT_AIM7_Launcher"]];


   // Missile parameters for AIM9 (mando_hud_missile = 3);
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
   1,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_AIM9M_Launcher"]]; 


   // Missile parameters for Maverick (mando_hud_missile = 4)
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_AGM65_Launcher"]];


   // Missile parameters for fake bombs (mando_hud_missile = 5)
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
   75,
   75,
   1,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_MK82_Launcher"]];

   // Missile parameters for AGM84 Harpoon (mando_hud_missile = 6)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   10,
   237,
   100,
   objNull,
   2,
   1000,
   0,
   80,
   mando_missile_path+"warheads\mando_missilehead1a.sqf",
   "",
   "mando_missile1",
   29,
   120,
   true,
   2,
   1,
   1,	
   true,
   false,
   "",
   40,
   40,
   1,
   true,
   90,
   90,
   0,
   0
   ]];  

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_AGM84_Launcher"]];

   // Fake params for bombs (mando_hud_missile = 7)
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
   3000,
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_MK84_Launcher"]];


   // Missile parameters for AIM9 (mando_hud_missile = 8);
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
   55,
   35,
   1,
   true,
   60,
   65,
   1,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"SidewinderLaucher_AH1Z"]];


   // Missile parameters for Mk82 (mando_hud_missile = 9);
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
   1,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1, "Mk82BombLauncher_6"]];


   // Missile parameters for Maverick (mando_hud_missile = 10)
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"MaverickLauncher","MaverickLauncher6_ASZ"]];


   // Missile parameters for AIM9 F35 (mando_hud_missile = 11);
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
   55,
   55,
   1,
   true,
   90,
   90,
   1,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"SidewinderLaucher_F35"]];


   // Missile parameters for SidewinderLaucher_AH64 (mando_hud_missile = 12);
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
   55,
   35,
   1,
   true,
   60,
   65,
   1,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"SidewinderLaucher_AH64"]];


   // Missile parameters for HellfireLauncher (mando_hud_missile = 13);
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   10, 
   355,
   150,
   objNull,
   0,
   850,
   1,
   350,
   mando_missile_path+"warheads\mando_missilehead1_nohe.sqf",
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",
   "mando_missile1",
   29,
   15,
   false,
   0.5,
   0,
   0.5,
   false,
   false,
   "",
   40,
   75,
   1,
   true,
   90,
   90,
   0,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"HellfireLauncher","cwr2_HellfireLauncher"]];


   if ((typeOf vehicle player) in mando_av8s) then
   {

   // Missile parameters for R73 as BLUFOR anti-radar for AV8Bs (mando_hud_missile = 14);
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
   0,
   1500,
   1,
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
   65,
   1,
   true,
   60,
   65,
   0,
   mando_minchaffdist
   ]];

   }
   else
   {

   // Missile parameters for R73 (mando_hud_missile = 14);
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

   };

   mando_missileidxbase = mando_missileidxbase + [[-1,"R73Launcher_2"]];


   // Missile parameters for R73 Su34 (mando_hud_missile = 15);
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"R73Launcher", "GLT_R73_Launcher"]];


   // Missile parameters for Ch29 Su34 (mando_hud_missile = 16)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   10,
   278,
   120,
   objNull,
   2,
   800,
   1,
   300,
   mando_missile_path+"warheads\mando_missilehead1a.sqf",
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",
   "mando_missile1",
   29,
   10,
   false,
   2,
   1,
   1,	
   false,
   false,
   "",
   40,
   40,
   1,
   true,
   90,
   90,
   1,
   0
   ]];  

   mando_missileidxbase = mando_missileidxbase + [[-1,"Ch29Launcher_Su34", "GLT_CH29T_Launcher"]];

   // Missile parameters for Ch29 (mando_hud_missile = 17)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   10,
   278,
   120,
   objNull,
   2,
   800,
   1,
   300,
   mando_missile_path+"warheads\mando_missilehead1a.sqf",
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",
   "mando_missile1",
   29,
   10,
   false,
   2,
   1,
   1,	
   false,
   false,
   "",
   40,
   40,
   1,
   true,
   90,
   90,
   1,
   0
   ]];  

   mando_missileidxbase = mando_missileidxbase + [[-1,"Ch29Launcher","ACE_Kh29Launcher"]];


   // Missile parameters for AirBombLauncher (mando_hud_missile = 18)
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"AirBombLauncher"]];

   // Missile parameters for AGM88 Harm (mando_hud_missile = 19)
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_AGM88_Launcher"]];

   // Missile parameters for AIM9 SidewinderLauncher x 4 (mando_hud_missile = 20);
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
   55,
   35,
   1,
   true,
   60,
   65,
   1,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"SidewinderLaucher","SidewinderLauncher8_ASZ"]]; 

   // Missile parameters for R73 ACE (mando_hud_missile = 21);
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"ACE_R73Launcher"]];

   // Missile parameters for R27 ACE (mando_hud_missile = 22)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   100,
   700,
   150,
   objNull,
   0,
   10000,
   2,
   100,
   mando_missile_path+"warheads\mando_missilehead1a.sqf",
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",
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
   25,
   25,
   1,
   mando_minchaffdist
   ]];
   
   mando_missileidxbase = mando_missileidxbase + [[-1,"ACE_R27Launcher", "GLT_R27_Launcher"]];


   // Missile parameters for ACE_Hellfire (mando_hud_missile = 23);
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   10, 
   355,
   150,
   objNull,
   0,
   850,
   1,
   350,
   mando_missile_path+"warheads\mando_missilehead1_nohe.sqf",
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",
   "mando_missile1",
   29,
   15,
   false,
   0.5,
   0,
   0.5,
   false,
   false,
   "",
   40,
   75,
   1,
   true,
   90,
   90,
   0,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"ACE_HellfireLauncher"]];

   // Missile parameters for ACE_Hellfire_Apache (mando_hud_missile = 24);
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   10, 
   355,
   150,
   objNull,
   0,
   850,
   1,
   350,
   mando_missile_path+"warheads\mando_missilehead1_nohe.sqf",
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",
   "mando_missile1",
   29,
   15,
   false,
   0.5,
   0,
   0.5,
   false,
   false,
   "",
   40,
   75,
   1,
   true,
   90,
   90,
   0,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"ACE_HellfireLauncher_Apache"]];


   // Missile parameters for "ACE_B61BombLauncher" Nuke (mando_hud_missile = 25)
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"ACE_B61BombLauncher"]];

   // Missile parameters for Eble's Sparrow (mando_hud_missile = 26)
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
   5,
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"RKTF4SparrowRail"]];

   // Missile parameters for Eble's AGM88 Harm (mando_hud_missile = 27)
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"RKTF4HarmRail"]];

   // Missile parameters for MK82 Iron Bombs "RKTF4BombRail" (mando_hud_missile = 28)
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"RKTF4BombRail"]];

   // Missile parameters for Eble's BLU-1 Napalm Cannister "RKTF4BLURail" (mando_hud_missile = 29)
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"RKTF4BLURail"]];


   // Missile parameters for Eble's AIM9 (mando_hud_missile = 30)
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
   55,
   35,
   1,
   true,
   60,
   65,
   1,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"IkaR_F14_AIM9Launcher2_ir"]];

   // Missile parameters for Eble's AIM54 (mando_hud_missile = 31)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   100,
   900,
   200,
   objNull,
   10,
   3000,
   1,
   200,
   mando_missile_path+"warheads\mando_missilehead1a.sqf",
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",
   "mando_missile1",
   29,
   60,
   false,
   1,
   2,
   0,
   false,
   false,
   "",
   45,
   45,
   1,
   true,
   65,
   65,
   1,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"IkaR_F14_AIM54Launcher6_ir"]];


   // Missile parameters for Maverick (mando_hud_missile = 32)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   100,
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"IkaR_F14_AGM65Launcher4_ir"]];


   // Missile parameters for IkaR_F14_GBU12Launcher5_ir (mando_hud_missile = 33)
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
   0,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"IkaR_F14_GBU12Launcher5_ir"]];

   // Missile parameters for TOW (mando_hud_missile = 34);
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"TOWLauncher"]];


   // Missile parameters for FFAA EF2000 Maverick (mando_hud_missile = 35)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   -3,
   50,
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
   15,
   false,
   2,
   0,
   0,
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"ffaa_MaverickLauncher_ef"]];

   // Missile parameters for FFAA EF2000 Sidewinder (mando_hud_missile = 36);
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
   55,
   55,
   1,
   true,
   90,
   90,
   1,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"ffaa_SidewinderLaucher_ef"]];

   // Missile parameters for LGB Bombs (mando_hud_missile = 37);
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   10,
   200,
   9.8,
   objNull,
   0,
   3500,
   2,
   150,
   mando_missile_path+"warheads\mando_missilehead1a.sqf",
   "",	
   "",
   29,
   5,
   false,
   1,
   1,
   0,	
   false,
   false,
   "",
   40,
   40,
   1,
   false,
   60,
   90,
   0,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"BombLauncher"]];

   // Missile parameters for JSOW Bombs (mando_hud_missile = 38);
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   0, 
   80,
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
   60,
   false,
   1,
   1,
   0,
   true,
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_AGM154A1_Launcher","GLT_AGM154A_Launcher"]];

   // Missile parameters for KH31A Missile (mando_hud_missile = 39);
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   10,
   600,
   100,
   objNull,
   0,
   2000,
   1,
   300,
   mando_missile_path+"warheads\mando_missilehead1a.sqf",
   "",
   "",
   29,
   120,
   true,
   2,
   0,
   0,	
   true,
   false,
   "",
   40,
   40,
   1,
   true,
   90,
   90,
   0,
   0
   ]];  

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_CH31_Launcher"]];

   // Missile parameters for R77 (mando_hud_missile = 40)
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
   5,
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_R77_Launcher"]];

   // Missile parameters for Mk81 (mando_hud_missile = 41);
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
   1,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1, "GLT_MK81_Launcher"]];

   // Missile parameters for JDAM Bombs (mando_hud_missile = 42);
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_GBU53_Launcher","GLT_KAB500SE_Launcher"]];

   // Missile parameters for GLT_FAB500_Launcher (mando_hud_missile = 43);
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
   0,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_FAB500_Launcher"]];

   // Missile parameters for R3 (mando_hud_missile = 44);
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   100,
   500,
   150,
   objNull,
   5,
   3000,
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
   35,
   35,
   1,
   true,
   35,
   35,
   0.5,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_R3_Launcher"]];

   // Missile parameters for GLT_GBU39_Launcher Bombs (mando_hud_missile = 45);
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_GBU39_Launcher"]];
   
   // Missile parameters for GLT_FAB250_Launcher (mando_hud_missile = 46);
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
   0,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_FAB250_Launcher"]];

   // Missile parameters forGLT_AS4_Launcher Kh22 Nuclear (mando_hud_missile = 47)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 	// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   10,		// speedini 
   500, 	// speedmax 
   120,		// acceleration
   objNull, 	// target (calculated by the firing action)
   0, 		// boomrange
   3000, 	// activerange
   1, 		// modeinit
   300, 	// cruisealt
   mando_missile_path+"warheads\echo\w80.sqf", 	// boomscript
   "",	// smokescript
   "", 	// soundrsc
   29, 		// sounddur 
   120,		// endurance
   true,	// terrainavoidance
   2, 		// updatefreq
   1, 		// delayinit 
   4,	 	// controltime
   true, 	// detectable 
   false, 	// debug
   "", 		// launchscript
   30, 		// hagility
   30, 		// vagility
   1, 		// accuracy
   true, 	// intercept
   45,		// scanarch 
   90,		// scanarcv
   0,		// Offset above target
   0	// Countermeasures extent
   ]];  

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_AS4_Launcher"]];
   
   // Missile parameters for Ch29 Su34 (mando_hud_missile = 48)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   10,
   278,
   120,
   objNull,
   2,
   800,
   1,
   300,
   mando_missile_path+"warheads\mando_missilehead1a.sqf",
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",
   "mando_missile1",
   29,
   10,
   false,
   2,
   1,
   1,	
   false,
   false,
   "",
   40,
   40,
   1,
   true,
   90,
   90,
   1,
   0
   ]];  

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_CH29L_Launcher"]];
  
   // GLT APhid AA8 (mando_hud_missile = 49);
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   100, 	// speedini 
   600, 	// speedmax 
   150,		// acceleration
   objNull, 	// target (calculated by the firing action)
   10, 		// boomrange
   5000, 	// activerange
   2, 		// modeinit
   500, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1l.sqf", 	// boomscript
   "",	// smokescript
   "mando_missile1", 	// soundrsc
   29, 		// sounddur 
   10, 		// endurance
   false,	// terrainavoidance
   1, 		// updatefreq
   0, 		// delayinit 
   0.1, 	// controltime
   false, 	// detectable 
   false, 	// debug
   "", 		// launchscript
   35, 		// hagility
   35, 		// vagility
   1, 		// accuracy
   false, 	// intercept
   35, 		// scanarch 
   35,		// scanarcv
   1,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_R60_Launcher"]];

   // Missile parameters for Meteor (mando_hud_missile = 50)
   mando_hud_misp = mando_hud_misp + [[
   vehicle player, 	// _launcher
   "", 		// missilebody ("" for BIS used weapons when class of fired missile must be kept
   [0,0,0], 	// launchpos (calculated by the firing action)
   0, 		// dir (calculated by the firing action)
   0, 		// vangle (calculated by the firing action)
   100,		// speedini 
   800, 	// speedmax 
   150,		// acceleration
   objNull, 	// target (calculated by the firing action)
   5, 		// boomrange
   12000, 	// activerange
   1, 		// modeinit
   100, 	// cruisealt
   mando_missile_path+"warheads\mando_missilehead1a.sqf", 	// boomscript
   mando_missile_path+"exhausts\mando_missilesmoke1a.sqf",	// smokescript
   "mando_missile1", 	// soundrsc
   29, 		// sounddur 
   25, 		// endurance
   false,	// terrainavoidance
   2, 		// updatefreq
   0, 		// delayinit 
   0.5, 	// controltime
   false, 	// detectable 
   false, 	// debug
   "", 		// launchscript
   65, 		// hagility
   65, 		// vagility
   1, 		// accuracy
   true, 	// intercept
   75, 		// scanarch 
   75,		// scanarcv
   1,		// Offset above target
   mando_minchaffdist	// Countermeasures extent
   ]];  

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_METEOR_Launcher"]];

   // Missile parameters for Magic (mando_hud_missile = 51);
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_R550_Launcher"]];
   
   // Missile parameters for Maverick Laser (mando_hud_missile = 52)
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

   mando_missileidxbase = mando_missileidxbase + [[-1,"GLT_AGM65E_Launcher"]];
   
   // Missile parameters for LGB Bombs A10 Launcher (mando_hud_missile = 53);
   mando_hud_misp = mando_hud_misp + [[
   vehicle player,
   "",
   [0,0,0],
   0,
   0,
   10,
   200,
   9.8,
   objNull,
   0,
   3500,
   2,
   150,
   mando_missile_path+"warheads\mando_missilehead1a.sqf",
   "",	
   "",
   29,
   5,
   false,
   1,
   1,
   0,	
   false,
   false,
   "",
   40,
   40,
   1,
   false,
   60,
   90,
   0,
   mando_minchaffdist
   ]];

   mando_missileidxbase = mando_missileidxbase + [[-1,"BombLauncherA10"]];
   
   