Private["_localize","_txt", "_sidePrefix"];
_localize = _this select 0;
_txt = "";

// Markus - Now with sounds! 
//playSound format ["%1%2", _sidePrefix, "sound"];
if (sideJoined == west) then {_sidePrefix = "US_"}; 
if (sideJoined == east) then {_sidePrefix = "RU_"}; 

switch (_localize) do {
	case "BuildingTeamkill": {_txt = Format [Localize "STR_WF_CHAT_Teamkill_Building",_this select 1, _this select 2, _this select 3]};
	case "Teamswap": {_txt = Format [Localize "STR_WF_CHAT_Teamswap",_this select 1, _this select 2, _this select 3, _this select 4]};
	case "Balancing": {_txt = Format [Localize "STR_WF_CHAT_Balancing",_this select 1, _this select 2]};
	//case "UpgradeComplete": {_txt = Format [Localize "STR_WF_CHAT_Upgrade_Complete_Message",('WFBE_UPGRADELABELS' Call GetNamespace) select (_this select 1), _this select 2];playSound format ["%1%2", _sidePrefix, "NewConstructionOptions"];};
	case "CommanderDisconnected": {_txt = Localize "strwfcommanderdisconnected"};
	case "TacticalLaunch": {_txt = Localize "STR_WF_CHAT_ICBM_Launch";playSound format ["%1%2", _sidePrefix, "MissileLaunchDetected"]; playSound "NukeSiren";};
	case "Teamkill": {_txt = Format [Localize "STR_WF_CHAT_Teamkill",('WFBE_TEAMKILLPENALTY' Call GetNamespace)]; -('WFBE_TEAMKILLPENALTY' Call GetNamespace) Call ChangePlayerFunds};
	case "FundsTransfer": {_txt = Format [Localize "STR_WF_CHAT_FundsTransfer",_this select 1,_this select 2]};
	case "StructureSold": {_txt = Format [Localize "STR_WF_CHAT_Structure_Sold",([_this select 1,'displayName'] Call GetConfigInfo)];playSound format ["%1%2", _sidePrefix, "StructureSold"];};
	case "StructureSell": {_txt = Format [Localize "STR_WF_CHAT_Structure_Sell",([_this select 1,'displayName'] Call GetConfigInfo),_this select 2]};
	case "PlayerPeaceTimeRespawn": {_txt = Format [Localize "STR_WF_CHAT_Fore_Cient_PeaceTime_Respawn",_this select 1]};
	case "SecondaryAward": {_txt = Format [Localize "STR_WF_CHAT_Secondary_Award",_this select 1, _this select 2];(_this select 2) Call ChangePlayerFunds};
	case "AttemptedBuildingTeamkill": {_txt = Format ["%1 attempted to teamkill a structure with a %2, dealing %3 damage. Their UID has been logged. UID: %4", _this select 1, _this select 2, _this select 3, _this select 4]};
};

if (!(_localize in ['FundsTransfer', 'VODestroyed', 'VOConstructed', 'VOIsUnderAttack'])) then {
	_txt Call CommandChatMessage;
} else {
	_txt Call GroupChatMessage;
};