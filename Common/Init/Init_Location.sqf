Private ['_camps','_location','_locationName','_marker','_maxSupplyValue','_probability','_range','_resistanceTeamTypes','_startingSupplyValue'];

_location = _this select 0;
_locationName = _this select 1;
_resistanceTeamTypes = ["Group","Group"];
_probability = 70;
_startingSupplyValue = 10;
_maxSupplyValue = 50;
_range = 400;

if (count _this > 3) then {_startingSupplyValue = _this Select 2};
if (count _this > 4) then {_maxSupplyValue = _this Select 3};
if (count _this > 5) then {_range = _this Select 4};
if (count _this > 6) then {_resistanceTeamTypes = _this Select 5};
if (count _this > 7) then {_probability = _this Select 6};

if (isNull _location) exitWith {};

_camps = _location getVariable "camps";
if (isNil "_camps") then {_location setVariable ["camps",[]]};

_location setVariable ["name",_locationName];
_location setVariable ["range",_range];
_location setVariable ["startingSupplyValue",_startingSupplyValue];
_location setVariable ["maxSupplyValue",_maxSupplyValue];

diag_log Format["[WFBE (INIT)][frameno:%3 | ticktime:%4] Init_Location: Town '%1' (%2) initialization - [Done]",str _location,_locationName,diag_frameno,diag_tickTime];

waitUntil {!isNil 'commonInitComplete'};

if (isServer) then {
	if (isNil 'EastMHQ' || isNil 'WestMHQ') exitWith {};
	//--- Don't pause.
	[_location,_startingSupplyValue,_range,_resistanceTeamTypes,_probability,_maxSupplyValue] Spawn {
		Private ["_defenses","_isSet","_location","_marker","_maxSupplyValue","_probability","_range","_resistanceTeamTypes","_size","_startingSupplyValue"];
		_location = _this select 0;
		_startingSupplyValue = _this select 1;
		_range = _this select 2;
		_resistanceTeamTypes = _this select 3;
		_probability = _this select 4;
		_maxSupplyValue = _this select 5;
		
		/* OA Depots are made of kryptonite */
		if (WF_A2_Arrowhead || WF_A2_CombinedOps) then {_location addEventHandler ['handleDamage',{false}]};
		_isSet = _location getVariable 'sideID';
		if (isNil '_isSet') then {_location setVariable ["sideID",RESISTANCEID,true]};
		_location setVariable ["supplyValue",_startingSupplyValue,true];
		_location setVariable ["resistanceTypes",_resistanceTeamTypes];
		_location setVariable ["frozen", false, true];
		//sleep (random 1);
		waitUntil {!isNil 'townInit'};
		waitUntil {!isNil 'serverInitComplete' && !isNil 'initJIP'};
		//--- Town SV & Control script.
		[_location,_range] ExecFSM "Server\FSM\updatetown.fsm";
		if (PARM_Towns_Resistance == 0) then {
			_defenses = _location nearEntities['WFBE_RESISTANCEDEFENSENAMES' Call GetNamespace,_range];
			{deleteVehicle _x} forEach _defenses;
		};
		//--- Main AI Script
		if (PARM_Towns_Occupation == 1 || PARM_Towns_Resistance == 1) then {[_location, _resistanceTeamTypes, _probability] ExecFSM "Server\FSM\updatetownai.fsm"};

		//--- UPSMON Area Definition.
		if (paramUPSMON) then {
			_marker = Format['UPSMON_TOWN_%1',str _location];
			createMarkerLocal [_marker, getPos _location];
			_marker setMarkerColorLocal "ColorBlack";
			_marker setMarkerShapeLocal "RECTANGLE";
			_marker setMarkerBrushLocal "BORDER";
			_size = 'WFBE_UPSMONTOWNAREASIZE' Call GetNamespace;
			_marker setMarkerSizeLocal [_size select 0,_size select 1];
			_marker setMarkerAlphaLocal 0;
		};
	};
	
	if (('WFBE_TOWNCONQUESTMODE' Call GetNamespace) > 0) then {
		_location setVariable ["wfbe_cancap_w", false];
		_location setVariable ["wfbe_cancap_e", false];
	};
};

towns = towns + [_location];

if (local player) then {
	waitUntil {!isNil 'clientInitComplete'};
	_marker = Format["%1Depot",str _location];
	createMarkerLocal [_marker,getPos _location];
	_marker setMarkerTypeLocal "Depot";
	_marker setMarkerColorLocal ("Resistance" Call GetMarkerColoration);
	
	_markerCC = Format["%1DepotCC",str _location];
	createMarkerLocal [_markerCC,getPos _location];
	_markerCC setMarkerShapeLocal "ELLIPSE";
    _markerCC setMarkerAlphaLocal 0.50;
    _markerCC setMarkerBrushLocal "SOLID";
    _markerCC setMarkerSizeLocal [70,70];
	_markerCC setMarkerColorLocal ("Resistance" Call GetMarkerColoration);
	
	_markerHQP = Format["%1DepotHQP",str _location];
	createMarkerLocal [_markerHQP,getPos _location];
	_markerHQP setMarkerShapeLocal "ELLIPSE";
    _markerHQP setMarkerAlphaLocal 0.75;
    _markerHQP setMarkerBrushLocal "BORDER";
	_msize = WFBE_TOWNBUILDPROTECTIONRANGE;
    _markerHQP setMarkerSizeLocal [_msize,_msize];
	_markerHQP setMarkerColorLocal ("Resistance" Call GetMarkerColoration);
	_markerHQP setMarkerColorLocal "ColorBrown";
	
	
	
	
};