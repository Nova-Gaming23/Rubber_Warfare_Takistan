/*
	Script: Skill System by Benny.
	Description: Skill Initialization.
*/

/* Skills Root */
WFBE_SK_V_Root = 'Client\Module\Skill\Skill_';

/* Functions */
WFBE_SK_FNC_Apply = Compile preprocessFile "Client\Module\Skill\Skill_Apply.sqf";

/* Define which classname belong to which skill group */
WFBE_SK_V_Engineers = ['RUS_Soldier_Sab','USMC_SoldierS_Engineer','US_Soldier_Engineer_EP1','TK_Soldier_Engineer_EP1','CDF_Soldier_Engineer','Ins_Soldier_Sapper','BAF_Soldier_EN_DDPM'];
WFBE_SK_V_Officers = ['BAF_Soldier_Officer_DDPM','FR_Commander','RUS_Commander','US_Soldier_Officer_EP1','TK_Soldier_SL_EP1','CDF_Soldier_Officer','Ins_Commander'];
WFBE_SK_V_Medics = ['US_Soldier_Medic_EP1','US_Delta_Force_Medic_EP1','RU_Soldier_Medic','TK_Soldier_Medic_EP1','BAF_Soldier_Medic_DDPM'];
WFBE_SK_V_TeamLeaders = ['US_Soldier_TL_EP1','FR_TL','TK_Soldier_Officer_EP1','RU_Soldier_Officer','RUS_Soldier_TL','US_Delta_Force_TL_EP1','TK_Special_Forces_TL_EP1','CDF_Soldier_TL','Ins_Soldier_2','BAF_Soldier_TL_DDPM'];
WFBE_SK_V_SpecsOps = ['MVD_Soldier','GER_Soldier_Scout_EP1','FR_Sapper','TK_Special_Forces_EP1','Ins_Soldier_2','BAF_Soldier_FAC_DDPM','BAF_Soldier_FAC_MTP'];
WFBE_SK_V_Spotters = ['RUS_Soldier_Marksman','US_Soldier_Marksman_EP1','US_Delta_Force_Marksman_EP1','USMC_SoldierS_Sniper','RU_Soldier_Spotter','MVD_Soldier_Marksman','RU_Soldier_Marksman','RU_Soldier_Sniper','US_Soldier_Spotter_EP1','TK_Soldier_Spotter_EP1','TK_Soldier_Sniper_EP1','CDF_Soldier_Sniper','Ins_Soldier_Sniper','BAF_Soldier_spotter_MTP','BAF_Soldier_Marksman_DDPM'];

/* Skills Variables */
WFBE_SK_V_LastUse_Repair = -1200;
WFBE_SK_V_LastUse_MASH = -1200;
WFBE_SK_V_LastUse_Lockpick = -1200;
WFBE_SK_V_LastUse_Spot = -1200;

/* Skills Timeout */
WFBE_SK_V_Reload_Repair = 65;
WFBE_SK_V_Reload_MASH = 720;
WFBE_SK_V_Reload_Lockpick = 20;
WFBE_SK_V_Reload_Spot = 15;

/* Find the player type */
WFBE_SK_V_Type = "";
if (playerType in WFBE_SK_V_Engineers) then {WFBE_SK_V_Type = "Engineer"};
if (playerType in WFBE_SK_V_Officers) then {WFBE_SK_V_Type = "Officer"};
if (playerType in WFBE_SK_V_TeamLeaders) then {WFBE_SK_V_Type = "TeamLeader"};
if (playerType in WFBE_SK_V_Medics) then {WFBE_SK_V_Type = "Medic"};
if (playerType in WFBE_SK_V_SpecsOps) then {WFBE_SK_V_Type = "SpecOps"};
if (playerType in WFBE_SK_V_Spotters) then {WFBE_SK_V_Type = "Spotter"};

/* Special one time init */
/* The Officer and Spec Ops can hire more units than the others leader */
if (WFBE_SK_V_Type == 'Officer') then {PARM_AI_GroupSizePlayer = PARM_AI_GroupSizePlayer + 2};
if (WFBE_SK_V_Type == 'TeamLeader') then {PARM_AI_GroupSizePlayer = PARM_AI_GroupSizePlayer + 4};