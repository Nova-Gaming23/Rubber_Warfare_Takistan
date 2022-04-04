Private ['_occTypeEast','_occTypeWest'];

_occTypeWest = ('WFBE_OCCUPATIONWESTFACTIONS' Call GetNamespace) select PARM_Towns_OccupationFactionWest;
_occTypeEast = ('WFBE_OCCUPATIONEASTFACTIONS' Call GetNamespace) select PARM_Towns_OccupationFactionEast;

[] Call Compile preprocessFile Format["Common\Config\Core_Occupation\Occupation_%1.sqf",_occTypeWest];
[] Call Compile preprocessFile Format["Common\Config\Core_Occupation\Occupation_%1.sqf",_occTypeEast];

diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Config_Occupation: Initialization (West: %3 | East: %4) - [Done]",diag_frameno,diag_tickTime,_occTypeWest,_occTypeEast];