Private ['_easaDefault','_easaLoadout','_easaVehi','_vehicle'];

EASA_Equip = Compile preProcessFile 'Client\Module\EASA\EASA_Equip.sqf';
EASA_RemoveLoadout = Compile preProcessFile 'Client\Module\EASA\EASA_RemoveLoadout.sqf';

_easaDefault = [];
_easaLoadout = [];
_easaVehi = [];

/* [[Price], [Description], [Weapon, Ammos], [Weapon, Ammos]...] */
_easaVehi = 	_easaVehi + ['Su25_TK_EP1'];
_easaDefault = 	_easaDefault + [[['AirBombLauncher','4Rnd_FAB_250'],['R73Launcher_2','2Rnd_R73']]];
_easaLoadout = 	_easaLoadout + [
if (WF_A2_Arrowhead) then {
 [
  [[6500],['R-73 (6)'],['R73Launcher_2','2Rnd_R73','2Rnd_R73','2Rnd_R73']],
  [[6500],['R-73 (4) | FAB-250 (2)'],['R73Launcher_2','2Rnd_R73','2Rnd_R73'],['AirBombLauncher','2Rnd_FAB_250']],
  [[6500],['R-73 (2) | FAB-250 (4)'],['R73Launcher_2','2Rnd_R73'],['AirBombLauncher','4Rnd_FAB_250']],
  [[6500],['FAB-250 (6)'],['AirBombLauncher','4Rnd_FAB_250','2Rnd_FAB_250']]
 ]
} else {
 [
  [[6500],['FAB-250 (6)'],['AirBombLauncher','4Rnd_FAB_250','2Rnd_FAB_250']],
  [[6500],['Ch-29 (4) | FAB-250 (2)'],['Ch29Launcher','4Rnd_Ch29'],['AirBombLauncher','2Rnd_FAB_250']],
  [[6500],['Ch-29 (4) | R-73 (2)'],['Ch29Launcher','4Rnd_Ch29'],['R73Launcher_2','2Rnd_R73']],
  [[6500],['R-73 (4) | FAB-250 (2)'],['R73Launcher','4Rnd_R73'],['AirBombLauncher','2Rnd_FAB_250']],
  [[6500],['R-73 (2) | FAB-250 (4)'],['R73Launcher_2','2Rnd_R73'],['AirBombLauncher','4Rnd_FAB_250']]
 ]
}
];

_easaVehi = 	_easaVehi + ['Su25_Ins'];
_easaDefault = 	_easaDefault + [[['AirBombLauncher','4Rnd_FAB_250'],['R73Launcher_2','2Rnd_R73']]];
_easaLoadout = 	_easaLoadout + [
 [
  [[6500],['FAB-250 (6)'],['AirBombLauncher','4Rnd_FAB_250','2Rnd_FAB_250']],
  [[6500],['Ch-29 (4) | FAB-250 (2)'],['Ch29Launcher','4Rnd_Ch29'],['AirBombLauncher','2Rnd_FAB_250']],
  [[6500],['Ch-29 (4) | R-73 (2)'],['Ch29Launcher','4Rnd_Ch29'],['R73Launcher_2','2Rnd_R73']],
  [[6500],['R-73 (4) | FAB-250 (2)'],['R73Launcher','4Rnd_R73'],['AirBombLauncher','2Rnd_FAB_250']],
  [[6500],['R-73 (2) | FAB-250 (4)'],['R73Launcher_2','2Rnd_R73'],['AirBombLauncher','4Rnd_FAB_250']]
 ]
];

_easaVehi = 	_easaVehi + ['Su39'];
_easaDefault = 	_easaDefault + [[['Ch29Launcher','4Rnd_Ch29'],['R73Launcher_2','2Rnd_R73']]];
_easaLoadout = 	_easaLoadout + [
 [
  [[6600],['FAB-250 (6)'],['AirBombLauncher','4Rnd_FAB_250','2Rnd_FAB_250']],
  //[[6600],['Ch-29 (6)'],['Ch29Launcher_Su34','6Rnd_Ch29']],
  [[6600],['Ch-29 (4) | FAB-250 (2)'],['Ch29Launcher','4Rnd_Ch29'],['AirBombLauncher','2Rnd_FAB_250']],
  [[6600],['Ch-29 (4) | R-73 (2)'],['Ch29Launcher','4Rnd_Ch29'],['R73Launcher_2','2Rnd_R73']],
  [[8000],['Ch-29 (8)'],['Ch29Launcher','4Rnd_Ch29'],['Ch29Launcher','4Rnd_Ch29']],
  [[7000],['R-73 (6)'],['R73Launcher_2','2Rnd_R73'],['R73Launcher','4Rnd_R73']],
  [[6600],['R-73 (4) | FAB-250 (2)'],['R73Launcher','4Rnd_R73'],['AirBombLauncher','2Rnd_FAB_250']],
  [[6600],['R-73 (2) | FAB-250 (4)'],['R73Launcher_2','2Rnd_R73'],['AirBombLauncher','4Rnd_FAB_250']]
 ]
];
//L39_TK_EP1
_easaVehi = 	_easaVehi + ['Su34'];
_easaDefault = 	_easaDefault + [[['Ch29Launcher_Su34','6Rnd_Ch29'],['R73Launcher','4Rnd_R73']]];
_easaLoadout = 	_easaLoadout + [
 [
  [[10500],['FAB-250 (10)'],['AirBombLauncher','4Rnd_FAB_250','4Rnd_FAB_250','2Rnd_FAB_250']],
  [[10500],['FAB-250 (8) | R-73 (2)'],['AirBombLauncher','4Rnd_FAB_250','4Rnd_FAB_250'],['R73Launcher_2','2Rnd_R73']],
  [[10500],['FAB-250 (6) | R-73 (4)'],['AirBombLauncher','4Rnd_FAB_250','2Rnd_FAB_250'],['R73Launcher','4Rnd_R73']],
  [[10500],['FAB-250 (6) | Ch-29 (4)'],['AirBombLauncher','4Rnd_FAB_250','2Rnd_FAB_250'],['Ch29Launcher_Su34','4Rnd_Ch29']],
  [[10500],['FAB-250 (4) | Ch-29 (4) | R-73 (2)'],['AirBombLauncher','4Rnd_FAB_250'],['Ch29Launcher_Su34','4Rnd_Ch29'],['R73Launcher_2','2Rnd_R73']],
  [[10500],['FAB-250 (4) | R-73 (6)'],['AirBombLauncher','4Rnd_FAB_250'],['R73Launcher_2','2Rnd_R73'],['R73Launcher','4Rnd_R73']],
  [[10500],['FAB-250 (4) | Ch-29 (6)'],['AirBombLauncher','4Rnd_FAB_250'],['Ch29Launcher_Su34','6Rnd_Ch29']],
  [[10500],['FAB-250 (2) | R-73 (8)'],['AirBombLauncher','2Rnd_FAB_250'],['R73Launcher','4Rnd_R73','4Rnd_R73']],
  [[10500],['FAB-250 (2) | R-73 (4) | Ch-29 (4)'],['AirBombLauncher','2Rnd_FAB_250'],['R73Launcher','4Rnd_R73'],['Ch29Launcher_Su34','4Rnd_Ch29']],
  [[10500],['FAB-250 (2) | R-73 (2) | Ch-29 (6)'],['AirBombLauncher','2Rnd_FAB_250'],['R73Launcher_2','2Rnd_R73'],['Ch29Launcher_Su34','6Rnd_Ch29']],
  [[10500],['R-73 (10)'],['R73Launcher','4Rnd_R73','4Rnd_R73'],['R73Launcher_2','2Rnd_R73']],
  [[10500],['Ch-29 (6) | R-73 (4)'],['Ch29Launcher_Su34','6Rnd_Ch29'],['R73Launcher','4Rnd_R73']],
  [[10500],['Ch-29 (10)'],['Ch29Launcher_Su34','6Rnd_Ch29','4Rnd_Ch29']],
  [[9500],['R-73 (4) Kh-31 SEAD (2)'],['R73Launcher','4Rnd_R73'],['MaverickLauncher','2Rnd_Maverick_A10']]
 ]
];

_easaVehi = 	_easaVehi + ['Mi24_P'];
_easaDefault = 	_easaDefault + [[['HeliBombLauncher','2Rnd_FAB_250']]];
_easaLoadout = 	_easaLoadout + [
 [
  [[4500],['FAB-250 (2)'],['HeliBombLauncher','2Rnd_FAB_250']],
  [[4500],['IGLA (2)'],['Igla_twice','2Rnd_Igla']]
 ]
];

/*if (paramBalancing) then {
	_easaVehi = 	_easaVehi + ['Ka52'];
	_easaDefault = 	_easaDefault + [[['AT9Launcher','4Rnd_AT9_Mi24P','4Rnd_AT9_Mi24P'],['R73Launcher','4Rnd_R73']]];
	_easaLoadout = 	_easaLoadout + [
	 [
	  [[4500],['AT-9 (4) | R-73 (8)'],['AT9Launcher','4Rnd_AT9_Mi24P'],['R73Launcher','4Rnd_R73','4Rnd_R73']],
	  [[4500],['AT-9 (8) | R-73 (4)'],['AT9Launcher','4Rnd_AT9_Mi24P','4Rnd_AT9_Mi24P'],['R73Launcher','4Rnd_R73']],
	  [[4500],['AT-9 (12)'],['AT9Launcher','4Rnd_AT9_Mi24P','4Rnd_AT9_Mi24P','4Rnd_AT9_Mi24P']],
	  [[4500],['R-73 (12)'],['R73Launcher','4Rnd_R73','4Rnd_R73','4Rnd_R73']]
	 ]
	];

	_easaVehi = 	_easaVehi + ['Ka52Black'];
	_easaDefault = 	_easaDefault + [[['AT9Launcher','4Rnd_AT9_Mi24P','4Rnd_AT9_Mi24P'],['R73Launcher','4Rnd_R73']]];
	_easaLoadout = 	_easaLoadout + [
	 [
	  [[4500],['AT-9 (4) | R-73 (8)'],['AT9Launcher','4Rnd_AT9_Mi24P'],['R73Launcher','4Rnd_R73','4Rnd_R73']],
	  [[4500],['AT-9 (8) | R-73 (4)'],['AT9Launcher','4Rnd_AT9_Mi24P','4Rnd_AT9_Mi24P'],['R73Launcher','4Rnd_R73']],
	  [[4500],['AT-9 (12)'],['AT9Launcher','4Rnd_AT9_Mi24P','4Rnd_AT9_Mi24P','4Rnd_AT9_Mi24P']],
	  [[4500],['R-73 (12)'],['R73Launcher','4Rnd_R73','4Rnd_R73','4Rnd_R73']]
	 ]
	];
};*/

_easaVehi = 	_easaVehi + ['F35B'];
_easaDefault = 	_easaDefault + [[['BombLauncherF35','2Rnd_GBU12'],['SidewinderLaucher_F35','2Rnd_Sidewinder_F35']]];
_easaLoadout = 	_easaLoadout + [
 [
  [[15500],['LGB (4)'],['BombLauncherA10','4Rnd_GBU12']],
  [[15500],['LGB TV (2) | AIM-9L (2)'],['BombLauncherF35','2Rnd_GBU12'],['SidewinderLaucher_F35','2Rnd_Sidewinder_F35']],
  [[15500],['LGB TV (2) | AGM-65 (2)'],['BombLauncherF35','2Rnd_GBU12'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[15500],['AGM-65 (4)'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[15500],['AIM-9L (4)'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B']]
 ]
];

_easaVehi = 	_easaVehi + ['AV8B'];
_easaDefault = 	_easaDefault + [[['BombLauncher','6Rnd_GBU12_AV8B']]];
_easaLoadout = 	_easaLoadout + [
 [
  /*[[10500],['Mk82 (6)'],['Mk82BombLauncher_6','6Rnd_Mk82']],
  [[10500],['LGB (6)'],['BombLauncher','6Rnd_GBU12_AV8B']],
  [[10500],['LGB (4) | AIM-9L (2)'],['BombLauncherA10','4Rnd_GBU12'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z']],
  [[10500],['LGB (4) | AGM-65 (2)'],['BombLauncherA10','4Rnd_GBU12'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[10500],['LGB TV (2) | AIM-9L (4)'],['BombLauncherF35','2Rnd_GBU12'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B']],
  [[10500],['LGB TV (2) | AIM-9L (2) | AGM-65 (2)'],['BombLauncherF35','2Rnd_GBU12'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[10500],['AIM-9L (6)'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z']],
  [[10500],['AGM-65 (6)'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10']]*/
  [[10500],['AIM-9L (6)'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z']],
  [[11500],['AGM-88 SEAD (4) | AIM-9L (2)'],['R73Launcher_2','2Rnd_R73','2Rnd_R73'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z']]
 ]
];

_easaVehi = 	_easaVehi + ['AV8B2'];
_easaDefault = 	_easaDefault + [[['Mk82BombLauncher_6','6Rnd_Mk82'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z']]];
_easaLoadout = 	_easaLoadout + [
 [
  /*[[10500],['LGB (8)'],['BombLauncherA10','4Rnd_GBU12','4Rnd_GBU12']],
  [[10500],['LGB (6) | AGM-65 (2)'],['BombLauncher','6Rnd_GBU12_AV8B'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[10500],['LGB (6) | AIM-9L (2)'],['BombLauncher','6Rnd_GBU12_AV8B'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z']],
  [[10500],['LGB (4) | AGM-65 (4)'],['BombLauncherA10','4Rnd_GBU12'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[10500],['LGB (4) | AIM-9L (4)'],['BombLauncherA10','4Rnd_GBU12'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B']],
  [[10500],['LGB (4) | AIM-9L (2) | AGM-65 (2)'],['BombLauncherA10','4Rnd_GBU12'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[10500],['LGB TV (2) | AIM-9L (4) | AGM-65 (2)'],['BombLauncherF35','2Rnd_GBU12'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[10500],['LGB TV (2) | AIM-9L (2) | AGM-65 (4)'],['BombLauncherF35','2Rnd_GBU12'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[10500],['LGB TV (2) | AIM-9L (6)'],['BombLauncherF35','2Rnd_GBU12'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z']],
  [[10500],['LGB TV (2) | AGM-65 (6)'],['BombLauncherF35','2Rnd_GBU12'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[10500],['Mk82 (6) | AIM-9L (2)'],['Mk82BombLauncher_6','6Rnd_Mk82'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z']],
  [[10500],['Mk82 (6) | AGM-65 (2)'],['Mk82BombLauncher_6','6Rnd_Mk82'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[10500],['Mk82 (6) | LGB TV (2)'],['Mk82BombLauncher_6','6Rnd_Mk82'],['BombLauncherF35','2Rnd_GBU12']],
  [[10500],['AGM-65 (8)'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[10500],['AGM-65 (4) | AIM-9L (4)'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B']],
  [[10500],['AGM-65 (6) | AIM-9L (2)'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z']],
  [[10500],['AIM-9L (6) | AGM-65 (2)'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z'],['MaverickLauncher','2Rnd_Maverick_A10']]
  //[[10500],['AGM-114 (8)'],['HellfireLauncher','8Rnd_Hellfire']],
  [[10500],['AIM-9L (8)'],['SidewinderLaucher_AH64','8Rnd_Sidewinder_AH64']],*/
  [[10500],['AIM-9L (6)'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z']],
  [[11500],['AGM-88 SEAD (4) | AIM-9L (2)'],['R73Launcher_2','2Rnd_R73','2Rnd_R73'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z']]
  
 ]
];

_easaVehi = 	_easaVehi + ['A10'];
_easaDefault = 	_easaDefault + [[['BombLauncherA10','4Rnd_GBU12'],['MaverickLauncher','2Rnd_Maverick_A10'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z']]];
_easaLoadout = 	_easaLoadout + [
 [
  [[8500],['LGB (8)'],['BombLauncherA10','4Rnd_GBU12','4Rnd_GBU12']],
  [[8500],['LGB (6) | AGM-65 (2)'],['BombLauncher','6Rnd_GBU12_AV8B'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[8500],['LGB (6) | AIM-9L (2)'],['BombLauncher','6Rnd_GBU12_AV8B'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z']],
  [[8500],['LGB (4) | AGM-65 (4)'],['BombLauncherA10','4Rnd_GBU12'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[8500],['LGB (4) | AIM-9L (4)'],['BombLauncherA10','4Rnd_GBU12'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B']],
  [[8500],['LGB (4) | AIM-9L (2) | AGM-65 (2)'],['BombLauncherA10','4Rnd_GBU12'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[8500],['LGB TV (2) | AIM-9L (4) | AGM-65 (2)'],['BombLauncherF35','2Rnd_GBU12'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[8500],['LGB TV (2) | AIM-9L (2) | AGM-65 (4)'],['BombLauncherF35','2Rnd_GBU12'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[8500],['LGB TV (2) | AIM-9L (6)'],['BombLauncherF35','2Rnd_GBU12'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z']],
  [[8500],['LGB TV (2) | AGM-65 (6)'],['BombLauncherF35','2Rnd_GBU12'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[8500],['Mk82 (6) | AIM-9L (2)'],['Mk82BombLauncher_6','6Rnd_Mk82'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z']],
  [[8500],['Mk82 (6) | AGM-65 (2)'],['Mk82BombLauncher_6','6Rnd_Mk82'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[8500],['Mk82 (6) | LGB TV (2)'],['Mk82BombLauncher_6','6Rnd_Mk82'],['BombLauncherF35','2Rnd_GBU12']],
  [[8500],['AGM-65 (8)'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[8500],['AGM-65 (4) | AIM-9L (4)'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B']],
  [[8500],['AGM-65 (6) | AIM-9L (2)'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z']],
  //[[8500],['AGM-114 (8)'],['HellfireLauncher','8Rnd_Hellfire']],
  [[8500],['AIM-9L (8)'],['SidewinderLaucher_AH64','8Rnd_Sidewinder_AH64']],
  [[8500],['AIM-9L (6) | AGM-65 (2)'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z'],['MaverickLauncher','2Rnd_Maverick_A10']]
 ]
];

_easaVehi = 	_easaVehi + ['A10_US_EP1'];
_easaDefault = 	_easaDefault + [[['BombLauncherA10','4Rnd_GBU12'],['MaverickLauncher','2Rnd_Maverick_A10'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z']]];
_easaLoadout = 	_easaLoadout + [
if (WF_A2_Arrowhead) then {
 [
  [[8500],['LGB (8)'],['BombLauncherA10','4Rnd_GBU12','4Rnd_GBU12']],
  [[8500],['LGB (4) | AGM-65 (4)'],['BombLauncherA10','4Rnd_GBU12'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[8500],['LGB (4) | AIM-9L (4)'],['BombLauncherA10','4Rnd_GBU12'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z','2Rnd_Sidewinder_AH1Z']],
  [[8500],['LGB (4) | AIM-9L (2) | AGM-65 (2)'],['BombLauncherA10','4Rnd_GBU12'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[8500],['AGM-65 (8)'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[8500],['AGM-65 (4) | AIM-9L (4)'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z','2Rnd_Sidewinder_AH1Z']],
  [[8500],['AGM-65 (6) | AIM-9L (2)'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z']],
  //[[8500],['AGM-114 (8)'],['HellfireLauncher','8Rnd_Hellfire']],
  [[8500],['AIM-9L (8)'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z','2Rnd_Sidewinder_AH1Z','2Rnd_Sidewinder_AH1Z','2Rnd_Sidewinder_AH1Z']],
  [[8500],['AIM-9L (6) | AGM-65 (2)'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z','2Rnd_Sidewinder_AH1Z','2Rnd_Sidewinder_AH1Z'],['MaverickLauncher','2Rnd_Maverick_A10']]
 ]
} else {
 [
  [[8500],['LGB (8)'],['BombLauncherA10','4Rnd_GBU12','4Rnd_GBU12']],
  [[8500],['LGB (6) | AGM-65 (2)'],['BombLauncher','6Rnd_GBU12_AV8B'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[8500],['LGB (6) | AIM-9L (2)'],['BombLauncher','6Rnd_GBU12_AV8B'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z']],
  [[8500],['LGB (4) | AGM-65 (4)'],['BombLauncherA10','4Rnd_GBU12'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[8500],['LGB (4) | AIM-9L (4)'],['BombLauncherA10','4Rnd_GBU12'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B']],
  [[8500],['LGB (4) | AIM-9L (2) | AGM-65 (2)'],['BombLauncherA10','4Rnd_GBU12'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[8500],['LGB (2) | AIM-9L (4) | AGM-65 (2)'],['BombLauncherF35','2Rnd_GBU12'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[8500],['LGB TV (2) | AIM-9L (2) | AGM-65 (4)'],['BombLauncherF35','2Rnd_GBU12'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[8500],['LGB TV (2) | AIM-9L (6)'],['BombLauncherF35','2Rnd_GBU12'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z']],
  [[8500],['LGB TV (2) | AGM-65 (6)'],['BombLauncherF35','2Rnd_GBU12'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[8500],['Mk82 (6) | AIM-9L (2)'],['Mk82BombLauncher_6','6Rnd_Mk82'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z']],
  [[8500],['Mk82 (6) | AGM-65 (2)'],['Mk82BombLauncher_6','6Rnd_Mk82'],['MaverickLauncher','2Rnd_Maverick_A10']],
  [[8500],['Mk82 (6) | LGB TV (2)'],['Mk82BombLauncher_6','6Rnd_Mk82'],['BombLauncherF35','2Rnd_GBU12']],
  [[8500],['AGM-65 (8)'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10']],
  [[8500],['AGM-65 (4) | AIM-9L (4)'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B']],
  [[8500],['AGM-65 (6) | AIM-9L (2)'],['MaverickLauncher','2Rnd_Maverick_A10','2Rnd_Maverick_A10','2Rnd_Maverick_A10'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z']],
  //[[8500],['AGM-114 (8)'],['HellfireLauncher','8Rnd_Hellfire']],
  [[8500],['AIM-9L (8)'],['SidewinderLaucher_AH64','8Rnd_Sidewinder_AH64']],
  [[8500],['AIM-9L (6) | AGM-65 (2)'],['SidewinderLaucher','4Rnd_Sidewinder_AV8B'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z'],['MaverickLauncher','2Rnd_Maverick_A10']]
 ]
}
];

_easaVehi = 	_easaVehi + ['AH64D'];
_easaDefault = 	_easaDefault + [[['HellfireLauncher','8Rnd_Hellfire']]];
_easaLoadout = 	_easaLoadout + [
if (WF_A2_Arrowhead) then {
 [
  [[6500],['AGM-114 (8)'],['HellfireLauncher','8Rnd_Hellfire']],
  [[6500],['AIM-9L (8)'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z','2Rnd_Sidewinder_AH1Z','2Rnd_Sidewinder_AH1Z','2Rnd_Sidewinder_AH1Z']]
 ]
} else {
 [
  [[6500],['AGM-114 (8)'],['HellfireLauncher','8Rnd_Hellfire']],
  [[6500],['AIM-9L (8)'],['SidewinderLaucher_AH64','8Rnd_Sidewinder_AH64']],
  [[7500],['AIM-9L (2) | AGM-114(16)'],['HellfireLauncher','8Rnd_Hellfire','8Rnd_Hellfire'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z']]
 ]
}
];
//BAF_Apache_AH1_D
_easaVehi = 	_easaVehi + ['BAF_Apache_AH1_D'];
_easaDefault = 	_easaDefault + [[['HellfireLauncher','8Rnd_Hellfire']]];
_easaLoadout = 	_easaLoadout + [
if (WF_A2_Arrowhead) then {
 [
  [[6500],['AGM-114 (8)'],['HellfireLauncher','8Rnd_Hellfire']],
  [[6500],['AIM-9L (8)'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z','2Rnd_Sidewinder_AH1Z','2Rnd_Sidewinder_AH1Z','2Rnd_Sidewinder_AH1Z']]
 ]
} else {
 [
  [[6500],['AGM-114 (8)'],['HellfireLauncher','8Rnd_Hellfire']],
  [[6500],['AIM-9L (8)'],['SidewinderLaucher_AH64','8Rnd_Sidewinder_AH64']],
  [[7500],['AIM-9L (2) | AGM-114(16)'],['HellfireLauncher','8Rnd_Hellfire','8Rnd_Hellfire'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z']]
 ]
}
];

_easaVehi = 	_easaVehi + ['AH64D_EP1'];
_easaDefault = 	_easaDefault + [[['HellfireLauncher','8Rnd_Hellfire']]];
_easaLoadout = 	_easaLoadout + [
if (WF_A2_Arrowhead) then {
 [
  [[6500],['AGM-114 (8)'],['HellfireLauncher','8Rnd_Hellfire']],
  [[6500],['AIM-9L (8)'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z','2Rnd_Sidewinder_AH1Z','2Rnd_Sidewinder_AH1Z','2Rnd_Sidewinder_AH1Z']]
 ]
} else {
 [
  [[6500],['AGM-114 (8)'],['HellfireLauncher','8Rnd_Hellfire']],
  [[6500],['AIM-9L (8)'],['SidewinderLaucher_AH64','8Rnd_Sidewinder_AH64']],
  [[7500],['AIM-9L (2) | AGM-114(16)'],['HellfireLauncher','8Rnd_Hellfire','8Rnd_Hellfire'],['SidewinderLaucher_AH1Z','2Rnd_Sidewinder_AH1Z']]
 ]
}
];

_easaVehi = 	_easaVehi + ['AH1Z'];
_easaDefault = 	_easaDefault + [[['HellfireLauncher','8Rnd_Hellfire']]];
_easaLoadout = 	_easaLoadout + [
 [
  [[5250],['AGM-114 (8)'],['HellfireLauncher','8Rnd_Hellfire']],
  [[5250],['AIM-9L (8)'],['SidewinderLaucher_AH64','8Rnd_Sidewinder_AH64']]
 ]
];

['WFBE_EASA_Vehicles',_easaVehi,true] Call SetNamespace;
['WFBE_EASA_Loadouts',_easaLoadout,true] Call SetNamespace;
['WFBE_EASA_Default',_easaDefault,true] Call SetNamespace;