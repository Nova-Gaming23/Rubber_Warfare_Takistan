//	@file Version: 1.0
//	@file Name: briefing.sqf
//	@file Author: [NG23] Laescher
//	@file Created: 30th May 13

player createDiarySubject ["Line", "==================="];
player createDiarySubject ["Rubber_Edition","    Rubber Edition"];
player createDiarySubject ["Spacher",""];
player createDiarySubject ["Takistan-ED","     Takistan-ED"];


player createDiaryRecord["Rubber_Edition", 
["Special Thanks", 
"
<br/>
Big Thanks to everyone who helped me in mission test and development:<br/>
Benny and all Benny Edition crew<br/>Mandoble<br/>=BoB=  ( Band of Brothers ) Team<br/>Jolly Team."]];

player createDiaryRecord["Rubber_Edition", 
["Tips", 
"
<br/>- 
Start the mission with a strategy and organize your group, don’t go alone! found a medic for respawn tent,  or use ambulance carefully.<br/>
- Try to capture the town in group so you will earn mission reward togheter and you can share money to recuit AI or buy vehicles.<br/>
- Defend the base and move mhq in a smart and protected way<br/>- Don’t let enemy control the sky!<br/>
- Try to extend your territory and fight hard in town vs other players<br/>
- Use all ArmA features to improve your fight<br/>
- Play if possible on teamspeak<br/>
- Savage vehicles wreck to earn money<br/>
- Have fun!"]];

player createDiaryRecord["Rubber_Edition", 
["Edition Features", 
"
<br/>
[] Mando Missiles script suite incluede in mission (customized)<br/>
Mando missile 10.2 suite allow a fantastic warfare with advanced script for each guided missile<br/>
there are good tutorial and complete readme to learn how to get the best from mando systems on bis forum thread.<br/>
MMA Rearming system used instead of EASA - MMA rearm avaiable next to: Airfactory, Supply Point, Ammo truck.<br/><br/>
[] Other features<br/>- all mission parameters tweaked according to mission goal<br/>
- improved AI with UPSMON v5.09 ( ai will fight also inside and on roof of buildings, mines, flanking, smoke grenades and more )<br/>
- resistance patrols around resistance towns<br/>
- base area and building number limited ( instead of search and destroy ) plan your base location and protect them<br/>
- TNT special victory condition and town layout ( in order to win you need to conquest half map town + 2 ) 10 on 16 town layout<br/>
- Special Advance And Secure Warfare Layout ( Band Of Brothers IDEA )<br/>
- Special Berserk massive fight Warfare Layout<br/>- Respawn and rearm allowed in city owned depot but in case of enemy near you  respawn will not work<br/>
- Respawn in owned town allowed in case of MHQ and all structures lost<br/>
- Custom mission HUD with money supply and n. of town held<br/>
- Custom GPS overlay<br/>- Custom GUI for end of game stats<br/>
- Custom MAP team marker<br/>
- Removed HE ammo from AA12 RPG MAVS SMAW<br/>
- Removed Paratroopers<br/>
- Ambulance paradrop instead of vehicle and low timer for para support<br/>
- No artillery with GUI but allow artillery computer and artillery with arma AI<br/>
- Tweaked town resistance and occupation groups"]];

player createDiaryRecord["Rubber_Edition", 
["Vehicles Skills", 
"
<br/>
-  Mobile HeadQuarter (MHQ)<br/>
Commander can build base structures and defense with deployed HQ.<br/>
warning: There are enemy patrol AI around and enemy player will try to destroy your MHQ so use the brain whe you move MHQ and protect the BASE with AI and defenses, ( same for factory )<br/>
- Repair Truck - Support :<br/>
MHQ repairing ( 7000 supply + 7000$ )<br/>
Rearming - Support Menu - Repairing - Refueling<br/>
Build Static defences and Fortification (construction interface)<br/>
- Salvage Truck:<br/>Wreck salvaging (35% of savaged unit price back)<br/>
- Supply Truck<br/>You will need supply truck to raise town SV value ( with param supply instead of time )<br/>
- Ambulance :       <br/>
All ambulance vehicles (heli ambulance included) works as mobile respawn with 500m range"]];

player createDiaryRecord["Rubber_Edition", 
["Players Skills", 
"
<br/>
1 Commander ( only 1 for side (slot 1-1-A)) * Commander +20 group Size + Advanced Repair<br/>
2 Medic * Mibile Respawn Tent 60 sec to undeploy 900sec to deploy new one without remove last deployed<br/>
3 Team Leader ( Rus Officers ) * Team Leader +10 group Size<br/>
4 Engineer ( Rus Team Leader MVD) * Engineer + Advanced Repair<br/>
5 Engineer (RUS Team Leader MVD) * Engineer + Advanced Repair<br/>
6 Saboteur / Demolitor * Saboteur + lock pick (resistance and occupation vehicle are locked .. )<br/>
7 Sniper * Sniper/Marksman + Spot (will not included in Tournament edition )<br/>8 Marks Man * Sniper/Marksman + Spot (will not included in Tournament edition )"]];

player createDiaryRecord["Rubber_Edition", 
["Mission Rules", 
"
<br/> 
No upgrade tree ( all upgrade set to max )<br/>
Instead of basing the strategy with arcade style upgrades, I’ve tweaked the mission to base on territorial conquest and economy.<br/><br/>
[] Mission Economy and  vehicle price tweaked and increased<br/>
Economy and Territory are the CORE of this mission, vehicle prices are well balanced, after a lot of attempt Red and Blue are now well balanced.<br/>
During the mission progress you will be able to use more advanced and expensive vehicles, Play as team and get the town capture reward!<br/><br/>
[] Airport Hangars ( Planes can only be buyed there )<br/>
Airplanes are not 4x4 jeep so you will need a runway to takeoff<br/><br/>
[] no camps for unlimited rearm and respawn:<br/>
Medic can deploy mobile respawn tent (multiple without autodelete) so respawn will be dinamyc and  destructable this increase teamplay and global gameplay compared to static camp, that often are campered and allow to rearm in real unreal way... game offer more real, work around to have AT-ammo without just run with a vehicle close to a camp capture to have unlimited weapons/ammo and respawn. you have to play closed with other player ( medic and other classes ) and use support vehicles, backpack and all features that can help your side to advance in this hostile territory.<br/><br/>
[] restricted gear<br/>Is not possible to equip heavy sniper rifle / mg with AT weapons, as in real life you can’t carry so much<br/>
Medic will have less gear space due to medikit.<br/><br/>
[] Territorial conquest<br/>
To capture towns you need a “territorial link” here it’s really  important to play with a good team strategy<br/>
On mission startup the closest town to MHQ can be captured, then you need a “road clear” link to other town<br/>
you will see capturable town in the map with an orange circle marker, plan your advance in territory and try to move your frontline as deep as you can.."]];

player createDiaryRecord["Rubber_Edition", 
["Mission Goals", 
"
<br/>
Main goal of this mission is to allow good team to pratice different strategies and massive team play, in order to give a big advantage to well organized team, lot of “Arcade” feature of standard Warfare are removed. Playing this mission cooperating with  friends and with good strategy will be really rewarding. Also if the map is big with the tweaked  mission rules  you will fight really intense pvp battle! <br/><br/>
Please note: All default Mission parameters are studied according to the mission goal read them to know all mission settings."]];

player createDiaryRecord["Takistan-ED", 
[" Version-Information", 
"
<br/>
<br/>
                <img image='NG23\Pics\welcome_C.paa'/> 
<br/>
<br/>						  
-The Takistan-ED is currently at version 1.7
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
-This version of the Rubber-ED was created by Nova Gaming23.<br/>
<img image='NG23\Pics\Logo_Text_small.paa'/> <br/>
<br/>
"]];
player createDiaryRecord["Takistan-ED", 
[" Bug-Report", 
"
<br/>
What helps us quickly find and fix bugs:<br/>
The subject(title) of the post should contain succinct information about the issue. <br/>
The body of your post should include how the bug happened and contain any and <br/>
all information about what happened when you experience the bug. <br/><br/>
  Please inform us via E-mail.<br/>
  E-Mail:Team@nova-gaming23.de<br/>
"]];
player createDiaryRecord["Takistan-ED", 
[" Changelog", 
"
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
[x] Added: MandoMissile-KeyÂ´s now permanently saved in PlayerProfile.  <br/>
[x] Added: UI-Parameterinfo - Highlight changed pameters  <br/>
[x] Added: Help Dialog<br/>
[x] Added: Contructionmenu HQ - Help Dialog added F1 <br/>
[x] Added: New Loading screen<br/>
[x] Info: MandoMissiles - MMA Radar Console - Attention! Gunner required.<br/>
<br/>
--> Version 1.6 <br/>
[x] Fixed: TOWN BUILD PROTECTION (Mhq distance Town)<br/>
[x] Fixed: TemMarkeres (Killed TeamMembers-Marker now invisable)<br/>
[x] Fixed: Old Supply on Reconnect should work now<br/>
<br/>
<br/>
--> Version: 1.5 <br/>
[X] Update: on Reconnect Vehicles Rassign to Player Lock/unlock and Supply-Trucks <br/>
[X] ReCfg: Template Sytem:More templates can be created. Previous errors should be corrected. <br/>
[X] ReCfg: Disabled TemMarkeres near TempSpawn. <br/>
[X] Fixed: Base-Slot update should work now right.<br/>
[X] ReCfg: MHQ clear vehicle Inventory.<br/>
[X] ReCfg: (Starting vehicle) Add start equipment to Truck.<br/>
[X] Added: Players who ignore the team balancing will be kicked.<br/>
[X] Added: Admins (Voted or with Login) are allowed to Ignore Teamswapp and Balancing.<br/>
[X] Remove: MHQ_Fix Botton.<br/>
[X] Remove: Most custom AI action menu entries.<br/>
[X] Fixed: UAV script errors and script performance.<br/>
[X] Fixed: Vehicle Crew Display(Title) script errors.<br/>
<br/>
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
[X] Replace: New TruckÂ´s as TecMHQ-Repair <br/>
--> Version: 1.3 Gamma <br/>
[X] Fixed: MANDO > Rapir/Tor/Tungi (Console Systems) etc... Bounty payout <br/>
[X] Fixed: MANDO > Vehicle Crew Bounty payout <br/>
[X] Fixed: MANDO > Avenger/Linebacker/Tungi Skip AA-Launcher as Driver  <br/>
[X] Fixed: ? MHQ Despawn Bug (Problem with Mando kill) <br/>
[X] ReCFG: Mash Bounty 500$ +  <br/>
[X] ReCFG: Town Activation (AIR, ATL) from 200m to 150m <br/>
--> Version: 1.3 Beta <br/>
[X] Added: Mash Bounty 1000$ +  <br/>
[X] Added: UAV now 26000$ <br/>
[X] Added: M1A2 TUSK now 30500$ <br/>
[X] Fixed: TemplateÂ´s only from side <br/>
[X] Fixed: Rapier/Tor Price <br/>
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
--> Version: 1.2 <br/>
[X] Fixed: MandoSystem (Only bugs from Update 1.1)<br/>
[X] Fixed: GUI Elements Size and Position<br/>
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
<br/><br/>
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
"]];



