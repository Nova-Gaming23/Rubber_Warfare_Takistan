
//--- Murcielago - TNT Respawn Delay (Min:30s/Max:100s)

// CHANGE _TimeRemanining -> 181 when you fisnish the code check.

_h = 0;
_min = 0;
_s = 0;
_min_Text = "";
_s_Text = "";
_TimeRemanining = 121;
respawnParam = PARM_Respawn_Delay; // GET Respawn timer from parameter
respawnTotal = respawnParam + respawnMalus;
_firstDie = 0;

respawnTnTStatus = "RED";
//missionNamespace setVariable ['WFBE_RESPAWN_30TNT_STATUS',"RED"];

if (RespawnTotal < 100) Then { respawnMalus = respawnMalus +10; };	

ScopeName "Main";
While {Alive(Player)} Do
	{
	respawnTotal = respawnParam + respawnMalus;
	if (_firstDie == 0) Then {
								respawnTotal = respawnTotal -10;
								_firstDie = 1;
								};
	
	_TimeRemanining = _TimeRemanining - 0.1;
	_h = Floor (_TimeRemanining/3600);
	_min = Floor((_TimeRemanining/3600 - Floor (_TimeRemanining/3600))*60);
	_s = Floor((((_TimeRemanining/3600 - Floor (_TimeRemanining/3600))*60) - Floor((_TimeRemanining/3600 - Floor (_TimeRemanining/3600))*60))*60);

	if (_min < 10) Then {_min_Text = "0"+Str(_min);} Else {_min_Text = Str(_min);};
	if (_s < 10) Then {_s_Text = "0"+Str(_s);} Else {_s_Text = Str(_s);};

	respawnTnTTime = _min_Text+":"+_s_Text;

	//RED
	if ((_TimeRemanining < 0) && (respawnTnTStatus == "RED")) Then
		{
		if (respawnTotal > respawnParam) Then {respawnMalus = respawnMalus -10;};
		_TimeRemanining = 121;
		respawnTnTStatus = "YELLOW";
		
			
		};

	//YELLOW to GREEN
	if ((_TimeRemanining < 0) && (respawnTnTStatus == "YELLOW")) Then
		{
		_TimeRemanining = 121;
		if (respawnTotal > respawnParam) Then {respawnMalus = respawnMalus -10;};
		respawnTotal = respawnParam + respawnMalus; //update
		if (respawnTotal <= respawnParam) Then {
			respawnTnTStatus = "GREEN";
			_TimeRemanining = 0;
			respawnMalus = 0;
			_firstDie = 0;
			BreakTo "Main";
		};
				
		
		};

	//HintSilent Format ["TIME= %1\nRESPAWN DELAY= %2s\nSTATUS= %3\nMALUS= %4",respawnTnTTime,respawnTotal,respawnTnTStatus,respawnMalus];

	Sleep 0.1;

	};

respawnTnTTime ="00:00";

//HintSilent Format ["TIME= %1\nRESPAWN DELAY= %2s\nSTATUS= %3\nMALUS= %4",respawnTnTTime,respawnTotal,respawnTnTStatus,respawnMalus];
