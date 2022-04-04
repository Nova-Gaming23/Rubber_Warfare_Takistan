MenuAction = -1;
_exited = false;
_timer = 3;
WFBE_ForceUpdate = true;
if !(paramMandoMissiles) then {
((_this select 0) displayCtrl 11022) ctrlEnable false;
((_this select 0) displayCtrl 11023) ctrlEnable false;
};	

ctrlShow [11027, PlayerIsAdmin];	//--- Event-ScoreSystem BTN
ctrlShow [11029, PlayerIsAdmin];	//--- Event-ScoreSystem BTN
ctrlSetText [11027, format["S-Log(%1)",WF_Logic GetVariable["NG23_ScoreLogger_Enabled","Nil"]]];
	
while {alive player && dialog} do {
	//--- Build Units.
	_enable = false;
	if (barracksInRange || lightInRange || heavyInRange || aircraftInRange || hangarInRange || depotInRange) then {_enable = true};
	ctrlEnable [11001,_enable];
	ctrlEnable [11002,gearInRange];
	
	_timer = _timer + 0.1;
	
	sleep 0.1;
	
	if (Side player != sideJoined) exitWith {
	closeDialog 0;
"Watch your fire!" hintC [ 
"You are a Teamkiller!",
"Now you can't use all Warfare Functions.", 
"This state remains until your death.",
"Does this happen more often, you can be kicked or banned!" ];
	};
	if (!dialog || _exited) exitWith {};
	
	//--- Buy Units.
	if (MenuAction == 1) then {
		MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_BuyUnits";
		_exited = true;	
	};
	
	//--- Buy Gear.
	if (MenuAction == 2) then {
		MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_BuyGear";
		_exited = true;
	};	
if (!dialog || _exited) exitWith {};	
	//--- Team Menu.
	if (MenuAction == 3) then {
		MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_Team";
		_exited = true;
	};
	
	//--- Voting Menu.
	if (MenuAction == 4) then {
		MenuAction = -1;
		_skip = false;
		_voteTime = WF_Logic getVariable Format["%1CommanderVoteTime",sideJoinedText];
		if (_voteTime <= 0) then {_skip = true};
		if (!_skip) then {
			CloseDialog 0;
			CreateDialog "RscMenu_Voting";
			if !(_skip) exitWith {};
		};
		WFBE_RequestCommanderVote = ['SRVFNCREQUESTCOMMANDERVOTE',sideJoined];
		publicVariable 'WFBE_RequestCommanderVote';
		if (isHostedServer) then {['SRVFNCREQUESTCOMMANDERVOTE',sideJoined] Spawn HandleSPVF};
		voted = true;
		waitUntil {((WF_Logic getVariable Format ["%1CommanderVoteTime",sideJoinedText])>0) || !dialog || !alive player};
		if (!alive player || !dialog) exitWith {_exited = true};
		closeDialog 0;
		createDialog "RscMenu_Voting";
		_exited = true;
	};
	
	//--- Unflip Vehicle.
	if (MenuAction == 10) then { //added-MrNiceGuy
		MenuAction = -1;
			
		_vehicle = vehicle player;
		if (player != _vehicle) then {
			if (getPos _vehicle select 2 > 3 && !surfaceIsWater (getPos _x)) then {
				[_vehicle, getPos _vehicle, 15] Call PlaceSafe;
			} else {
				_vehicle setPos [getPos _vehicle select 0, getPos _vehicle select 1, 0.5];
				_vehicle setVelocity [0,0,-0.5];
			};
		};
		if (player == _vehicle) then {
			_objects = player nearEntities[["Car","Motorcycle","Tank"],10];
			if (count _objects > 0) then {		
				{
					if (getPos _x select 2 > 3 && !surfaceIsWater (getPos _x)) then {
						[_x, getPos _x, 15] Call PlaceSafe;
					} else {
						_x setPos [getPos _x select 0, getPos _x select 1, 0.5];
						_x setVelocity [0,0,-0.5];
					};
				} forEach _objects;
			};
		};
	};
	
	//--- Headbug Fix.
	if (MenuAction == 11) then { //added-MrNiceGuy
		MenuAction = -1;
		
		closeDialog 0;
		titleCut["","BLACK FADED",0];
		_pos = position player;
		_vehi = "Lada1" createVehicle [0,0,0];
		player moveInCargo _vehi;
		deleteVehicle _vehi;
		player setPos _pos;
		titleCut["","BLACK IN",5];
	};
	
	//--- Mando Config Keys.
	if (MenuAction == 13) exitWith { //added-Rubber
		MenuAction = -1;
		closeDialog 0;
		[] ExecVM mando_missile_path+"units\mando_keyconfig.sqf";
	};
	
	//--- Display Parameters.
	if (MenuAction == 12) exitWith { //added-MrNiceGuy
		MenuAction = -1;
		closeDialog 0;
		createDialog "RscDisplay_Parameters";
	};
	//--- NG23-Server ScoreLogger 
	if (MenuAction == 34 && PlayerIsAdmin) then  { //-----added-NG23
		MenuAction = -1;
		_enable_SoreLog = WF_Logic GetVariable["NG23_ScoreLogger_Enabled","Nil"];
		if (typeName _enable_SoreLog == "BOOL") then {
			WF_Logic setVariable ["NG23_ScoreLogger_Enabled",!_enable_SoreLog,true];
		};
		((uiNamespace getVariable "GUI") displayCtrl 11027) ctrlSetBackgroundColor [1, 0, 0, 1];
		ctrlSetText [11027, format["S-Log(%1)",WF_Logic GetVariable["NG23_ScoreLogger_Enabled","Nil"]]];
	};
	//--- NG23-Server ScoreLogger force execute
	if (MenuAction == 35 && PlayerIsAdmin) then {
		MenuAction = -1;
		hint "Print Mission Score to Server!";
		WFBE_RequestSpecial = ['SRVFNCREQUESTSPECIAL',["Sore_ToFile_Manual",sideJoined]];
		publicVariable 'WFBE_RequestSpecial';
		if (isHostedServer) then {['SRVFNCREQUESTSPECIAL',["Sore_ToFile_Manual",sideJoined]] Spawn HandleSPVF};	
	};
	
	
	
	//--- Help Menu
	if (MenuAction == 32) exitWith { //------added-NG23
		MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_Help";
	};
	if (MenuAction == 14) then { //added-Rubber
		MenuAction = -1;
		//if (RUBGPS == 1) then { RUBGPS = 0 } else { RUBGPS = 1 };
		if (sidejoined == west) then {
		null = []execvm mando_missile_path+"mando_display_score.sqf";
		} else {
		null = []execvm mando_missile_path+"mando_display_scoreR.sqf";
		};
	};
	if (MenuAction == 15) then { //added-Rubber
		MenuAction = -1;
		if (RUBHUD) then { RUBHUD = false } else { RUBHUD = true };
	};
	if (MenuAction == 16) then { //added-Rubber
		MenuAction = -1;
		if (RUBOSD == 1) then { 
			RUBGPS = 0;
			RUBHUD = false;
			RUBOSD = 0;
		} else { 
			RUBGPS = 1;
			RUBHUD = true;
			RUBOSD = 1;
		};
	};
	/*if (MenuAction == 17) then { //added-Rubber
		MenuAction = -1;
	if ( zoomgps < 1 ) then { zoomgps = (zoomgps + 0.025); hint "zoom OUT";} else { zoomgps = 1; hint "GPS Zoom: \n MAX Value";_handled = true;};
	};
	if (MenuAction == 18) then { //added-Rubber
		MenuAction = -1;
	if ( zoomgps >= 0.025) then { zoomgps = (zoomgps - 0.025); hint "zoom IN";} else { zoomgps = 0.025; hint "GPS Zoom: \n MIN Value";_handled = true;};
	};
	if (MenuAction == 19) then { //added-Rubber
		MenuAction = -1;
	if ( zoomauto == 1 ) then { zoomauto = 2; hint "GPS zoom \nMANUAL"; ctrlSetText [11021,"Client\images\zauto.paa"];} else { zoomauto = 1; hint "GPS Zoom: \nAUTO";ctrlSetText [11021,"Client\images\zman.paa"];};
	};*/
	
	//--- Uptime.
	_uptime = Call GetTime; //added-MrNiceGuy
	ctrlSetText [11015,Format[localize 'STR_WF_MAIN_Uptime',_uptime select 0,_uptime select 1,_uptime select 2, _uptime select 3]];

	_MHQ = (sideJoined) Call GetSideHQ; //added-NG23
	_enable = false; //added-MrNiceGuy

	
	if (!isNull(commanderTeam)) then {if (commanderTeam == group player) then {_enable = true}};
	

	
	ctrlEnable [11005,_enable]; //--- Team Orders
	ctrlEnable [11008,_enable]; //--- Commander Menu
	ctrlEnable [11006,commandInRange]; //--- Special Menu
	ctrlEnable [11007,commandInRange]; //--- Upgrade Menu

	//--- Command Menu.
	if (MenuAction == 5) exitWith { //added-MrNiceGuy
		MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_Command";
	};
	
	//--- Tactical Menu.
	if (MenuAction == 6) exitWith { //added-MrNiceGuy
		MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_Tactical";
	};

	//--- Upgrade Menu.
	if (MenuAction == 7) exitWith { //added-MrNiceGuy
		MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_Upgrade";
	};	
	
	//--- Economy Menu.
	if (MenuAction == 8) exitWith { //added-MrNiceGuy
		MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_Economy";
	};

	//--- Service Menu.
	if (MenuAction == 9) exitWith { //added-MrNiceGuy
		MenuAction = -1;
		closeDialog 0;
		createDialog "RscMenu_Service";
	};
};