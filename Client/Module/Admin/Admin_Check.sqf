/*
	Caller: Init_Client.sqf
	Wait for Array from ServerMod or Exit while 30seconds left
*/
diag_log Format["[WFBE (INIT)][frameno:%2 | ticktime:%3] Client-AdminCheck - Start Loading (S:%1)",time,diag_frameno,diag_tickTime];
waitUntil {!isNil {WF_Logic getVariable "NG23_ServerAdminIDs"} || time > 30};

if (!isNil {WF_Logic getVariable "NG23_ServerAdminIDs"}) then {
	{
		if (_x == getPlayerUID player) then {PlayerIsAdmin = true;};
	}foreach (WF_Logic getVariable "NG23_ServerAdminIDs");
	diag_log Format["[WFBE (INIT)][frameno:%2 | ticktime:%3] Client-AdminCheck - Done (S:%1)",time,diag_frameno,diag_tickTime];
}else{
	diag_log Format["[WFBE (INIT)][frameno:%2 | ticktime:%3] Client-AdminCheck - ERROR out of Time (S:%1)",time,diag_frameno,diag_tickTime];
};
