private["_InfoMHQLocation","_InfoMHQPositon"];
_InfoMHQLocation = _this select 0;
_InfoMHQPositon	= _this select 1;

playSound "bitmenu";
sleep 0.5;
_starL  = "<t size='4' align='center'><img image='NG23\Pics\debug.paa' align='Center'/></t><br/>";
_title  = "<t color='#32CD32' size='1.5' shadow='1.5' shadowColor='#000000' align='center'><br/>" + (localize "STR_HINT_MHQ_Debug") + "</t><br/><br/>";
_text   = "<t color='#ffffff' size='1' shadow='1' shadowColor='#000000' align='Center'>" + (localize "STR_HINT_MHQ_Debug_Complete") + "<br/><br/></t>";
_text2   = "<t color='#ffffff' size='1' shadow='1' shadowColor='#000000' align='Center'>" + (localize "STR_HINT_MHQ_Debug_repair") + "<br/><br/></t>";
_text3  = format ["<t color='#eb6f1d' size='1.2' shadow='1.5' shadowColor='#000000' align='center'><br/>Location: %1</t><br/>",_InfoMHQLocation];
_text4  = format ["<t color='#eb6f1d' size='1.2' shadow='1.5' shadowColor='#000000' align='center'><br/>Respawn at: %1</t><br/><br/>",_InfoMHQPositon];

hint parseText (_starL + _title + _text + _text2 + _text3 + _text4);