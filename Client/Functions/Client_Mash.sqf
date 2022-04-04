_tent = _this select 0;
_side = _this select 1;

waitUntil {!isNil 'commonInitComplete'};
sleep 1;

if (isNull _tent) exitWith {};
if !(local player) exitWith {};
if (_side != sideJoined) exitWith {};


sleep 0.5;


if (_side == sideJoined) then {

//start marker
	if (isNil "markerIDR") then {markerIDR = 1};

	_markerVar = name player;
	_markerName = Format ["RMash%1n%2",_markerVar,markerIDR];
	createMarkerLocal [_markerName, getpos _tent];
		
	_uptime = Call GetTime; 	 	

	_markerName setMarkerText " Mash";
	_markerName setMarkerTypeLocal "FOB";
	_markerName setMarkerColorLocal "ColorYellow";
		
	_markerName setMarkerSizeLocal [0.9,0.9];
	markerIDR = markerIDR + 1;
//end marker add

waitUntil {uiSleep 1; !alive _tent };

deleteMarkerLocal _markerName;
};