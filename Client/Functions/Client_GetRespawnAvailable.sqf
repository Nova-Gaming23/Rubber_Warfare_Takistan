Private ["_availableSpawn","_buildings","_checks","_deathLoc","_farps","_hq","_mobileRespawns","_range","_side","_sideText","_upgrades"];

_side = _this select 0;
_deathLoc = _this select 1;
_sideText = str _side;


//--- Base.
_hq = (_sideText) Call GetSideHQ;
_availableSpawn = [_hq];
_buildings = (_sideText) Call GetSideStructures;

_checks = [_side,Format ["WFBE_%1BARRACKSTYPE",_sideText] Call GetNamespace,_buildings] Call GetFactories;
if (count _checks > 0) then {_availableSpawn = _availableSpawn + _checks};
_checks = [_side,Format ["WFBE_%1LIGHTTYPE",_sideText] Call GetNamespace,_buildings] Call GetFactories;
if (count _checks > 0) then {_availableSpawn = _availableSpawn + _checks};
//_checks = [_side,Format ["WFBE_%1COMMANDCENTERTYPE",_sideText] Call GetNamespace,_buildings] Call GetFactories;
if (count _checks > 0) then {_availableSpawn = _availableSpawn + _checks};
_checks = [_side,Format ["WFBE_%1HEAVYTYPE",_sideText] Call GetNamespace,_buildings] Call GetFactories;
if (count _checks > 0) then {_availableSpawn = _availableSpawn + _checks};
_checks = [_side,Format ["WFBE_%1AIRCRAFTTYPE",_sideText] Call GetNamespace,_buildings] Call GetFactories;
if (count _checks > 0) then {_availableSpawn = _availableSpawn + _checks};
//_checks = [_side,Format ["WFBE_%1SERVICEPOINTTYPE",_sideText] Call GetNamespace,_buildings] Call GetFactories;
if (count _checks > 0) then {_availableSpawn = _availableSpawn + _checks};
//_checks = [_side,Format ["WFBE_%1ANTIRADARTYPE",_sideText] Call GetNamespace,_buildings] Call GetFactories;
if (count _checks > 0) then {_availableSpawn = _availableSpawn + _checks};
_checks = [_side,Format ["WFBE_%1FIELDHOSPITALTYPE",_sideText] Call GetNamespace,_buildings] Call GetFactories;
if (count _checks > 0) then {_availableSpawn = _availableSpawn + _checks};

//--- HQ is dead, but we can spawn at other buildings.
if (!alive _hq && count _availableSpawn > 1) then {_availableSpawn = _availableSpawn - [_hq]};

//--- Mobile respawn.
if (PARM_Respawn_Mobile >= 2) then {
	_mobileRespawns = Format ["WFBE_%1AMBULANCES",_sideText] Call GetNamespace;
	_upgrades = (_sideText) Call GetSideUpgrades;
	_range = (Format["WFBE_RESPAWNMOBILERANGE%1",(_upgrades select 7)] Call GetNamespace);
	_checks = _deathLoc nearEntities[_mobileRespawns,_range];
	if (count _checks > 0) then {
		{
			if (_x emptyPositions "cargo" > 0) then {
				_availableSpawn = _availableSpawn + [_x];
			};
		} forEach _checks;
	};
};

//--- MASH.
if (PARM_Respawn_Mobile == 1 || PARM_Respawn_Mobile == 3) then {
	_farps = Format ["WFBE_%1FARP",_sideText] Call GetNamespace;
	_upgrades = (_sideText) Call GetSideUpgrades;
	_range = (Format["WFBE_RESPAWNMOBILERANGE%1",(_upgrades select 7)] Call GetNamespace);
	_checks = nearestObjects [_deathLoc, [_farps], _range];
	if (count _checks > 0) then {
		{if (alive _x) then {_availableSpawn = _availableSpawn + [_x]}} forEach _checks;
	};
};

//--- Camps.
if (('WFBE_RESPAWNCAMPSMODE' Call GetNamespace) > 0) then {
	_availableSpawn = _availableSpawn + ([_deathLoc, _side] Call GetRespawnCamps);
};

//--- Town depots In case of No Factory
_availableSpawn = ([_deathLoc, _availableSpawn] Call SortByDistance); // Markus - Sort the spawn points by distance.

_availableSpawn