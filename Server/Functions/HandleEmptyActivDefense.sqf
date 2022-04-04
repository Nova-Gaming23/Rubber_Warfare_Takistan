Private ["_defense","_side","_team","_manned","_closest","_isAIQuery","_manRange"];
_defense = _this select 0;
_side = _this select 1;
_team = _this select 2;
_manned = _this select 3;
_isAIQuery = _this select 4;
_manRange = _this select 5;


while {alive _defense && _defense EmptyPositions "gunner" > 0 && ((PARM_Base_AutoDefenses > 0) || _isAIQuery)} do {

	Private ["_alives","_check","_closest","_team"];
	_team = if (_side == WEST) then {WF_DefenseWestGrp} else {WF_DefenseEastGrp};
	emptyQueu = emptyQueu + [_defense];
	_defense Spawn HandleEmptyVehicle;
	if (_manned) then {
		_alives = (units _team) Call GetLiveUnits;
		if (count _alives < PARM_Base_AutoDefenses || _isAIQuery) then {
			_buildings = (str _side) Call GetSideStructures;
			_closest = ['BARRACKSTYPE',_buildings,_manRange,_side,_defense] Call BuildingInRange;

			//--- Manning Defenses.
			if !(isNull _closest) then {			
				[_defense,_side,_team,_closest] Spawn HandleDefense;
			};			
		};
	};


	sleep 60;
};
