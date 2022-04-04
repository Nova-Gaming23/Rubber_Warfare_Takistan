playSound "bitmenu";
sleep 0.5;
_starL  = "<t size='4' align='center'><img image='hint\pics\repair.paa' align='Center'/></t><br/>";
_title  = "<t color='#FFA500' size='1.5' shadow='1.5' shadowColor='#000000' align='center'><br/>Accurate Repair</t><br/><br/>";
_text   = "<t color='#ffffff' size='1' shadow='1' shadowColor='#000000' align='Center'>Vehicle is repaired<br/>Good Job!<br/><br/></t>";
hint parseText (_starL + _title + _text);