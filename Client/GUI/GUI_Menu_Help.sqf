private ["_action"];
disableSerialization;
_action = _this select 0;

switch (_action) do {
	case "onLoad": {
		{((findDisplay 24000) displayCtrl 160001) lbAdd _x} forEach ["Introduction", "Respawn", "Towns", "Peacetime", "Base Structures and Functions", "About the Mission"];
		((findDisplay 24000) displayCtrl 160001) lbSetCurSel 0;
	};
	case "onHelpLBSelChanged": {
		_changeTo = _this select 1;
_helps = [
//-------------------------------------Introductions
"<t size='1.4' color='#2394ef' underline='true'>Introduction</t><br />
<br />
<br />
<br />
<t><t color='#ffec1c'>CTI</t> (<t color='#ffec1c'>Conquer The Island</t>) is a gamemode where two sides, West and East fight for the control of an island.</t><br />
<br />
Each side are led by a <t color='#e8bd12'>Commander</t> which may construct a base thanks to the <t color='#e8bd12'>MHQ</t>.<br />
<br />
As soon as the base is available, you may decide to reinforce your team by purchasing additional units and vehicles.<br />
<br />
Keep in mind that the <t color='#e8bd12'>Commander</t> may assign assign different tasks to your team.<br />
<br />
According to mission parameters there are several conditions under which game can be won: standardparameter is 'towns', <br />
which means you have to capture a certain number (in Takistan and Chernarus defauld=12 | In Zargabad defauld=7) of towns to win the game. <br />
<br />
<br />
For optional victory-conditions, check parameters <br />
(e.g: 'annihilation'=all enemy forces and structures have to be destroyed).<br />
<br />
",
//----------------------------------------RESPAWN
"<t size='1.4' color='#2394ef' underline='true'>Respawn</t><br />
<br />
<br />
<br />
<t size='1.2' color='#ffec1c' align='left'>Respawn-Penalty</t><br />
<br />
Getting killed too often in a short period of time will increase your respawn-timer (displayed in the minimap-area) by 10 seconds per respawn. <br />
This penalty will disappear after a while without dying.<br />
<br />
<br />
<t size='1.2' color='#ffec1c' align='left'>Respawnpoints:</t><br />
<br />
<br />
Generally respawnpoints are displayed as yellow circles on the map, which you see during your respawntime.<br />
<br />
These locations can be chosen by clicking on the circle. There are certain objects which establish spawn-locations:<br />
<br />
Mash (the tent, medics can deploy as special-skill).<br />
<br />
MEVs (an ambulance-vehicle is included in the set of vehicles you have from beginning or several vehicles can be purchased for purpose of spawning in light factory, heavy factory or air factory).<br />
<br />
Towncenters of captured towns: it is also possible to spawn at towncenters, which belong to your side. These spawnpoints are also limited in range (600m), according to the circle around the town. This option can be useful for defenders of a town.<br />
<br />
Mash and MEV-spawns are limited in range (600m), where they provide 'spawnability', that means if you die more than 600m away from these objects, you have to spawn at an unlimited spawnpoint.<br />
<br />
Spawnpoints of unlimited range are any buildings of base, except servicepoint and anti-airradar.<br />
<br />
Spawnbuldings: <br />
MHQ, Field-Hospital [FH], Baracks [B],Light-Factory [LF] Heavy-Factory [HF], Air-Factory [AF]).<br />
You can spawn there, no matter where you die on map.<br />
<br />
<br />
<br />
<t size='1.4' color='#2394ef' underline='true'>So:</t><br /><br />
be careful when you die and where you die. Always be aware of your spawn-locations. <br />
It might save time, if you wait with the attack on a town untill spawn is established. <br />
An existing spawnpoint prevents players from having to travel all the way from base to town over and over again.<br />

",
//--------------------------------------------------Towns
"<t size='1.4' color='#2394ef' underline='true'>Towns</t><br />
<br />
<br />
<br />
As mentioned above it is goal of the game to capture a number of towns. Each of these towns is represented by a big circle (600m radius) on the map.<br />
<br />
There are several states a town can have, indicated by colour markings. Towns which can be captured have an orange marking in a 400m-radius around the center. These towns are adjacent to the territory already occupied by one side. Towns without coloured markings are not capturable because they are not linked with the already occupied area. <br />
<br />
Towns with a hatched yellow marking in a 600m radius are also not capturable, because enemy captured it recently and it is in so called 'peace-time' (details see below). When you start an attack on a town (with orange 400m-radius), notice that the defending units first spawn, when a friendly unit crosses the 600m-radius. So pay attention when crossing the line.<br />
<br />
<br />
The relevant buildings of a town are the depot (town-center) in the center of the circle, surrounded by a 50m-radius of slightly darker colour marking. Moreover a town can have one or more strongpoints (SPs, small cylinders on map).<br />
<br />
You have to capture these SPs (notice counter 'strongpoint'), before you advance to the towncenter and finally capture the town by creating numerical superiority within the 50m radius of towncenter (notice counter 'town').<br />
<br />
Once a town is captured it will switch its colour marking to hatched green 600m-radius. Next to towncenter, a supplyvalue (SV) is displayed, e.g. 10/70. This SV can be increased by sending supplytrucks between MHQ or servicepoint (for reload) and the 50m-radius of towncenter. <br />
<br />
A fully 'pushed' town (e.g. 70/70) creates a higher income of supplies and money for the <br />
commander and if town is attacked, there will spawn more and better units to defend it. <br />
<br />
<br />
Most of explanations refer to default parameters. If params are changed, some explanations are no longer valid. <br />
<br />
",
//---------------------------------Peacetime
"<t size='1.4' color='#2394ef' underline='true'>Peacetime</t><br />
<br />
<br />
<br />
Generally there are two kinds of peacetime: <br />
a peacetime for towns recently captured by enemy, which is marked with hatched yellow 600mradius and a 'friendly' one, which is displayed with a hatched green 600m-radius marking.<br />
<br />
These friendly peacetime-zones are prohibited for enemy to enter in the specified number of seconds (notice counter, displayed on map). <br />
<br />
If a friendly unit (player or ai) enters a town in enemy peacetime (or vice versa), the counter will increase, which means that the town will stay uncapturable for even longer. <br />
<br />
So, don't enter peacetime without a good reason, it may harm your <br />
side to an extend that you cannot capture an important town for the next hours!!!<br />
<br />
",
//------------------------------Base Struckers
"<t size='1.4' color='#2394ef' underline='true'>Base Structures and Functions</t><br />
<br />
<br />
<br />
The Base Structures can be used for various purposes. <br />
As soon as the player is in range of a structure he may decide to purchase additional units or vehicles. <br />
<br />
<br />
<br />
<t size='1.2' color='#ffec1c' align='left'>Mobile-Headquarters [MHQ]</t><br />
<br />
Required to build base-structures.<br />
<br />
<t size='1.2' color='#ffec1c' align='left'>CommandCenter [CC]</t><br />
<br />
For players: >>WF-Menu Purchase Units (remote enabled)/ Tactical Center to order UAVs, Ammodrops,Arty, etc.<br />
for commander: >>WF-Menu Economy to sell Base-Structures and distribution income / Command Center to set Orders and Sqad-Respawn/ Upgrade-Menu to Make Upgrades for better equipment.<br />
<br />
<t size='1.2' color='#ffec1c' align='left'>Barracks [B]</t><br />
<br />
>>WF-Menu Purchase Gear (when player is in range of 120m)<br />
>>WF-Menu Purchase Units (normally in range of 120m - if Command Center exists, infantry can be purchased remote)<br />
- alternatively it is possible to purchase gear at the stairs of  captured towncenters.<br />
<br />
<t size='1.2' color='#ffec1c' align='left'>Light-Factory [LF]</t><br />
<br />
>>WF-Menu Purchase Units (normally in range of 120m - if Command Center exists, light vehicles can be purchased remote)<br />
- alternatively it is possible to purchase simple vehicles at the stairs of captured towncenters.<br />
<br />
<t size='1.2' color='#ffec1c' align='left'>Heavy-Factory [HF]</t><br />
<br />
>>WF-Menu Purchase Units (normally in range of 120m - if Command Center exists, Tanks can be purchased remote)<br />
<br />
<t size='1.2' color='#ffec1c' align='left'>Air-Factory [AF]</t><br />
<br />
>>WF-Menu Purchase Units (normally in range of 120m - if Command Center exists, helicopters can be purchased remote)<br />
notice: airplanes can be purchased at hangars (displayed with a green symbol at airfields on map), if airfactory exists.<br />
<br />
<br />
<t size='1.2' color='#ffec1c' align='left'>Field-Hospital [FH]</t><br />
<br />
Doubles your squad??s unit limit.<br />
<br />
<br />
<t size='1.2' color='#ffec1c' align='left'>Anti-Air-Radar [AA]</t><br />
Displays Enemy aircraft which fly about 30 meters on the map. (Red diamond icon) <br />
<br />
<br />
<t size='1.2' color='#ffec1c' align='left'>Servicepoint</t><br />
<br />
Reload and Refuel Supplytrucks.<br />
>>WF-Menu Servicepoint to Rearm, Refuel, Repair your Vehicle and Heal yourself and your units.<br />
<br />
<br />
<br />
<br />
You may choose to buy a vehicle manned or empty (you may also buy a vehicle without a driver, gunner, commander or turrets and you can choose whether locked or  unlocked ).<br />
<br />
",
//--------------------WarFare Info
"<br />
<t size='1.2' color='#2394ef' align='center'>Warfare-RE RUBBER EDITION | NG23-V:1.7 -TEST- | - CO - Takistan</t><br />
<t align='center'>
<br />
<br />
<br />
<img color='' size='8' image='NG23\Pics\welcome_C.paa'/>
<br/>
<br/>
-This is not the original version of the Rubber-ED!
<br/>
-The original was created by Rubber.
<br/>
-Big thanks to him!
<br/>
<br/>
<br/>
Big Thanks to everyone who helped me in mission test and development<br/>
<br/>
<br/>
-This version of the Rubber-ED was created by Nova Gaming23.<br/>
Author:<br/>
[NG23] Laescher,<br/><br/>

</t><br/>
<br/>
<t size='1.1' underline='true' align='center'>Change-LOG:</t><br />
<br/>
<br/>
<br/>
<br/>
--> Version 1.7<br/>
[x] Fixed: Warning-Popup while BaseBuilding. (Warning Message: 'iconStaticObject/' is not a class ('' accessed))<br/>
[x] Fixed: Respawn: unknown variable error. (respawnstatus)<br/>
[x] Fixed: Supply: unknown variable error while refill supply-truck at town center. (_maxSV)<br/>
[x] Fixed: UnitCam: unknown variable. (playerTeam)<br/>
[x] Fixed: Chopper Vehicle hook: Action menu to hook only for player pilotes.<br/>
[x] Fixed: Chopper Vehicle unhook: unknown variable. (_param & _vehicle)<br/>
[x] Fixed: HUD - Vehicle crew List: unknown variable. (_role)<br/>
[x] Fixed: UPSMON - SerSide-ScriptError undefined variable _Soldier MON_functions.sqf - 1959 - MON_doCreateMine. (_role)<br/>
[x] Fixed: UPSMON - SerSide-ScriptError undefined variable (_react)<br/>
[x] Fixed: UPSMON - undefined variable *The 'unit' command is not up to date in MP. Sometimes the (units _leader select x) value is zero because the unit is no longer alive but is still in the (units) array.  <br/>
[x] Fixed: MandoMissiles - Fixed several unknown variable errors<br/>
[x] Fixed: MandoMissiles - Javelin Client-ScriptError undefined variable (mando_ppccor,mando_ppcinv,mando_ppdyblur,mando_ppfgrain)<br/>
[x] Fixed: MandoMissiles - Metis Client-ScriptError undefined variable (mando_ppccor,mando_ppcinv,mando_ppdyblur,mando_ppfgrain)<br/>
[x] Fixed: MandoMissiles - MMA Radar Console - ScriptError undefined variable (mando_lrr_target,mando_ppccor,mando_ppcinv,mando_ppdyblur,mando_ppfgrain).<br/>
[x] Fixed: MandoMissiles - MMA Radar Console - friend/enemy detection.<br/>
[x] Fixed: MandoMissiles - MMA Radar Console - Radar sound while select target.<br/>
[x] Fixed: MandoMissiles - TorM1 Console - ScriptError undefined variable (_mkon,_mkoff,_tofollowm)<br/>
[x] Fixed: MandoMissiles - Flare - ScriptError undefined variable (_flare)<br/>
[x] Fixed: MandoMissiles - Flare - ScriptError undefined variable (_devv)<br/>
[x] Fixed: MandoMissiles - Score - ScriptError undefined variable (_score,_var)<br/>
[x] Fixed: MandoMissiles - LiftHud - ScriptError undefined variable (_cam)<br/>
[x] Fixed: MandoMissiles - ApacheHud/KA 52 - ScriptError undefined variables(mando_last_missile_target,_hud_mono,_unit,mando_ppccor,mando_ppcinv,mando_ppdyblur,mando_ppfgrain)<br/>
[x] Fixed: MandoMissiles - ApacheHud - Change hud color now works correctly<br/>
[x] Fixed: MandoMissiles - AH-1Z Cobra - ScriptError undefined variables(_unit,)<br/>
[x] Fixed: MandoMissiles - MMA CRV7 CAM - ScriptError undefined variabless(mando_last_missile_target)<br/>
[x] Fixed: MandoMissiles - mando_hud_key_handler - ScriptError undefined variable(_posfin)<br/>
[x] Fixed: MandoMissiles - mando_missile - ScriptError undefined variable(_posmg)<br/>
[x] Fixed: COnstructionHQ - UnknownVariable - \Server\Construction\Construction_HQSite.sqf, line 72 ((_side) Call GetSideStructures)<br/>
[x] Fixed: Error in FieldRepair script - UnknownVariable(_veh);<br/>
[x] Fixed: GearMenu hide MagazineListBox while template tab selected.<br/>
[x] Fixed: UI Vehicle Crew List - UnknownVariable (_role).<br/>
[x] Fixed: Common_AARadarMarkerUpdate - Executed on SERVER and resulted in script errors.<br/>
[x] Fixed: Func_Client_HealSomeUnit.sqf - ScriptError - undefined variabless(_unit).<br/>
[x] Fixed: Parameter - 'ECONOMY: Supply System' works now correctly (Time and Trucks)<br/>
[x] Fixed: Parameter - 'GAMEPLAY: Grass Distance' add missing value (script error)<br/>
[x] Fixed: Parameter - 'Arti: Grass Distance' add missing value (script error)<br/>
[x] Change: GearMenu - increase Weaponlist row hight.<br/>
[x] Change: RespawnMenu - Rewritten - If respawn in progress, reopen RespawnMenu if closed with 'ESC'.<br/>
[x] Change: MandoMissiles - MMA CRV7 CAM - Mouse sensitivity decreased (mando_missile_tv.sqf - _sensitivity)<br/>
[x] Change: AW159_Lynx_BAF(Wildcat ) - MandoMissiles-System - 'MMA CRV7 Cam'(boardcam) removed.Bis did too much crap with the 'wildcat' <br/>
[x] Change: Parameters - Parameter system rewritten.<br/>
[x] Change: Parameters - Some unused/senseless parameter removed.<br/>
[x] Change: BaseStructure-Sold - Base building killed message was removed.You should now see the message correctly. (structure sold)<br/>
[x] Change: JIP - Player Team Balancing - Disabled<br/>
[x] Change: Player Connect/DisConnect - Rewrite something  <br/>
[x] Added: MandoMissile-Key??s now permanently saved in PlayerProfile.  <br/>
[x] Added: UI-Parameterinfo - Highlight changed pameters  <br/>
[x] Added: Help Dialog<br/>
[x] Added: Contructionmenu HQ - Help Dialog added F1 <br/>
[x] Added: New Loading screen<br/>
[x] Info: MandoMissiles - MMA Radar Console - Attention! Gunner required.<br/>
--> Version: 1.6 <br/>
[x] Fixed: TOWN BUILD PROTECTION (Mhq distance Town) <br/>
[x] Fixed: TemMarkeres (Killed TeamMembers-Marker now invisable) <br/>
[x] Fixed: Old Supply on Reconnect should work now <br/>
--> Version: 1.5 <br/>
[X] Update: on Reconnect Vehicles Rassign to Player Lock/unlock and Supply-Trucks <br/>
[X] ReCfg: Template Sytem:More templates can be created. Previous errors should be corrected. <br/>
[X] ReCfg: Disabled TemMarkeres near TempSpawn. <br/>
[X] Fixed: Base-Slot update should work now right.<br/>
[X] ReCfg: MHQ clear vehicle Inventory.<br/>
[X] ReCfg: (Starting vehicle) Add start equipment to Truck.<br/>
[X] Added: Players who ignore the team balancing will be kicked.<br/>
[X] Added: Admins (Votet or with Login) are allowed to Ignore Teamswapp and Balancing.<br/>
[X] Remove: MHQ_Fix Botton.<br/>
[X] Remove: Most custom AI action menu entries.<br/>
[X] Fixed: UAV script errors and script performance.<br/>
[X] Fixed: Vehicle Crew Display(Title) script errors.<br/>
<br/>
--> Version: 1.4.1 <br/>
[X] Fixed: Random Startpositions <br/>
[X] Fixed: Template upgrade mismatch with RPG: 7V, 7VL, 7VR, OG7. <br/>
[X] Fixed: Template does not after (BackTo WF-Menu > open Purchase Gear) <br/>
[X] Fixed: Extended-Squad now works faster. <br/>
<br/>
--> Version: 1.4 <br/>
[X] Added: Parameter entry which  disable the (Player squad size by rank)  <br/>
[X] Removed: UAV Hellfire function (now UAV only for Spotting)  <br/>
[X] Added: New Static town defense Spawn Positions <br/>
[X] Removed: Civ bike from Opfor  <br/>
[X] Added: Old bike [Takistan Militia] to Opfor <br/>
[X] Added: SUV to Opfor Depo <br/>
[X] Added: Military Offroad to Blufor <br/>
[X] Replace: New Truck??s as TecMHQ-Repair <br/>
<br/>
--> Version: 1.3 Gamma <br/>
[X] Fixed: MANDO > Rapir/Tor/Tungi (Console Systems) etc... Bounty payout <br/>
[X] Fixed: MANDO > Vehicle Crew Bounty payout <br/>
[X] Fixed: MANDO > Avenger/Linebacker/Tungi Skip AA-Launcher as Driver <br/>
[X] Fixed: ? MHQ Despawn Bug (Problem with Mando kill) <br/>
[X] ReCFG: Mash Bounty 500$ +  <br/>
[X] ReCFG: Town Activation (AIR, ATL) from 200m to 150m <br/>
<br/>
--> Version: 1.3 Beta <br/>
[X] Added: Mash Bounty 1000$ +  <br/>
[X] Added: UAV now 26000$ <br/>
[X] Added: M1A2 TUSK now 30500$ <br/>
[X] Fixed: Template??s only from side <br/>
[X] Fixed: Rapier/Tor Price <br/>
<br/>
--> Version: 1.3 <br/>
[X] Fixed: ManoMissle: Double payment fixed.<br/>
[X] Added: UAV now 9500$ <br/>
[X] Added: Apache now 67200$ <br/>
[X] Added: Cobra now 50400$ <br/>
[X] Added: Wildecat now 22550$ <br/>
[X] Added: M1A2 TUSK now 38000$ and BuildTime: 50Sec <br/>
[X] Added: LAV-25 now 8000$ <br/>
[X] Added: M6 Linebacker now 31100$ <br/>
[X] Added: Rapier/Tor in HF/AF/Airport Upgrade 2 <br/>
[X] Added: Stryker MK19 LF Upgrade 2 <br/>
[X] Added: Stryker MGS LF Upgrade 3 <br/>
[X] Added: Stryker MC: Reamtime now 120sec <br/>
[X] Added: M6 Linebacker added Tunguska rockets added MAA-Console (Mando) <br/>
[X] Added: Blufor occupation now US <br/>
[X] Added: TeamMenu> ExtendetSqad: ""DEL ALL"" Delete all units in the currently selected category  <br/>
[X] Change: some .JPG textures to Paa <br/>
[X] Removed: Some SpawnPositions <br/>
[X] Fixed: Speacial Item count <br/>
<br/>
--> Version: 1.2 <br/>
[X] Fixed: MandoSystem (Only bugs from Update 1.1)<br/>
[X] Fixed: GUI Elements Size and Position<br/>
<br/>
--> Version: 1.1 <br/>
[x] Fixed: The static defense, that is constructed before the barracks, will be manned after the construction of the barracks (13.08.14)<br/>
[x] Removed: Jevelin Mando (13.08.14)<br/>
[x] Fixed: SaveProfileNamespache on UnLoad Dialog (13.08.14)<br/>
[x] Fixed: FieldRepair spawn in Vehicles (13.08.14)<br/>
[x] Added: Extendet SqadMenu Added Filler (13.08.14)<br/>
[x] Fixed: UPSMON errors (13.08.14)<br/>
[x] Fixed: many script errors (Update 1.63) (12.08.14) (No fix Mando Upsmon)<br/>
[x] Fixed: 'BIS_fnc_init' script error. (11.08.14)<br/>
[x] Removed: High Command Module. (11.08.14)<br/>
[x] Fixed: UPSMON Trigger creation. (11.08.14)<br/>
[x] Fixed: Causal-initialization of the script. (11.08.14)<br/>
[x] Addd: Extendet Sqad-Managemand. (10.08.14)<br/>
[x] Addd: VotePopup Enable/Disable save in PlayerProfile . (10.08.14)<br/>
[x] Addd: Exte Sqad-Managemand Enable/Disable save in PlayerProfile . (10.08.14)<br/>
[x] Fixed: FieldRepair Displays '%1' at the End. (10.08.14)<br/>
[x] Removed: Function-Viewer. (10.08.14)<br/>
<br/>
--> Version: 1.0 <br/>
[x] Fixed : Realistic equipment Bug.<br/>
[x] Fixed : Invisible Cz Units removed.<br/>
[x] Added : Field-Repair to Backas and One to each vehicle.<br/>
[x] Added : Info-Box (Info Panel) (WF-Menu)<br/>
[x] Added : Better Temkill message for Client.<br/>
[x] Added : MHQ Fix button.<br/>
[x] Added : Template Rename function.<br/>
[x] Added : Template Client save.<br/>
[x] Added : New routine for MHQ Protect.<br/>
[x] Added : Commander Player SqadRespawn (only if in enemy Peacetime).<br/>
[x] Added : Commander SqadRespawn Only units on Map able to Respawn.<br/>
[x] Update: Icon-Color Warfare-Buildings information Hud.<br/>
[x] Update: Weather (Dynamic no longer Default) Default now Clear Weather.<br/>
[x] Fixed : Repair, Refuel and Rearm (Servicestation).<br/>
[x] Fixed : Some bugs with script syntag (1.63). (c.a 25%)<br/>
<br/><br/>
"
];
		((findDisplay 24000) displayCtrl 160002) ctrlSetStructuredText parseText (_helps select _changeTo);
	};	
};