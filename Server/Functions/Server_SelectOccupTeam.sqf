Private["_difficulty","_probaOccupation","_oc1","_oc2","_oc3","_oc4","_oc5","_oc6","_ran1","_ran2","_supplyValue","_teams","_type"];
_supplyValue = _this select 0;
_type = [];
_teams = [];

_difficulty = PARM_Towns_OccupDifficulty;


_oc1 = 'WFBE_OCCUPATIONTEAM1' Call GetNamespace;
_oc2 = 'WFBE_OCCUPATIONTEAM2' Call GetNamespace;
_oc3 = 'WFBE_OCCUPATIONTEAM3' Call GetNamespace;
_oc4 = 'WFBE_OCCUPATIONTEAM4' Call GetNamespace;
_oc5 = 'WFBE_OCCUPATIONTEAM5' Call GetNamespace;
_oc6 = 'WFBE_OCCUPATIONTEAM6' Call GetNamespace;
_oc7 = 'WFBE_OCCUPATIONTEAM7' Call GetNamespace;

if (_difficulty == 1) then { ///--- START HARD Occupation definition
if ((_supplyValue >= _oc1)&&(_supplyValue < _oc2)) then {_teams = ["SmallTeam1","MediumTeam1","LargeTeam1","SmallVehTeam1"];_probaOccupation = 70};
if ((_supplyValue >= _oc2)&&(_supplyValue < _oc3)) then {_teams = ["SmallTeam2","MediumTeam3","SmallVehTeam1","LargeTeam2"];_probaOccupation = 65};
if ((_supplyValue >= _oc3)&&(_supplyValue < _oc4)) then {_teams = ["SmallTeam2","LargeTeam3","MediumTeam1","MediumVehTeam2","SmallVehTeam3"];_probaOccupation = 60};
if ((_supplyValue >= _oc4)&&(_supplyValue < _oc5)) then {_teams = ["SmallTeam1","SmallTeam3","MediumTeam2","LargeTeam1","LargeVehTeam3","MediumVehTeam2"];_probaOccupation = 55};
if ((_supplyValue >= _oc5)&&(_supplyValue < _oc6)) then {_teams = ["SmallTeam1","MediumTeam3","MediumTeam3","LargeTeam3","MediumVehTeam1","LargeVehTeam2","SmallVehTeam1"];_probaOccupation = 50};
if (_supplyValue >= _oc6) then {_teams = ["SmallTeam2","MediumTeam3","MediumTeam2","LargeTeam2","SmallVehTeam2","MediumVehTeam3","LargeVehTeam3","SmallVehTeam3"];_probaOccupation = 45};
}; ///--- END HARD Occupation definition

if (_difficulty == 2) then { ///--- START NORMAL Occupation definition
if ((_supplyValue >= _oc1)&&(_supplyValue < _oc2)) then {_teams = ["MediumTeam1","SmallVehTeam1"];_probaOccupation = 100};
if ((_supplyValue >= _oc2)&&(_supplyValue < _oc3)) then {_teams = ["SmallTeam2","MediumTeam2","MediumTeam3","SmallVehTeam1"];_probaOccupation = 100};
if ((_supplyValue >= _oc3)&&(_supplyValue < _oc4)) then {_teams = ["SmallTeam2","LargeTeam1","LargeTeam3","MediumVehTeam2"];_probaOccupation = 100};
if ((_supplyValue >= _oc4)&&(_supplyValue < _oc5)) then {_teams = ["SmallTeam1","SmallTeam3","LargeTeam1","LargeVehTeam3"];_probaOccupation = 100};
if ((_supplyValue >= _oc5)&&(_supplyValue < _oc6)) then {_teams = ["SmallTeam1","MediumTeam2","MediumTeam3","SmallVehTeam3","LargeVehTeam2"];_probaOccupation = 100};
if (_supplyValue >= _oc6) then {_teams = ["LargeTeam3","MediumTeam1","LargeTeam2","MediumVehTeam3","LargeVehTeam3"];_probaOccupation = 100};
if (_supplyValue >= _oc7) then {_teams = ["LargeTeam3","MediumTeam1","LargeTeam1","LargeTeam2","MediumVehTeam3","LargeVehTeam3"];_probaOccupation = 100};
}; ///--- END NORMAL Occupation definition

if (_difficulty == 3) then { ///--- START LITE Occupation definition
if ((_supplyValue >= _oc1)&&(_supplyValue < _oc2)) then {_teams = ["MediumTeam1"];_probaOccupation = 70};
if ((_supplyValue >= _oc2)&&(_supplyValue < _oc3)) then {_teams = ["MediumTeam2","SmallVehTeam1"];_probaOccupation = 65};
if ((_supplyValue >= _oc3)&&(_supplyValue < _oc4)) then {_teams = ["LargeTeam3","MediumVehTeam1"];_probaOccupation = 60};
if ((_supplyValue >= _oc4)&&(_supplyValue < _oc5)) then {_teams = ["SmallTeam1","LargeTeam1","MediumVehTeam2"];_probaOccupation = 55};
if ((_supplyValue >= _oc5)&&(_supplyValue < _oc6)) then {_teams = ["SmallTeam2","MediumTeam3","SmallVehTeam3","LargeVehTeam2"];_probaOccupation = 50};
if (_supplyValue >= _oc6) then {_teams = ["LargeTeam3","LargeTeam2","MediumVehTeam3","LargeVehTeam3"];_probaOccupation = 45};
}; ///--- END LITE Occupation definition

if (count _teams < 1) then {_teams = ["SmallTeam1","MediumTeam2","LargeTeam3","SmallVehTeam1"]};

_teams