Private ['_HQRadio','_base','_buildings','_condition','_get','_idbl','_isDeployed','_oc','_voteTime','_weat'];

diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Init_Client: Init start at %3",diag_frameno,diag_tickTime,time];
//sleep 2;
sideJoined = playerSide;
sideJoinedText = str sideJoined;

//Admin check
PlayerIsAdmin = false;
ExecVM "Client\Module\Admin\Admin_Check.sqf";


// Thanks to Prodavec ArmA2.ru
ExecVM "limitThirdPersonView.sqf";
ExecVM "Client\MapMarkersTitling.sqf";
//--- Valhalla addons
//sleep 0.5;
ExecVM "Addon\Init_Valhalla.sqf";


//--- Position the client on the temp spawn (Common is not yet init'd so we call is straigh away).
player setPos ([getMarkerPos Format["%1TempRespawnMarker",sideJoinedText],1,10] Call Compile preprocessFile "Common\Functions\Common_GetRandomPosition.sqf");

ARTY_HandleILLUM = Compile preprocessFile "Client\Module\Arty\ARTY_HandleILLUM.sqf"; 
ARTY_HandleSADARM = Compile preprocessFile "Client\Module\Arty\ARTY_HandleSADARM.sqf"; 
if (PARM_Equipment_Artillery == 1) then {
	ARTY_Prep = Compile preprocessFile "Client\Module\Arty\ARTY_mobileMissionPrep.sqf";
	ARTY_Finish = Compile preprocessFile "Client\Module\Arty\ARTY_mobileMissionFinish.sqf";
	RequestFireMission = Compile preprocessFile "Client\Functions\Client_RequestFireMission.sqf"
};
if (paramBoundaries) then {
	BoundariesIsOnMap = Compile preprocessFile "Client\Functions\Client_IsOnMap.sqf";
	BoundariesHandleOnMap = Compile preprocessFile "Client\Functions\Client_HandleOnMap.sqf";
};
BuildUnit = Compile preprocessFile "Client\Functions\Client_BuildUnit.sqf";
ChangePlayerFunds = Compile preprocessFile "Client\Functions\Client_ChangePlayerFunds.sqf";
CommandChatMessage = Compile preprocessFile "Client\Functions\Client_CommandChatMessage.sqf";
if (paramCounterMeasures) then {
	CM_Countermeasures = Compile preprocessFile "Client\Module\CM\CM_Countermeasures.sqf";
	CM_Flares = Compile preprocessFile "Client\Module\CM\CM_Flares.sqf";
	CM_Spoofing = Compile preprocessFile "Client\Module\CM\CM_Spoofing.sqf";
};
DebugHint = Compile preprocessFile "Client\Functions\Client_DebugHint.sqf";
DisplayInventory = Compile preprocessFile "Client\Functions\Client_DisplayInventory.sqf";
FX = Compile preprocessFile "Client\Functions\Client_FX.sqf";
GetIncome = Compile preprocessFile "Client\Functions\Client_GetIncome.sqf";
GetMarkerColoration = Compile preprocessFile "Client\Functions\Client_GetMarkerColoration.sqf";
GetPlayerFunds = Compile preprocessFile "Client\Functions\Client_GetPlayerFunds.sqf";
GetRespawnAvailable = Compile preprocessFile "Client\Functions\Client_GetRespawnAvailable.sqf";
GetStructureMarkerLabel = Compile preprocessFile "Client\Functions\Client_GetStructureMarkerLabel.sqf";
GetTime = Compile preprocessFile "Client\Functions\Client_GetTime.sqf";
GroupChatMessage = Compile preprocessFile "Client\Functions\Client_GroupChatMessage.sqf";
HandleHQAction = Compile preprocessFile "Client\Functions\Client_HandleHQAction.sqf";
HandlePVF = Compile preprocessFile "Client\Functions\Client_HandlePVF.sqf";
MarkerAnim = Compile preprocessFile "Client\Functions\Client_MarkerAnim.sqf";
OnRespawnHandler = Compile preprocessFile "Client\Functions\Client_OnRespawnHandler.sqf";
PlayerKilled = Compile preprocessFile "Client\Client_Killed.sqf";
PreRespawnHandler = Compile preprocessFile "Client\Functions\Client_PreRespawnHandler.sqf";
ReplaceArray = Compile preprocessFile "Client\Functions\Client_ReplaceArray.sqf";
ReplaceInventoryAmmo = Compile preprocessFile "Client\Functions\Client_ReplaceInventoryAmmo.sqf";
RussianPride = Compile preprocessFile "Client\Functions\Client_CORERussianPride.sqf";

TrashObjectCl = Compile preprocessFile "Client\Functions\Client_TrashObject.sqf";

if !(WF_A2_Vanilla) then {
	RespawningBag = Compile preprocessFile "Client\Functions\Client_RespawnBag.sqf";
} else {
	RespawningBag = {};
};
SetControlFadeAnim = Compile preprocessFile "Client\Functions\Client_SetControlFadeAnim.sqf";
SetControlFadeAnimStop = Compile preprocessFile "Client\Functions\Client_SetControlFadeAnimStop.sqf";
SupportHeal = Compile preprocessFile "Client\Functions\Client_SupportHeal.sqf";
SupportRearm = Compile preprocessFile "Client\Functions\Client_SupportRearm.sqf";
SupportRefuel = Compile preprocessFile "Client\Functions\Client_SupportRefuel.sqf";
SupportRepair = Compile preprocessFile "Client\Functions\Client_SupportRepair.sqf";
TaskSystem = Compile preprocessFile "Client\Functions\Client_TaskSystem.sqf";
TitleTextMessage = Compile preprocessFile "Client\Functions\Client_TitleTextMessage.sqf";
UIAddItem = Compile preprocessFile "Client\Functions\Client_UIAddItem.sqf";
UIAddMagazine = Compile preprocessFile "Client\Functions\Client_UIAddMagazine.sqf";
UIChangeComboBuyUnits = Compile preprocessFile "Client\Functions\Client_UIChangeComboBuyUnits.sqf";
UIFillListBuyUnits = Compile preprocessFile "Client\Functions\Client_UIFillListBuyUnits.sqf";
UIFillListTeamOrders = Compile preprocessFile "Client\Functions\Client_UIFillListTeamOrders.sqf";
UIFindLBValue = Compile preprocessFile "Client\Functions\Client_UIFindLBValue.sqf";
UIGearFillList = Compile preprocessFile "Client\Functions\Client_UIGearFillList.sqf";
UIGearFillTemplateList = Compile preprocessFile "Client\Functions\Client_UIGearFillTemplateList.sqf";
UIGearFillBackPackList = Compile preprocessFile "Client\Functions\Client_UIGearFillBackPackList.sqf";
//Keypress FUNCTION
Keypress_hook = Compile preprocessFile "Client\Functions\Client_Keypress_hook.sqf";
if (PARM_Module_ICBM == 1) then {
	Nuke = Compile preprocessFile "Client\Module\Nuke\nuke.sqf";
	NukeIncomming = Compile preprocessFile "Client\Module\Nuke\nukeincoming.sqf";
};
//--- Namespace related (GUI).
BIS_FNC_GUIset = {UInamespace setVariable [_this select 0, _this select 1]};
BIS_FNC_GUIget = {UInamespace getVariable (_this select 0)};

clientInitComplete = true;

//--- Waiting for the common part to be executed.
waitUntil {!isNil 'commonInitComplete'};

diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Init_Client: Common is ready at %3. Executing Client Initialization...",diag_frameno,diag_tickTime,time];

if (('WFBE_ISIS' Call GetNamespace) != 0) then {ISIS_Effects = Compile preProcessFile "Client\Module\ISIS\ISIS_Clientfx.sqf"};

//--- Queue Protection.
['WFBE_C_QUEUE_BARRACKS',0,true] Call SetNamespace;
['WFBE_C_QUEUE_BARRACKS_MAX',10,true] Call SetNamespace;
['WFBE_C_QUEUE_LIGHT',0,true] Call SetNamespace;
['WFBE_C_QUEUE_LIGHT_MAX',3,true] Call SetNamespace;
['WFBE_C_QUEUE_HEAVY',0,true] Call SetNamespace;
['WFBE_C_QUEUE_HEAVY_MAX',3,true] Call SetNamespace;
['WFBE_C_QUEUE_AIRCRAFT',0,true] Call SetNamespace;
['WFBE_C_QUEUE_AIRCRAFT_MAX',2,true] Call SetNamespace;
['WFBE_C_QUEUE_AIRPORT',0,true] Call SetNamespace;
['WFBE_C_QUEUE_AIRPORT_MAX',2,true] Call SetNamespace;
['WFBE_C_QUEUE_DEPOT',0,true] Call SetNamespace;
['WFBE_C_QUEUE_DEPOT_MAX',1,true] Call SetNamespace;

//--- Handle the Fast Time.
if (PARM_Environment_FastTime > 0) then {[] ExecFSM "Client\FSM\fasttimecli.fsm"};

//--- Handle the weather.
_weat = PARM_Environment_Weather;
if (_weat == 3) then {
	[] ExecFSM "Client\FSM\overcast.fsm";
} else {
	_oc = 0.05;
	switch (_weat) do {
		case 0: {_oc = 0};
		case 1: {_oc = 0.5};
		case 2: {_oc = 1};
	};
	60 setOvercast _oc;
};
if (paramVolumClouds) then {[] Exec "CA\Modules\clouds\data\scripts\bis_cloudsystem.sqs"};

_idbl = [player] Call Compile preprocessFile "Client\Init\Init_Blacklist.sqf";
if (_idbl) exitWith {[] Spawn {Private["_txt"];_txt = "INFORMATION:\n\n You are currently blacklisted.";_txt Call DebugHint;sleep 5; disableUserInput true; sleep 60; disableUserInput false; failMission "END1"}};

//--- Global Client Variables.
sideID = sideJoined Call GetSideID;
clientID = player Call GetClientID;
clientIdentification = Format ["%1Slot%2",sideJoinedText,clientID];
clientTeam = group player;
clientTeams = (Format['WFBE_%1TEAMS',sideJoinedText] Call GetNamespace);
playerType = typeOf player;
playerDead = false;
paramBoundariesRunning = false;

commanderTeam = objNull;
buildingMarker = 0;
gearCost = 0;
currentTG = 30;
lastBuilt = [];
unitQueu = 0;
fireMissionTime = -1000;
artyRange = 15;
artyPos = [0,0,0];
playerUAV = objNull;
comTask = objNull;
voted = false;

manningDefense = true;
currentFX = 0;
lastParaCall = -1200;
lastSupplyCall = -1200;
canBuildWHQ = true;
WFBE_RespawnDefaultGear = false;
WFBE_EnablePreload = false;
WFBE_ForceUpdate = false;

hqInRange = false;
barracksInRange = false;
gearInRange = false;
lightInRange = false;
heavyInRange = false;
aircraftInRange = false;
serviceInRange = false;
commandInRange = false;
depotInRange = false;
antiAirRadarInRange = false;
hangarInRange = false;
fhinrange = false;

/* HUD ON/OFF VALUE */
if (isNil "RUBHUD") then {RUBHUD = true};
if (isNil "RUBGPS") then {RUBGPS = 1};
if (isNil "RUBOSD") then {RUBOSD = 1};
//if (isNil "deathcounter") then {deathcounter = 0};

enableTeamSwitch false;

/* Airfields Init */
if (isNil "Airfields") then {Airfields = []};

/* CIPHER Module - Sorting */
ExecVM "Common\Module\CIPHER\CIPHER_Sort.sqf";




/* Valhalla HUD */
Dialog_GUIType=1;//0-all,1-no gps,2-no health,3-no health no gps
Dialog_GUIColor=0; // Default Gui color is almost white

Local_Camera=objNull;
Local_GUIActive=true;
Local_GUIWorking=false;
player setVariable ["PlayerVehicle",player,true];

Func_Client_MainThread=compile preprocessFile ("client\Func_Client_MainThread.sqf");
Func_Client_UpdateGUI=compile preprocessFile ("client\Func_Client_UpdateGUI.sqf");
//Func_Client_ConvertToDirection=compile preprocessFile ("client\Func_Client_ConvertToDirection.sqf");

[] spawn
{
	sleep 8;
	Local_PlayerSide=side player;
	Local_PlayerName=name player;
	//-- Player Names for vehicle crew icons
    player setVariable ["playernames",Local_PlayerName,true];
	promotion = 0;
	/* HUD MODULE */
	ExecVM "Client\Client_UpdateRHUD.sqf";
	[] spawn Func_Client_MainThread;
	hint "OSD & MAP initialized";
	sleep 20;
	playsound "beep";
	titleText["Please Note:\nWarfare RE is balanced with:\n TnT3 Addon pack.", "PLAIN DOWN"];
	sleep 65;
	playsound "beep";
	titleText["Information:\nwww.Nova-Gaming23.de\n( Website & Infos )", "PLAIN DOWN"];

};

//--- Disable Artillery Computer.
if ((('WFBE_ARTILLERYCOMPUTER' Call GetNamespace) != 2) && !WF_A2_Vanilla) then {Call Compile "enableEngineArtillery false;"};

/* Exec SQF|FSM Misc stuff. */
if (paramTrackPlayer) then {[] ExecFSM "Client\FSM\updateteamsmarkers.fsm"};
[] ExecFSM "Client\FSM\updateteamsmarkerslayer.fsm";
[] ExecFSM "Client\FSM\updateactions.fsm";
/* Don't pause the client initialization process. */
[] Spawn {	
	waitUntil {!isNil 'townInit'};
	/* Handle the capture GUI */
	diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Init_Client: Towns Capture FSM - [Done]",diag_frameno,diag_tickTime];
	[] ExecFSM "Client\FSM\updatecapture.fsm";
	/* Handle the map town markers */
	diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Init_Client: Towns Marker FSM - [Done]",diag_frameno,diag_tickTime];
	[] ExecFSM "Client\FSM\updatetownmarkers.fsm";
	waitUntil {!isNil Format["%1BaseStructures",sideJoinedText]};
	/* Handle the client actions */
	diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Init_Client: Available Action FSM - [Done]",diag_frameno,diag_tickTime];
	[] ExecFSM "Client\FSM\updateavailableactions.fsm";
	/* Resources Handler */
	if !(('WFBE_INCOMESYSTEM' Call GetNamespace) in [3,4]) then {
		diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Init_Client: Ressources FSM - [Done]",diag_frameno,diag_tickTime];
		(sideJoined) ExecFSM "Client\FSM\resources_cli.fsm";
	};
};
[] Spawn {
	Private ["_commanderTeam"];
	waitUntil{sleep 0.1;!isNil {(sideJoined) Call GetCommanderTeam}};
	/* Commander Handling */
	diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Init_Client: Commander Update FSM - [Done]",diag_frameno,diag_tickTime];
	[] ExecFSM "Client\FSM\updateclient.fsm";
};

//--- Add the briefing (notes).
[] Call Compile preprocessFile "briefing.sqf";

//--- HQ Radio system.
waitUntil {!isNil Format ["BIS_WF_HQ%1",sideJoinedText]};
_HQRadio = Call Compile Format ["BIS_WF_HQ%1",sideJoinedText];
diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Init_Client: Radio Announcer - [Done]",diag_frameno,diag_tickTime];
waitUntil {!isNil Format ["BIS_WF_HQ%1_TI",sideJoinedText]};
WFBE_V_HQTopicSide = Call Compile Format ["BIS_WF_HQ%1_TI",sideJoinedText];
diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Init_Client: Radio Announcer (Identity Synchronization) - [Done]",diag_frameno,diag_tickTime];
_HQRadio setIdentity WFBE_V_HQTopicSide;
_HQRadio setRank "COLONEL";
_HQRadio setGroupId ["HQ"]; 
_HQRadio kbAddTopic [WFBE_V_HQTopicSide,"Client\kb\hq.bikb","Client\kb\hq.fsm",{call compile preprocessFileLineNumbers "Client\kb\hq.sqf"}];
player kbAddTopic [WFBE_V_HQTopicSide,"Client\kb\hq.bikb","Client\kb\hq.fsm",{call compile preprocessFileLineNumbers "Client\kb\hq.sqf"}];
sideHQ = _HQRadio;

diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Init_Client: Radio Announcers - [Done]",diag_frameno,diag_tickTime];



/* Wait for a valid signal (Teamswaping) with failover */
if (isMultiplayer && paramKickTeamswappers && time > 7) then {
	Private ["_get","_timelaps"];
	_get = true;

	sleep (random 0.1);
	
	WFBE_RequestJoin = ['SRVFNCREQUESTJOIN',[getPlayerUID(player),sideJoined,name player,vehicleVarName player,(serverCommandAvailable "#logout")]];
	publicVariable 'WFBE_RequestJoin';
	
	_timelaps = 0;
	while {true} do {
		sleep 0.1;
		_getArray = 'WFBE_P_CANJOIN' Call GetNamespace;
		if !(isNil '_getArray') exitWith {_get = _getArray select 0;diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Init_Client: Client %3 (side: %4) can join game -> %5",diag_frameno,diag_tickTime,name player,sideJoined,_getArray select 0]};
		
		_timelaps = _timelaps + 0.1;
		if (_timelaps > 5) then {
			_timelaps = 0;
			diag_log Format["[WFBE (WARNING)][frameno:%1 | ticktime:%2] Init_Client: Client %3 (side: %4) Pending... no ACK answer from server were received, sending a new request...",diag_frameno,diag_tickTime,name player,sideJoined];
			WFBE_RequestJoin = ['SRVFNCREQUESTJOIN',[getPlayerUID(player),sideJoined,name player,vehicleVarName player]];
			publicVariable 'WFBE_RequestJoin';
		};
	};
	
	if !(_get) exitWith {
		
		diag_log Format["[WFBE (WARNING)][frameno:%1 | ticktime:%2] Init_Client: Client %3 (side: %4) has teamswapped and was sent back to the lobby...",diag_frameno,diag_tickTime,name player,sideJoined];
		//(localize 'STR_WF_CHAT_Teamswap_Warnning') Call CommandChatMessage;
		_Reason = ('WFBE_P_CANJOIN' Call GetNamespace) select 1;
		switch (_Reason)do {
			case "Teamswap":{
				titleText ["You have teamswapped before a round has finished. You will be sent back to the lobby, please choose the opposite team.", "BLACK"];
			};
			case "Balancing":{
				titleText ["You have ignored balancing! Too many players on the hostile side.", "BLACK"];
			};
		};
		sleep 5;
		failMission "END1";
	};
};

/* Get the client starting location */
diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Init_Client: Getting the client spawn location - [In Progress]",diag_frameno,diag_tickTime];
_base = objNull;
if (time < 30) then {
	waitUntil {!isNil Format ["%1StartingLocation",sideJoinedText]};
	_base = Call Compile Format ["%1StartingLocation",sideJoinedText];
} else {
	waitUntil {!isNil Format ["%1MHQ",sideJoinedText]};
	_base = (sideJoinedText) Call GetSideHQ;
	_buildings = (sideJoinedText) Call GetSideStructures;
	
	if (count _buildings > 0) then {_base = _buildings select 0};
};

diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Init_Client: Getting the client spawn location (%3) - [Done]",diag_frameno,diag_tickTime,typeOf _base];

/* Position the client at the previously defined location */
player setPos ([getPos _base,10,20] Call GetRandomPosition);

/* HQ Building Init. */
waitUntil {!isNil Format ["%1MHQDeployed",sideJoinedText]};
diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Init_Client: CoIn module for HQ - [Done]",diag_frameno,diag_tickTime];
_isDeployed = (sideJoinedText) Call GetSideHQDeployed;
if (_isDeployed) then {
	['WFBE_AREAHQDEPLOYED' Call GetNamespace,true,MCoin] Call Compile preprocessFile "Client\Init\Init_Coin.sqf";
} else {
	['WFBE_AREAHQUNDEPLOYED' Call GetNamespace,false,MCoin] Call Compile preprocessFile "Client\Init\Init_Coin.sqf";
};

/* Options menu. */
Options = player addAction ["<t color='#42b6ff'>" + (localize "STR_WF_Options") + "</t>","Client\Action\Action_Menu.sqf", "", 1, false, true, "", "(isPlayer _target) && (isPlayer _this)"];

//Debug Menu
if (WF_DEBUG) then {
	player addAction ["<t color='#ffa500'>>> DEBUG</t>","Client\Action\Debug.sqf", "", 1, false, true, "", "(isPlayer _target) && (isPlayer _this)"];
};

/* Zeta Cargo Lifter. */
[] Call Compile preprocessFile "Client\Module\ZetaCargo\Zeta_Init.sqf";
/* Set Groups ID. */
[] Call Compile preprocessFile "Client\Functions\Client_SetGroupsID.sqf";

//playsound "loading";

//sleep 1;
/*
//--- Play a tune.
_music = switch (true) do {
	case WF_A2_Vanilla: {["Track11_Large_Scale_Assault","Track02_Insertion","Ambient07_Manhattan","Track10_Logistics","Track09_Movement_To_Contact","Track16_Valentine"]};
	case WF_A2_Arrowhead: {["EP1_Track10","EP1_Track12","EP1_Track14","EP1_Track15"]};
	case WF_A2_CombinedOps: {["EP1_Track10","EP1_Track15","Track11_Large_Scale_Assault","Track02_Insertion","Ambient07_Manhattan","Track10_Logistics","Track09_Movement_To_Contact","Track16_Valentine"]};
	default {[]};
};*/


/* Override player's Gear.*/
[player,Format ["WFBE_%1DEFAULTWEAPONS",sideJoinedText] Call GetNamespace,Format ["WFBE_%1DEFAULTAMMO",sideJoinedText] Call GetNamespace] Call EquipLoadout;
/* Default gear menu filler. */
WF_Logic setVariable ['filler','primary'];

/* Skill Module. */
[] Call Compile preprocessFile "Client\Module\Skill\Skill_Init.sqf";
(player) Call WFBE_SK_FNC_Apply;

/* Vote System, define whether a vote is already running or not */
_voteTime = 0;
waitUntil {sleep 0.1;_voteTime = WF_Logic getVariable Format ["%1CommanderVoteTime",sideJoinedText];!(isNil '_voteTime')};
diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Init_Client: Vote System Initialization - [Done]",diag_frameno,diag_tickTime];
if (_voteTime > 0) then {createDialog "RscMenu_Voting"};

/* Debug System - Client */
if (WF_Debug) then {
	onMapSingleClick "vehicle player setpos _pos;(vehicle player) setVelocity [0,0,-0.1];"; //--- Teleport
	player addEventHandler ["HandleDamage", {false}];
	//player addEventHandler ['handleDamage',{getDammage (_this select 0)+(_this select 2)/3}];

	//player setCaptive true;
	//player addEventHandler ["HandleDamage", {false;if (player != (_this select 3)) then {(_this select 3) setDammage 1}}]; //--- God-Slayer mode.

_trg_GUI = createTrigger["EmptyDetector",getPos player];
_trg_GUI setTriggerArea[0,0,0,false];
_trg_GUI setTriggerActivation ["ALPHA", "PRESENT", true];
_trg_GUI setTriggerText "GUI Editior";
_trg_GUI setTriggerStatements["this", "[] call BIS_fnc_GUIeditor", ""]; 

_trg_FUNC = createTrigger["EmptyDetector",getPos player];
_trg_FUNC setTriggerArea[0,0,0,false];
_trg_FUNC setTriggerActivation ["BRAVO", "PRESENT", true];
_trg_FUNC setTriggerText "Function Viewer";
_trg_FUNC setTriggerStatements["this", "[] call BIS_fnc_help", ""]; 	

_trg_Test = createTrigger["EmptyDetector",getPos player];
_trg_Test setTriggerArea[0,0,0,false];
_trg_Test setTriggerActivation ["Charlie", "PRESENT", true];
_trg_Test setTriggerText "Test-Entry";
_trg_Test setTriggerStatements["this", "[] ExecVM 'NG23\Debug\Debug_Function_Test.sqf'", ""]; 
};

/* ISIS Module */
if (('WFBE_ISIS' Call GetNamespace) != 0) then {player addEventHandler['handleDamage',{_this Call ISIS_Wound}]};

/* Artillery UI */
if (paramArtyUI) then {[] ExecVM "ca\modules\ARTY\data\scripts\init.sqf"};

/* EASA */
if (paramEASA) then {[] Call Compile preProcessFile "Client\Module\EASA\EASA_Init.sqf"};

/* Key Binding */
[] Call Compile preprocessFile "Client\Init\Init_Keybind.sqf";
//[] Call Compile preprocessFile "Client\Init\Init_Keygps.sqf";

//GPS BASE ZOOM
zoomgps = 0.025;
zoomauto = 1;

/* JIP Handler */
waitUntil {!isNil 'townInit'};
diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Init_Client: Towns Initialization - [Done]",diag_frameno,diag_tickTime];

/* Conquest helper */
if (('WFBE_TOWNCONQUESTMODE' Call GetNamespace) > 0) then {[] ExecFSM "Client\FSM\conquest_helper.fsm"};

sleep 3;
//--- key press for GPS zoom (findDisplay 46) displayAddEventHandler ["KeyDown","null=[_this select 1] execvm 'key.sqf'"];
_kdeh = -1;
while {_kdeh == -1} do {
   _kdeh = FindDisplay 46 DisplayAddEventHandler["KeyDown", "_this Call Keypress_hook"];
};

/* JIP System, initialize the camps and towns properly. */
[] Spawn {
	sleep 2;
	diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Init_Client: JIP Detected, Updating the markers - [Done]",diag_frameno,diag_tickTime];
	[] ExecVM "Client\Functions\Client_InitTownsAndCamps.sqf";
};

/* Repair Truck CoIn Handling. */
['WFBE_AREAREPAIRTRUCK' Call GetNamespace,false,RCoin,"REPAIR"] Call Compile preprocessFile "Client\Init\Init_Coin.sqf";

/* A new player come to reinforce the battlefield */
[sideJoinedText,'UnitsCreated',1] Call UpdateStatistics;

/* Towns Task System */
["TownAddComplete"] Spawn TaskSystem;

/* End Init */
finishMissionInit;

/* Client death handler. */
Call Compile Format ["player addEventHandler ['Killed',{[_this select 0,_this select 1] Spawn PlayerKilled;[_this select 0,_this select 1,%1,false] Spawn UnitKilled}]",sideJoined];

//--- Murcielago - TNT Respawn Delay (Min:30s/Max:100s)

	respawnTotal = PARM_Respawn_Delay;
	respawnTnTTime = "00:00";
	respawnTnTStatus = "GREEN";
	respawnMalus = 0;

/* Client Init Done - Remove the blackout */
12452 cutText [(localize 'STR_WF_Loading'),"BLACK IN",5];


Init_Client_Finish = true;
diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Init_Client: Init End at %3",diag_frameno,diag_tickTime,time];

if (isMultiplayer) then {
		_Variable = Format["WFBE_JIP_USER_%1_Veh",getPlayerUID player];
		_OldVehicles = JIP_Handler_Logic getVariable _Variable;
		PlayerVehicle = [];
		if !(isNil '_OldVehicles') then {PlayerVehicle = PlayerVehicle + _OldVehicles};
		_UpdateAliveVeh = [];
		{private ["_x"];
		_Veh = _x;
			if !(isNull _Veh) then {
				if (alive _Veh) then {
					_UpdateAliveVeh set [count _UpdateAliveVeh,_Veh];
					if ((typeof _Veh) in ((Format['WFBE_%1SUPPLYTRUCKS',sideJoinedText]) Call GetNamespace)) then {
						[_Veh,sideJoined] ExecFSM 'Client\FSM\updatesupply.fsm';
					};
					//--- Planes have a Taxi Reverse feature.
					if (_unit isKindOf "Plane") then {
					_Veh addAction [localize "STR_WF_TaxiReverse","Client\Action\Action_TaxiReverse.sqf", [], 92, false, true, "", "driver _target == _this && alive _target && speed _target < 4 && speed _target > -4 && getPos _target select 2 < 4"];
					_Veh addAction ["Smoke Trail", "Client\Functions\Client_CORERussianPride.sqf", [],1408, false, true, "", "driver _target == _this && alive _target && speed _target > 5"];
					};
					_Veh SetVehicleInit Format["[this,%1] ExecVM 'Common\Common_InitUnit.sqf';",sideJoined];
					ProcessInitCommands;				
					_Veh addAction [localize "STR_WF_Unlock","Client\Action\Action_ToggleLock.sqf", [], 95, false, true, '', 'alive _target && locked _target'];
					_Veh addAction [localize "STR_WF_Lock","Client\Action\Action_ToggleLock.sqf", [], 94, false, true, '', 'alive _target && !(locked _target)'];
				};
			};
		}forEach PlayerVehicle;
		PlayerVehicle = _UpdateAliveVeh;
};	

// Handle Client Profile
execVM "Client\Init\Init_Profile.sqf";

