_result = _this select 0;


sleep 0.5;

if (_result == 1) then {
playSound"goodjob";
_starL  = "<br/><t size='4' align='center'><img image='hint\pics\lockpick.paa' align='Center'/></t><br/>";
//_starR  = "<img image='uskd\pics\uskd.paa' align='right'/>";
_title  = "<t color='#9ACD32' size='1.5' shadow='1.5' shadowColor='#000000' align='center'><br/>Lockpick<br/>Succeed<br/></t><br/>";
_text   = "<t color='#ffffff' size='1' shadow='1' shadowColor='#000000' align='Center'>Vehicle has been<br/>Opened<br/><br/>Lockpick Skill Improved +<br/><br/></t>";
hint parseText (_starL + _title + _text);
} else {
playSound"uskd_taskhint";
_starL  = "<br/><t size='4' align='center'><img image='hint\pics\lockpick.paa' align='Center'/></t><br/>";
//_starR  = "<img image='uskd\pics\uskd.paa' align='right'/>";
_title  = "<t color='#DC143C' size='1.5' shadow='1.5' shadowColor='#000000' align='center'><br/>Lockpick<br/><br/>Failed<br/></t>";
_text   = "<t color='#ffffff' size='1' shadow='1' shadowColor='#000000' align='Center'><br/>Try AGAIN !<br/><br/></t>";
hint parseText (_starL + _title + _text);
};

