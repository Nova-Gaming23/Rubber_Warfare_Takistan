disableSerialization;
_display = _this select 0;
_stage = _this select 1;

if (_stage == "onUnload") exitWith {
	[_display] spawn {
		WaitUntil{isNull (_this select 0)};
		uiSleep 0.2;
		if (!isNil 'respawnStatus') then {
			createDialog "RscMenu_Respawn";
		};
	};
};

MenuAction = -1;
mouseButtonUp = -1;
activeAnimMarker = false;

_MapCtrl = _display displayCtrl 15001;

_respawnName = "";
_availableSpawn = [];
_markers = [];
_markerIndex = 0;
_ta = objnull;
_lastSpawnUpdate = 0;

//--- Wait until the player respawned on TMP position
waitUntil {alive player};

_InitRespawn = {
	respawnDone = false;
	uiNameSpace setVariable ["Respawn_Spawn_Location",objNull];
	//--- Prevent AI from moving to the temp spawn.
	{_x disableAI "MOVE"} forEach (units clientTeam);

	//--- Position the player at the temp location during his respawn.
	//player setPos ([getMarkerPos Format["%1TempRespawnMarker",sideJoinedText],1,10] Call GetRandomPosition);
	player setPosASL (player GetVariable ["Idle_ASL_Position",[getMarkerPos Format["%1TempRespawnMarker",sideJoinedText],1,10] Call GetRandomPosition]);
	if (leader(group player) != player) then {(group player) selectLeader player};
	
	//--- Call the pre respawn routine. Add UserAction and Inits
	(player) Call PreRespawnHandler;




	/*
		Respawn Countdown
	*/	
	if (isNil 'respawnStatus') then {respawnStatus = PARM_Respawn_Delay+respawnMalus;};
	while {respawnStatus >= 0} do {
		uiSleep 1;
		respawnStatus = respawnStatus - 1;
	};
	
	
	/*
		Resapwn-CD DONE
	*/
	respawnDone = true;

	//Get SpawnLocation from NameSpace
	_spawn = uiNameSpace GetVariable["Respawn_Spawn_Location",objNull];
	
	//--- If the spawn is null, we use the HQ.
	if (isNull _spawn) then {
		_spawn = (sideJoinedText) Call GetSideHQ;
	};
	
	//--- Pre-render.
	if (WFBE_EnablePreload) then {
		ctrlSetText [15003,localize 'STR_WF_RESPAWN_Preload'];
		waitUntil{preloadCamera (getPos _spawn) || !(alive player)};
	};

	//--- Execute on respawn code only if the player's alive.
	if (alive player) then {
		[player,_spawn] Call OnRespawnHandler;
	};

	
	//Remove DeathCamera
	if !(isNil "DeathCamera") then {
		DeathCamera cameraEffect["TERMINATE","BACK"];
		camDestroy DeathCamera;
	};	
	"dynamicBlur" ppEffectEnable false;
	"colorCorrections" ppEffectEnable false;
	[currentFX] Spawn FX;
	
	
	//Reset Vars
	uiNameSpace setVariable ["Respawn_Spawn_Location",nil];
	playerDead = false;
	respawnDone = nil;
	respawnStatus = nil;

	//---Valhala.
	Local_PlayerVehicle = player;

	//--- Enable AI movement again.
	{_x enableAI "MOVE"} forEach (units clientTeam);
};



// Start SpawnTread --- First launch
if (isNil 'respawnStatus') then {
	[] spawn _InitRespawn;
	waitUntil{!isNil "respawnStatus"};
};


hint (localize "STR_WF_INFO_RespawnInfo");

// on Load Get Spawn from NameSpace
_spawn = uiNameSpace GetVariable["Respawn_Spawn_Location",objNull];

//Move Map to Selectet Spawn 
if (!isNull _spawn) then {	
	_MapCtrl ctrlMapAnimAdd [0, 0.05, getPos _spawn];
	ctrlMapAnimCommit _MapCtrl;
	_ta = ["TempAnim",getPos _spawn,"Select",1.4,"ColorRed",1.4,1.8] Spawn MarkerAnim;
	_respawnName = [typeOf _spawn, 'displayName'] Call GetConfigInfo;
};

//--- Run the main UI-update thread
while {!isNil 'respawnStatus' && alive player && !isNull _display} do {	
	
	//--- Loadout Selection.
	ctrlSetText [15004, if (WFBE_RespawnDefaultGear) then {localize "STR_WF_RESPAWN_GearDefault"} else {localize "STR_WF_RESPAWN_GearCurrent"}]; //changed-MrNiceGuy
	
	//--- Preloading Status.
	ctrlSetText [15005, if (WFBE_EnablePreload) then {localize "STR_WF_RESPAWN_PreloadYes"} else {localize "STR_WF_RESPAWN_PreloadNo"}]; //changed-MrNiceGuy

	//--- Update the respawn timer.
	ctrlSetText [15003,Format [localize "STR_WF_RESPAWN_Status",respawnStatus,_respawnName]];

	//--- Update the respawn info.
	if (time - _lastSpawnUpdate > 2) then {
		_lastSpawnUpdate = time;
		_lastAvailableSpawn = _availableSpawn;
		_availableSpawn = [sideJoined,deathLocation] Call GetRespawnAvailable;
		
		//--- First launch.
		if (isNull _spawn) then {
			_spawn = _availableSpawn select 0;
			uiNameSpace setVariable ["Respawn_Spawn_Location",_spawn];			
			_ta = ["TempAnim",getPos _spawn,"Select",1.4,"ColorRed",1.4,1.8] Spawn MarkerAnim;
			_respawnName = [typeOf _spawn, 'displayName'] Call GetConfigInfo;
		};
		
		//--- Properly update the client's map - Update removal.
		_found = false;
		{
			if !(_x in _availableSpawn) then {
				_mid = _x getVariable 'WFBE_IDRMarker';
				_markers = _markers - [_mid];
				deleteMarkerLocal _mid;
				_x setVariable ['WFBE_IDRMarker',nil];
				if (_x == _spawn && !_found) then {
					_found = true;
					_spawn = ([_x, _availableSpawn] Call SortByDistance) select 0;
					uiNameSpace setVariable ["Respawn_Spawn_Location",_spawn];
					terminate _ta;
					deleteMarkerLocal "TempAnim";
					_ta = ["TempAnim",getPos _spawn,"Select",1.4,"ColorRed",1.4,1.8] Spawn MarkerAnim;
					_respawnName = [typeOf _spawn, 'displayName'] Call GetConfigInfo;
				};
			};
		} forEach _lastAvailableSpawn;
		
		//--- Properly update the client's map - Update add.
		{
			if !(_x in _lastAvailableSpawn) then {
				_markerName = Format ["respawnMarker%1",_markerIndex];
				_markers = _markers + [_markerName];
				createMarkerLocal [_markerName,getPos _x];
				_markerName setMarkerTypeLocal "Select";
				_markerName setMarkerColorLocal "ColorYellow";
				_markerName setMarkerSizeLocal [1,1];
				_markerIndex = _markerIndex + 1;
				_x setVariable ['WFBE_IDRMarker',_markerName];
			};
		} forEach _availableSpawn;
	};
		

	//--- The client has clicked on the map.
	if (mouseButtonUp == 0) then {
		mouseButtonUp = -1;
		if (count _availableSpawn > 1) then {
			_position = _MapCtrl PosScreenToWorld[mouseX,mouseY];
			_sorted = [_position,_availableSpawn] Call SortByDistance;
			if ((_sorted select 0) distance _position < 500) then {
				_spawn = _sorted select 0;
				uiNameSpace setVariable ["Respawn_Spawn_Location",_spawn];
				activeAnimMarker = false;
				terminate _ta;
				deleteMarkerLocal "TempAnim";
				_ta = ["TempAnim",getPos _spawn,"Select",1.4,"ColorRed",1.4,1.8] Spawn MarkerAnim;
				_respawnName = [typeOf _spawn, 'displayName'] Call GetConfigInfo;
			};
		};
	};
	
	sleep 0.1;
};


//--- Terminate the threads & cleaning.
{deleteMarkerLocal _x} forEach _markers;
{_x setVariable ['WFBE_IDRMarker',nil]} forEach _availableSpawn;

//Marker Animation _ta
if (activeAnimMarker) then {	
	terminate _ta;
};

if (getMarkerColor "TempAnim" != "") then {
	deleteMarkerLocal "TempAnim";
	activeAnimMarker = false;
};

closeDialog 0;


