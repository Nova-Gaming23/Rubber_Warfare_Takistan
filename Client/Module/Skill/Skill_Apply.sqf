/*
	Script: Skill Application System by Benny.
	Description: Skill Application.
*/

Private ["_unit"];

_unit = _this;

switch (WFBE_SK_V_Type) do {
	
	case 'Officer': {
		/* Repair Ability */
		_unit addAction [
			("<t color='#ff9933'>" + (localize "STR_WF_AccurateRepair") + "</t>"),
			(WFBE_SK_V_Root + 'Engineer' + '.sqf'), 
			[], 
			80, 
			false, 
			true, 
			"", 
			"time - WFBE_SK_V_LastUse_Repair > WFBE_SK_V_Reload_Repair  && (isPlayer _target) && (isPlayer _this)"
		];
	};
	
	case 'Engineer': {
		/* Repair Ability */
		_unit addAction [
			("<t color='#f8d664'>" + (localize "STR_WF_AccurateRepair") + "</t>"),
			(WFBE_SK_V_Root + 'Engineer' + '.sqf'), 
			[], 
			80, 
			false, 
			true, 
			"", 
			"time - WFBE_SK_V_LastUse_Repair > WFBE_SK_V_Reload_Repair && (isPlayer _target) && (isPlayer _this)"
		];
	};
	case 'Medic': {
		/* MASH Ability require that the MASH parameter is enabled */
		if (PARM_Respawn_Mobile == 1 || PARM_Respawn_Mobile == 3) then {
			/* MASH Ability */
			_unit addAction [
				("<t color='#dc143c'>" + (localize "STR_WF_DeployRespawn") + "</t>"),
				(WFBE_SK_V_Root + 'Medic' + '.sqf'), 
				[], 
				80, 
				false, 
				true, 
				"", 
				"time - WFBE_SK_V_LastUse_MASH > WFBE_SK_V_Reload_MASH  && (isPlayer _target) && (isPlayer _this)"
			];
		};
	};
	case 'SpecOps': {
		/* Lockpicking Ability */
		_unit addAction [
			("<t color='#f8d664'>" + localize 'STR_WF_ACTION_Lockpick'+ "</t>"),
			(WFBE_SK_V_Root + 'SpecOps' + '.sqf'), 
			[], 
			80, 
			false, 
			true, 
			"", 
			"time - WFBE_SK_V_LastUse_Lockpick > WFBE_SK_V_Reload_Lockpick  && (isPlayer _target) && (isPlayer _this)"
		];
	};
	case 'Spotter': {
		/* Spotting Ability */
		_unit addAction [
			("<t color='#f8d664'>" + localize 'STR_WF_ACTION_Spot'+ "</t>"),
			(WFBE_SK_V_Root + 'Sniper' + '.sqf'), 
			[], 
			80, 
			false, 
			true, 
			"", 
			"time - WFBE_SK_V_LastUse_Spot > WFBE_SK_V_Reload_Spot  && (isPlayer _target) && (isPlayer _this)"
		];
	};
};