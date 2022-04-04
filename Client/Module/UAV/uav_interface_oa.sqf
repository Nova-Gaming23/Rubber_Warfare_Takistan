Private ['_action_leave','_defaultTeamswitch','_displayEH_keydown','_displayEH_mousebuttondown','_locked','_logic','_mapEH_mousebttondown','_ppColor','_uav'];
_defaultTeamswitch = teamswitchenabled;

startLoadingScreen ["UAV","RscDisplayLoadMission"];

_uav = playerUAV;

//--- UAV destroyed
if (isnull _uav) exitwith {endLoadingScreen;hint format [localize "strwfbasestructuredestroyed",localize "str_uav_action"]};

//--- Switch view
gunner _uav removeweapon "nvgoggles";
driver _uav setBehaviour "CARELESS";
commander _uav setBehaviour "CARELESS";
gunner _uav setBehaviour "CARELESS";
driver _uav disableAI "AUTOTARGET";
driver _uav disableAI "TARGET";

_uav switchcamera "Internal";
player remoteControl gunner _uav;
_locked = locked _uav;
_uav lock true;
_uav selectweapon (weapons _uav select 0);
enableteamswitch false;
titletext ["","black in"];
BIS_UAV_TIME = 0;
BIS_UAV_PLANE = _uav;

_mma = _this select 0;

hint format ["MMA = %1",_mma];

if (_mma != 2 ) then {
_background_mfd = [mando_missile_path+"mfds\uav_mfd1.paa", [
[-0.086, 0.155,0.076, 0.075*4/3],
[-0.084, 0.31,0.076,0.075*4/3],
[-0.081, 0.46,0.0765,0.075*4/3],
[-0.082, 0.61,0.076,0.075*4/3],
[-0.082,
 0.755,0.076,0.075*4/3],
[1.005, 0.155, 0.075, 0.075*4/3],
[1.005, 0.31, 0.075, 0.075*4/3],
[1.005, 0.61, 0.075,0.075*4/3],
[1.005, 0.755, 0.075,0.075*4/3]]];
mando_uav = _uav;
//_mcctypeaascript = mando_missile_path+"tv\tv_types\mando_tv_hellfire_uav.sqs";
//      [["HMMWV_M1035_DES_EP1","UAZ_RU"], 0, 0, ["Vehicles", "REMOTE"], "UAV Console", _mcctypeaascript, [-3,2,-2], [0,4.5,-1,0,181], {(Driver _plane == player) && (alive mando_uav)}, 0, -2, _background_mfd, 1, -3]execVM mando_missile_path+"mcc\mando_mccallow_by_type.sqf";
};
//--- Action!
_action_leave = _uav addaction [
	"Leave UAV",
	"Client\Module\UAV\uav_actionCommit.sqf",
	[0],
	1,
	false,
	true,
	"PersonView",
	"isnil 'BIS_UAV_noExit'"
];
_action_swcam = _uav addaction ["Switch View","Client\Module\UAV\switchcamera.sqf", _uav];

//--- Disable HC
if (hcShownBar) then {hcshowbar false};

//--- Show MARTA icons
if (isnil "BIS_UAV_visible") then {BIS_UAV_visible = groupiconsvisible};
setGroupIconsVisible [true,true];
(group _uav) setvariable ["MARTA_waypoint",[true,[-1,-1,-1,-1]]];

//--- Prostprocess effects
//setaperture 24;
_ppColor = ppEffectCreate ["ColorCorrections", 1999];
_ppColor ppEffectEnable true;
_ppColor ppEffectAdjust [1, 1, 0, [1, 1, 1, 0], [1, 1, 1, 0.0], [0.2, 0.2, 0.2, 0]];
_ppColor ppEffectCommit 0;


//--- RSC
progressLoadingScreen 0.5;

//--- Detect pressed keys (temporary solution)
BIS_UAV_HELI_keydown = {
if (!isnil "bis_uav_terminate") exitwith {};
if (isnil "BIS_UAV_PLANE") exitwith {};
	Private ['_id','_key','_marker','_markertime','_newHeight','_uav','_worldpos'];
	_key = _this select 1;

	_uav = BIS_UAV_PLANE;

	//--- END
	//if (_key in (actionkeys 'menuback') && isnil 'BIS_UAV_noExit') then {bis_uav_terminate = true};

	//--- MARKER
	if (_key in (actionkeys 'binocular') && !visiblemap) then {
		_id = 1;
		while {markertype format ['_user_defined_UAV_MARKER_%1',_id] != ''} do {
			_id = _id + 1;
		};
		_worldpos = screentoworld [0.5,0.5];
		_marker = createmarker [format ['_user_defined_UAV_MARKER_%1',_id],_worldpos];
		_marker setmarkertype 'mil_destroy';
		_marker setmarkercolor 'colorred';
		_marker setmarkersize [0.5,0.5];
		_markertime = [daytime] call bis_fnc_timetostring;
		_marker setmarkertext format ['UAV %1: %2',_id,_markertime];
	};

	//--- UP
	if (_key in (actionkeys 'HeliUp')) then {
		_newHeight = (position _uav select 2) + 50;
		if (_newHeight > 2500) then {_newHeight = 2500};
		if (speed _uav < 1) then {_uav domove position _uav;};
		_uav land 'none';
		_uav flyinheight _newHeight;
	};

	//--- DOWN
	if (_key in (actionkeys 'HeliDown')) then {
		_newHeight = (position _uav select 2) - 50;
		if (_newHeight < 100) then {_newHeight = 100};
		_uav land 'none';
		_uav flyinheight _newHeight;
	};
	
	switch (_key) do
			{
	
	case 17://W - fly faster
				{
					_group=group _uav;
					_mode=toUpper (speedMode _group);
					switch (_mode) do
					{
						case "LIMITED":
						{
							_group setSpeedMode "NORMAL";
							hint"UAV SET: Cruise Speed.";
						};
						case "NORMAL":
						{
							_group setSpeedMode "FULL";
							hint"UAV SET: Full Speed..";
						};
						case "FULL":
						{
							_group setSpeedMode "FULL";
							hint"UAV already Full Speed!";
						};
					};
				};
				case 31://S - fly slower
				{
					_group=group _uav;
					_mode=toUpper (speedMode _group);
					switch (_mode) do
					{
						case "LIMITED":
						{
							_group setSpeedMode "LIMITED";
							hint"Warning!\nUAV Crashing\nPush W to increase Speed!";
						};
						case "NORMAL":
						{
							_group setSpeedMode "LIMITED";
							hint"UAV SLOW SPEED\nWarning:\nIf too slow UAV will CRASH!!";
						};
						case "FULL":
						{
							_group setSpeedMode "NORMAL";
							hint"UAV Set Cruise Speed";
						};
					};			
				};
			};
};
_displayEH_keydown = (finddisplay 46) displayaddeventhandler ["keydown","Private['_sqf']; _sqf = _this spawn BIS_UAV_HELI_keydown"];

//--- Detect pressed mouse buttons
_displayEH_mousebuttondown = (finddisplay 46) displayaddeventhandler ["mousebuttondown","
	disableserialization;
	Private ['_button','_control','_controls','_display'];
	_button = _this select 1;
	if (_button == 007 && !visiblemap) then {comment 'DISABLED';
		_display = uinamespace getvariable 'BIS_UAV_DISPLAY';
		_controls = [112401,112402,112403,112404];
		{
			_control = _display displayctrl _x;
			_control ctrlshow !(ctrlshown _control);
			_control ctrlcommit 0;
		} foreach _controls;
	};
"];


//_display = findDisplay 12;
//_map = _display displayCtrl 51;
_mapEH_mousebttondown = ((findDisplay 12) displayCtrl 51) ctrladdeventhandler ["mousebuttondown", "
	Private ['_button','_uav','_worldpos','_wp'];
	_button = _this select 1;
	if (_button == 0) then {
		_uav = BIS_UAV_PLANE;

		while {count (waypoints _uav) > 0} do {deletewaypoint ((waypoints _uav) select 0)};

		_worldpos = (_this select 0) posscreentoworld [_this select 2,_this select 3];
		_wp = (group _uav) addwaypoint [_worldpos,0];
		_wp setWaypointType 'MOVE';
		(group _uav) setcurrentwaypoint _wp;
	};
"];

//////////////////////////////////////////////////
endLoadingScreen;
//////////////////////////////////////////////////


//--- TERMINATE
waituntil {!isnil "bis_uav_terminate" || !alive _uav || !alive player};
if (!alive _uav) then {
	hint format [localize "strwfbasestructuredestroyed",localize "str_uav_action"];
};

_uav lock _locked;
titletext ["","black in"];
bis_uav_terminate = nil;
BIS_UAV_TIME = nil;
BIS_UAV_PLANE = nil;
objnull remoteControl gunner _uav;
player switchcamera "internal";
enableteamswitch _defaultTeamswitch;

_uav removeaction _action_leave;
_uav removeaction _action_swcam;

setGroupIconsVisible BIS_UAV_visible;
BIS_UAV_visible = nil;
(group _uav) setvariable ["MARTA_waypoint",[false,[-1,-1,-1,-1]]];

ppEffectDestroy _ppColor;
//1124 cuttext ["","plain"];
(finddisplay 46) displayremoveeventhandler ["keydown",_displayEH_keydown];
(finddisplay 46) displayremoveeventhandler ["mousebuttondown",_displayEH_mousebuttondown];
//(finddisplay 46) displayremoveeventhandler ["mousezchanged",_displayEH_mousezchanged];
((findDisplay 12) displayCtrl 51) ctrlremoveeventhandler ["mousebuttondown",_mapEH_mousebttondown];

