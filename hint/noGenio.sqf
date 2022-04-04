playSound"bitmenu";
sleep 0.5;
_starL  = "<t size='4' align='center'><img image='hint\pics\warning.paa' align='Center'/></t><br/>";
//_starR  = "<img image='uskd\pics\uskd.paa' align='right'/>";
_title  = "<t color='#FFD700' size='1.5' shadow='1.5' shadowColor='#000000' align='center'><br/>ENGINEER Truck</t><br/><br/>";
_text   = "<t color='#ffffff' size='1' shadow='1' shadowColor='#000000' align='Center'>Only ENGINEERS<br/> Allowed!<br/><br/></t>";
hint parseText (_starL + _title + _text);