/* KSK Configuration */
Private ['_c','_get','_i','_p','_z'];

_c = [];
_i = [];

/* Infantry */

_c = _c + ['mas_ita_unit_des_aa'];
_i = _i + [['','',1840,6,-1,2,0,0.95,'Rangers',[]]];

_c = _c + ['mas_ita_unit_des_at'];
_i = _i + [['','',1540,6,-1,2,0,0.95,'Rangers',[]]];

_c = _c + ['mas_ita_unit_des_med'];
_i = _i + [['','',340,6,-1,2,0,0.95,'Rangers',[]]];

_c = _c + ['vehicle="mas_ita_unit_des_sl";	'];
_i = _i + [['','',325,6,-1,2,0,0.94,'Rangers',[]]];

_c = _c + ['vehicle="mas_ita_unit_des_dem";'];
_i = _i + [['Engineer','',310,6,-1,2,0,0.94,'Rangers',[]]];

_c = _c + ['mas_ita_unit_des_snp'];
_i = _i + [['','',345,6,-1,2,0,0.96,'Rangers',[]]];

_c = _c + ['mas_ita_unit_des_snphv'];
_i = _i + [['','',385,6,-1,2,0,0.97,'Rangers',[]]];

_c = _c + ['mas_ita_unit_des_tl'];
_i = _i + [['','',455,6,-1,2,0,0.98,'Rangers',[]]];

_c = _c + ['mas_ita_unit_des_gl'];
_i = _i + [['','',555,6,-1,2,0,1,'Rangers',[]]];


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
			diag_log Format ["[WFBE (INIT)][frameno:%2 | ticktime:%3] Core_KSK: Duplicated Element found '%1'",(_c select _z),diag_frameno,diag_tickTime];
		};
	} else {
		diag_log Format ["[WFBE (ERROR)][frameno:%2 | ticktime:%3] Core_KSK: Element '%1' is not a valid class.",(_c select _z),diag_frameno,diag_tickTime];
	};
};

diag_log Format ["[WFBE (INIT)][frameno:%2 | ticktime:%3] Core_KSK: Initialization (%1 Elements) - [Done]",count _c,diag_frameno,diag_tickTime];