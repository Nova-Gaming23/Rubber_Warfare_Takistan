//--- Global Init, first file called.
diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Init_JIPCompatible.sqf: Executing the JIP script..",diag_frameno,diag_tickTime];

//--- Client Init.
if (!isServer || local player) then {
	diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Init_JIPCompatible.sqf: Client detected... waiting for non null result...",diag_frameno,diag_tickTime];
	waitUntil {!isNull(player)};
	diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Init_JIPCompatible.sqf: Client is not null...",diag_frameno,diag_tickTime];
	/* Client Init - Begin the blackout on Layer 1 */
	12452 cutText [(localize 'STR_WF_Loading'),"BLACK FADED",50000];
	isHostedServer = if (!isMultiplayer || (isServer && local player)) then {true} else {false};
	isClient = true;
} else {
	if (isNil 'EastMHQ' || isNil 'WestMHQ') exitWith {};
	isHostedServer = if (!isMultiplayer || (isServer && local player)) then {true} else {false};
	diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Init_JIPCompatible.sqf: Server detected...",diag_frameno,diag_tickTime];
	isClient = false;
};

//--- Server & Client default View Distance.
setViewDistance 1500;


gameOver = false;
towns = [];



//--- Define which 'part' of the game to run.
#include "version.sqf"

WF_A2_Vanilla = false;
#ifdef VANILLA
	WF_A2_Vanilla = true;
#endif

WF_A2_Arrowhead = false;
#ifdef ARROWHEAD
	WF_A2_Arrowhead = true;
#endif

WF_A2_CombinedOps = false;
#ifdef COMBINEDOPS
	WF_A2_CombinedOps = true;
#endif

WF_Camo = false;
#ifdef WF_CAMO
	WF_Camo = true;
#endif

//--- Special, require a clipboard handler on windows (available on dev-heaven).
mysql = false;
#ifdef MYSQL
	mysql =	if (isMultiplayer) then {true} else {false};
#endif


//--Editor Content
WF_Debug = true;
WF_Extend_RPT_LOG = false;


//--- Gameplay variables.
_ParmInitDone = Call Compile preprocessFile "init_Parameter.sqf";
if (!_ParmInitDone) exitWith{
	if (isClient) then {
		diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] CRITICAL-ERROR Init_Parameter.sqf",diag_frameno,diag_tickTime];
		12452 cutText ["Critical ERROR in Parameter!","BLACK FADED",50000];
	};
};

//--- Debug.
if (WF_Debug) then {
	PARM_Gameplay_UpgradesEast = 0;
	PARM_Gameplay_UpgradesWest = 0;
	//--- Respawn Delay
	PARM_Respawn_Delay = 20;
	missionNamespace setVariable ['WFBE_BALANCEPRICE',1];
	//--- Money
	PARM_Economy_StartingFundsEast = 800000;
	PARM_Economy_StartingFundsWest = 800000;
	//--- Supply.
	PARM_Economy_StartingSupplyWest = 60000;
	PARM_Economy_StartingSupplyEast = 60000;
	
};

//--- All parameters are set and ready.
initJIP = true;

//---- Server store the groups once in for all.
if (isServer) then {
	//--- BUG workaround: "attempt" to ensure that the client is really a client and not a server
	if !(isNil "WFBE_EASTTEAMS") exitWith {};
	WFBE_EASTTEAMS = [Group EastSlot1,Group EastSlot2,Group EastSlot3,Group EastSlot4,Group EastSlot5,Group EastSlot6,Group EastSlot7,Group EastSlot8,Group EastSlot9,Group EastSlot10,Group EastSlot11,Group EastSlot12,Group EastSlot13,Group EastSlot14,Group EastSlot15,Group EastSlot16];
	WFBE_WESTTEAMS = [Group WestSlot1,Group WestSlot2,Group WestSlot3,Group WestSlot4,Group WestSlot5,Group WestSlot6,Group WestSlot7,Group WestSlot8,Group WestSlot9,Group WestSlot10,Group WestSlot11,Group WestSlot12,Group WestSlot13,Group WestSlot14,Group WestSlot15,Group WestSlot16];
	

	publicVariable "WFBE_EASTTEAMS";
	publicVariable "WFBE_WESTTEAMS";
	
	diag_log format ["server broadcasted teams!"];
	
	//Set Units IDLE-Position
	{(leader _x) setVariable ["Idle_ASL_Position",getPosASL (leader _x),true]}foreach(WFBE_EASTTEAMS + WFBE_WESTTEAMS);
};

//--- Cli Exec - Wait for sync.

if (!isServer) then {
	diag_log format ["client waiting for broadcasted teams!"];
	waitUntil{!isNil 'WFBE_EASTTEAMS' && !isNil 'WFBE_WESTTEAMS'};
};

missionNamespace setVariable ['WFBE_EASTTEAMS', WFBE_EASTTEAMS];
missionNamespace setVariable ['WFBE_WESTTEAMS', WFBE_WESTTEAMS];

//--- Slot names.
{
	Private ["_temp"];
	_temp = [];
	{_temp = _temp + [vehicleVarName (leader _x)]} forEach (_x select 0);
	missionNamespace setVariable [_x select 1, _temp];
} forEach [[WFBE_EASTTEAMS,"WFBE_EASTSLOTNAMES"],[WFBE_WESTTEAMS,"WFBE_WESTSLOTNAMES"]];

//--- Maximum players, try to keep the same amount of player on east & west.
maxPlayers = count (missionNamespace getVariable 'WFBE_EASTTEAMS');

//--- Execute the common files.
ExecVM "Common\Init\Init_Common.sqf";
//--- Execute the towns file.
ExecVM "Common\Init\Init_Towns.sqf";


//--- Run the client's part.
if (isClient) then {
	diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] init_JIPCompatible.sqf: Executing Client Initialization...",diag_frameno,diag_tickTime];
	ExecVM "Client\Init\Init_Client.sqf";

};

//--- Run the server's part.
if (isServer) then {
	if (isNil 'EastMHQ' || isNil 'WestMHQ') exitWith {diag_log Format["[WFBE (FATAL ERROR)][frameno:%1 | ticktime:%2] init_JIPCompatible.sqf: The client has attempted to trigger the server part!",diag_frameno,diag_tickTime];};
	
	diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] init_JIPCompatible.sqf: Executing Server Initialization...",diag_frameno,diag_tickTime];
	ExecVM "Server\Init\Init_Server.sqf";
};

//--- Fast Get/Set.
_i = 1;
{if !(isNil '_x') then {_x setVariable ["identification", Format["EastSlot%1",_i]]};_i = _i + 1} forEach (missionNamespace getVariable 'WFBE_EASTTEAMS');
_i = 1;
{if !(isNil '_x') then {_x setVariable ["identification", Format["WestSlot%1",_i]]};_i = _i + 1} forEach (missionNamespace getVariable 'WFBE_WESTTEAMS');