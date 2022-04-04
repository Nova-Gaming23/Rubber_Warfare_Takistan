scriptName "UAV\data\scripts\uav_actionCommit.sqf";
/*
	File: uav_actionCommit.sqf
	Author: Karel Moricky

	Description:
	Basic actions in UAV view

	Parameter(s):
	AddAction returned arguments
*/
_uav = _this select 0;
_arguments = _this select 3;
_mode = _arguments select 0;

switch _mode do {

	//--- Leave
	case 0: {
		_uav switchcamera "Internal";
		bis_uav_terminate = true;
		playsound "uskd_taskhint";
		null = [2]ExecVM "Hint\uav.sqf";
		RUBHUD = true;
		RUBGPS = 1;
	};

	default {};
};