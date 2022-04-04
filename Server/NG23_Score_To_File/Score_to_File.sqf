/*
	Save ScoreBoard to File for HP
	Executed by updateserver.fsm (END)
	Log Offline Players with Score_Logger.sqf
*/
diag_log Format["[WFBE (INIT)][frameno:%2 | ticktime:%3] Event ScoreLogger - Starting (S:%1)",time,diag_frameno,diag_tickTime];

if (isNil 'NG23_Rubber_WF_Event_ScorePath') exitWith {
	diag_log Format["[WFBE (INIT)][frameno:%2 | ticktime:%3] Event ScoreLogger - ERROR (Variable(NG23_Rubber_WF_Event_ScorePath) is Nil) (S:%1)",time,diag_frameno,diag_tickTime];
};

_townsToWin = PARM_Gameplay_TownsToWin;
	if (isNil "_townsToWin") then {_townsToWin = 0};

_eastCity = (East) Call GetTownsHeld;
	if (isNil "_eastCity") then {_eastCity = 0};

_westCity = (West) Call GetTownsHeld;
	if (isNil "_westCity") then {_westCity = 0};


_eastSupply = WF_Logic getVariable "EastTotal";
	if (isNil "_eastSupply") then {_eastSupply = 0};

_westSupply = WF_Logic getVariable "WestTotal";
	if (isNil "_eastSupply") then {_eastSupply = 0};
	

_eastUnitsCreated = WF_Logic getVariable ["eastUnitsCreated",0];
_eastCasualties = Wf_Logic getVariable ["eastCasualties",0];

_westUnitsCreated = WF_Logic getVariable ["westUnitsCreated",0];
_westCasualties = Wf_Logic getVariable ["westCasualties",0];

_eastVehiclesCreated = WF_Logic getVariable ["eastVehiclesCreated",0];
_eastVehiclesLost = WF_Logic getVariable ["eastVehiclesLost",0];

_westVehiclesCreated = WF_Logic getVariable ["westVehiclesCreated",0];
_westVehiclesLost = WF_Logic getVariable ["westVehiclesLost",0];


_Player_East = [];
_Player_West = [];
//Player Score
{
	_unit = _x;
	if (isPlayer _unit) then {
		if (side _unit == East) then {
			_Player_East set [count _Player_East, [name _unit,score _unit]];
		};
		if (side _unit == West) then {
			_Player_West set [count _Player_West, [name _unit,score _unit]];
		};
		
		//Check Offline Players
		{
			_OfflinePlayerData = _x;
			_subName = _OfflinePlayerData select 0;
			if (_subName == name _unit) then {
				// this means the Player is online
				_OfflinePlayerData set [3,true];
			};
		}forEach NG23_SERVER_SIDE_SCORE_LOGGER_Players;
	};
}forEach playableunits;

//Merge Offline Data
{
	_OfflinePlayerData = _x;
	_PName = _OfflinePlayerData select 0;
	_PSide = _OfflinePlayerData select 1;
	_PScore = _OfflinePlayerData select 2;
	_POnline = _OfflinePlayerData select 3;
	if (!_POnline) then {
		if (_PSide == East) then {
			_Player_East set [count _Player_East, [_PName,_PScore]];
		};
		if (_PSide == West) then {
			_Player_West set [count _Player_West, [_PName,_PScore]];
		};		
	};
}forEach NG23_SERVER_SIDE_SCORE_LOGGER_Players;

_getTime = {
	Private ["_days","_hours","_minutes","_seconds","_uptime"];
	_days = 0;
	_hours = 0;
	_minutes = 0;
	_seconds = 0;
	
	_uptime = time;
	_days = floor(_uptime / 86400);
	_hours = floor((_uptime - (_days * 86400)) / 3600);
	_minutes = floor((_uptime - (_hours * 3600) - (_days * 86400)) / 60);
	_seconds = floor(_uptime - (_minutes * 60) - (_hours * 3600) -(_days * 86400));
	
	_days = if (_days < 10) then {"0" + str(_days)} else {str(_days)};
	_hours = if (_hours < 10) then {"0" + str(_hours)} else {str(_hours)};
	_minutes = if (_minutes < 10) then {"0" + str(_minutes)} else {str(_minutes)};
	_seconds = if (_seconds < 10) then {"0" + str(_seconds)} else {str(_seconds)};
	
	[_days,_hours,_minutes,_seconds]
};

_getRandomID = {
	private["_stringOfNumbers"];
	// "_1235458411234_"
	_stringOfNumbers = "_";	
	for "_i" from 1 to 13 do { _stringOfNumbers = _stringOfNumbers + (round random 10); };
	_stringOfNumbers = _stringOfNumbers + "_";
	_stringOfNumbers
};

_mission_time_left = Call _getTime;


_php_file = "<?php \n";
_php_file = _php_file + format ['\n$MissionName = "%1";',missionName];
_php_file = _php_file + "\n";
_php_file = _php_file + format ['\n$MissionTime = "Time: %1H:%2M:%3S";',_mission_time_left select 1,_mission_time_left select 2, _mission_time_left select 3];
_php_file = _php_file + "\n";
_php_file = _php_file + format ["\n$Score_East = %1;", scoreSide East];
_php_file = _php_file + format ["\n$Score_West = %1;", scoreSide West];
_php_file = _php_file + "\n";
_php_file = _php_file + format ["\n$TownsToWin = %1;", _townsToWin];
_php_file = _php_file + "\n";
_php_file = _php_file + format ["\n$City_East = %1;", _eastCity];
_php_file = _php_file + format ["\n$City_West = %1;", _westCity];
_php_file = _php_file + "\n";
_php_file = _php_file + format ["\n$Supply_East = %1;", _eastSupply];
_php_file = _php_file + format ["\n$Supply_West = %1;", _westSupply];
_php_file = _php_file + "\n";
_php_file = _php_file + format ['\n$Units_East = array("Created" => %1, "Killed" => "%2");', _eastUnitsCreated,_eastCasualties];
_php_file = _php_file + format ['\n$Units_West = array("Created" => %1, "Killed" => "%2");', _westUnitsCreated,_westCasualties];
_php_file = _php_file + "\n";
_php_file = _php_file + format ['\n$Vehicles_East = array("Created" => %1, "Killed" => "%2");', _eastVehiclesCreated,_eastVehiclesLost];
_php_file = _php_file + format ['\n$Vehicles_West = array("Created" => %1, "Killed" => "%2");', _westVehiclesCreated,_westVehiclesLost];
_php_file = _php_file + "\n";
_php_file = _php_file + "\n$Players_East = array(";
	{
		_PlayerName = _x select 0;
		_PlayerScore = _x select 1;
		_php_file = _php_file + format ['\n   "%1" => %2%3', _PlayerName,_PlayerScore, if (_forEachIndex < ((count _Player_East) - 1)) then [ { "," }, { "" } ]];
	}forEach _Player_East;
_php_file = _php_file + "\n);";
_php_file = _php_file + "\n";
_php_file = _php_file + "\n$Players_West = array(";
	{
		_PlayerName = _x select 0;
		_PlayerScore = _x select 1;
		_php_file = _php_file + format ['\n   "%1" => %2%3', _PlayerName,_PlayerScore, if (_forEachIndex < ((count _Player_West) - 1)) then [ { "," }, { "" } ]];
	}forEach _Player_West;
_php_file = _php_file + "\n);";
_php_file = _php_file + "\n";
_php_file = _php_file + "\n?>";



/*
	ext date with sec, wday, yday, dst; example: 
	http://killzonekid.com/arma-extension-real_date-dll-v3-0/
	http://www.cplusplus.com/reference/ctime/tm/
	[y   ,m, d, h,m, s,wday,yday,dst]
	[2014,9,24,21,9,57,3,266,0]
*/
_ServerDate = "real_date" callExtension "GMT+";

if (typeName _ServerDate == "STRING") then {
	_ServerDate_Array = call compile _ServerDate;
	
	_year = _ServerDate_Array select 0;
	_month = _ServerDate_Array select 1;
	_day = _ServerDate_Array select 2;
	_hour = _ServerDate_Array select 3;
	_minut = _ServerDate_Array select 4;
	_second = _ServerDate_Array select 5;


	_FileName = Format["%3.%2.%1_%4-%5-%6.php",_year,_month,_day,_hour,_minut,_second];
	_FilePath = Format["%1/%2",NG23_Rubber_WF_Event_ScorePath,_FileName];
	diag_log ["Score_To_File _FilePath:",_FilePath];
	diag_log Format["[WFBE (INIT)][frameno:%2 | ticktime:%3] Event ScoreLogger - FileSave to (%4) (S:%1)",time,diag_frameno,diag_tickTime,_FilePath];
	"make_file" callExtension format ["%1|%2", _FilePath, _php_file];
};


diag_log Format["[WFBE (INIT)][frameno:%2 | ticktime:%3] Event ScoreLogger - FileContent (S:%1)",time,diag_frameno,diag_tickTime];
diag_log ["PHP_File => ",_php_file];
