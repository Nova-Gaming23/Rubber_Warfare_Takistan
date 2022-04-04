Private["_canJoin","_get","_name","_side","_sideOrigin","_uid","_varname"];

_uid = _this select 0;
_side = _this select 1;
_name = _this select 2;
_varname = _this select 3;
_isAdmin = _this select 4;
_reason = "";
_canJoin = true;



_get = Format["WFBE_JIP_USER%1",_uid] Call GetNamespace;

if !(isNil '_get') then {
	_sideOrigin = _get select 3;
	
	if (_sideOrigin != _side) then {
		if !(paramShowUID) then {_uid = "xxxxxxx"};
	
		WFBE_LocalizeMessage = [nil,'CLTFNCLOCALIZEMESSAGE',['Teamswap',_name,_uid,_sideOrigin,_side]];
		publicVariable 'WFBE_LocalizeMessage';
		_reason = "Teamswap";
		_canJoin = false;
		
		diag_log Format["[WFBE (INFORMATION)][frameno:%4 | ticktime:%5] RequestJoin: Player %1 <%2> (%3) has been sent back to the lobby for teamswapping.",_name,_varname,_get select 0,diag_frameno,diag_tickTime];
	};
};
if (_canJoin && PARM_PlayerBalancing) then {
	_Side_P = if (_side == East) then {EAST}else{WEST};
	_Invert_Side = if (_side == East) then {WEST}else{EAST};
	_Count_P_Enemy = 0;
	_Count_P_Friends = 0;
	{private "_x";
		_unit = leader _x;
		if (!isNil '_unit') then {
			if (isPlayer _unit) then {_Count_P_Friends = _Count_P_Friends + 1};
		};
	}ForEach call compile Format["WFBE_%1TEAMS",_Side_P];

	{private "_x";
		_unit = leader _x;
		if (!isNil '_unit') then {
			if (isPlayer _unit) then {_Count_P_Enemy = _Count_P_Enemy + 1};
		};
	}ForEach call compile Format["WFBE_%1TEAMS",_Invert_Side];	
	_Max_Diff = 2;
	if (_Count_P_Enemy > 5) then {_Max_Diff = 3};
	if (_Count_P_Enemy > 10) then {_Max_Diff = 4};
	if (_Count_P_Enemy > 14) then {_Max_Diff = 5};
	diag_log Format["[NG23]RequestJoin: Player: %4 Join | _Count_P_Enemy = %1 | _Count_P_Friends = %2 | _CurDiff = %5 | _Max_Diff = %3",_Count_P_Enemy,_Count_P_Friends,_Max_Diff,_name,(_Count_P_Friends - _Count_P_Enemy)];
	if ((_Count_P_Friends - _Count_P_Enemy) > _Max_Diff) then {
			
			WFBE_LocalizeMessage = [nil,'CLTFNCLOCALIZEMESSAGE',['Balancing',_name,_uid]];
			publicVariable 'WFBE_LocalizeMessage';
			
			_reason = "Balancing";
			_canJoin = false;
	};
};
if (_isAdmin) then {_canJoin = true};
WFBE_CanJoin = [_varname,'CLTFNCCANJOIN',[_varname,_canJoin,_reason]];
publicVariable 'WFBE_CanJoin';