_scoret = "<t font='Zeppelin33' color='#ffffaa' size='1.5' shadow='1'shadowColor='#444444'>MANDO SCORE</t><br />";
_scoret = _scoret + format["<t size='1.5'><t align='left'><img size='3' color='#87CEFA' image='%1'/> : %2 </t></t><br />", 
					getText (configFile>>"cfgVehicles">>"A10_base">>"picture"),mando_score_planes];
_scoret = _scoret + format["<t size='1.5'><t align='left'><img size='3' color='#87CEFA' image='%1'/> : %2 </t></t><br />", 
					getText (configFile>>"cfgVehicles">>"AH64D">>"picture"),mando_score_choppers];
_scoret = _scoret + format["<t size='1.5'><t align='left'><img size='3' color='#6B8E23' image='%1'/> : %2 </t></t><br />", 
					getText (configFile>>"cfgVehicles">>"M1A1">>"picture"),mando_score_tanks];
_scoret = _scoret + format["<t size='1.5'><t align='left'><img size='3' color='#6B8E23' image='%1'/> : %2 </t></t><br />", 
					getText (configFile>>"cfgVehicles">>"MTVR_Base">>"picture"),mando_score_cars];
_scoret = _scoret + format["<t size='1.5'><t align='left'><img size='3' color='#4169E1' image='%1'/> : %2 </t></t><br />", 
					getText (configFile>>"cfgVehicles">>"RHIB">>"picture"),mando_score_ships];
_scoret = _scoret + format["<t size='1.5'><t align='left'><img size='3' color='#CD853F' image='%1'/> : %2 </t></t><br /><br />", 
					getText (configFile>>"cfgVehicles">>"M119">>"picture"),mando_score_static];
_scoret = _scoret + format["<t size='1.5'><t align='left'><img size='3'  image='%1'/> : %2</t></t><t size='0.85' align='left' shadow='0' color='#ffffaa'> | Laser Marked</t><br />", 
					"\Ca\weapons\Data\Equip\W_SOFLAM_CA.paa",mando_score_missiles];
_scoret = _scoret + format["<t size='1.5'><t align='left'><br /><img size='3' color='#FF0000' image='%1'/> : %2</t></t><t size='0.85' align='left' shadow='0' color='#ffffaa'> | Crew</t><br />", 
					getText (configFile>>"cfgVehicles">>"USMC_Soldier_Crew">>"portrait"),mando_score_crews];
					
/*if (isMultiplayer) then
{					
   _scoret = _scoret + format["<t color='#ffffaa' size='1.5' shadow='1'shadowColor='#999999'>Score:%1</t><br />", score player];
};*/
_scoret = _scoret + "<t color='#ffffaa' size='1.5' shadow='1'shadowColor='#999999'></t><br />";

playsound "bitmenu";
hintSilent parseText _scoret;

//color='#88aaaa'