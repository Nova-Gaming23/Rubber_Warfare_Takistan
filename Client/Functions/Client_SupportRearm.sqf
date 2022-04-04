Private ['_airCoef','_artCoef','_cts','_distanceMin','_heaCoef','_i','_ligCoef','_name','_nearIsDP','_nearIsRT','_nearIsSP','_repairRange','_rearmTime','_spType','_supportRange','_supports','_typeRepair','_veh'];
_veh = _this select 0;
_supports = _this select 1;
_typeRepair = _this select 2;
_spType = _this select 3;
_supportRange = 'WFBE_SUPPORTRANGE' Call GetNamespace;
_repairRange = 'WFBE_REPAIRTRUCKRANGE' Call GetNamespace;

//--- Retrieve Informations.
_name = [typeOf _veh, 'displayName'] Call GetConfigInfo;
_rearmTime = 'WFBE_SUPPORTREARMTIME' Call GetNamespace;

//--- SP?
_nearIsSP = false;
_nearIsDP = false;
_nearIsRT = false;
{
	if ((typeOf _x) == _spType) then {_nearIsSP = true};
	if ((typeOf _x) in WFDEPOT) then {_nearIsDP = true};
	if ((typeOf _x) in _typeRepair) then {_nearIsRT = true};
} forEach _supports;

//--- Coefficient Vary depending on the support type.
_airCoef = 1.7;
_artCoef = 1.5;
_heaCoef = 1.4;
_ligCoef = 1.2;
/*
if (_nearIsRT) then {
	_airCoef = 1.8;
	_artCoef = 1.6;
	_heaCoef = 1.4;
	_ligCoef = 1.2;
};
if (_nearIsDP) then {
	_airCoef = 2.5;
	_artCoef = 2.4;
	_heaCoef = 2.2;
	_ligCoef = 2;
};
if (_nearIsSP) then {
	_airCoef = 2;
	_artCoef = 2;
	_heaCoef = 1.5;
	_ligCoef = 1.3;
};*/

//--- Class Malus.
if (_veh isKindOf 'Air') then {_rearmTime = round(_rearmTime * _airCoef)};
if (_veh isKindOf 'StaticWeapon') then {_rearmTime = 400};

if (_veh isKindOf 'Tank') then {_rearmTime = round(_rearmTime * _heaCoef)};
if (_veh isKindOf 'MLRS') then {_rearmTime = 450};
if (_veh isKindOf 'MLRS_DES_EP1') then {_rearmTime = 450};
if (_veh isKindOf 'GRAD_RU') then {_rearmTime = 445};
if (_veh isKindOf 'GRAD_TK_EP1') then {_rearmTime = 445};
if (_veh isKindOf 'Car' || _veh isKindOf 'Motorcycle') then {_rearmTime = round(_rearmTime * _ligCoef)};
if (_veh isKindOf 'M1129_MC_EP1') then {_rearmTime = 120};
//--- Inform the player.
hint parseText(Format[localize "STR_WF_INFO_Rearming",_name,_rearmTime]);

//--- Make sure that we still have something as a support.
_cts = 0;
_i = 0;
while {true} do {
	sleep 1;
	
	//--- Check the distance & alive.
	_cts = 0;
	{
		_distanceMin = if ((typeOf _x) in _typeRepair) then {_repairRange} else {_supportRange};
		if ((alive _x) && ((_veh distance _x) < _distanceMin)) then {_cts = _cts + 1};
	} forEach _supports;
	
	_i = _i + 1;
	
	if (_cts == 0 || !(alive _veh) || (getPos _veh) select 2 > 2) exitWith {hint parseText(Format[localize "STR_WF_INFO_Rearm_Failed",_name]);_cts = 0;};
	if (_i >= _rearmTime) exitWith {hint parseText(Format[localize "STR_WF_INFO_Rearm_Success",_name])};
};

//--- Rearm?
if (_cts != 0) then {
	[_veh,sideJoined] Spawn RearmVehicle;
};