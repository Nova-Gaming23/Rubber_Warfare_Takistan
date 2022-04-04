Private ['_c','_count','_d','_dir','_dis','_n','_s','_t','_v'];

/* Root Definition */
EASTHQ = "BMP2_HQ_INS_unfolded";
EASTBAR = "Ins_WarfareBBarracks";
EASTLVF = "Ins_WarfareBLightFactory";
EASTCC = "INS_WarfareBUAVterminal";
EASTHEAVY = "Ins_WarfareBHeavyFactory";
EASTAIR = "INS_WarfareBAircraftFactory";
EASTSP = "INS_WarfareBVehicleServicePoint";
EASTAAR = "INS_WarfareBAntiAirRadar";
EASTFH = "INS_WarfareBFieldhHospital";

/* Flag Textures */
['WFBE_EASTFLAG','\Ca\Data\flag_chdkz_co.paa',true] Call SetNamespace;

/* Mash used after being deployed */
['WFBE_EASTFARP','CampEast',true] Call SetNamespace;

/* Construction Crates */
['WFBE_EASTCONSTRUCTIONSITE','Ins_WarfareBContructionSite',true] Call SetNamespace;

/* Structures */
_v			= ["Headquarters"];
_n			= [EASTHQ];
_d			= [getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName")];
_c			= [PARM_Base_HQDeploycost];
_t			= [if (WF_Debug) then {1} else {30}];
_s			= ["HQSite"];
_dis		= [15];
_dir		= [0];

_v = _v		+ ["Barracks"];
_n = _n		+ [EASTBAR];
_d = _d		+ [getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName")];
_c = _c		+ [200];
_t = _t		+ [if (WF_Debug) then {1} else {50}];
_s = _s		+ ["SmallSite"];
_dis = _dis	+ [18];
_dir = _dir	+ [90];

_v = _v		+ ["Light"];
_n = _n		+ [EASTLVF];
_d = _d		+ [getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName")];
_c = _c		+ [800];
_t = _t		+ [if (WF_Debug) then {1} else {90}];
_s = _s		+ ["MediumSite"];
_dis = _dis	+ [25];
_dir = _dir	+ [90];

_v = _v		+ ["CommandCenter"];
_n = _n		+ [EASTCC];
_d = _d		+ [localize "STR_WF_CommandCenter_RU"];
_c = _c		+ [1200];
_t = _t		+ [if (WF_Debug) then {1} else {110}];
_s = _s		+ ["SmallSite"];

_dis = _dis	+ [20];
_dir = _dir	+ [90];

_v = _v		+ ["Heavy"];
_n = _n		+ [EASTHEAVY];
_d = _d		+ [getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName")];
_c = _c		+ [3500];
_t = _t		+ [if (WF_Debug) then {1} else {130}];
_s = _s		+ ["MediumSite"];
_dis = _dis	+ [25];
_dir = _dir	+ [90];

_v = _v		+ ["Aircraft"];
_n = _n		+ [EASTAIR];
_d = _d		+ [getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName")];
_c = _c		+ [5500];
_t = _t		+ [if (WF_Debug) then {1} else {150}];
_s = _s		+ ["SmallSite"];
_dis = _dis	+ [21];
_dir = _dir	+ [90];

_v = _v		+ ["ServicePoint"];
_n = _n		+ [EASTSP];
_d = _d		+ [getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName")];
_c = _c		+ [500];
_t = _t		+ [if (WF_Debug) then {1} else {70}];
_s = _s		+ ["SmallSite"];
_dis = _dis	+ [21];
_dir = _dir	+ [90];

if (paramAARadar) then {
	_v = _v		+ ["AARadar"];
	_n = _n		+ [EASTAAR];
	_d = _d		+ [getText (configFile >> "CfgVehicles" >> (_n select (count _n - 1)) >> "displayName")];
	_c = _c		+ [3000];
	_t = _t		+ [if (WF_Debug) then {1} else {200}];
	_s = _s		+ ["MediumSite"];
	_dis = _dis	+ [21];
	_dir = _dir	+ [90];
};

_v = _v		+ ["FieldHospital"];
_n = _n		+ [EASTFH];
_d = _d		+ ["Field Hospital"];
_c = _c		+ [2000];
_t = _t		+ [if (WF_Debug) then {1} else {130}];
_s = _s		+ ["MediumSite"];
_dis = _dis	+ [25];
_dir = _dir	+ [90];

for [{_count = count _v - 1},{_count >= 0},{_count = _count - 1}] do {
	[Format["WFBE_EAST%1TYPE",_v select _count],_count,true] Call SetNamespace;
};

['WFBE_EASTMHQNAME','BMP2_HQ_INS',true] Call SetNamespace;

['WFBE_EASTSTRUCTURES',_v,true] Call SetNamespace;
['WFBE_EASTSTRUCTURENAMES',_n,true] Call SetNamespace;
['WFBE_EASTSTRUCTUREDESCRIPTIONS',_d,true] Call SetNamespace;
['WFBE_EASTSTRUCTURECOSTS',_c,true] Call SetNamespace;
['WFBE_EASTSTRUCTURETIMES',_t,true] Call SetNamespace;
['WFBE_EASTSTRUCTUREDISTANCES',_dis,true] Call SetNamespace;
['WFBE_EASTSTRUCTUREDIRECTIONS',_dir,true] Call SetNamespace;
['WFBE_EASTSTRUCTURESCRIPTS',_s,true] Call SetNamespace;

/* Defenses */
_n			= ["Ins_WarfareBMGNest_PK"];
_n = _n		+ ["SearchLight_INS"];
_n = _n		+ ["DSHkM_Mini_TriPod"];
_n = _n		+ ["DSHKM_Ins"];
_n = _n		+ ["AGS_Ins"];
_n = _n		+ ["SPG9_Ins"];
_n = _n		+ ["ZU23_Ins"];
_n = _n		+ ["2b14_82mm_INS"];
_n = _n		+ ["D30_Ins"];
_n = _n		+ ["Land_HBarrier3"];
_n = _n		+ ["Land_HBarrier5"];
_n = _n		+ ["Land_HBarrier_large"];
_n = _n		+ ["Base_WarfareBBarrier5x"];
_n = _n		+ ["Base_WarfareBBarrier10x"];
_n = _n		+ ["Base_WarfareBBarrier10xTall"];
_n = _n		+ ["MASH"];
_n = _n 	+ ["Land_Ind_SawMillPen"];
_n = _n 	+ ["Land_Mil_hangar_EP1"];
_n = _n		+ ["Land_fort_bagfence_long"];
_n = _n		+ ["Land_fort_bagfence_corner"];
_n = _n		+ ["Land_fort_bagfence_round"];
_n = _n		+ ["Land_fortified_nest_small"];
_n = _n		+ ["Land_fortified_nest_big"];
_n = _n		+ ["Land_Fort_Watchtower"];
_n = _n		+ ["Land_fort_rampart"];
_n = _n		+ ["Land_fort_artillery_nest"];
_n = _n		+ ["Hhedgehog_concreteBig"];
_n = _n		+ ["Hedgehog"];
_n = _n		+ ["Land_CamoNet_EAST"];
_n = _n		+ ["Land_CamoNetVar_EAST"];
_n = _n		+ ["Land_CamoNetB_EAST"];
_n = _n		+ ["Sign_Danger"];
_n = _n		+ ["HeliH"];
_n = _n		+ ["Fort_RazorWire"];
_n = _n		+ ["Land_Ind_IlluminantTower"];
_n = _n		+ ["Land_Campfire"];
/*_n = _n		+ ["RUOrdnanceBox"];
_n = _n		+ ["RUVehicleBox"];
_n = _n		+ ["RUBasicAmmunitionBox"];
_n = _n		+ ["RUBasicWeaponsBox"];
_n = _n		+ ["RULaunchersBox"];
_n = _n		+ ["RUSpecialWeaponsBox"];*/

/* Class used for AI, AI will attempt to build those */
['WFBE_EASTDEFENSES_MG',['DSHKM_Ins'],true] Call SetNamespace;
['WFBE_EASTDEFENSES_GL',['AGS_Ins'],true] Call SetNamespace;
['WFBE_EASTDEFENSES_AAPOD',['ZU23_Ins'],true] Call SetNamespace;
['WFBE_EASTDEFENSES_ATPOD',['SPG9_Ins'],true] Call SetNamespace;
['WFBE_EASTDEFENSES_CANNON',['D30_Ins'],true] Call SetNamespace;
['WFBE_EASTDEFENSES_MASH',['MASH'],true] Call SetNamespace;

['WFBE_EASTDEFENSENAMES',_n,true] Call SetNamespace;