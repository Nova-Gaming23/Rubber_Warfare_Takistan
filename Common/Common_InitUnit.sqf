Private ["_ainumber","_amount","_color","_finalNumber","_isMan","_markerName","_numbers","_params","_side","_size","_text","_txt","_type","_unit","_val","_val2"];
_unit = _this select 0;
_side = _this select 1;

if (isNull _unit) exitWith {};

waitUntil {!isNil 'commonInitComplete'};

if !(local player) exitWith {};

//sleep 2;

_isMan = if (_unit isKindOf "Man") then {true} else {false};

if !(_isMan) then {
	if (('WFBE_INCOMINGMISSILEMAXRANGE' Call GetNamespace) != 0) then {_unit addEventHandler ['IncomingMissile', {_this Spawn HandleIncomingMissile}]};
	
	if !(WF_A2_Vanilla) then {
		if ('WFBE_THERMALIMAGING' Call GetNamespace < 2) then {Call Compile '_unit disableTIEquipment true;'};
	};
};
//if !(isServer) then { // If it's not on the server, then care about marker updates

if (sideJoined != _side) exitWith {};
_uavmrk = "o_uav";
_type = "Vehicle";
if (sideJoined == west) then {
		_color = "ColorBlue";
		_uavmrk = "b_uav";
		} else { 
		_color = "ColorRed"
		};
//_color = "ColorGreen";
_size = [5.0,5.0];
_txt = "";
_namemrk=getText(configFile >> "CfgVehicles" >> typeOf _unit >> "displayName");

if (_unit isKindOf "Air") then {_size=[4,4];_txt = " " + _namemrk;};
if (_unit isKindOf "Car") then {_size=[4,4];_txt = " " + _namemrk;};
if ((typeOf _unit) in (Format['WFBE_%1SUPPLYTRUCKS',str _side] Call GetNamespace)) then {_type = "SupplyVehicle";_size = [1,1];_txt = " Supply";};
if (_unit isKindOf "Tank") then {_size=[5,5];_txt = " " + _namemrk;};
if ((typeOf _unit) == 'MQ9PredatorB_US_EP1') then {_type = _uavmrk;_size = [0.5,0.5]};
if ((typeOf _unit) in (Format['WFBE_%1REPAIRTRUCKS',str _side] Call GetNamespace)) then {_type = "RepairVehicle";_txt =" Engineer";_size = [5,5]};
if ((typeOf _unit) in (Format['WFBE_%1SERVICETRUCKS',str _side] Call GetNamespace)) then {_type = "n_service";_size=[0.53,0.53];_txt = " Service";_color = "ColorOrange";};
if ((typeOf _unit) in (Format['WFBE_%1AMBULANCES',str _side] Call GetNamespace)) then {_type = "n_med";_size=[0.53,0.53];_color = "ColorYellow";};
if ((typeOf _unit) in (Format['WFBE_%1SALVAGETRUCK',str _side] Call GetNamespace)) then {_type = "n_maint";_size=[0.53,0.53];_txt = " Salvage";_color = "ColorPink";};

unitMarker = unitMarker + 1;

_markerName = Format ["unitMarker%1",unitMarker];
_params = [];
if (_isMan) then {

if (sideJoined == west) then {
		_color = "ColorBlue"
		} else { 
		_color = "ColorRed"
		};
	//_color = "ColorGreen";
	_type = "mil_dot";
	_size = [0.45,0.45];
	if (group _unit == group player) then {
		
		/*if (sideJoined == west) then {
		_color = "ColorYellow"
		} else { 
		_color = "ColorYellow"
		};*/
		_color = "ColorYellow";
		_txt = (_unit) Call GetAIDigit;
	};
	_params = [_type,_color,_size,_txt,_markerName,_unit,1,true,"DestroyedVehicle","ColorBlack",false,_side,[1,1]];
} else {
	if (local _unit && isMultiplayer) then {_color = "ColorGreen"};
	_params = [_type,_color,_size,_txt,_markerName,_unit,1,true,"DestroyedVehicle","ColorBlack",false,_side,[2,2]];
};

_params Spawn MarkerUpdate;
//}; // Markus