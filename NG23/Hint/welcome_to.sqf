
playSound "bitmenu";
sleep 0.5;
_starL  = "<t size='5' align='center'><img image='NG23\Pics\welcome_C.paa' align='Center'/></t><br/>";
_title  = format ["<t color='#b00c0c' size='1.5' shadow='1.5' shadowColor='#000000' align='center'><br/>--- Welcome to Chernarus ---</t><br/><br/>"];_text   = "<t color='#ffffff' size='1' shadow='1' shadowColor='#000000' align='Center'>" + (localize "STR_HINT_MHQ_Debug_Complete") + "<br/><br/></t>";
_text  = format ["<t color='#eb6f1d' size='1.2' shadow='1.5' shadowColor='#000000' align='center'><br/>Error Code: %1</t><br/><br/>",_ErrorCode];

hint parseText (_starL + _title + _text );