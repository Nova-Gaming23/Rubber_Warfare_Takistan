disableSerialization;

/*CutRsc["gps","PLAIN",0];
_icons = [
"",
""
];*/

	
Local_GUIActive=true;
Local_GUIRestart=false;

_rank = "Private";
_LastParsedText = "";	 //UI part of - Vehicle Crew List
//_position=getPos Local_PlayerVehicle;
_position=getPos vehicle player;
_display=uiNamespace getVariable "GUI";

_map=_display displayCtrl 6002;
_border=_display displayCtrl 6001;
	
//START: GPS, SCORE, FUNDS, PLAYERS
//_border=_display displayCtrl 6001;
//_map=_display displayCtrl 6002;
_lowertext=_display displayCtrl 6003;

/*//START: OPTION ICONS
_opt0=_display displayCtrl 3500;
_opt1=_display displayCtrl 3501;
_opt2=_display displayCtrl 3502;
_opt3=_display displayCtrl 3503;

//END: OPTION ICONS*/

if (side player == WEST) then {
_lowertext CtrlSetBackgroundColor [0,0,0,0.9];}
 else{
_lowertext CtrlSetBackgroundColor [0,0,0,0.9];
};
_crewlist=_display displayCtrl 6004;
//_playerslist=_display displayCtrl 6012;
//_scorelist=_display displayCtrl 6013;

//hint _display;
//_fundslist=_display displayCtrl 6014;
//END: GPS, SCORE, FUNDS, PLAYERS


//START: OPTION ICONS
_opt0=_display displayCtrl 6005;
_opt1=_display displayCtrl 6006;
_opt2=_display displayCtrl 6007;
_opt3=_display displayCtrl 6008;
_opt4=_display displayCtrl 6009;
_opt5=_display displayCtrl 6010;
_opt6=_display displayCtrl 6011;
//END: OPTION ICONS


	
//START: HUMAN DAMAGE INDICATOR
_man=_display displayCtrl 6015;
_head=_display displayCtrl 6016;
_body=_display displayCtrl 6017;
_arms=_display displayCtrl 6018;
_legs=_display displayCtrl 6019;
//END: HUMAN DAMAGE INDICATOR

	
_dx=SafeZoneW+safeZoneX-0.245;
_dy=SafeZoneH+safeZoneY-0.2575;

/*	
//setting position: gps
if (Dialog_GUIType in [0,2]) then
{
	_border ctrlSetPosition [_dx,_dy];
	_map ctrlSetPosition [_dx,_dy+0.001];
	_fundslist ctrlSetPosition [_dx-0.135,_dy+0.15];
}else{
	_border ctrlSetPosition [safeZoneX-2,SafeZoneY-2];
	_map ctrlSetPosition [safeZoneX-2,SafeZoneY-2];
	_fundslist ctrlSetPosition [_dx-0.015,_dy+0.14];
}; */
	
//setting position: crew list, funds, players, score
//_lowertext ctrlSetPosition [_dx-0.0095,_dy+0.22];
_crewlist ctrlSetPosition [safeZoneX+0.010,SafeZoneY+0.425];
//_playerslist ctrlSetPosition [safeZoneX+0.025,_dy+0.11];	
//_scorelist ctrlSetPosition [safeZoneX+0.155,_dy+0.11];		
		
//setting position: damage indicator
if (Dialog_GUIType < 2) then
{
	_man ctrlSetPosition [safeZoneX+0.04,SafeZoneY+0.04];
	_head ctrlSetPosition [safeZoneX+0.051,SafeZoneY+0.038];
	_body ctrlSetPosition [safeZoneX+0.04,SafeZoneY+0.0725];
	_arms ctrlSetPosition [safeZoneX+0.04,SafeZoneY+0.0725];
	_legs ctrlSetPosition [safeZoneX+0.04,SafeZoneY+0.125];
}else{
	_man ctrlSetPosition [safeZoneX-2,SafeZoneY-2];
	_head ctrlSetPosition [safeZoneX-2,SafeZoneY-2];
	_body ctrlSetPosition [safeZoneX-2,SafeZoneY-2];
	_arms ctrlSetPosition [safeZoneX-2,SafeZoneY-2];
	_legs ctrlSetPosition [safeZoneX-2,SafeZoneY-2];
};
	
switch (Dialog_GUIColor) do
{
	case 0: {Dialog_GUIColorActive = "#DDDDDD";}; // White
	case 1: {Dialog_GUIColorActive = "#ff0000";}; // Red
	case 2: {Dialog_GUIColorActive = "#00FF00";}; // Green
	case 3: {Dialog_GUIColorActive = "#0033cc";}; // Blue
	case 4: {Dialog_GUIColorActive = "#ffcc33";}; // Yellow
};

//applying changes
_border ctrlCommit 0;
_map ctrlCommit 0;
_lowertext ctrlCommit 0;
_crewlist ctrlCommit 0;
//_scorelist ctrlCommit 0;
//_playerslist ctrlCommit 0;
//_fundslist ctrlCommit 0;
_man ctrlCommit 0;
_head ctrlCommit 0;
_body ctrlCommit 0;
_arms ctrlCommit 0;
_legs ctrlCommit 0;	
//_radar ctrlCommit 0;
//_teamspeak ctrlCommit 0;
_playerVehicle = vehicle player;

_map ctrlMapAnimAdd [0,((speed vehicle Player)+5)/200,_position];
ctrlMapAnimCommit _map;

//some auxiliary variables
_CurrentSpeed=0;
_TimerG=0;
_TimerC=0;
_TimerO=0;
_TimerP=0;
_TimerD=0;	
_TimerT=0;
_lastdam=0;
_playerInVehicle=false;
_updatedam=true;
if (isNil "legScream") then {
legScream = 0;
};

while{!visibleMap&&Local_GUIActive&&(alive player)&&!Local_GUIRestart&&(isNil "BIS_CONTROL_CAM")&& (RUBOSD == 1)}do

{
///--- Turn GPS MAP ON / OFF
if (RUBGPS == 0) then {
_map ctrlShow false;
_lowertext ctrlShow false;
_border	 ctrlShow false;
} else {
//_display=uiNamespace getVariable "GUI";
//_map=_display displayCtrl 6002;
//_border=_display displayCtrl 6001;
//_lowertext=_display displayCtrl 6003;
_map ctrlShow true;
_lowertext ctrlShow true;
_border	 ctrlShow true;
};


//--- GPS MAP START
	_timing=time;
	_position=getPos vehicle player;
	_direction=direction vehicle player;
	_playerVehicle = vehicle player;
	
	
		if(_TimerG<=_timing)then
	{
		_TimerG=_timing+0.5;
		
		_CurrentSpeed=speed vehicle player;
		_zoomlevel = (zoomgps +((_CurrentSpeed+1)/450));
		if (vehicle player iskindof "AIR") then {_zoomlevel = ((zoomgps + 0.025)+((_CurrentSpeed+5)/200));};
		if (vehicle player iskindof "CAR") then {_zoomlevel = ((zoomgps + 0.005)+((_CurrentSpeed+10)/200));};
		if (vehicle player iskindof "TANK") then {_zoomlevel = ((zoomgps + 0.015)+((_CurrentSpeed+10)/150));};
		if (zoomauto == 2) then { _zoomlevel = zoomgps; };
		
		_map ctrlMapAnimAdd [0.5,_zoomlevel,_position];
		ctrlMapAnimCommit _map;

		_respawnColor = "00AAEE";
		switch (respawnTnTStatus) do {
			case "GREEN":
			{
			_respawnColor = "22d4e5";
			};
			case "YELLOW":
			{
			_respawnColor = "FFFF00";
			};
			case "RED":
			{
			_respawnColor = "FF0000";
			};
			default	{_respawnColor = "00AAEE";};
		};
			_score = score player;
			
			
			if (_score <= -5) then {
			_rank = "NOOB";
			_respawntimenoob = respawnTotal + 2;
			if (promotion == -1) then {
			    playSound "banana";
				sleep _respawntimenoob;
				player globalChat Format[localize "STR_WF_CHAT_Noob_Rank", name player];
				sleep 0.5;
				titleText["WATCH OUT: USE YOUR BRAIN!!!", "PLAIN DOWN"];
				null = [_rank,1]ExecVM "Hint\rank.sqf";
				promotion = -2;
				};
			};
			if ((_score < 0) && (_score > -4)) then {_rank = "RECRUIT"; promotion = -1};
			if ((_score >= 0 ) && (_score < 10)) then {_rank = "PRIVATE"; promotion = 0;};
			if (_score >= 10 ) then {
				_rank = "CORPORAL";
				if (promotion == 0) then {
					null = [_rank,2]ExecVM "Hint\rank.sqf";
					promotion = 1;
					};
			};
			if (_score >= 30 ) then {
				_rank = "SERGEANT";
				if (promotion == 1) then {
					null = [_rank,2]ExecVM "Hint\rank.sqf"; 
					promotion = 2; 
				};
			};
						
			if (_score >= 50 ) then {
			_rank = "LIEUTENANT";
				if (promotion == 2) then {
					null = [_rank,2]ExecVM "Hint\rank.sqf"; 
					promotion = 3; 
				};			
			};
			if (_score >= 75 ) then {
			_rank = "CAPTAIN";
				if (promotion == 3) then {
					null = [_rank,3]ExecVM "Hint\rank.sqf"; 
					promotion = 4; 
				};
			};
			if (_score >= 100 ) then {
			_rank = "MAJOR";
				if (promotion == 4) then {
					null = [_rank,3]ExecVM "Hint\rank.sqf"; 
					promotion = 5; 
				};
			
			};
			if (_score >= 150 ) then {
			_rank = "LtCOLONEL";
				if (promotion == 5) then {
					null = [_rank,3]ExecVM "Hint\rank.sqf"; 
					promotion = 6; 
				};
			
			};
			if (_score >= 200 ) then {
			_rank = "COLONEL";
				if (promotion == 6) then {
					titleText["Congratulations: COLONEL", "PLAIN DOWN"];
					null = [_rank,3]ExecVM "Hint\rank.sqf"; 
					promotion = 7; 
				};
			};
			if (_score >= 300 ) then {
			_rank = "GENERAL";
				if (promotion == 7) then {
					titleText["GREAT: You are now GENERAL!", "PLAIN DOWN"];
					null = [_rank,4]ExecVM "Hint\rank.sqf"; 
					promotion = 8; 
				};
			};
			if (_score >= 500 ) then {
			_rank = "ACE";
				if (promotion == 8) then {
					titleText["ACE: Only few players can reach ACE level\nCongratulations!", "PLAIN DOWN"];
					null = [_rank,5]ExecVM "Hint\rank.sqf"; 
					promotion = 9; 
				};
			};
			if (_score >= 1000 ) then {
			_rank = "COMMANDER";
				if (promotion == 9) then {
					titleText["Rubber says: Well done mate, EPIC SCORE!!!", "PLAIN DOWN"];
					null = [_rank,6]ExecVM "Hint\rank.sqf"; 
					promotion = 10; 
				};
			};
			
		_lowertext ctrlSetStructuredText composeText([parseText(format ["<t size='2'><img image='ranks\%1.paa' align='left'/></t><t color='#FAFAD2' align='left' size='1'> %1 </t><t color='#22d4e5' size ='1.2'>%2</t> Respawn <t color='#%3' size ='1'>%4s | %5</t>",_rank,score player,_respawnColor,respawnTotal,respawnTnTTime])]);
	};
//--- GPS MAP END
			
	//---VEHICLE-CREW-START---
	if(_TimerC<=_timing)then {
		_TimerC=_timing+1;
		_ParsedText="";
		if (vehicle player != player) then {
			_position = getPos (vehicle player);
			_direction = direction (vehicle player);
			_playerVehicle = vehicle player;
			_crew = crew _PlayerVehicle;		
			{
				if (!isNull _playerVehicle && alive _x) then {	
					_assignedRole = assignedVehicleRole _x;
					if (count _assignedRole > 0) then {
						switch (_assignedRole select 0) do {
							case "Cargo": {
								if (isNil {_x getVariable "playernames"}) then {
									_ParsedText=_ParsedText+format ["<t size='1.8'><img image='pic\i_cargo_ca.paa'></t> <t size='1.55' shadow='true' color='#A4E7E7'>. AI Soldier</t><br/>"];								
								} else {
									_ParsedText=_ParsedText+format ["<t size='1.8'><img image='pic\i_cargo_ca.paa'></t> <t size='1.55' shadow='true' color='#00FFFF'>.</t><t> </t><t color='#00FFFF'>%1</t><br/>",_x getVariable "playernames"];								
								};
							};
							case "Driver": {
								if (isNil {_x getVariable "playernames"}) then {
									_ParsedText=_ParsedText+format ["<t size='1.8'><img image='pic\i_driver_ca.paa'></t> <t size='1.55' shadow='true' color='#22C67B'>. AI Driver</t><br/>"];
								} else {
									_ParsedText=_ParsedText+format ["<t size='1.8'><img image='pic\i_driver_ca.paa'></t> <t size='1.55' shadow='true' color='#32CD32'>.</t><t> </t><t color='#32CD32'>%1</t><br/>",_x getVariable "playernames"];
								};
							};
							case "Turret": {
								switch (_x) do {
									case (commander _PlayerVehicle): {
										if (isNil {_x getVariable "playernames"}) then {
											_ParsedText=_ParsedText+format ["<t size='1.8'><img image='pic\i_commander_ca.paa'></t> <t size='1.55' shadow='true' color='#FF9900'>. AI Commander</t><br/>"];
										} else {
											_ParsedText=_ParsedText+format ["<t size='1.8'><img image='pic\i_commander_ca.paa'></t> <t size='1.55' shadow='true' color='#FFD700'>.</t><t> </t><t color='#FFD700'>%1</t><br/>",_x getVariable "playernames"];
										};
									};
									case (gunner _PlayerVehicle): {
										if (isNil {_x getVariable "playernames"}) then {
											_ParsedText=_ParsedText+format ["<t size='1.8'><img image='pic\i_gunner_ca.paa'></t> <t size='1.55' shadow='true' color='#FF6C00'>. AI Gunner</t><br/>"];
										} else {
											_ParsedText=_ParsedText+format ["<t size='1.8'><img image='pic\i_gunner_ca.paa'></t> <t size='1.55' shadow='true' color='#FFD700'>.</t><t> </t><t color='#FFD700'>%1</t><br/>",_x getVariable "playernames"];
										};
									};
									default {
										if (isNil {_x getVariable "playernames"}) then {
											_ParsedText=_ParsedText+format ["<t size='1.8'><img image='pic\i_gunner_ca.paa'></t> <t size='1.55' shadow='true' color='#FA8072'>. AI Gunner</t><br/>"];
										} else {
											_ParsedText=_ParsedText+format ["<t size='1.8'><img image='pic\i_gunner_ca.paa'></t> <t size='1.55' shadow='true' color='#FF0000'>.</t><t> </t><t color='#FF0000'>%1</t><br/>",_x getVariable "playername"];
										};
									};
								};								
							};							
							default{};
						};					
					};
				};					
			}forEach _crew;			
		};
		if (_ParsedText != _LastParsedText) then {
			_LastParsedText = _ParsedText;
			_crewlist ctrlSetStructuredText parseText _ParsedText;
		};		
	};		
	//---VEHICLE-CREW-END---
		
	//---DAMAGE-INDICATOR-START---
	_dam=getDammage player;
	if (((((getDammage player)!=_lastdam) && (_TimerD<=_timing) && !_playerInVehicle) || _updatedam)) then
	{
		_lastdam=_dam;
		_updatedam=false;
		_TimerD=_timing+0.3;
		
		_man ctrlSetText "pic\man.paa";
							
		if (_dam<0.01) then 
		{
			legScream = 0;
			Dialog_LegsHit=false;
			Dialog_ArmsHit=false;
			Dialog_BodyHit=false;
			Dialog_HeadHit=false;
			_body ctrlSetText "";
			_head ctrlSetText "";
			_legs ctrlSetText "";
			_arms ctrlSetText "";
			
			
		};
		/*if ((!Dialog_LegsHit) && (!Dialog_ArmsHit) && (!Dialog_BodyHit) && (!Dialog_HeadHit) && (_dam>0.3 ) && (handsHit player!=1)) then
		{
			Dialog_BodyHit=true;
		};*/
		if ((canstand player) && (_dam>0.49 )) then
		{
			Dialog_HeadHit=true;
		};
		
		if ((_dam>0.05) && (_dam<=0.11)) then 
			{
			
			_body ctrlSetText "pic\body_y.paa";
			_arms ctrlSetText "pic\arms_Y.paa";
			_legs ctrlSetText "pic\legs_y.paa";
			};
			if ((_dam>0.07) && (_dam<0.15)) then 
			{
			_head ctrlSetText "pic\head_Y.paa";
			};
		if ((_dam>=0.15) && (_dam<=0.21)) then 
			{
			_man ctrlSetText "pic\man_y.paa";
			_body ctrlSetText "pic\body_y.paa";
			};
		if ((_dam>0.21) && (_dam<=0.40)) then 
			{
						_man ctrlSetText "pic\man_o.paa";
						_body ctrlSetText "pic\body_o.paa";
			};
		if (_dam>0.40) then 
			{
			_man ctrlSetText "pic\man_r.paa";
			_body ctrlSetText "pic\body.paa";
			};
				
		if (Dialog_HeadHit) then
		{
			_head ctrlSetText "pic\head.paa";
		}else{
			_head ctrlSetText "";
		};
		
		if ((handsHit player==1) || Dialog_ArmsHit) then
		{
			_arms ctrlSetText "pic\arms.paa";
		};
				
		if (!(canstand player)) then
			{
			_legs ctrlSetText "pic\legs_r.paa";
			if (legScream == 0) then {
			_scream = round random(3);
			switch (_scream) do {
		case 0: {
				player sideChat localize "STR_WF_RUB_HitLegs_Case1";
				};
		case 1: {
				player sideChat localize "STR_WF_RUB_HitLegs_Case2";
				};
		case 2: {
				player sideChat localize "STR_WF_RUB_HitLegs_Case3";
				};
		case 3: {
				player sideChat localize "STR_WF_RUB_HitLegs_Case4";
				};
			};
		legScream = 1;	
		};
	        };

	};
		
	//if ((Local_PlayerVehicle!=player) && !_playerInVehicle) then
	if (vehicle player != player) then
	{			
		_playerInVehicle=true;
		_man ctrlSetText "";
		_body ctrlSetText "";
		_head ctrlSetText "";
		_legs ctrlSetText "";
		_arms ctrlSetText "";
				
	};
	if (vehicle player == player) then
	//if ((Local_PlayerVehicle==player) && _playerInVehicle) then
	{
		_playerInVehicle=false;
		_updatedam=true;	

		//reset data for radar blocking
		//_commanderradar=true;
		//_gunnerradar=true;
		//_driverradar=true;				
	};
	//---DAMAGE-INDICATOR-END---
	
	sleep 0.5;
};

if (RUBOSD == 0) then {
		_man ctrlSetText "";
		_body ctrlSetText "";
		_head ctrlSetText "";
		_legs ctrlSetText "";
		_arms ctrlSetText "";
};
	1365 cutRsc ["Default","plain"];
	Local_GUIWorking=false;
	