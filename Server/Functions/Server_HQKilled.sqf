Private ["_deployed","_dir","_hq","_HQName","_killer","_kname","_kuid","_MHQ","_pos","_side","_tked","_type","_uid","_text"];
_hq = _this select 0;
_killer = _this select 1;
_side = _this select 2;
_type = _this select 3;

_pos = getPos _hq;
_dir = getDir _hq;
_kuid = if (isPlayer _killer) then {getPlayerUID _killer} else {'0'};
_kname = name _killer;

_deployed = (str _side) Call GetSideHQDeployed;

diag_log Format["[WFBE (INFORMATION)][frameno:%2 | ticktime:%3] Server_HQKilled: The %1 MHQ has been destroyed",str _side,diag_frameno,diag_tickTime];

//--- Building Teamkill.
if ((side _killer == _side)&&(isPlayer(_killer))) then {
	_uid = if !(paramShowUID) then {_uid = 'xxxxxxx'} else {_kuid};
	_tked = [_type, 'displayName'] Call GetConfigInfo;
	WFBE_LocalizeMessage = [_side,'CLTFNCLOCALIZEMESSAGE',['BuildingTeamkill',name _killer,_uid,_tked]];
	publicVariable 'WFBE_LocalizeMessage';
	if (isHostedServer) then {[_side,'CLTFNCLOCALIZEMESSAGE',['BuildingTeamkill',name _killer,_uid,_tked]] Spawn HandlePVF};
	
	diag_log Format["[WFBE (INFORMATION)][frameno:%3 | ticktime:%4] Server_HQKilled: Player %1 (%2) has teamkilled the MHQ.",name _killer,_uid,diag_frameno,diag_tickTime];
};
_text="";
sleep random(2);
if (_deployed) then {
	_HQName = Format["WFBE_%1MHQNAME",_side] Call GetNamespace;
	_MHQ = _HQName createVehicle _pos;
	_MHQ setDir _dir;
	_MHQ setDammage 1;
	Call Compile Format ["%1MHQ = _MHQ; %1MHQDeployed = false; publicVariable '%1MHQ'; publicVariable '%1MHQDeployed';",str _side];
	_MHQ setVehicleInit Format["[this, %1] execVM 'Server\Functions\MHQ_Wreck.sqf';",_side];
 processInitCommands;

 Call Compile Format ["%1MHQ = _MHQ; %1MHQDeployed = false; publicVariable '%1MHQ'; publicVariable '%1MHQDeployed';",str _side];
	
	/*_MHQ setVehicleInit Format["['Headquarters','ColorYellow',[1,1],'Damaged','HQDestroyed',this,0.2,true,'Headquarters','ColorOrange',false,%1] ExecVM 'Common\Common_MarkerUpdate.sqf';%2",_side,_text];
	processInitCommands;*/
	
//markerType = _this select 0;
//_markerColor = _this select 1;
//_markerSize = _this select 2;
//_markerText = _this select 3;
//_markerName = _this select 4;
//_tracked = _this select 5;
//_refreshRate = _this select 6;
//_trackDeath = _this select 7;
//_deathMarkerType = _this select 8;
//_deathMarkerColor = _this select 9;
//_deletePrevious = _this select 10;
//_side = _this select 11;
//_deathMarkerSize = [1,1];
};

if (mysql) then {
	if ((side _killer != _side)&&(isPlayer(_killer))) then {
		WF_Logic setVariable ["WF_MYSQL_SERVER",(WF_Logic getVariable "WF_MYSQL_SERVER") + [Format ["MYSQLDATA§WFBE_Update§%1§%2§killedhq§%3",getPlayerUID _killer,name _killer,worldName]]];
		WF_Logic setVariable ["WF_MYSQL_SERVER",(WF_Logic getVariable "WF_MYSQL_SERVER") + [Format ["MYSQLDATA§WFBE_InsertOrUpdate_PKAI§%1§%2§%3§%4§%5§%6",_type,_kuid,_kname,"killed",4,worldName]]];
	};
};

if (_type == WESTHQ) then {_type = 'WFBE_WESTMHQNAME' Call GetNamespace};
if (_type == EASTHQ) then {_type = 'WFBE_EASTMHQNAME' Call GetNamespace};
['Destroyed',_type,_side] Spawn SideMessage;
/*
sleep random(2);
if (_deployed) then {
 _HQName = Format["WFBE_%1MHQNAME",_side] Call GetNamespace;
 _MHQ = _HQName createVehicle _pos;
 _MHQ setDir _dir;
 _MHQ setDammage 1;
 
 
};*/
