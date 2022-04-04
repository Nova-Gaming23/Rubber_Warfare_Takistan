/*
	Caller: Init_Server.sqf
	Wait for Array from ServerMod or Exit while 30seconds left
	Bloadcast AdminIDs to All Clients With WF_Logic
	WF_Logic getVariable "NG23_ServerAdminIDs";
*/
diag_log Format["[WFBE (INIT)][frameno:%2 | ticktime:%3] Server-AdminIDs - Start loading from Server-Mod (S:%1)",time,diag_frameno,diag_tickTime];

waitUntil {!isNil 'NG23_ServerAdminIDs' || time > 30};

if (!isNil 'NG23_ServerAdminIDs') then {
	WF_Logic setVariable["NG23_ServerAdminIDs",NG23_ServerAdminIDs,true];
	diag_log Format["[WFBE (INIT)][frameno:%2 | ticktime:%3] Server-AdminIDs - Loaded (%4)Admins in List (S:%1)",time,diag_frameno,diag_tickTime,count NG23_ServerAdminIDs];
}else{
	diag_log Format["[WFBE (INIT)][frameno:%2 | ticktime:%3] Server-AdminIDs - ERROR out of Time (S:%1)",time,diag_frameno,diag_tickTime];
};
