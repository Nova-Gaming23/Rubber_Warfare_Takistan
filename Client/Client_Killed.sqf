/* Player KEH. */

if (playerDead) exitWith {};
playerDead = true;
//deathcounter = deathcounter +1; - this is not working on JIP
//player addScore -3; - this is not working in multiplayer

/////-----US-KD beginning (*US-EDIT-KD*)
////------ Tweaked a bit from Hoshi cause I don't want that kamikaze have more reward than people that use more brain...

_score = score player;
if (_score <= 0 ) then {

		WFBE_RequestChangeScore = ['SRVFNCREQUESTCHANGESCORE',[player,score player - 2 ]];
		publicVariable 'WFBE_RequestChangeScore';
		if (isHostedServer) then {['SRVFNCREQUESTCHANGESCORE',[player,score player - 2]] Spawn HandleSPVF};
};
	
if ((_score <= 29 )&&(_score > 0)) then {
	WFBE_RequestChangeScore = ['SRVFNCREQUESTCHANGESCORE',[player,score player - 3 ]];
				publicVariable 'WFBE_RequestChangeScore';
				if (isHostedServer) then {['SRVFNCREQUESTCHANGESCORE',[player,score player - 3]] Spawn HandleSPVF};
};
if (_score >= 100) then {
		WFBE_RequestChangeScore = ['SRVFNCREQUESTCHANGESCORE',[player,score player - 4 ]];
		publicVariable 'WFBE_RequestChangeScore';
		if (isHostedServer) then {['SRVFNCREQUESTCHANGESCORE',[player,score player - 4]] Spawn HandleSPVF};
};
	
/////-----US-KD end (*US-EDIT-KD*)

sleep 1;

{player removeAction 0} forEach [0,1,2,3,4,5];
if !(isNil "HQAction") then {player removeAction HQAction};
player removeAction Options;

// Valhalla HUD 
/* injury reset */
Dialog_LegsHit=false;
Dialog_HandsHit=false;
Dialog_BodyHit=false;
Dialog_HeadHit=false;
//-- end injury

deathLocation = getPos player;

if (mysql) then {
	Private ['_isInertObject','_isTKFriendly','_killer'];
	_killer = _this select 1;
	_isTKFriendly = if (side _killer == sideJoined && !isPlayer(_killer)) then {true} else {false};
	_isInertObject = false;
	if (vehicle _killer == _killer) then {
		_isInertObject = if (count(crew _killer) == 0) then {true} else {false};
	};
	
	if (_this select 0 == _killer || _isTKFriendly || _isInertObject) then {
		WF_Logic setVariable ["WF_MYSQL_CLIENT",(WF_Logic getVariable "WF_MYSQL_CLIENT") + [Format ["MYSQLDATA§WFBE_Update§%1§%2§suicide§%3",getPlayerUID(player),name player,worldName]],true];
	};
};

closeDialog 0;

//sleep 0.11; // Markus - Removed useless sleep

"dynamicBlur" ppEffectEnable true;
"dynamicBlur" ppEffectAdjust [1];
"dynamicBlur" ppEffectCommit 0.1;  
"colorCorrections" ppEffectAdjust [1, 1, 0, [0.1, 0.0, 0.0, 1], [1.0, 0.8, 0.5, 0.1], [0.199, 0.587, 0.114, 0.0]];
"colorCorrections" ppEffectCommit 0.1;
"colorCorrections" ppEffectEnable true;
"colorCorrections" ppEffectAdjust [1, 1, 0, [0.1, 0.0, 0.0, 0.5], [1.0, 0.9, 0.5, 0.1], [0.199, 0.587, 0.114, 0.0]];
"colorCorrections" ppEffectCommit 0.3;

DeathCamera = "camera" camCreate deathLocation;
DeathCamera camSetDir 0;
DeathCamera camSetFov 1;
DeathCamera cameraEffect["Internal","TOP"];

DeathCamera camSetTarget deathLocation;
DeathCamera camSetPos [deathLocation select 0,(deathLocation select 1) + 2,5];
DeathCamera camCommit 0;

waitUntil {camCommitted DeathCamera};

DeathCamera camSetPos [deathLocation select 0,(deathLocation select 1) + 2,7];
DeathCamera camCommit PARM_Respawn_Delay+2+respawnMalus;

createDialog "RscMenu_Respawn";