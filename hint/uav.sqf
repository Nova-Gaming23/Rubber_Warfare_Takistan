_status = _this select 0;


sleep 0.5;

if (_status == 1) then {

_starL  = "<br/><t size='3' align='center'><img image='hint\pics\uav_connected.paa' align='Center'/></t><br/>";
_title  = "<t color='#ADD8E6' size='1.75' shadow='1.5' shadowColor='#000000' align='center'><br/>UAV MQ-9<br/></t><br/>";
_text   = "<t color='#ffffff' size='1.2' shadow='1' shadowColor='#000000' align='Center'>Remote Control<br/>Console:<br/><br/>(( Connected ))<br/><br/></t>";
hint parseText (_starL + _title + _text);
} else {

_starL  = "<br/><t size='3' align='center'><img image='hint\pics\uav_disconnected.paa' align='Center'/></t><br/>";
_title  = "<t color='#ADD8E6' size='1.7' shadow='1.5' shadowColor='#000000' align='center'><br/>UAV MQ-9<br/></t><br/>";
_text   = "<t color='#ffffff' size='1.2' shadow='1' shadowColor='#000000' align='Center'>Remote Control<br/>Console:<br/><br/>(( Disconnected ))<br/><br/></t>";
hint parseText (_starL + _title + _text);
};

