Private ['_resType'];

/* DO NOT CHANGE! */
EASTID = 128;
WESTID = 256;
RESISTANCEID = 512;
/* DO NOT CHANGE! */
QUERYUNITLABEL = 0;
QUERYUNITPICTURE = 1;
QUERYUNITPRICE = 2;
QUERYUNITTIME = 3;
QUERYUNITCREW = 4;
QUERYUNITUPGRADE = 5;
QUERYUNITFACTORY = 6;
QUERYUNITSKILL = 7;
QUERYUNITFACTION = 8;
QUERYUNITTURRETS = 9;
/* DO NOT CHANGE! */
QUERYGEARLABEL = 0;
QUERYGEARPICTURE = 1;
QUERYGEARCLASS = 2;
QUERYGEARTYPE = 3;
QUERYGEARCOST = 4;
QUERYGEARUPGRADE = 5;
QUERYGEARALLOWED = 6;
QUERYGEARHANDGUNPOOL = 7;
QUERYGEARMAGAZINES = 8;
QUERYGEARSPACE = 9;
QUERYGEARALLOWTWO = 10;

/* IMPORTANT: New Getter/Setter, variable are stored into missionNamespace, the true/false variable define whether we shall override an existing variable or not */
//--- Town capture are frozen PEACETIME for...
//['WFBE_TOWNCAPTUREFREEZE',900,true] Call SetNamespace;  PARM_Gameplay_PeaceTimer
//--- How long a vehicle last empty before being sweeped.
['WFBE_ABANDONVEHICLETIMER',600,false] Call SetNamespace;
//--- AI Commander will move the base after this laps of time if all conditions are met.
['WFBE_AICOMMANDERMOVEINTERVAL',3000,true] Call SetNamespace;
//--- Global AI Skill (only used over units not present in core).
['WFBE_AISKILL',0.76,true] Call SetNamespace;
//--- Maximum AIs that will be able to man defense within the barracks area.
//['WFBE_AIDEFENSE',30,false] Call SetNamespace; // replaced with PARM_Base_AutoDefenses
//--- Allies Parameters (0 Disabled, 1 West, 2 East, 3 both).
['WFBE_ALLIES',0,false] Call SetNamespace;
//--- Anti Air Radar Z offset detection.
['WFBE_ANTIAIRRADARDETECTION',60,true] Call SetNamespace;
//--- Artillery Computer (0: Disabled, 1: Enabled on Upgrade, 2: Enabled).
['WFBE_ARTILLERYCOMPUTER',2,false] Call SetNamespace;
//--- Artillery Range.
['WFBE_ARTILLERYMAXRANGE',3,false] Call SetNamespace;
//--- Artillery Laser Detection Range (Per Shell).
['WFBE_ARTILLERYAMMOLASERRANGE',175,true] Call SetNamespace;
//--- Artillery SADARM Detection Range (Distance from the core).
['WFBE_ARTILLERYAMMOSADARMRANGE',200,true] Call SetNamespace;
//--- Price Focus. (0: Default, 1: Infantry, 2: Tanks, 3: Air).
['WFBE_BALANCEPRICE',0,false] Call SetNamespace;
//--- Balanced units.
['WFBE_BALANCEDUNITS',['HMMWV_Avenger','M6_EP1','Ka52','Ka52Black'],true] Call SetNamespace;
//--- Base Area Limits.
['WFBE_BASEAREARANGE',250,true] Call SetNamespace;
//--- Bounty Coefficient Modifier (Blood money).
['WFBE_BOUNTYMODIFIER',0.25,true] Call SetNamespace;
//--- Bounty Coefficient Modifier, Kill Assist (bounty = (Unit price * WFBE_BOUNTYMODIFIER) * WFBE_BOUNTYMODIFIERASSIST).
['WFBE_BOUNTYMODIFIERASSIST',0.5,true] Call SetNamespace;
//--- Building Damage Reduction (Current damage given / x, 1 = normal).
['WFBE_BUILDINGDAMAGEREDUCTION',12,true] Call SetNamespace;
//--- Building is sold after x seconds.
['WFBE_BUILDINGSELLDELAY',(if (WF_Debug) then {15}else{240}),true] Call SetNamespace;
//--- Building Limits.
['WFBE_BUILDINGMAXBARRACKS',3,false] Call SetNamespace;
['WFBE_BUILDINGMAXLIGHT',3,false] Call SetNamespace;
['WFBE_BUILDINGMAXCOMMANDCENTER',3,false] Call SetNamespace;
['WFBE_BUILDINGMAXHEAVY',3,false] Call SetNamespace;
['WFBE_BUILDINGMAXAIRCRAFT',3,false] Call SetNamespace;
['WFBE_BUILDINGMAXSERVICEPOINT',6,false] Call SetNamespace;
//--- Bounty received by player whenever he capture a camp.
['WFBE_CAMPCAPTUREBOUNTY',3000,true] Call SetNamespace;
//--- Civilian Faction (first is nil).
if (WF_A2_Vanilla) then {['WFBE_CIVILIANFACTIONS',['','Chernarus Civilians'],true] Call SetNamespace};
if (WF_A2_Arrowhead) then {['WFBE_CIVILIANFACTIONS',['','Takistan Civilians'],true] Call SetNamespace};
if (WF_A2_CombinedOps) then {['WFBE_CIVILIANFACTIONS',['','Takistan Civilians','Chernarus Civilians'],true] Call SetNamespace};
['WFBE_CIVILIANFACTION',0,false] Call SetNamespace;
//--- Killed Civilians bring a $xxx penalty to the player.
['WFBE_CIVILIANPENALTY',5000,true] Call SetNamespace;
//--- Command Center Range.
['WFBE_COMMANDCENTERRANGE',50000,true] Call SetNamespace;
//--- Commander bounties.
['WFBE_COMMANDERBUILDSCORE',0,true] Call SetNamespace;
['WFBE_COMMANDERTOWNCAPTURECOEF',500,true] Call SetNamespace;
['WFBE_COMMANDERTOWNCAPTURESCORE',8,true] Call SetNamespace;
['WFBE_COMMANDERUPGRADESCORE',0,true] Call SetNamespace;
//--- Counter Measures.
['WFBE_COUNTERMEASUREPLANES',64,true] Call SetNamespace;
['WFBE_COUNTERMEASURECHOPPERS',32,true] Call SetNamespace;
//--- Crew Cost.
['WFBE_CREWCOST',120,true] Call SetNamespace;
//--- Within 250 meters, units on defense mode will board defenses.
//['WFBE_DEFENSEMANRANGE',250,false] Call SetNamespace; // Replaced with paramDefenseManRange
//--- Supply Trucks (Clients) delivery range.
['WFBE_DELIVERYRANGE',70,true] Call SetNamespace;
//--- Patrolling Range Ratio.
['WFBE_DETECTIONTOPATROLRANGERATIO',0.4,true] Call SetNamespace;
//--- Fast Time skip time rate index.
//['WFBE_FASTTIMERATE',0,false] Call SetNamespace; //Replaced PARM_Environment_FastTime
//--- Fast time rates (Seconds = value * 60 * 60).
['WFBE_FASTTIMERATES',[0,0.000555,0.000833,0.00111,0.00138,0.00277,0.00416,0.00555,0.00694,0.00833],true] Call SetNamespace;
//--- Fast Travel (0 Disabled, 1 Free, 2 Fee).
['WFBE_FASTTRAVEL',1,false] Call SetNamespace;
['WFBE_FASTTRAVELMAXRANGE',3500,true] Call SetNamespace;
['WFBE_FASTTRAVELPRICEKM',215,true] Call SetNamespace;
['WFBE_FASTTRAVELRANGE',175,true] Call SetNamespace;
['WFBE_FASTTRAVELTIMECOEF',1,true] Call SetNamespace;
//--- Fire mission interval.
['WFBE_FIREMISSIONTIMEOUT0',600,true] Call SetNamespace;
['WFBE_FIREMISSIONTIMEOUT1',500,true] Call SetNamespace;
['WFBE_FIREMISSIONTIMEOUT2',400,true] Call SetNamespace;
['WFBE_FIREMISSIONTIMEOUT3',300,true] Call SetNamespace;
//--- Coef per supply delivery.
['WFBE_FUNDSPERSUPPLYPOINT',50,true] Call SetNamespace;
//--- Distance above which units are able to perform an HALO jump.
['WFBE_HALOJUMPHEIGHT',200,true] Call SetNamespace;
//--- HQ Deploy / Mobilize Price.
//['WFBE_HQDEPLOYPRICE',100,false] Call SetNamespace; // Replaced PARM_Base_HQDeploycost
//--- MHQ Deploy Range.
['WFBE_HQDEPLOYRANGE',150,false] Call SetNamespace;
//--- Income Interval (Delay between each paycheck).
//['WFBE_INCOMEINTERVAL',60,false] Call SetNamespace;	// Replaced paramEcoIncomeImterval
//--- Income System (1:Full, 2:Half (Half -> 120 SV Town = 60$ / 60SV), 3: Commander System, 4: Commander System: Full)
['WFBE_INCOMESYSTEM',3,false] Call SetNamespace;
//--- Incoming Guided missiles Range limit (0 = Disabled / Distance in m).
['WFBE_INCOMINGMISSILEMAXRANGE',0,false] Call SetNamespace;
//--- ISIS, Injury System (0: Disabled, 1: Leaders only, 2: All).
['WFBE_ISIS',0,false] Call SetNamespace;
//--- Map Coloration System (0: Default, 1: Nato).
['WFBE_MAPCOLORATION',1,false] Call SetNamespace;
//--- Time that a marker remain on a dead unit.
['WFBE_MARKERDEADDELAY',80,true] Call SetNamespace;
//---  Maximum spread area of artillery support.
['WFBE_MAXARTILLERYAREA',300,true] Call SetNamespace;
//--- Maximum rate of a camp's capture affecting a town.
['WFBE_MAXCAMPCAPTURERATE',1,true] Call SetNamespace;
//--- Maximum Client Group size.
//['WFBE_MAXGROUPSIZE',14,false] Call SetNamespace;// Replaced PARM_AI_GroupSizePlayer
['WFBE_MAXGROUPSIZEAI',8,false] Call SetNamespace;
//--- Skill (Commander), have more units than the others.
['WFBE_MAXGZBONUSSKILL',5,true] Call SetNamespace;
['WFBE_GRUPD',2,true] Call SetNamespace;
//--- Maximum amount of supply truck per side (AI).
['WFBE_MAXAISUPPLYTRUCKS',2,true] Call SetNamespace;
//--- Maximum Clutter Distance (Grass).
//['WFBE_MAXCLUTTERDISTANCE',50,false] Call SetNamespace; //Replaced PARM_Gameplay_GrassDistance
//--- Maximum Supply per trucks.
['WFBE_MAXSUPPLYTRUCKSSV0',3,true] Call SetNamespace;
['WFBE_MAXSUPPLYTRUCKSSV1',5,true] Call SetNamespace;
['WFBE_MAXSUPPLYTRUCKSSV2',10,true] Call SetNamespace;
//--- Maximum Client Side View Distance.
//['WFBE_MAXVIEWDISTANCE',4000,false] Call SetNamespace; //Replaced PARM_Gameplay_ViewDistance
//--- HQ Building Range.
['WFBE_MHQBUILDINGRANGE',120,true] Call SetNamespace;
//--- HQ Repair Price.
['WFBE_MHQREPAIRPRICE',if !(paramMoneyOnly) then {5000} else {5000},true] Call SetNamespace;
//--- Occupation 'part' (faction) to be used, keep the alias (US..USMC) the same as the files in Core_Occupation.
/*
REPLACED PARM_Towns_OccupationFactionEast
if (WF_A2_Vanilla) then {
	['WFBE_OCCUPATIONWESTFACTIONS',['CDF','USMC'],true] Call SetNamespace;
	['WFBE_OCCUPATIONEASTFACTIONS',['INS','RU'],true] Call SetNamespace;
	['WFBE_OCCUPATIONWESTFACTION',1,false] Call SetNamespace;
	['WFBE_OCCUPATIONEASTFACTION',1,false] Call SetNamespace;
};
if (WF_A2_Arrowhead) then {
	['WFBE_OCCUPATIONWESTFACTIONS',['US'],true] Call SetNamespace;
	['WFBE_OCCUPATIONEASTFACTIONS',['TKA'],true] Call SetNamespace;
	['WFBE_OCCUPATIONWESTFACTION',0,false] Call SetNamespace;
	['WFBE_OCCUPATIONEASTFACTION',0,false] Call SetNamespace;
};
if (WF_A2_CombinedOps) then {
	['WFBE_OCCUPATIONWESTFACTIONS',['CDF','US','USMC','BAF'],true] Call SetNamespace;
	['WFBE_OCCUPATIONEASTFACTIONS',['INS','RU','TKA'],true] Call SetNamespace;
	['WFBE_OCCUPATIONWESTFACTION',1,false] Call SetNamespace;
	['WFBE_OCCUPATIONEASTFACTION',1,false] Call SetNamespace;
};
*/
['WFBE_OCCUPATIONWESTFACTIONS',['CDF','US','USMC','BAF'],true] Call SetNamespace;
['WFBE_OCCUPATIONEASTFACTIONS',['INS','RU','TKA'],true] Call SetNamespace;
//--- East or West Inactive period before being removed (town).
['WFBE_OCCUPATIONINACTIVETIME',500,true] Call SetNamespace;
//--- Maximum man-able defenses per town.
['WFBE_OCCUPATIONMAXDEFENSES',10,true] Call SetNamespace;
//--- Delay between each occupation reinforcement spawned in town.
['WFBE_OCCUPATIONREINFORCEMENTDELAY',300,true] Call SetNamespace;
//--- Town Occupation SV floor.
['WFBE_OCCUPATIONTEAM1',10,true] Call SetNamespace;
['WFBE_OCCUPATIONTEAM2',30,true] Call SetNamespace;
['WFBE_OCCUPATIONTEAM3',50,true] Call SetNamespace;
['WFBE_OCCUPATIONTEAM4',80,true] Call SetNamespace;
['WFBE_OCCUPATIONTEAM5',100,true] Call SetNamespace;
['WFBE_OCCUPATIONTEAM6',150,true] Call SetNamespace;
['WFBE_OCCUPATIONTEAM7',200,true] Call SetNamespace;
//--- Town Occupation AA SV floor.
['WFBE_OCCUPATIONAATEAM1',40,true] Call SetNamespace;
['WFBE_OCCUPATIONAATEAM2',100,true] Call SetNamespace;
//--- Maximum seconds off the map limits.
['WFBE_OFFMAPMAXTIME',60,true] Call SetNamespace;
//--- Paratroopers Call Interval.
['WFBE_PARADELAY',900,true] Call SetNamespace;
//--- Unit Patrol Radius.
['WFBE_PATROLRANGE',400,true] Call SetNamespace;
//--- Purchase Unit Range.
['WFBE_PURCHASEUNITSRANGE',150,true] Call SetNamespace;
['WFBE_PURCHASEUNITSRANGEAIR',50,true] Call SetNamespace;
//--- Purchase Gear Range.
['WFBE_PURCHASEGEARRANGE',150,true] Call SetNamespace;
//--- Repair truck repair range.
['WFBE_REPAIRTRUCKRANGE',40,true] Call SetNamespace;
//['WFBE_SERVICETRUCKRANGE',40,true] Call SetNamespace;
//--- Resistance 'part' (faction) to be used, don't forget to define the types bellow for patrol & strikers, keep the alias (GUE..TKGUE) the same as the files in Core_Resistance.
/*
REPLACED PARM_Towns_ResistanceFaction
if (WF_A2_Vanilla) then {
	['WFBE_RESISTANCEFACTIONS',['GUE'],true] Call SetNamespace;
	['WFBE_RESISTANCEFACTION',0,false] Call SetNamespace;
};
if (WF_A2_Arrowhead) then {
	['WFBE_RESISTANCEFACTIONS',['PMC','TKGUE'],true] Call SetNamespace;
	['WFBE_RESISTANCEFACTION',1,false] Call SetNamespace;
};
if (WF_A2_CombinedOps) then {
	['WFBE_RESISTANCEFACTIONS',['GUE','PMC','TKGUE'],true] Call SetNamespace;
	['WFBE_RESISTANCEFACTION',2,false] Call SetNamespace;
};
*/
['WFBE_RESISTANCEFACTIONS',['GUE','PMC','TKGUE'],true] Call SetNamespace;
//--- Resistance Inactive period before being removed (town).
['WFBE_RESISTANCEINACTIVETIME',500,true] Call SetNamespace;
//--- Delay between each resistance reinforcement spawned in town.
['WFBE_RESISTANCEREINFORCEMENTDELAY',300,true] Call SetNamespace;
//--- Respawn Camps (0: Disabled, 1: Classic [from town center], 2: Enhanced [from nearby camps]).
['WFBE_RESPAWNCAMPSMODE',2,false] Call SetNamespace;
//--- Respawn Camps Rule (0: Disabled, 1: West | East, 2: West | East | Resistance).
['WFBE_RESPAWNCAMPSRULEMODE',2,false] Call SetNamespace;
//--- Respawn Delay (Players/AI).
//['WFBE_RESPAWNDELAY',30,false] Call SetNamespace; //Replaced PARM_Respawn_Delay
//--- Respawn Penalty (0: None, 1: Remove All, 2: Pay full gear price, 3: Pay 1/2 gear price, 4: pay 1/4 gear price, 5: Charge on Mobile).
['WFBE_RESPAWNPENALTY',5,false] Call SetNamespace;
//--- How far a player need to be from a town to spawn at camps.
['WFBE_RESPAWNRANGE',600,false] Call SetNamespace;
['WFBE_RESPAWNMINRANGE',70,true] Call SetNamespace;
//--- How far a player need to be from a mobile respawn in order to spawn on it.
['WFBE_RESPAWNMOBILERANGE0',250,true] Call SetNamespace;
['WFBE_RESPAWNMOBILERANGE1',400,true] Call SetNamespace;
['WFBE_RESPAWNMOBILERANGE2',600,true] Call SetNamespace;
//--- Advanced Aircraft restriction.
['WFBE_RESTRICTIONADVAIR',0,false] Call SetNamespace;
//--- Salvager Sell %.
['WFBE_SALVAGERPERCENT',50,true] Call SetNamespace;
//--- Salvager's Range.
['WFBE_SALVAGERRANGE',100,true] Call SetNamespace;
//--- Score Gained per town assist.
['WFBE_SCOREASSISTCAPTURETOWN',10,true] Call SetNamespace;
//--- Points Gained per camp captire.
['WFBE_SCORECAPTURECAMP',4,true] Call SetNamespace;
//--- Score Gained per town capture.
['WFBE_SCORECAPTURETOWN',10,true] Call SetNamespace;
//--- Points Received per Supply delivery.
['WFBE_SCOREPERSUPPLYPOINT',2,true] Call SetNamespace;
//--- Service points action range.
['WFBE_SERVICEPOINTRANGE',75,true] Call SetNamespace;
//--- Sides need at last xkm of distance between them.
//['WFBE_SIDESTARTINGDISTANCE',7000,false] Call SetNamespace; // Replaced PARM_Base_StartingDistance
//--- Starting Locations Mode: 0 = WN|ES; 1 = WS|EN; 2 = Random;
//['WFBE_STARTINGLOCATIONMODE',2,false] Call SetNamespace; // REplaced PARM_Base_StartingLocations
//--- When a structure is sold, x% of supply goes back to the side.
['WFBE_STRUCTURESELLPERCENT',40,false] Call SetNamespace;
//--- Supply System (0: Trucks, 1: Automatic with time).
//['WFBE_SUPPLYSYSTEM',0,false] Call SetNamespace; //Replaced PARM_Economy_SupplySystem
//--- If SUPPLYSYSTEM == 1 then, we increase of SUPPLYSYSTEMINCREASE each SUPPLYSYSTEMINCREASETIME.
['WFBE_SUPPLYSYSTEMINCREASE0',3,true] Call SetNamespace;
['WFBE_SUPPLYSYSTEMINCREASE1',4,true] Call SetNamespace;
['WFBE_SUPPLYSYSTEMINCREASE2',5,true] Call SetNamespace;
['WFBE_SUPPLYSYSTEMINCREASETIME',60*3,true] Call SetNamespace;
//--- Action range for repair/rearm/refuel.
['WFBE_SUPPORTRANGE',70,true] Call SetNamespace;
//--- Price of Support (Base), note that Rearm, Refuel and Repair are using Ratio.
['WFBE_SUPPORTHEALPRICE',125,true] Call SetNamespace;
['WFBE_SUPPORTREARMPRICE',25,true] Call SetNamespace;
['WFBE_SUPPORTREFUELPRICE',35,true] Call SetNamespace;
['WFBE_SUPPORTREPAIRPRICE',25,true] Call SetNamespace;
//--- Amount of time required to be able to use an action from the support menu again.
['WFBE_SUPPORTHEALTIME',20,true] Call SetNamespace;
['WFBE_SUPPORTREARMTIME',25,true] Call SetNamespace;
['WFBE_SUPPORTREFUELTIME',20,true] Call SetNamespace;
['WFBE_SUPPORTREPAIRTIME',30,true] Call SetNamespace;
//--- Money to be deducted from a teamkiller.
['WFBE_TEAMKILLPENALTY',3000,true] Call SetNamespace;
//--- Thermal Imaging (0: Disabled, 1: Weapons, 2: Vehicles, 3: All).
['WFBE_THERMALIMAGING',3,false] Call SetNamespace;
//--- Bounty received by player whenever he get an assist in a town.
['WFBE_TOWNASSISTCAPTUREBOUNTY',8000,true] Call SetNamespace;
['WFBE_TOWNMISSIONASSISTCAPTUREBOUNTY',8010,true] Call SetNamespace;
//--- Restrict use of build menu if the player is near a town.
['WFBE_TOWNBUILDPROTECTIONRANGE',600,false] Call SetNamespace;
//--- Range Coefficient whenever a player get an assist in a town.
['WFBE_TOWNCAPTUREASSISTRANGEMODIFIER',0.67,true] Call SetNamespace;
//--- Bounty received by player whenever he capture a town.
['WFBE_TOWNCAPTUREBOUNTY',8000,true] Call SetNamespace;
['WFBE_TOWNMISSIONCAPTUREBOUNTY',8010,true] Call SetNamespace;
//--- Town capture mode (0: normal, 1: threshold, 2: all camps[Best Use with PvP]).
['WFBE_TOWNCAPTUREMODE',1,false] Call SetNamespace;
//--- Town Depot capture range.
['WFBE_TOWNCAPTURERANGE',35,true] Call SetNamespace;
//--- Town Depot capture range (Threshold Capture mode).
['WFBE_TOWNCAPTURERANGETHRESHOLD',35,true] Call SetNamespace;
//--- Town Capture rate.
['WFBE_TOWNCAPTURERATE',1,true] Call SetNamespace;
//--- Town Conquest mode (0: None, 1: Territoriality 2: (tbd) commander task set).			- TODO
['WFBE_TOWNCONQUESTMODE',0,false] Call SetNamespace;
//--- Buy Gear From (0: None, 1: Camps, 2: Depot, 3: Camps & Depot).
['WFBE_TOWNGEAR',1,false] Call SetNamespace;
//--- Amount of Waypoints given to the AI Patrol in towns (Higher is wider).
['WFBE_TOWNPATROLHOPS',4,true] Call SetNamespace;
//--- Town Purchase range.
['WFBE_TOWNPURCHASERANGE',20,true] Call SetNamespace;
//--- Town occupation Difficulty (1: Light, 2: Medium, 3: Hard, 4: Insane, 5: Auto).
//['WFBE_TOWNOCCUPATIONDIFFICULTY',1,false] Call SetNamespace; //REplaced PARM_Towns_OccupDifficulty
//--- Town resistance Difficulty (1: Light, 2: Medium, 3: Hard, 4: Insane).
//['WFBE_TOWNRESISTANCEDIFFICULTY',1,false] Call SetNamespace;//Replaced PARM_Towns_ResistanceDifficulty
//--- Town starting mode (0: Resistance, 1: 50% blu, 50% red, 2: Nearby Towns, 3: Random).
['WFBE_TOWNSTARTINGMODE',0,false] Call SetNamespace;
//--- Distance between each defensive waypoints.
['WFBE_TOWNUNITSDEFENSEDISTANCE',30,true] Call SetNamespace;
//--- Distance between each patrolling waypoints.
['WFBE_TOWNUNITSPATROLDISTANCE',350,true] Call SetNamespace;
//--- Unit will spawn within this range.
['WFBE_TOWNUNITSPAWNRANGE',100,true] Call SetNamespace;
//--- Interval between each uav spotting routine.
['WFBE_UAVSPOTTINGDELAY',20,true] Call SetNamespace;
//--- UAV will reveal each targets that it knows about this value (0-4)
['WFBE_UAVSPOTTINGDETECTION',0.21,true] Call SetNamespace;
//--- Max Range of the UAV spotting.
['WFBE_UAVSPOTTINGRANGE',900,true] Call SetNamespace;
//--- Units cleaning delay.
['WFBE_UNITREMOVEDLAY',300,false] Call SetNamespace;
//--- Victory Condition (0: Annihilation, 1: Assassination, 2: Supremacy, 3: Towns).
//['WFBE_VICTORYCONDITION',2,false] Call SetNamespace; // replaed PARM_Gameplay_VictoryConditions
//--- Commander vote time.
['WFBE_VOTETIME',if (WF_Debug) then {6} else {30},true] Call SetNamespace;
//--- Weather Type, 0: Clear, 1: Cloudy, 2: Rainy, 3: Dynamic)
//['WFBE_WEATHER',0,false] Call SetNamespace;	//Replaced PARM_Environment_Weather
//--- Weather Transition period (longer is more realistic).
['WFBE_WEATHERTRANSITION',600,true] Call SetNamespace;
//--- Proper worlds (Radio town localization).
['WFBE_WORLDWHITELISTOA',["Zargabad","Takistan"],true] Call SetNamespace;
['WFBE_WORLDWHITELISTVA',["chernarus","utes"],true] Call SetNamespace;

if (paramUseWorkers) then {
	//--- Minimal Distance in order to start building.
	['WFBE_WORKERS_BUILDDISTANCE',30,true] Call SetNamespace;
	//--- Degredation of the building in time during a repair phase (over 100).
	['WFBE_WORKERS_DEGRADATION',1,true] Call SetNamespace;
	//--- Maximum Workers per side.
	['WFBE_WORKERS_MAX',10,true] Call SetNamespace;
	//--- Maximal Traveling distance.
	['WFBE_WORKERS_MAXRANGE',650,true] Call SetNamespace;
	//--- Workers Models.
	['WFBE_WORKERS_MODELS_EAST',if (WF_A2_Vanilla) then {["Worker3","Worker1"]} else {["TK_CIV_Worker01_EP1"]}, true] Call SetNamespace;
	['WFBE_WORKERS_MODELS_WEST',if (WF_A2_Vanilla) then {["Worker2","Worker4"]} else {["TK_CIV_Worker02_EP1"]}, true] Call SetNamespace;
	//--- Worker Price
	['WFBE_WORKERS_PRICE',500,true] Call SetNamespace;
	//--- Build Speed Ratio.
	['WFBE_WORKERS_RATIO',2,true] Call SetNamespace;
	//--- Health Point fixed during a repair.
	['WFBE_WORKERS_REPAIR',0.0075,true] Call SetNamespace;
	//--- Ruins model.
	['WFBE_WORKERS_RUINS',if (WF_A2_Vanilla) then {"Land_budova4_ruins"} else {"Land_Mil_Barracks_i_ruins_EP1"}, true] Call SetNamespace;
};

//--- Build area (Radius/Height).
['WFBE_AREAHQDEPLOYED',[('WFBE_HQDEPLOYRANGE' Call GetNamespace),40],true] Call SetNamespace;
['WFBE_AREAHQUNDEPLOYED',[('WFBE_HQDEPLOYRANGE' Call GetNamespace)/2,20],true] Call SetNamespace;
['WFBE_AREAREPAIRTRUCK',[60,15],true] Call SetNamespace;

//--- Construction Module, Flat Detection.
if (WF_A2_Vanilla) then {
	['WFBE_COINMINDISTANCE',8,true] Call SetNamespace;
	['WFBE_COINMAXGRADIENT',4,true] Call SetNamespace;
} else {
	['WFBE_COINMINDISTANCE',20,true] Call SetNamespace;
	['WFBE_COINMAXGRADIENT',4,true] Call SetNamespace;
};

//--- Resistance Island Patrol System.
['WFBE_RESPATROLINTERVAL',1200,true] Call SetNamespace;
['WFBE_RESPATROL',0,false] Call SetNamespace;

//--- Resistance Strikers.
['WFBE_RESSTRIKERINTERVAL',2000,true] Call SetNamespace;
['WFBE_RESSTRIKER',0,false] Call SetNamespace;

/* UPGRADE SYSTEM: */
//--- Important: If you add any other upgrades, add them at the end, also add a new 0 to init_server.sqf upgrade array.

//--- Desc-Array - added MrNiceGuy
['WFBE_UPGRADEDESCRIPTION',
 [localize 'STR_WF_UPGRADE_barracks_Desc',localize 'STR_WF_UPGRADE_lightfactory_Desc',localize 'STR_WF_UPGRADE_heavyfactory_Desc',localize 'STR_WF_UPGRADE_aircraftfactory_Desc',
 localize 'STR_WF_UPGRADE_Paratroop_Desc',localize 'STR_WF_UPGRADE_uav_Desc',localize 'STR_WF_UPGRADE_Supply_Desc',localize 'STR_WF_UPGRADE_RespawnRange_Desc',
 localize 'STR_WF_UPGRADE_Airlift_Desc',localize 'STR_WF_UPGRADE_Countermeasures_Desc',localize 'STR_WF_UPGRADE_ArtilleryUpgrade_Desc',localize 'STR_WF_UPGRADE_ICBM_Desc',
 localize 'STR_WF_UPGRADE_FastTravel_Desc',localize 'STR_WF_UPGRADE_Gear_Desc',localize 'STR_WF_UPGRADE_Ammo_Desc',localize 'STR_WF_UPGRADE_EASA_Desc',
 localize 'STR_WF_UPGRADE_Paradrop_Desc',localize 'STR_WF_UPGRADE_ArtilleryAmmo_Desc'],
 true
] Call SetNamespace;

['WFBE_UPGRADELABELS',
 ["Gear - Infantry",localize 'strwflightfactory',localize 'strwfheavyfactory',localize 'strwfaircraftfactory',localize 'STR_WF_TACTICAL_Paratroop',
 localize 'str_dn_uav',localize 'STR_WF_UPGRADE_Supply',localize 'STR_WF_UPGRADE_RespawnRange',localize 'STR_WF_UPGRADE_Airlift',localize 'STR_WF_UPGRADE_Countermeasures',
 localize 'STR_WF_UPGRADE_ArtilleryUpgrade',localize 'STR_WF_ICBM',localize 'STR_WF_TACTICAL_FastTravel',localize 'STR_WF_UPGRADE_Gear',localize 'STR_WF_Ammo','EASA',
 localize 'STR_WF_TACTICAL_Paradrop', localize 'STR_WF_UPGRADE_ArtilleryAmmo'],
 true
] Call SetNamespace;
//--- Amount of upgrade levels.
['WFBE_UPGRADELEVELS',[3,3,3,3,3,1,2,2,1,1,3,1,1,3,1,1,1,3],true] Call SetNamespace;
//--- UPGRADE SIMPLIFIED RE
//--- UPGRADE LEVELS  [B,L,H,A,P,U,S,R,a,c,h,i,f,G,m,E

//--- [upgrade index, upgrade level].
['WFBE_UPGRADEDEPENDENCIES',[[],[],[],[],[3,1],[3,2],[],[1,2],[],[3,1],[2,1],[3,3],[],[0,2],[13,3],[3,3],[8,1],[10,3]],true] Call SetNamespace;
//--- Special condition.
['WFBE_UPGRADECONDITION',[true,true,true,true,true,true,true,true,true,paramCounterMeasures,(PARM_Equipment_Artillery == 1),PARM_Module_ICBM,if (('WFBE_FASTTRAVEL' Call GetNamespace) > 0) then {true} else {false},true,true,paramEASA,true,true],true] Call SetNamespace;
//--- [Supply,Money].
['WFBE_UPGRADEPRICESLEVEL1',[[400,20000],[450,20000],[750,25000],[900,30000],[3200,7400],[2500,5600],[1800,6200],[500,1800],[950,2450],[3400,8200],[1200,2950],[50000,80000],[1350,3550],[250,25000],[750,2250],[4400,12500],[3250,8800],[2400,4550]],true] Call SetNamespace;
['WFBE_UPGRADEPRICESLEVEL2',[[500,20000],[500,25000],[900,30000],[1000,30000],[3800,8700],[],[3600,12400],[700,2400],[],[],[1800,4400],[],[],[350,35000],[],[],[],[3500,8500]],true] Call SetNamespace;
['WFBE_UPGRADEPRICESLEVEL3',[[550,30000],[550,30000],[1200,35000],[1500,40000],[4400,9800],[],[],[],[],[],[3000,7500],[],[],[500,45000],[],[],[],[6200,12000]],true] Call SetNamespace;
//--- Time required per upgrade.
//['WFBE_UPGRADETIMESLEVEL1',[40,60,80,100,120,120,140,120,100,120,100,240,260,180,170,160,140,120],true] Call SetNamespace;
//['WFBE_UPGRADETIMESLEVEL2',[60,80,100,120,140,0,160,140,0,0,140,0,0,200,0,0,0,140],true] Call SetNamespace;
//['WFBE_UPGRADETIMESLEVEL3',[80,100,120,180,160,0,0,0,0,0,160,0,0,220,0,0,0,160],true] Call SetNamespace;
['WFBE_UPGRADETIMESLEVEL1',[1,1,1,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0],true] Call SetNamespace;
['WFBE_UPGRADETIMESLEVEL2',[1,1,1,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0],true] Call SetNamespace;
['WFBE_UPGRADETIMESLEVEL3',[1,1,1,1,0,0,0,0,0,0,0,0,0,1,0,0,0,0],true] Call SetNamespace;
//--- AI COMMANDER priority, we use the upgrade index (0: Barracks, 4: Paratroops...).
['WFBE_UPGRADEAIORDER',[0,1,2,3],true] Call SetNamespace;

/* Handle the missions (Server Only) */
if (isServer && paramSecondaryMissions) then {
	Private ['_initExt','_tpath'];
	_tpath = 'Server\Missions\';
	_initExt = '\m_init.sqf';

	//--- Maximum amount of missions allowed per side at a time.
	['WFBE_MISSIONSMAXIMUM_WEST',1,true] Call SetNamespace;
	['WFBE_MISSIONSMAXIMUM_EAST',1,true] Call SetNamespace;
	//--- Time randomizer (Affect the timeout).
	['WFBE_MISSIONSRANDOMIZER',160,true] Call SetNamespace;
	//--- Re-usability, after x missions, mission y is available again.
	['WFBE_MISSIONSREUSABILITY',10,true] Call SetNamespace;
	//--- Time to wait between each missions.
	['WFBE_MISSIONSTIMEOUT',2400,true] Call SetNamespace;

	//--- Assign a content.
	/* 
		all templates need at least a m_init.sqf

		[
		  [island array, * = all, ! = not in, put the worldnames in otherwise], 
		  temp path + folder name in templates + init name (path to the template folder), 
		  unique identifier (template name or something, avoid duplicated names),
		  starting index (used in case of duplicated template allowed), 0 is ok to start with,
		  condition for template to be 'selectable', keep it as if it was a if (true/false condition), as it will be compiled inside a if on the fly (i.e:  time > 600).
		  run for who? both(civ)? west? east?
		].
		
		Each mission receive 3 defaults parameters, the unique identifier, the starting index and the selected index.
	*/
	
	['WFBE_M_CONTENT',[
		[['*'],(_tpath + 'M_UAV_RetrieveModule' + _initExt),'M_UAV_RetrieveModule',0,"true",civilian], /* UAV Retrieving Mission, Any islands, No conditions, Both. */
		[['*'],(_tpath + 'M_TOWN_Attack' + _initExt),'M_TOWN_AttackWest',0,"time > 1200",west], /* Town Assault, resistance attack a town, require at least a town (we wait a bit), west. */
		[['*'],(_tpath + 'M_TOWN_Attack' + _initExt),'M_TOWN_AttackEast',0,"time > 1200",east], /* Town Assault, resistance attack a town, require at least a town (we wait a bit), east. */
		[['*'],(_tpath + 'M_BASE_Attack' + _initExt),'M_BASE_Attack',0,"(count WestBaseStructures > 0) && (time > 600)",west], /* Resistance attack a base, require at least one building (we wait a bit), west. */
		[['*'],(_tpath + 'M_BASE_Attack' + _initExt),'M_BASE_Attack',0,"(count EastBaseStructures > 0) && (time > 600)",east], /* Resistance attack a base, require at least one building (we wait a bit), east. */
		[['*'],(_tpath + 'M_PLAYERS_Attack_Air' + _initExt),'M_PLAYERS_Attack_Air',0,"!WF_A2_Vanilla && paramDLCPMC",west], /* Resistance PMC attack players, requires PMC, west. */
		[['*'],(_tpath + 'M_PLAYERS_Attack_Air' + _initExt),'M_PLAYERS_Attack_Air',0,"!WF_A2_Vanilla && paramDLCPMC",east] /* Resistance PMC attack players, requires PMC, east. */
	],true] Call SetNamespace;
	
	//--- Ensure that the re-usability is not higher than the content.
	if (('WFBE_MISSIONSREUSABILITY' Call GetNamespace) > count('WFBE_M_CONTENT' Call GetNamespace)-1) then {
		['WFBE_MISSIONSREUSABILITY',count('WFBE_M_CONTENT' Call GetNamespace),true] Call SetNamespace;
	};
};

//--- UPSMON Parameters.
if (paramUPSMON) then {
	//--- Size of the marker (x,y) from the center of a town.
	['WFBE_UPSMONTOWNAREASIZE',[225,225],true] Call SetNamespace;
};

//--- Income System is Commander System?
if (('WFBE_INCOMESYSTEM' Call GetNamespace) in [3,4]) then {
	//--- Town Multiplicator Coefficient (SV * x).
	['WFBE_INC_COEFFICIENT',30, true] Call SetNamespace;
	//--- Prevent commander from being a millionaire, and add the rest to the players pool.
	['WFBE_INC_DIVIDE_COM',2.40, true] Call SetNamespace;
	
	//--- Commander Income %.
	if (isNil "EastCommanderPercent") then {EastCommanderPercent = 60};
	if (isNil "WestCommanderPercent") then {WestCommanderPercent = 60};
};



diag_log Format["[WFBE (INIT)][frameno:%1 | ticktime:%2] Init_CommonConstants: Constants Initialization - [Done]",diag_frameno,diag_tickTime];