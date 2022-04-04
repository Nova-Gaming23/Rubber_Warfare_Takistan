
_name = _this select 0;
_currentSV = _this select 1;
//_maxSV = _this select 2;

playSound"uskd_taskhint";

sleep 0.5;

_starL  = "<t size='4' align='center'><br/><img image='hint\pics\supply.paa' align='Center'/></t><br/>";
_title  = "<t color='#e0b277' size='2' shadow='1.5' shadowColor='#000000' align='center'><br/>Supply Truck</t><br/><br/>";

_text1  = "<t color='#ffffff' size='1' shadow='1' shadowColor='#000000' align='Center'>Reloaded in:<br/></t>";
_text2  = format ["<t color='#00BFFF' size='1.5' shadow='1.5' shadowColor='#000000' align='center'><br/>%1</t><br/><br/>",_name];
_text3  = "<t color='#ffffff' size='1' shadow='1' shadowColor='#000000' align='Center'>Cargo value is now:<br/></t>";
_text4  = format ["<t color='#FFD700' size='1.5' shadow='1.5' shadowColor='#000000' align='center'><br/>( %1 )</t><br/><br/>",_currentSV];

hint parseText (_starL + _title + _text1 + _text2 + _text3 + _text4);

