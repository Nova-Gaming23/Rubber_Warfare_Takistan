disableSerialization;

_display = _this select 0;
MenuAction = -1;

_Template_ID_Label_Array = [3901,3902,3903,3904,3905,3906,3907,3908,3909,3910,3911,3912,3913];


_update = true;
_updateList = false;
_updateListInfo = false;
_type = 'nil';
_currentIDC = 0;
_FillerUnits = [];
ExtendedSquad = false;


_currentVD = viewDistance;
_funds = Call GetPlayerFunds;

_Player_Profile_CFG = profileNamespace getVariable "RubberWF_CFG_1";
ExtendedSquad = (_Player_Profile_CFG select 1)select 1;	

if (ExtendedSquad) then {
			ctrlSetText[3900, "Extended-Squad ON"];
	{(_display displayCtrl _x) ctrlShow true}forEach _Template_ID_Label_Array;
		(_display displayCtrl 13014) ctrlEnable false;	
		(_display displayCtrl 3906) ctrlSetTextColor [1,1,1,1]; //frame
		(_display displayCtrl 3901) ctrlSetBackgroundColor [0.04,0.04,0.04,0.9];	//Bagground	
		(_display displayCtrl 3902) ctrlSetBackgroundColor [0, 0, 0, 0.9];	//Header	
		(_display displayCtrl 3903) ctrlSetText "Extended-Squad Management";	//Header	
		(_display displayCtrl 3904) ctrlSetBackgroundColor [0.7, 0.7, 0.7, 0.7];	//footer	
		(_display displayCtrl 3907) ctrlSetText "Client\images\x_help.paa";	//Help Icon
		(_display displayCtrl 3908) ctrlSetText "Client\Images\con_A.paa";	//All Icon
		(_display displayCtrl 3909) ctrlSetText "\CA\warfare2\Images\con_barracks.paa";	//INF Icon
		(_display displayCtrl 3910) ctrlSetText "\CA\warfare2\Images\con_light.paa";	//LIGHT Icon
		(_display displayCtrl 3911) ctrlSetText "\CA\warfare2\Images\con_heavy.paa";	//HEAVY Icon
		(_display displayCtrl 3912) ctrlSetText "\CA\warfare2\Images\con_aircraft.paa";	//AIR Icon
		(_display displayCtrl 3913) ctrlSetText "Client\Images\con_Del_All.paa";	//DEL ALL Icon

		

}else{
		ctrlSetText[3900, "Extended-Squad OFF"];
		{(_display displayCtrl _x) ctrlShow false}forEach _Template_ID_Label_Array;		
		(_display displayCtrl 13014) ctrlEnable true;	
		(_display displayCtrl 3906) ctrlSetTextColor [1,1,1,-1];
		(_display displayCtrl 3901) ctrlSetBackgroundColor [0, 0, 0, -1];
		(_display displayCtrl 3902) ctrlSetBackgroundColor [0, 0, 0, -1];
		(_display displayCtrl 3903) ctrlSetText "";
		(_display displayCtrl 3904) ctrlSetBackgroundColor [0, 0, 0, -1];
		(_display displayCtrl 3907) ctrlSetText "";	//Help Icon			
		(_display displayCtrl 3908) ctrlSetText "";	//All Icon
		(_display displayCtrl 3909) ctrlSetText "";	//INF Icon
		(_display displayCtrl 3910) ctrlSetText "";	//LIGHT Icon
		(_display displayCtrl 3911) ctrlSetText "";	//HEAVY Icon
		(_display displayCtrl 3912) ctrlSetText "";	//AIR Icon
		(_display displayCtrl 3913) ctrlSetText "";	//DEL ALL Icon
		
};
if (votePopUp) then {
	ctrlSetText[13019, localize "STR_WF_VOTING_PopUpOffButton"];
} else {
	ctrlSetText[13019, localize "STR_WF_VOTING_PopUpOnButton"];
};

ctrlSetText [13002, Format [localize "STR_WF_TEAM_ViewDistanceLabel",_currentVD]];
ctrlSetText [13004, Format [localize "STR_WF_TEAM_TerrainGridLabel",currentTG]];
ctrlSetText [13006, Format [localize "STR_WF_TEAM_MoneyTransfer",0]];
ctrlSetText [13010, Format [localize "STR_WF_Income",Call GetPlayerFunds,(sideJoined) Call GetIncome]];

SliderSetRange[13003,1,PARM_Gameplay_ViewDistance];
SliderSetRange[13005,1,PARM_Gameplay_GrassDistance];
SliderSetRange[13007,0,_funds];
SliderSetPosition[13003,_currentVD];
SliderSetPosition[13005,currentTG];
_lastvd = _currentVD;
_lasttg = currentTG;	
_timer = 0;
_i = 1;
_in = 0;
_class = "DEF";

{
	_xtra = if (isPlayer (leader _x)) then {name (leader _x)} else {"AI"};		
	_team = clientTeams select _in;
	_teamFunds = ((_team) Call GetTeamFunds);
	switch (_i) do {
	case 1: {_class = "COM";};
	case 2: {_class = "MED";};
	case 3: {_class = "TLE";};
	case 4: {_class = "ENG";};
	case 5: {_class = "ENG";};
	case 6: {_class = "SPE";};
	case 7: {_class = "SNP";};
	case 8: {_class = "MRM";};
	case 9: {_class = "TLE";};
	case 10: {_class = "TLE";};
	case 11: {_class = "MED";};
	case 12: {_class = "ENG";};
	case 13: {_class = "ENG";};
	case 14: {_class = "SPE";};
	case 15: {_class = "SNP";};
	case 16: {_class = "MRM";};
	};
	lbAdd[13008,Format ["(%1) %2 $%3",_class,_xtra,_teamFunds]];
	_i = _i + 1;
	_in = _in + 1;
} forEach clientTeams; 
lbSetCurSel[13008,0];

_units = ((Units Group player) Call GetLiveUnits);
_units = _units - [player];
{
	_desc = [typeOf _x, 'displayName'] Call GetConfigInfo;
	_finalNumber = (_x) Call GetAIDigit;
	_isInVehicle = "";
	if (_x != vehicle _x) then {
		_descVehi = [typeOf (vehicle _x), 'displayName'] Call GetConfigInfo;
		_isInVehicle = " [" + _descVehi + "] ";
	};
	
		_txt = "["+_finalNumber+"] "+ _desc + _isInVehicle;
		
	
		_txt_ListBOX = "["+_finalNumber+"] "+ _desc + _isInVehicle;

		
	lbAdd[13013,_txt];
	//lnbAddRow [3905,[_txt_ListBOX]]

} forEach _units;
lbSetCurSel[13013,0];
(_display displayCtrl 3905) lnbSetCurSelRow 0;

{lbAdd[13018,_x]} forEach ["None","FX 1","FX 2","FX 3","FX 4","FX 5","FX 6","FX 7","FX 8","FX 9","Stealth's Takistan","Stealth's Zargabad","Stealth's Chernarus"];
lbSetCurSel[13018,currentFX];

/*{lbAdd[13018,_x]} forEach ["None","FX 1","FX 2","FX 3","FX 4","FX 5"];
lbSetCurSel[13018,currentFX];*/

// Extend_SQAD
_IDCS = [3908,3909,3910,3911,3912,3913];

//--- Get the closest Factory Type in range.
_break = false;
_statusLabel = ['All','Barracks','Light','Heavy','Aircraft','Airport'];

for [{_i = 0},{(_i < 6) && !_break},{_i = _i + 1}] do {
		_break = true;
		_currentIDC = _IDCS select _i;
		_type = _statusLabel select _i;
};
if (_type == 'nil') exitWith {closeDialog 0};

//--- Destroy local variables.
_break = nil;
_statusLabel = nil;

//--- Enable the current IDC.
_IDCS = _IDCS - [_currentIDC];
{
	_con = _display DisplayCtrl _x;
	_con ctrlSetTextColor [0.4, 0.4, 0.4, 1];
} forEach _IDCS;



while {alive player && dialog} do {
	sleep 0.05;
		
	if (Side player != sideJoined) exitWith {closeDialog 0};
	if (!dialog) exitWith {};

	_curSel = lbCurSel 13008;
	_currentVD = Floor (SliderPosition 13003);
	currentTG = Floor (SliderPosition 13005);
	_transferAmount = Floor (SliderPosition 13007);
	
	ctrlSetText [13002, Format [localize "STR_WF_TEAM_ViewDistanceLabel",_currentVD]];
	ctrlSetText [13004, Format [localize "STR_WF_TEAM_TerrainGridLabel",currentTG]];
	ctrlSetText [13006, Format [localize "STR_WF_TEAM_MoneyTransfer",_transferAmount]];
	
	if (MenuAction == 1) then {
		MenuAction = -1;
		if ((_transferAmount != 0)&&((clientTeams select _curSel) != group player)) then {
			[(clientTeams select _curSel),_transferAmount] Call ChangeTeamFunds;
			-_transferAmount Call ChangePlayerFunds;
			_funds = Call GetPlayerFunds;
			WFBE_LocalizeMessage = [vehicleVarName leader (clientTeams select _curSel),'CLTFNCLOCALIZEMESSAGE',['FundsTransfer',_transferAmount,name player]];
			publicVariable 'WFBE_LocalizeMessage';
			if (isHostedServer) then {[vehicleVarName leader (clientTeams select _curSel),'CLTFNCLOCALIZEMESSAGE',['FundsTransfer',_transferAmount,name player]] Spawn HandlePVF};
			sliderSetRange[13007,0,_funds];
		};
	_i = 1;
	_in = 0;
	lbClear 13008;
	{
	_xtra = if (isPlayer (leader _x)) then {name (leader _x)} else {"AI"};		
	_team = clientTeams select _in;
	_teamFunds = ((_team) Call GetTeamFunds);
	switch (_i) do {
	case 1: {_class = "COM";};
	case 2: {_class = "MED";};
	case 3: {_class = "TLE";};
	case 4: {_class = "ENG";};
	case 5: {_class = "ENG";};
	case 6: {_class = "SPE";};
	case 7: {_class = "SNP";};
	case 8: {_class = "MRM";};
	case 9: {_class = "TLE";};
	case 10: {_class = "TLE";};
	case 11: {_class = "MED";};
	case 12: {_class = "ENG";};
	case 13: {_class = "ENG";};
	case 14: {_class = "SPE";};
	case 15: {_class = "SNP";};
	case 16: {_class = "MRM";};
	};
	lbAdd [13008, Format ["(%1) %2 $%3",_class,_xtra,_teamFunds]];
	lbSetCurSel[13008,_curSel];
	//lbAdd[13008,Format ["(%1) %2 $%3",_class,_xtra,_teamFunds]];
	
	_i = _i + 1;
	_in = _in + 1;
	
} forEach clientTeams; 
//lbSetCurSel[13008,0];
	
};


	//--- SqadExtend Update TAB.
	if (_update) then {
		
		//--- Update tabs icons.
		_IDCS = [3908,3909,3910,3911,3912,3913];
		_IDCS = _IDCS - [_currentIDC];
			
		_con = _display DisplayCtrl _currentIDC;
		_con ctrlSetTextColor [0.2088, 0.6137, 1, 1];
		{_con = _display DisplayCtrl _x;_con ctrlSetTextColor [1, 1, 1, 1]} forEach _IDCS;
		
		_update = false;
		_updateList = true;
	};

	 if (_updateList) then {
	 _updateList = false;
	 
	 _IDCS = [3908,3909,3910,3911,3912,3913];
	 _IDCS = _IDCS - [_currentIDC];
	 _units = ((Units Group player) Call GetLiveUnits);
	 _units = _units - [player];
	_FillerUnits = [];
	lbClear 3905;
	 _listUnits = Format ['WFBE_%1%2UNITS',sideJoinedText,_type] Call GetNamespace;
	 _listUnitsAIRPort = Format ['WFBE_%1%2UNITS',sideJoinedText,"Airport"] Call GetNamespace;
	


	if (_currentIDC == 3908) then {
		// All Units
		_FillerUnits = _units;
	};
	if (_currentIDC == 3909) then {
	{
		// Only INF
		if ((typeof _x) in _listUnits && _x == vehicle _x) then {
		_FillerUnits = _FillerUnits + [_x];		
		};
	}forEach _units};
	
	if (_currentIDC == 3910) then {
	{
		// Only LIGHT
		if (typeof (vehicle _x) in _listUnits) then {
		_FillerUnits = _FillerUnits + [_x];		
		};
	}forEach _units	
	};
	if (_currentIDC == 3911) then {
	{
		// Only HEAVY
		if (typeof (vehicle _x) in _listUnits) then {
		_FillerUnits = _FillerUnits + [_x];		
		};
	}forEach _units		
	};
	if (_currentIDC == 3912) then {
	{
		// Only AIR
		_VehicleClass = typeof (vehicle _x);
		_AIRPool = _listUnits;
		_AIRPool = _AIRPool + _listUnitsAIRPort;
		if (_VehicleClass in _AIRPool) then {
		_FillerUnits = _FillerUnits + [_x];		
		};
	}forEach _units			
	};

	_updateListInfo = true;
};
if (_updateListInfo) then {
_updateListInfo = false;
	{
		_desc = [typeOf _x, 'displayName'] Call GetConfigInfo;
		_finalNumber = (_x) Call GetAIDigit;
		_isInVehicle = "";
		if (_x != vehicle _x) then {
			_descVehi = [typeOf (vehicle _x), 'displayName'] Call GetConfigInfo;
			_isInVehicle = " [" + _descVehi + "] ";
		};

			_txt_ListBOX = "["+_finalNumber+"] "+ _desc + _isInVehicle;

		lnbAddRow [3905,[_txt_ListBOX]]

	} forEach _FillerUnits;	
	lbSetCurSel[3905,0];
};


// EXTEND SQAD
if (MenuAction == 16) then {MenuAction = -1;_currentIDC = 3908;_update = true};
if (MenuAction == 17) then {MenuAction = -1;_currentIDC = 3909;_type = 'Barracks';_update = true};
if (MenuAction == 18) then {MenuAction = -1;_currentIDC = 3910;_type = 'Light';_update = true};
if (MenuAction == 19) then {MenuAction = -1;_currentIDC = 3911;_type = 'Heavy';_update = true};
if (MenuAction == 20) then {MenuAction = -1;_currentIDC = 3912;_type = 'Aircraft';_update = true};



	// DEL-ALL
	if (MenuAction == 21) then {
		MenuAction = -1;
		{
				if (_x isKindOf 'Man') then {removeAllWeapons _x};
				_x setDammage 1;
				if (_x != (vehicle _x )) then {(vehicle _x ) setDammage 1};
			} forEach _FillerUnits;
		if (ExtendedSquad) then {_updateList = true;};
	};


	// DEL-Selected
	if (MenuAction == 3) then {
		MenuAction = -1;
		_curUnitSel = lbCurSel 13013;
		if (ExtendedSquad) then {_curUnitSel = lbCurSel 3905};
		if (_curUnitSel != -1) then {
			_vehicle = vehicle (_units select _curUnitSel);
			_destroy = [(_units select _curUnitSel)];			
		if (ExtendedSquad) then {_destroy = [(_FillerUnits select _curUnitSel)]};		
			if (_vehicle != (_units select _curUnitSel)) then {_destroy = _destroy + [_vehicle]};
			{
				if (_x isKindOf 'Man') then {removeAllWeapons _x};
				_x setDammage 1;
			} forEach _destroy;

		if !(ExtendedSquad) then {	
			_units = ((Units Group player) Call GetLiveUnits);
			_units = _units - [leader group player];
			lbClear 13013;
			
			{
				_desc = [typeOf _x, 'displayName'] Call GetConfigInfo;
				_finalNumber = (_x) Call GetAIDigit;
				_isInVehicle = "";
				if (_x != vehicle _x) then {
					_descVehi = [typeOf (vehicle _x), 'displayName'] Call GetConfigInfo;
					_isInVehicle = " [" + _descVehi + "] ";
				};
				_txt = "["+_finalNumber+"] "+ _desc + _isInVehicle;
				lbAdd[13013,_txt]
			} forEach _units;
			lbSetCurSel[13013,0];
			}else{_updateList = true};
		};
	};



	
	if (MenuAction == 6) then {
		MenuAction = -1;
		currentFX = lbCurSel 13018;
		[currentFX] Spawn FX;
	};
	//--- Enable disable SqadExpad
	if (MenuAction == 14) then {
		MenuAction = -1;
		if !(ExtendedSquad) then {
			ExtendedSquad = true;
			ctrlSetText[3900, "Extended-Squad ON"];
			{(_display displayCtrl _x) ctrlShow true;}forEach _Template_ID_Label_Array;
				(_display displayCtrl 13014) ctrlEnable false;	
				(_display displayCtrl 3906) ctrlSetTextColor [1,1,1,1]; //frame
				(_display displayCtrl 3901) ctrlSetBackgroundColor [0.04,0.04,0.04,0.9];	//Bagground	
				(_display displayCtrl 3902) ctrlSetBackgroundColor [0, 0, 0, 0.9];	//Header	
				(_display displayCtrl 3903) ctrlSetText "Extended-Squad Management";	//Header	
				(_display displayCtrl 3904) ctrlSetBackgroundColor [0.7, 0.7, 0.7, 0.7];	//footer	
				(_display displayCtrl 3907) ctrlSetText "Client\images\x_help.paa";	//Help Icon
				(_display displayCtrl 3908) ctrlSetText "Client\Images\con_A.paa";	//All Icon
				(_display displayCtrl 3909) ctrlSetText "\CA\warfare2\Images\con_barracks.paa";	//INF Icon
				(_display displayCtrl 3910) ctrlSetText "\CA\warfare2\Images\con_light.paa";	//LIGHT Icon
				(_display displayCtrl 3911) ctrlSetText "\CA\warfare2\Images\con_heavy.paa";	//HEAVY Icon
				(_display displayCtrl 3912) ctrlSetText "\CA\warfare2\Images\con_aircraft.paa";	//AIR Icon
				(_display displayCtrl 3913) ctrlSetText "Client\Images\con_Del_All.paa";	//DEL ALL Icon				
		
			(PROFILE_CFG_Temp select 1) set [1,true];
		} else {
			ExtendedSquad = false;
			ctrlSetText[3900, "Extended-Squad OFF"];
			{(_display displayCtrl _x) ctrlShow false;}forEach _Template_ID_Label_Array;		
				(_display displayCtrl 13014) ctrlEnable true;	
				(_display displayCtrl 3906) ctrlSetTextColor [1,1,1,-1];
				(_display displayCtrl 3901) ctrlSetBackgroundColor [0, 0, 0, -1];
				(_display displayCtrl 3902) ctrlSetBackgroundColor [0, 0, 0, -1];
				(_display displayCtrl 3903) ctrlSetText "";
				(_display displayCtrl 3904) ctrlSetBackgroundColor [0, 0, 0, -1];
				(_display displayCtrl 3907) ctrlSetText "";	//Help Icon		
				(_display displayCtrl 3908) ctrlSetText "";	//All Icon
				(_display displayCtrl 3909) ctrlSetText "";	//INF Icon
				(_display displayCtrl 3910) ctrlSetText "";	//LIGHT Icon
				(_display displayCtrl 3911) ctrlSetText "";	//HEAVY Icon
				(_display displayCtrl 3912) ctrlSetText "";	//AIR Icon
				(_display displayCtrl 3913) ctrlSetText "";	//DEL ALL Icon
				
			(PROFILE_CFG_Temp select 1) set [1,false];			
		};
	};
	if (MenuAction == 15) then { //---added-MrNiceGuy
		MenuAction = -1;
		hintSilent " Double click to delete. \n\n[DEL All] = Delete all units in selected category.\n\n";
	};	
	//--- Vote Pop-Up //added-MrNiceGuy
	if (MenuAction == 13) then {
		MenuAction = -1;
		if (votePopUp) then {
			votePopUp = false;
			ctrlSetText[13019, localize "STR_WF_VOTING_PopUpOnButton"];
 		(PROFILE_CFG_Temp select 0) set [1,true];		
		} else {
			votePopUp = true;
			ctrlSetText[13019, localize "STR_WF_VOTING_PopUpOffButton"];
			(PROFILE_CFG_Temp select 0) set [1,false];
		};
	};

	if (_currentVD != _lastvd) then {
		setViewDistance _currentVD;
		(PROFILE_CFG_Temp select 2) set [1,_currentVD];
	};
	if (currentTG != _lasttg) then {
		setTerrainGrid currentTG;
		(PROFILE_CFG_Temp select 3) set [1,currentTG];
	};
	
	_lastvd = _currentVD;
	_lasttg = currentTG;
	
	if (_timer > 2) then {ctrlSetText [13010, Format [localize "STR_WF_Income",Call GetPlayerFunds,(sideJoined) Call GetIncome]];_timer = 0};
	_timer = _timer + 0.05;
	
	//--- Back Button.
	if (MenuAction == 8) exitWith { //---added-MrNiceGuy
		MenuAction = -1;
		closeDialog 0;
		createDialog "WF_Menu";
	};
};
