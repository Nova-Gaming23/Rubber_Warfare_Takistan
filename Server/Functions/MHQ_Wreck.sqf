_hq = _this select 0;
_side = _this select 1;

if (isNull _hq) exitWith {};

waitUntil {!isNil 'commonInitComplete'};

if !(local player) exitWith {};
if (side player != _side) exitWith {};


sleep 2;



_markerName = "DeadHQ";
createMarkerLocal [_markerName, getPos _hq];
_markerName setMarkerTypeLocal "Headquarters";
_markerName setMarkerColorLocal "ColorBrown";
_markerName setMarkerSizeLocal [1,1];


while {!isNull _hq} do { sleep 1; };

deleteMarkerLocal _markerName