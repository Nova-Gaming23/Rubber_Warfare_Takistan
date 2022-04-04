playSound "vodka";
sleep 0.5;
_starL  = "<t size='4' align='center'><img image='hint\pics\firstaid.paa' align='Center'/></t><br/>";
_title  = "<t color='#FFC0CB' size='1.5' shadow='1.5' shadowColor='#000000' align='center'><br/>" + (localize "STR_WF_RUB_HintBoxFirstAidTitle") + "</t><br/><br/>";
_text   = "<t color='#ffffff' size='1' shadow='1' shadowColor='#000000' align='Center'>" + (localize "STR_WF_RUB_HintBoxFirstAidDesc") + "<br/><br/></t>";
hint parseText (_starL + _title + _text);