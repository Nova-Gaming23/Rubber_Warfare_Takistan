_rank = _this select 0;
_type = _this select 1;
_score = score player;

// JIP PROTECTION
if ((_rank == "CORPORAL") && (_score >= 30)) exitWith {};
if ((_rank == "SERGEANT") && (_score >= 50)) exitWith {};	
if ((_rank == "LIEUTENANT") && (_score >= 75)) exitWith {};
if ((_rank == "CAPTAIN") && (_score >= 100)) exitWith {};
if ((_rank == "MAJOR") && (_score >= 150)) exitWith {};
if ((_rank == "LtCOLONEL") && (_score >= 200)) exitWith {};
if ((_rank == "COLONEL") && (_score >= 300)) exitWith {};
if ((_rank == "GENERAL") && (_score >= 500)) exitWith {};	
if ((_rank == "ACE") && (_score >= 1000)) exitWith {};
	
	switch (_type) do {
	case 1:  { playSound "banana";};
	case 2:  { playSound "promote";};
	case 3:  { playSound "promotion";};
	case 4:  { playSound "general";};
	case 5:  { playSound "loading";};
	case 6:  { playSound "loading";};
	};

sleep 0.5;
_starL  = format ["<t size='3' align='center'><img image='ranks\%1.paa' align='Center'/></t><br/>",_rank];
//_starR  = "<img image='uskd\pics\uskd.paa' align='right'/>";
_title  = format ["<t color='#FAFAD2' size='2' shadow='2' shadowColor='#000000' align='center'><br/>%1</t><br/><br/>", _rank];
_text   = "<t color='#ffffff' size='1' shadow='1' shadowColor='#000000' align='Center'><br/>" + (localize "STR_WF_RUB_HintBox_RankDesc") + "<br/><br/></t>";
if (_type == 1) then {

_text   = "<t color='#DC143C' size='1' shadow='1' shadowColor='#000000' align='Center'><br/>" + (localize "STR_WF_RUB_HintBox_NoobRankDesc") + "<br/><br/></t>";
};
hint parseText (_title +_starL + _text);