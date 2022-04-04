_unit = (_this select 0);


_score = rating _unit;
_sideJoined = sideJoined;
_side = side _unit;
_distance = (_unit distance SpawnSafeZone_2);


_title  = format ["<t color='#b00c0c' size='1.5' shadow='1.5' shadowColor='#000000' align='center'><br/>--- Player ---</t><br/><br/>"];
_text   = format ["<t color='#eb6f1d' size='1.2' shadow='1.5' shadowColor='#000000' align='center'><br/>Rank: %1</t><br/><br/>",_score];
_text2  = format ["<t color='#eb6f1d' size='1.2' shadow='1.5' shadowColor='#000000' align='center'><br/>Side: %1</t><br/><br/>",_side];
_text3  = format ["<t color='#eb6f1d' size='1.2' shadow='1.5' shadowColor='#000000' align='center'><br/>sideJoined: %1</t><br/><br/>",_sideJoined];
_text4  = format ["<t color='#eb6f1d' size='1.2' shadow='1.5' shadowColor='#000000' align='center'><br/>Distance Safezone: %1</t><br/><br/>",_distance];

hint parseText (_title + _text + _text2 + _text3 + _text4 );

