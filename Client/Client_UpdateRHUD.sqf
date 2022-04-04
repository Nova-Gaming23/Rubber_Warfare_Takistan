disableSerialization;

CutRsc["OptionsAvailable","PLAIN",0];
_icons = [
"",
""
];

if (isNil 'BIS_CONTROL_CAM') then { RUBHUD = True } else {RUBHUD = false};

while {true} do {
	sleep 1;
	if (RUBHUD) then {
		if (isNull (["currentCutDisplay"] call BIS_FNC_GUIget)) then {CutRsc["OptionsAvailable","PLAIN",0];_delay = 0};	
		if (!isNull (["currentCutDisplay"] call BIS_FNC_GUIget)) then {
		_lineLabel0 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1344;	
		_lineLabel = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1345;	
		_textLabel1 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1346;
		_textLabel2 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1348;
		_textLabel3 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1350;
		_textLabel4 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1352;
		_textLabel5 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1354;
		_textLabel6 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1356;
		_textLabel7 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1358;
		_textLabel8 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1360;
		_textLabel9 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1361;
		_flagwest01 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1362;
		_flageast01 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1365;
		
		
		_player = Leader player;		
		
			//Show background
			
			_lineLabel ctrlShow true;
			_linelabel0 ctrlShow true;
			
			if (side player == WEST) then {
			_lineLabel0 CtrlSetBackgroundColor [0,0.4,1,1];
			_lineLabel CtrlSetBackgroundColor [0,0.4,1,1]; 
			} else {
			_lineLabel0 CtrlSetBackgroundColor [1,0.2,0,1];
			_lineLabel CtrlSetBackgroundColor [1,0.2,0,1];
			};
			
			_textLabel1 ctrlSetText "Health:";
			_textLabel2 ctrlSetText "UpTime:";
			_textLabel3 ctrlSetText "Money:";
			_textLabel4 ctrlSetText "Income:";
			_textLabel5 ctrlSetText "Supply:";
			_textLabel6 ctrlSetText "SV Min:";
			_textLabel7 ctrlSetText "City:";
			_textLabel8 ctrlSetText "Server:";
			_flagwest01 ctrlSetText "Client\Images\flag_bluefor_ca.paa";
			_flageast01 ctrlSetText "Client\Images\flag_opfor_ca.paa";
			_textLabel1 ctrlShow true;
			_textLabel2 ctrlShow true;
			_textLabel3 ctrlShow true;
			_textLabel4 ctrlShow true;
			_textLabel5 ctrlShow true;
			_textLabel6 ctrlShow true;
			_textLabel7 ctrlShow true;
			_textLabel8 ctrlShow true;
			_textLabel9 ctrlShow true;
			_lineLabel ctrlShow true;	
			_lineLabel0 ctrlShow true;
			_flagwest01 ctrlShow true;
			_flageast01 ctrlShow true;
			
					
			//Show frame
			//_backgroundControlFrame = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1800;
			//_backgroundControlFrame ctrlShow true;
			
			//Show Title
			//_backgroundControlTitle = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1001;
			//_backgroundControlTitle ctrlShow true;
			
			//HEALT			
			_textControl5 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1347;
			_textControl5 ctrlShow true;
			_status = damage _player;
			_health = 1 - _status;
			_healthAct = (1 - _status) * 100;
			_textControl5 ctrlSetText Format ["%1",str(round _healthAct)] + " %";
			if (_health <= 1) then {_textControl5 ctrlSetTextColor [0, 1, 0, 1]};
			if (_health <= 0.89) then {_textControl5 ctrlSetTextColor [1, 0.8831, 0, 1]};
			if (_health <= 0.79) then {_textControl5 ctrlSetTextColor [1, 0.65, 0, 1]};
			if (_health <= 0.60) then {_textControl5 ctrlSetTextColor [1, 0.15, 0, 1]};
			if (_health <= 0.08 ) then {_textControl5 ctrlSetTextColor [0.45, 0.25, 0.25, 1]};
			
			//UPTIME
			_uptime = Call GetTime; //added-MrNiceGuy
	       	_textControl4 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1349;
			_textControl4 ctrlShow true;
			_textControl4 ctrlSetTextColor [0.7, 0.7, 0.7, 1];_textControl4 ctrlSetText Format ["%1:%2:%3",_uptime select 1,_uptime select 2, _uptime select 3];
			
			//MONEY
			_textControl2 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1351;
			_textControl2 ctrlShow true;
			_textControl2 ctrlSetTextColor [0, 0.825294, 0.449803, 1];_textControl2 ctrlSetText Format ["%1 $",Call GetPlayerFunds];
			_textControl3 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1353;
			_textControl3 ctrlShow true;
			_textControl3 ctrlSetTextColor [0, 0.825294, 0.449803, 1];_textControl3 ctrlSetText Format ["+ %1 $",sideJoined Call GetIncome];
			//SUPPLY
			_textControl7 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1355;
			_textControl7 ctrlShow true;
			_textControl7 ctrlSetTextColor [1, 0.8831, 0, 1];_textControl7 ctrlSetText Format ["%1",WF_Logic getVariable Format ["%1Supplies",sideJoinedText]];
			_textControl8 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1357;
			_textControl8 ctrlShow true;
			_textControl8 ctrlSetTextColor [1, 0.6831, 0, 1];_textControl8 ctrlSetText Format ["+ %1", sideJoined Call GetTotalSupplyValue]; //, sideJoined Call GetTownsHeld];
			_textControl9 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1359;
			_textControl9 ctrlShow true;
			_textControl9 ctrlSetTextColor [0.1, 0.7, 0.9, 1];_textControl9 ctrlSetText Format ["%1 on %2", sideJoined Call GetTownsHeld,PARM_Gameplay_TownsToWin];
			//SERVERFPS			
			_textControl10 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1361;
			_textControl10 ctrlShow true;
			

			_serverFPS = WF_Logic getVariable "serverFPS";
			
			if (isNil '_serverFPS') then { _serverFPS=1000 };
			
			_level = "Perfect";
			
			if (_serverFPS > 52) then {_textControl10 ctrlSetTextColor [1, 1, 1, 1]; _level="Client";};
			if ((_serverFPS < 52)&&(_serverFPS >= 45)) then {_textControl10 ctrlSetTextColor [0, 1, 1, 1]; _level="Perfect";};
			if ((_serverFPS < 45)&&(_serverFPS >= 39)) then {_textControl10 ctrlSetTextColor [0, 1, 0, 1]; _level="Very Good";};
			if ((_serverFPS < 39)&&(_serverFPS >= 28)) then {_textControl10 ctrlSetTextColor [0.5, 1, 0.15, 1]; _level="Good";};
			if ((_serverFPS < 28)&&(_serverFPS >= 21)) then {_textControl10 ctrlSetTextColor [0.9, 1, 0, 1]; _level="Average";};
			if ((_serverFPS < 21)&&(_serverFPS >= 11)) then {_textControl10 ctrlSetTextColor [1, 0.6, 0, 1]; _level="Low";};
			if ((_serverFPS < 11)&&(_serverFPS >= 0)) then {_textControl10 ctrlSetTextColor [1, 0.3, 0, 1]; _level="Very Low";};
			
			_textControl10 ctrlSetText Format ["%1 FPS %2",_serverFPS,_level];
			
			//Player count:				
			_player_count_west = {isplayer _x && side _x == west } count allunits;
			_player_count_east = {isplayer _x && side _x == east } count allunits;
			
			_textControl_Player_west = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1363;
			_textControl_Player_east = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1366;			
			
			_spacenpwest = "";
			_spacenpeast = "";
			
			if (_player_count_west < 10) then {_spacenpwest = " "};
			if (_player_count_east < 10) then {_spacenpeast = " "};
			
			
			_textControl_Player_west ctrlSetText Format [_spacenpwest +"%1",_player_count_west];
			_textControl_Player_east ctrlSetText Format [_spacenpeast +"%1",_player_count_east];	
			
			_textControl_Player_west ctrlShow true;
			_textControl_Player_east ctrlShow true;
			
			//Bleu
			_textControl_Player_west ctrlSetTextColor [0, 0.44, 1, 1];			
			//Rouge
			_textControl_Player_east ctrlSetTextColor [0.80, 0, 0, 1];	

		// OSD SCORE BLUFOR - OPFOR
		_scorewest = scoreSide west; 
		_scoreeast = scoreSide east; 
		
		_scoreblu   = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1364;
		_scorered   = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1367;
		
		_spacewest = "";
		_spaceeast = "";
		
		if ( ( _scorewest < 10) && ( _scorewest >= 0) ) then { _spacewest = "   "};
		if ( ( _scorewest >= 10) && ( _scorewest < 100)) then { _spacewest = "  "};
		if ( ( _scorewest >= 100) && ( _scorewest < 1000)) then { _spacewest = " "};
		
		
		if ( ( _scoreeast < 10) && ( _scoreeast >= 0) ) then { _spaceeast = "   "};
		if ( ( _scoreeast >= 10) && ( _scoreeast < 100)) then { _spaceeast = "  "};
		if ( ( _scoreeast >= 100) && ( _scoreeast < 1000)) then { _spaceeast = " "};
				
		if ( ( _scorewest < 0) && (_scorewest > -10)) then { _spacewest = "  "};
		if ( ( _scoreeast < 0) && (_scoreeast > -10)) then { _spaceeast = "  "};
		
		if ( _scorewest < 0 ) then { _scoreblu ctrlSetTextColor [ 1,0.51,0,1];} else {_scoreblu ctrlSetTextColor [ 0.96,0.96,0.96,1];};
		if ( _scoreeast < 0 ) then { _scorered ctrlSetTextColor [ 1,0.51,0,1];} else {_scorered ctrlSetTextColor [ 0.96,0.96,0.96,1];};
		
		if ( _scorewest >= 1000) then {
		_scoreblu ctrlSetText Format ["%1",_scorewest];
		} else {
		_scoreblu ctrlSetText Format [_spacewest + "%1",_scorewest];
		};
		
		if ( _scoreeast >= 1000) then {
		_scorered ctrlSetText Format ["%1",_scoreeast];
		} else {
		_scorered ctrlSetText Format [_spaceeast + "%1",_scoreeast];
		};
		
		
			
		_scoreblu ctrlShow true;
		_scorered ctrlShow true;	
			
		};
	} else {
	if (isNull (["currentCutDisplay"] call BIS_FNC_GUIget)) then {CutRsc["OptionsAvailable","PLAIN",0];_delay = 0};	
		if (!isNull (["currentCutDisplay"] call BIS_FNC_GUIget)) then {
	_lineLabel0 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1344;	
	_lineLabel = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1345;	
_textLabel1 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1346;
_textLabel2 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1348;
_textLabel3 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1350;
_textLabel4 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1352;
_textLabel5 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1354;
_textLabel6 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1356;
_textLabel7 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1358;
_textLabel8 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1360;

_textControl2 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1351;
_textControl3 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1353;
_textControl4 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1349;
_textControl5 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1347;
_textControl7 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1355;
_textControl8 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1357;
_textControl9 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1359;
_textControl10 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1361;
_flagwest01 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1362;
_flageast01 = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1365;
_textControl_Player_west = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1363;
_textControl_Player_east = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1366;
_scoreblu   = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1364;
_scorered   = (["currentCutDisplay"] call BIS_FNC_GUIget) DisplayCtrl 1367;

			_textControl2 ctrlShow false;
			_textControl3 ctrlShow false;
			_textControl4 ctrlShow false;
			_textControl5 ctrlShow false;
			_textControl7 ctrlShow false;
			_textControl8 ctrlShow false;
			_textControl9 ctrlShow false;
			_textControl10 ctrlShow false;
			_flagwest01 ctrlShow false;
			_flageast01 ctrlShow false;
			_scoreblu ctrlShow false;
			_scorered ctrlShow false;
			_textLabel1 ctrlShow false;
			_textLabel2 ctrlShow false;
			_textLabel3 ctrlShow false;
			_textLabel4 ctrlShow false;
			_textLabel5 ctrlShow false;
			_textLabel6 ctrlShow false;
			_textLabel7 ctrlShow false;
			_textLabel8 ctrlShow false;
			_lineLabel ctrlShow false;	
			_lineLabel0 ctrlShow false;
			_textControl_Player_west ctrlShow false;	
			_textControl_Player_east ctrlShow false;
			
		};

	};
	
	
};