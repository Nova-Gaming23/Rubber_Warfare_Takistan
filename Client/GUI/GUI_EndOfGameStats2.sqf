disableSerialization;

_side = _this Select 0;
//_sideText = "RED";
//if (_side == West) then {_sideText = "BLUE"};
//_sideName = Format["%1 WIN!",_sideText];
_sideName = "GAME STATS";

TitleText["","PLAIN"];
sleep 0.5;
666 CutRsc["EndOfGameStats","PLAIN",0];

sleep 1.5;//--- Give it some time to load, if it don't work, increase the value!

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

//--- Benny. Points (you have to make the score system yourself, just put an integer (0...1...2..) as a value in those).
_eastPoints = 0;
_westPoints = 0;

//--- Benny. Supply
_eastSupply = WF_Logic getVariable "EastTotal";
_westSupply = WF_Logic getVariable "WestTotal";
//_eastSupply = 10;
//_westSupply = 20;

_timeOut = PARM_Gameplay_MissionTimeOut;

//--- Rubber point for collected supplies

if (_eastSupply > _westsupply) then { _eastPoints = _eastPoints +1; };
if (_westSupply > _eastSupply) then { _westPoints = _westPoints +1; };

if (_timeOut != 0) then {
  if (time > _timeOut) then {
//if (_eastSupply < _westsupply) then { _eastPoints = _eastPoints +1; };
//if (_westSupply < _eastSupply) then { _westPoints = _westPoints +1; };
_eastPoints = _eastPoints +1;
_westPoints = _westPoints +1;
   };
};
//--- Benny. City
_eastCity = (East) Call GetTownsHeld;
_westCity = (West) Call GetTownsHeld;

//--- Rubber point for all structure destroyed NEED FIX !!! Supremacy means destroy all enemy building or capture all town like yours
_total = count towns;
_halfDue = PARM_Gameplay_TownsToWin;
if (_halfDue > _total) then {_halfDue = _total};
//--- Rubber city score assign 
if (_westCity >= _halfDue ) then { _westPoints = _westPoints +2 };
if (_eastCity >= _halfDue ) then { _eastPoints = _eastPoints +2 };

//--- Benny. Players casualties
_eastUnitsCreated = WF_Logic getVariable "eastUnitsCreated";
_eastCasualties = Wf_Logic getVariable "eastCasualties";

_westUnitsCreated = WF_Logic getVariable "westUnitsCreated";
_westCasualties = Wf_Logic getVariable "westCasualties";

_eastVehiclesCreated = WF_Logic getVariable "eastVehiclesCreated";
_eastVehiclesLost = WF_Logic getVariable "eastVehiclesLost";

_westVehiclesCreated = WF_Logic getVariable "westVehiclesCreated";
_westVehiclesLost = WF_Logic getVariable "westVehiclesLost";

_eastSoldiers = format ["%1 (%2)",_eastUnitsCreated,_eastCasualties];
_westSoldiers = format ["%1 (%2)",_westUnitsCreated,_westCasualties];
_eastVehicles = format ["%1 (%2)",_eastVehiclesCreated,_eastVehiclesLost];
_westVehicles = format ["%1 (%2)",_westVehiclesCreated,_westVehiclesLost];

_westMHQ = WF_Logic getVariable "WestMHQ";
_eastMHQ = WF_Logic getVariable "EastMHQ";
_westBuildings = WF_Logic getVariable ["WestBaseStructures",[]];
_eastBuildings = WF_Logic getVariable ["EastBaseStructures",[]];

_numWestFacs = 0;
{
if(_x isKindOf WESTLIGHT || _x isKindOf WESTHEAVY || _x isKindOf WESTAIR) then
	{
		_numWestFacs = _numWestFacs + 1;
	}
} ForEach _westBuildings;
_numEastFacs = 0;
{
if(_x isKindOf EASTLIGHT || _x isKindOf EASTHEAVY || _x isKindOf EASTAIR) then
	{
		_numEastFacs = _numEastFacs + 1;
	}
} ForEach _eastBuildings;

if ((_numWestFacs == 0)&&!(alive _westMHQ)||(_eastCity == _total)) then {_eastPoints = _eastPoints + 1}; 
if ((_numEastFacs == 0)&&!(alive _eastMHQ)||(_westCity == _total)) then {_westPoints = _westPoints + 1}; 

//--- Benny. Time
_timeGet = Call _getTime;
_timeFormat = Format["Time: %1H:%2M:%3S",_timeGet select 1,_timeGet select 2, _timeGet select 3];

waitUntil {!isNull (["currentCutDisplay"] call BIS_FNC_GUIget)};
((["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 90001) CtrlSetText _sideName;

((["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 90200) CtrlSetText (str _westPoints);
((["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 90202) CtrlSetText (str _westSupply);
((["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 90204) CtrlSetText (_westSoldiers);
((["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 90206) CtrlSetText (str _westCity);
((["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 90265) CtrlSetText (_eastVehicles);
((["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 90266) CtrlSetText (_westVehicles);
((["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 90101) CtrlSetText (str _eastPoints);
((["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 90103) CtrlSetText (str _eastSupply);
((["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 90105) CtrlSetText (_eastSoldiers);
((["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 90107) CtrlSetText (str _eastCity);

((["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 90208) CtrlSetText _timeFormat;