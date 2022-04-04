/*
	Initialize Parameter on all devices. Client & Server
	--Varibales
		Use Classname in Parameters.hpp as Global Variable for your Parameter
		(SingelPlayer) Use default as Value in your Global Vaiable 
		(MultiPlayer) Parameter Selection in MPlobby
*/
diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Init Parameter´s!",diag_frameno,diag_tickTime];
_Cfg_Path = MissionConfigFile >> "Params";
_forceExit = false;


for [{ _i = 0 }, { _i <  count _Cfg_Path}, { _i = _i + 1 }] do {
	_subClass = _Cfg_Path select _i;
	
	_ParameterName = configName _subClass;
	_defaultPath = _subClass >> "default";
	
	// Check default Value is Number otherwise Exit all
	if (!isNumber _defaultPath) exitWith {
		diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] CRITICAL-ERROR Init_Parameter.sqf: in Parameter(%3) > default valune is not a number!",diag_frameno,diag_tickTime,_ParameterName];
		_forceExit = true;
	};
	
	_ParameterValue = if (isNil 'paramsArray') then {getNumber _defaultPath}else{paramsArray select _i};	
	_variableString = Format["%1 = %2;",_ParameterName,_ParameterValue];	
	call compile _variableString;
};

if (_forceExit) exitWith{false};

//--- Building Limits.
if (!isNil 'PARM_Base_BaseBuildingsLimit') then {
	missionNamespace setVariable ['WFBE_BUILDINGMAXBARRACKS',PARM_Base_BaseBuildingsLimit];
	missionNamespace setVariable ['WFBE_BUILDINGMAXLIGHT',PARM_Base_BaseBuildingsLimit];
	missionNamespace setVariable ['WFBE_BUILDINGMAXCOMMANDCENTER',PARM_Base_BaseBuildingsLimit];
	missionNamespace setVariable ['WFBE_BUILDINGMAXHEAVY',PARM_Base_BaseBuildingsLimit];
	missionNamespace setVariable ['WFBE_BUILDINGMAXAIRCRAFT',PARM_Base_BaseBuildingsLimit];
	missionNamespace setVariable ['WFBE_BUILDINGMAXFIELDHOSPITAL',PARM_Base_BaseBuildingsLimit];
	missionNamespace setVariable ['WFBE_BUILDINGMAXSERVICEPOINT',PARM_Base_BaseBuildingsLimit+1];
};
paramKeepAI = true; // Keep Player-Group-AI on Disconnect 
paramAI = false; //Enable AI Side Squad Tems (16East/16West)
paramAIcom = false; // Enable Commander AI
paramAARadar = true; // Enable AntiAir-Radar
paramDefenseManRange = 600; //
paramDefenseCollide = false;	// Enable collsion check
paramSpawnRestriction = false; // Spawn near towns
paramMoneyOnly = false; // DIsable Supply system
paramEcoIncomeImterval = 65;	// income interval in seconds
paramDLCBAF = true;	//DLC
paramDLCPMC = true;	//DLC
paramAlice = false;	//Zivilbevölkerung (ALICE)
PARM_Gameplay_Hangars = 1;
missionNamespace setVariable ['WFBE_ARTILLERYCOMPUTER',2];
missionNamespace setVariable ['WFBE_ARTILLERYMAXRANGE',3];
paramArtyUI = false;
PARM_PlayerBalancing = false; //

///////////////////////////////////////////////////////////////


missionNamespace setVariable ['WFBE_HQDEPLOYRANGE',150];
missionNamespace setVariable ['WFBE_UNITREMOVEDLAY',240];	// Remove body´s in sec
missionNamespace setVariable ['WFBE_ABANDONVEHICLETIMER', 1200];// Remove wrack´s in sec
missionNamespace setVariable ['WFBE_FASTTRAVEL',0];	// Fasttravel
paramBasePatrols = false; // Enable Base Patrols
paramUseWorkers = false;	// Enable BaseBuilding AI-Worker system
paramExtendedInventory = true; // Realistic equpment
paramHandleFF = false; //Friendly Fire (Buildings)
paramKickTeamswappers = true;	// Kick while Teamswap
paramBoundaries = false;	//MAP Limited Boundaries
paramMandoMissiles = true;//MandoSystem
paramSecondaryMissions = false;
paramShowUID = false; //Show Player UID
//--- Time of Day.
	if (time < 2) then {setDate [(date select 0),(date select 1),(date select 2),PARM_Environment_TimeOfDay,(date select 3)]};
paramTrackAI = true;	// SHow Friendly AI on MAP
paramTrackPlayer = true;	//Show Friendly PLayer on MAP
paramBalancing = false; // gameplayUnitsBalancing ???
paramBounty = true; // 
parmAddAIbyRank = true;// Player GroupSize inrease by Rank
paramCounterMeasures = false; // Air AUTO Flare
paramEASA = true; //--- EASA. Bewaffnungssystem Servicepoint
missionNamespace setVariable ['WFBE_ISIS',0]; // Injury System (ISIS)
paramUPSMON = true;	//UPSMON handle AI
paramVolumClouds = true; //--- Volumetric Clouds.
missionNamespace setVariable ['WFBE_RESPAWNCAMPSMODE',4];
missionNamespace setVariable ['WFBE_RESPAWNCAMPSRULEMODE',1];
missionNamespace setVariable ['WFBE_RESPAWNPENALTY',2]; //OLD PARM respawnPenalty
missionNamespace setVariable ['WFBE_RESPAWNRANGE',600]; //OLD PARM respawnTownsRange
missionNamespace setVariable ['WFBE_BALANCEPRICE',1]; // OLD PARM gameplaySpecialization
missionNamespace setVariable ['WFBE_THERMALIMAGING',2]; // OLD PARM gameplayThermalImaging
missionNamespace setVariable ['WFBE_RESTRICTIONADVAIR',0]; // OLD PARM restrictionAdvancedAir
paramGearRestriction = true; // OLD PARM restrictionGear
paramRestrictionKamov = false; // OLD PARM restrictionKamov
missionNamespace setVariable ['WFBE_RESSTRIKER',0]; // OLD PARM townsStrikerMax
paramKeepCamps = true; // OLD PARM townsCamps
missionNamespace setVariable ['WFBE_TOWNCAPTUREMODE',2]; // OLD PARM townsCaptureMode
missionNamespace setVariable ['WFBE_CIVILIANFACTION',0];// OLD PARM townsCivilians
missionNamespace setVariable ['WFBE_TOWNCONQUESTMODE',1]; // PLD PARM townsConquestMode
missionNamespace setVariable ['WFBE_TOWNGEAR',2];//OLD PARM townsGear
paramOccReinf = false; //--- OLD PARM townsOccupReinforcement. KI-Besatzung ruft autom. Verstärkung
missionNamespace setVariable ['WFBE_RESPATROL',0]; //OLD PARM townsMaxPatrol
missionNamespace setVariable ['WFBE_TOWNBUILDPROTECTIONRANGE',600];// OLD PARM townsProtectionRange: MHQ-Verbot (Radius)
paramPurchaseInfDepot = false; //OLD PARM townsPurchaseInfantry; Kauf von Infanterie möglich wenn erobert.
paramResReinf = false; //OLD PARM townsResistanceReinforcement;Town Resistance Reinforcement.
paramResVehLock = true; //OLD PARM townsResistanceVehicleLock;Town Resistance Vehicles Lock.
missionNamespace setVariable ['WFBE_TOWNSTARTINGMODE',0];// OLD PARM townsStartingMode
paramHighCommand = false;
true