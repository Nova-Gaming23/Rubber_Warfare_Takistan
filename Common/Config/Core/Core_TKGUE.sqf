/* TK GUE Configuration */
Private ['_c','_get','_i','_p','_z'];

_c = [];
_i = [];

/* Infantry */
_c = _c + ['TK_GUE_Soldier_EP1'];
_i = _i + [['','',140,4,-1,0,0,0.48,'Takistani Guerilla',[]]];

_c = _c + ['TK_GUE_Soldier_2_EP1'];
_i = _i + [['','',140,4,-1,0,0,0.46,'Takistani Guerilla',[]]];

_c = _c + ['TK_GUE_Soldier_3_EP1'];
_i = _i + [['','',190,4,-1,0,0,0.5,'Takistani Guerilla',[]]];

_c = _c + ['TK_GUE_Soldier_4_EP1'];
_i = _i + [['','',150,5,-1,0,0,0.49,'Takistani Guerilla',[]]];

_c = _c + ['TK_GUE_Soldier_5_EP1'];
_i = _i + [['','',100,5,-1,0,0,0.47,'Takistani Guerilla',[]]];

_c = _c + ['TK_GUE_Soldier_AT_EP1'];
_i = _i + [['','',1220,4,-1,1,0,0.52,'Takistani Guerilla',[]]];

_c = _c + ['TK_GUE_Soldier_AAT_EP1'];
_i = _i + [['','',310,4,-1,2,0,0.51,'Takistani Guerilla',[]]];

_c = _c + ['TK_GUE_Soldier_AA_EP1'];
_i = _i + [['','',1670,4,-1,2,0,0.53,'Takistani Guerilla',[]]];

_c = _c + ['TK_GUE_Soldier_AR_EP1'];
_i = _i + [['','',290,5,-1,1,0,0.52,'Takistani Guerilla',[]]];

_c = _c + ['TK_GUE_Soldier_MG_EP1'];
_i = _i + [['','',300,6,-1,1,0,0.53,'Takistani Guerilla',[]]];

_c = _c + ['TK_GUE_Soldier_Sniper_EP1'];
_i = _i + [['','',380,5,-1,1,0,0.56,'Takistani Guerilla',[]]];

_c = _c + ['TK_GUE_Bonesetter_EP1'];
_i = _i + [['','',425,5,-1,0,0,0.49,'Takistani Guerilla',[]]];

_c = _c + ['TK_GUE_Soldier_HAT_EP1'];
_i = _i + [['','',1350,5,-1,3,0,0.58,'Takistani Guerilla',[]]];

_c = _c + ['TK_GUE_Soldier_TL_EP1'];
_i = _i + [['','',500,5,-1,2,0,0.61,'Takistani Guerilla',[]]];

_c = _c + ['TK_GUE_Warlord_EP1'];
_i = _i + [['','',810,5,-1,1,0,0.59,'Takistani Guerilla',[]]];

/* Light Vehicles */
_c = _c + ['V3S_TK_GUE_EP1'];
_i = _i + [['','',275,15,-2,0,1,0,'Takistani Guerilla',[]]];

_c = _c + ['Pickup_PK_TK_GUE_EP1'];
_i = _i + [['','',350,17,-2,0,1,0,'Takistani Guerilla',[]]];

_c = _c + ['Offroad_DSHKM_TK_GUE_EP1'];
_i = _i + [['','',400,25,-2,1,1,0,'Takistani Guerilla',[]]];

_c = _c + ['Offroad_SPG9_TK_GUE_EP1'];
_i = _i + [['','',480,20,-2,2,1,0,'Takistani Guerilla',[]]];

_c = _c + ['BRDM2_TK_GUE_EP1'];
_i = _i + [['','',1600,25,-2,1,1,0,'Takistani Guerilla',[]]];

_c = _c + ['BTR40_TK_GUE_EP1'];
_i = _i + [['','',750,25,-2,0,1,0,'Takistani Guerilla',[]]];

_c = _c + ['BTR40_MG_TK_GUE_EP1'];
_i = _i + [['','',900,25,-2,1,1,0,'Takistani Guerilla',[]]];

_c = _c + ['Ural_ZU23_TK_GUE_EP1'];
_i = _i + [['','',1950,25,-2,3,1,0,'Takistani Guerilla',[]]];

/* Heavy Vehicles */
_c = _c + ['T34_TK_GUE_EP1'];
_i = _i + [['','',2500,30,-2,0,2,0,'Takistani Guerilla',[]]];

_c = _c + ['T55_TK_GUE_EP1'];
_i = _i + [['','',4000,35,-2,1,2,0,'Takistani Guerilla',[]]];

/* Static Defenses */

_c = _c + ['2b14_82mm_TK_GUE_EP1'];
_i = _i + [['','',10600,0,1,0,'Defense',0,'Takistani Guerilla',[]]];

_c = _c + ['WarfareBMGNest_PK_TK_GUE_EP1'];
_i = _i + [['','',600,0,1,0,'Defense',0,'Takistani Guerilla',[]]];

_c = _c + ['DSHKM_TK_GUE_EP1'];
_i = _i + [['','',425,0,1,0,'Defense',0,'Takistani Guerilla',[]]];

_c = _c + ['AGS_TK_GUE_EP1'];
_i = _i + [['','',750,0,1,0,'Defense',0,'Takistani Guerilla',[]]];

_c = _c + ['SPG9_TK_GUE_EP1'];
_i = _i + [['','',5175,0,1,0,'Defense',0,'Takistani Guerilla',[]]];

_c = _c + ['ZU23_TK_GUE_EP1'];
_i = _i + [['','',7500,0,1,0,'Defense',0,'Takistani Guerilla',[]]];

_c = _c + ['D30_TK_GUE_EP1'];
_i = _i + [['','',60000,0,1,0,'Defense',0,'Takistani Guerilla',[]]];

for '_z' from 0 to (count _c)-1 do {
	if (isClass (configFile >> 'CfgVehicles' >> (_c select _z))) then {
		_get = (_c select _z) Call GetNamespace;
		if (isNil '_get') then {
			if ((_i select _z) select 0 == '') then {(_i select _z) set [0, [_c select _z,'displayName'] Call GetConfigInfo]};
			if (typeName ((_i select _z) select 4) == 'SCALAR') then {
				if (((_i select _z) select 4) == -2) then {
					_ret = (_c select _z) Call Compile preprocessFile "Common\Functions\Common_GetConfigVehicleCrewSlot.sqf";
					(_i select _z) set [4, _ret select 0];
					(_i select _z) set [9, _ret select 1];
				};
			};
			if (WF_Debug) then {(_i select _z) set [3,1]};
			_p = if ((_c select _z) isKindOf 'Man') then {'portrait'} else {'picture'};
			(_i select _z) set [1, [_c select _z,_p] Call GetConfigInfo];
			[_c select _z,_i select _z] Call SetNamespace;
		} else {
			diag_log Format ["[WFBE (INIT)][frameno:%2 | ticktime:%3] Core_TKGUE: Duplicated Element found '%1'",(_c select _z),diag_frameno,diag_tickTime];
		};
	} else {
		diag_log Format ["[WFBE (ERROR)][frameno:%2 | ticktime:%3] Core_TKGUE: Element '%1' is not a valid class.",(_c select _z),diag_frameno,diag_tickTime];
	};
};

diag_log Format ["[WFBE (INIT)][frameno:%2 | ticktime:%3] Core_TKGUE: Initialization (%1 Elements) - [Done]",count _c,diag_frameno,diag_tickTime];