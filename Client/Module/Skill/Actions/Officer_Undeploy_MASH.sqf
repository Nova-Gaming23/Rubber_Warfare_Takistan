/*
	Script: Officer Skill MASH Undeploy
	Description: Undeploy the MASH
*/

Private ["_MASH"];

_MASH = _this select 0;

_skip = false;
for '_z' from 0 to 1 do {
	sleep 0.5;
	player playMove "AinvPknlMstpSlayWrflDnon_medic";
	sleep 0.5;
	waitUntil {animationState player == "ainvpknlmstpslaywrfldnon_amovpknlmstpsraswrfldnon" || !alive player || vehicle player != player};
	if (!alive player || vehicle player != player) exitWith {_skip = true};
};

if (!_skip) then {
		/*markerIDR = markerIDR -1;
		_markerDel = Format ["RespawnM%1",markerIDR];
		deleteMarkerLocal _markerDel;*/
	deleteVehicle _MASH;
	WFBE_SK_V_LastUse_MASH = -2000;
};