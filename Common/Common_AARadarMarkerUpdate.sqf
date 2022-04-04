if (isDedicated) exitWith {};
Private ["_height","_vehcile","_markerName","_side","_zOffset"];

waitUntil {!isNil 'commonInitComplete'};
//sleep 2;

_vehcile = _this select 0;
_side = _this select 1;

if (_side == side player || isNull _vehcile || !(alive _vehcile)) exitWith {};

unitMarker = unitMarker + 1;
_markerName = Format ["unitMarker%1",unitMarker];

createMarkerLocal [_markerName,[0,0,0]];
_markerName setMarkerTypeLocal "o_plane";
_markerName setMarkerColorLocal "ColorRed";
_markerName setMarkerSizeLocal [0.75,0.75];
_markerName setMarkerAlphaLocal 0.0;
_height = 'WFBE_ANTIAIRRADARDETECTION' Call GetNamespace;

while {alive _vehcile && !(isNull _vehcile)} do {
	if (antiAirRadarInRange) then {
		_zOffset = (getPos _vehcile) select 2;
		if (_zOffset > _height) then {
			_markerName setMarkerAlphaLocal 1;
			_markerName setMarkerPosLocal (getPos _vehcile);
		} else {
			_markerName setMarkerAlphaLocal 0;
		};
	};
	
	uiSleep 0.5;
};

deleteMarkerLocal _markerName;