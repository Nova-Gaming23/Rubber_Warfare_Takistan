/* BAF (MTP) Configuration */
Private ['_c','_get','_i','_p','_z'];

_c = [];
_i = [];

/* Infantry */
_c = _c + ['BAF_Soldier_AA_MTP'];
_i = _i + [['','',2410,6,-1,2,0,0.93,'British',[]]];

_c = _c + ['BAF_Soldier_AAA_MTP'];
_i = _i + [['','',890,6,-1,2,0,0.94,'British',[]]];

_c = _c + ['BAF_Soldier_AAT_MTP'];
_i = _i + [['','',890,4,-1,2,0,0.89,'British',[]]];

_c = _c + ['BAF_Soldier_AHAT_MTP'];
_i = _i + [['','',890,6,-1,3,0,0.90,'British',[]]];

_c = _c + ['BAF_Soldier_AAR_MTP'];
_i = _i + [['','',190,5,-1,2,0,0.93,'British',[]]];

_c = _c + ['BAF_Soldier_AMG_MTP'];
_i = _i + [['','',190,6,-1,1,0,0.92,'British',[]]];

_c = _c + ['BAF_Soldier_AT_MTP'];
_i = _i + [['','',1836,6,-1,2,0,0.93,'British',[]]];

_c = _c + ['BAF_Soldier_HAT_MTP'];
_i = _i + [['','',2610,6,-1,3,0,0.94,'British',[]]];

_c = _c + ['BAF_Soldier_AR_MTP'];
_i = _i + [['','',210,5,-1,2,0,0.90,'British',[]]];

_c = _c + ['BAF_crewman_MTP'];
_i = _i + [['','',125,5,-1,1,0,0.88,'British',[]]];

_c = _c + ['BAF_Soldier_EN_MTP'];
_i = _i + [['','',1050,5,-1,1,0,0.89,'British',[]]];

_c = _c + ['BAF_Soldier_GL_MTP'];
_i = _i + [['','',170,5,-1,1,0,0.89,'British',[]]];

_c = _c + ['BAF_Soldier_FAC_MTP'];
_i = _i + [['','',1250,6,-1,3,0,0.98,'British',[]]];

_c = _c + ['BAF_Soldier_MG_MTP'];
_i = _i + [['','',310,5,-1,1,0,0.90,'British',[]]];

_c = _c + ['BAF_Soldier_scout_MTP'];
_i = _i + [['','',340,6,-1,2,0,0.92,'British',[]]];

_c = _c + ['BAF_Soldier_Marksman_MTP'];
_i = _i + [['','',370,6,-1,3,0,0.91,'British',[]]];

_c = _c + ['BAF_Soldier_Medic_MTP'];
_i = _i + [['','',250,6,-1,1,0,0.91,'British',[]]];

_c = _c + ['BAF_Soldier_Officer_MTP'];
_i = _i + [['','',565,6,-1,2,0,0.96,'British',[]]];

_c = _c + ['BAF_Pilot_MTP'];
_i = _i + [['','',125,6,-1,1,0,0.89,'British',[]]];

_c = _c + ['BAF_Soldier_MTP'];
_i = _i + [['','',155,6,-1,1,0,0.89,'British',[]]];

_c = _c + ['BAF_ASoldier_MTP'];
_i = _i + [['','',160,6,-1,1,0,0.85,'British',[]]];

_c = _c + ['BAF_Soldier_L_MTP'];
_i = _i + [['','',130,6,-1,1,0,0.85,'British',[]]];

_c = _c + ['BAF_Soldier_N_MTP'];
_i = _i + [['','',175,6,-1,1,0,0.86,'British',[]]];

_c = _c + ['BAF_Soldier_SL_MTP'];
_i = _i + [['','',335,6,-1,2,0,0.97,'British',[]]];

_c = _c + ['BAF_Soldier_SniperN_MTP'];
_i = _i + [['','',450,6,-1,3,0,0.9,'British',[]]];

_c = _c + ['BAF_Soldier_SniperH_MTP'];
_i = _i + [['','',420,6,-1,2,0,0.9,'British',[]]];

_c = _c + ['BAF_Soldier_Sniper_MTP'];
_i = _i + [['','',395,6,-1,2,0,0.9,'British',[]]];

_c = _c + ['BAF_Soldier_spotter_MTP'];
_i = _i + [['','',340,6,-1,2,0,0.88,'British',[]]];

_c = _c + ['BAF_Soldier_spotterN_MTP'];
_i = _i + [['','',350,6,-1,2,0,0.88,'British',[]]];

_c = _c + ['BAF_Soldier_TL_MTP'];
_i = _i + [['','',445,6,-1,1,0,0.91,'British',[]]];

/* Air Vehicles */
_c = _c + ['BAF_Merlin_HC3_D'];
_i = _i + [['','',7700,45,-2,0,3,0,'British',[]]];

_c = _c + ['CH_47F_BAF'];
_i = _i + [['','',10500,40,-2,0,3,0,'British',[]]];

_c = _c + ['BAF_Apache_AH1_D'];
_i = _i + [['AH-1D Apache BAF','',48000,60,-2,3,3,0,'British',[]]];

_c = _c + ['AW159_Lynx_BAF'];
_i = _i + [['','',10250,35,-2,1,3,0,'British',[]]];

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
			if (WF_Extend_RPT_LOG) then {
			diag_log Format ["[WFBE (INIT)][frameno:%2 | ticktime:%3] Core_BAF: Duplicated Element found '%1'",(_c select _z),diag_frameno,diag_tickTime];
			};
		};
	} else {
		diag_log Format ["[WFBE (ERROR)][frameno:%2 | ticktime:%3] Core_BAF: Element '%1' is not a valid class.",(_c select _z),diag_frameno,diag_tickTime];
	};
};

diag_log Format ["[WFBE (INIT)][frameno:%2 | ticktime:%3] Core_BAF: Initialization (%1 Elements) - [Done]",count _c,diag_frameno,diag_tickTime];