Private ['_camp','_camps','_flagPole','_index','_marker','_supplyValue','_town'];

_camp = _this select 0;
_town = _this select 1;

waitUntil {!isNil 'townModeSet'};
if (isNull _town && !isNull _camp) exitWith {
	if (isServer) then {
		if (isNil 'EastMHQ' || isNil 'WestMHQ') exitWith {};
		(getPos _camp) Spawn {
			Private ["_defenses"];
			waitUntil {!isNil 'commonInitComplete'};
			_defenses = _this nearEntities[('WFBE_RESISTANCEDEFENSENAMES' Call GetNamespace),250];
			{deleteVehicle _x} forEach _defenses;
		};
		deleteVehicle _camp;
	};
};
if ((str _town) in TownTemplate) exitWith {
	if (isServer) then {
		if (isNil 'EastMHQ' || isNil 'WestMHQ') exitWith {};
		diag_log Format ["[WFBE (INIT)][frameno:%3 | ticktime:%4] Init_Camp: Removing camp %1 (%2) since the town is removed in the towns templates.",_camp,str _town,diag_frameno,diag_tickTime];
		(getPos _camp) Spawn {
			Private ["_defenses"];
			waitUntil {!isNil 'commonInitComplete'};
			_defenses = _this nearEntities[('WFBE_RESISTANCEDEFENSENAMES' Call GetNamespace),250];
			{deleteVehicle _x} forEach _defenses;
		};
		deleteVehicle _camp;
	};
};


waitUntil {!isNil 'initJIP'};
if !(paramKeepCamps) exitWith{
	diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Init_Camp: Removing camp %3 due to a parameter (Town: %4) - [Done]",diag_frameno,diag_tickTime,_camp,_town];
	(getPos _camp) Spawn {
		Private ["_defenses"];
		waitUntil {!isNil 'commonInitComplete'};
		_defenses = _this nearEntities[('WFBE_RESISTANCEDEFENSENAMES' Call GetNamespace),250];
		{deleteVehicle _x} forEach _defenses;
	};
	deleteVehicle _camp;
};

if (isNull _camp) exitWith {diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Init_Camp: Camp removed (Town is null) - [Done]",diag_frameno,diag_tickTime];};

_camps = _town getVariable "camps";
if (isNil "_camps") then {_town setVariable ["camps",[]]};
_camps = _town getVariable "camps";
_camps = _camps + [_camp];
_town setVariable ["camps",_camps];
_camp setVariable ['town',_town];

diag_log Format["[WFBE (INIT)][frameno:%3 | ticktime:%4] Init_Camp: Camp '%1' of town '%2' initialization - [Done]",str _camp,str _town,diag_frameno,diag_tickTime];

waitUntil {!isNil 'commonInitComplete'};

if (local player) then {
	waitUntil {!isNil 'clientInitComplete'};

	_index = _camps find _camp;
	_marker = Format["%1Camp%2",str _town,_index];
	createMarkerLocal [_marker,getPos _camp];
	_marker setMarkerTypeLocal "Camp";
	_marker setMarkerSizeLocal [0.75,0.75];
	_marker SetMarkerTextLocal "";
	_marker setMarkerColorLocal ("Resistance" Call GetMarkerColoration);
	
	// Un circhiolo intorno allo Strongpoint
	_markerCircle = Format["%1CampG%2",str _town,_index];
	createMarkerLocal [_markerCircle,getPos _camp];
    _markerCircle setMarkerShapeLocal "ELLIPSE";
    _markerCircle setMarkerAlphaLocal 0.50;
    _markerCircle setMarkerBrushLocal "SOLID";
    _markerCircle setMarkerSizeLocal [25,25];
	_markerCircle setMarkerColorLocal ("Resistance" Call GetMarkerColoration);
};

if (isServer) then {
	if (isNil 'EastMHQ' || isNil 'WestMHQ') exitWith {};
	
	//sleep 10; // Markus - Removed a really fucking stupid sleep

	_supplyValue = 0;
	if (isNil {_camp getVariable "sideID"}) then {_camp setVariable ["sideID",RESISTANCEID,true]};
	/* OA Camps are made of kryptonite */
	if (WF_A2_Arrowhead || WF_A2_CombinedOps) then {_camp addEventHandler ['handleDamage',{false}]};
	if (isNil {_camp getVariable "supplyValue"}) then {
		waitUntil {_supplyValue = _town getVariable "supplyValue"; !isNil "_supplyValue"};
		_camp setVariable ["supplyValue",60,true];
		_flagPole = WFFLAG createVehicle getPos _camp;
		waitUntil {!isNil 'townInit'};
		waitUntil {!isNil 'serverInitComplete'};
		[_camp,_town,_flagPole] ExecFSM 'Server\FSM\updatecamp.fsm';
	};
};