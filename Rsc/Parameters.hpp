/* Parameters */

class Params {

	class PARM_Gameplay_VictoryConditions {
		title = "$STR_WF_PARAMETER_VictoryConditionTitle";
		values[] = {0,1,2,3};
		texts[] = {"$STR_WF_PARAMETER_Victory_Annihilation","$STR_WF_PARAMETER_Victory_Assassination","$STR_WF_PARAMETER_Victory_Supremacy","TNT Towns"};
		default = 3;
	};
	class PARM_Gameplay_LocationLayout {
		title = "$STR_WF_PARAMETER_TownsAmountTitle";
		values[] = {0,1,2,3,4,5};
		texts[] = {"Berserk (4)","BoB AAS-WF (8)","Medium - TnT(16)","Large (25)","Full (33)","Strategic (17)"};
		default = 5;
	};
	class PARM_Gameplay_TownsToWin {
		title = "$STR_WF_PARAMETER_VictoryTownTitle";
		values[] = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33};
		texts[] = {"1","2","3","4","5","6","7","8","9","10 TNT","11","12","13","14","15","16","17","18","19","20","21","22","23","24","25","26","27","28","29","30","31","32","33"};
		default = 12;
	};
	class PARM_Gameplay_PeaceTimer {
		title = "$STR_WF_PARAMETER_PeaceTimerTitle";
		values[] = {-360,300,600,1000,1200,1800,3600,7200};
		texts[] = {"$STR_WF_Disabled","5 min","10 min","16 min (TnT)","20 min","30 min","1 hour","2 hours"};
		default = 1200;
	};	
	class PARM_Gameplay_MissionTimeOut {
		title = "$STR_WF_PARAMETER_TimeoutTitle";
		values[] = {0,900,1800,3600,7200,10800,14400,18000,21600,25200,28800,32400,36000};
		texts[] = {"$STR_WF_Disabled","15 min","30 min","1h","2h","3h","4h","5h","6h","7h","8h","9h","10h"};
		default = 0;
	};		
	class PARM_AI_GroupSizePlayer {
		title = "$STR_WF_PARAMETER_GroupSizePlayer";
		values[] = {2,4,5,6,7,8,10,12,14,16,18,20,22,24,26,28,30,35,40,45,50,60,70,80,90,100};
		texts[] = {"2","4","5","6","7","8","10","12","14","16","18","20","22","24","26","28","30","35","40","45","50","60","70","80","90","100"};
		default = 4;
	};

	class PARM_Equipment_Artillery {
		title = "$STR_WF_PARAMETER_Arty";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};
	class PARM_Equipment_Planes {
		title = "$STR_WF_PARAMETER_Plane";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};	
	class PARM_Equipment_Helicopter {
		title = "$STR_WF_PARAMETER_Helicopter";
		values[] = {0,1,2};
		texts[] = {"$STR_WF_Disabled","Only Transport","All"};
		default = 2;
	}; 
	
	class PARM_Base_BaseAreaLimit {
		title = "$STR_WF_PARAMETER_BaseArea";
		values[] = {-1,1,2,3,4,5,6,7,8,9,10,12,14,16,18,20,22,24};
		texts[] = {"$STR_WF_Disabled","1","2","3","4","5","6","7","8","9","10","12","14","16","18","20","22","24"};
		default = 4;
	};
	class PARM_Base_BaseBuildingsLimit {
		title = "$STR_WF_PARAMETER_BuildingsLimit";
		values[] = {-1,1,2,3,4,5,6,7,8,9,10};
		texts[] = {"$STR_WF_Disabled","1","2","3","4","5","6","7","8","9","10"};
		default = 3;
	};
	class PARM_Base_AutoDefenses {
		title = "$STR_WF_PARAMETER_AutoMannedDefense";
		values[] = {0,5,10,15,20};
		texts[] = {"$STR_WF_Disabled","5","10","20"};
		default = 15;
	};
	class PARM_Base_HQDeploycost {
		title = "$STR_WF_PARAMETER_HQDeployCost";
		values[] = {100,200,300,400,500,600,700,800,900,1000,1500,2000,2500,3000,3500,4000,5000,6000,7000,8000,9000,10000};
		texts[] = {"S 100","S 200","S 300","S 400","S 500","S 600","S 700","S 800","S 900","S 1000","S 1500","S 2000","S 2500","S 3000","S 3500","S 4000","S 5000","S 6000","S 7000","S 8000","S 9000","S 10000"};
		default = 400;
	};
	class PARM_Base_StartingLocations {
		title = "$STR_WF_PARAMETER_StartingLocations";
		values[] = {0,1,2};
		texts[] = {"$STR_WF_PARAMETER_StartingLocations_WestNorth","$STR_WF_PARAMETER_StartingLocations_WestSouth","$STR_WF_PARAMETER_StartingLocations_Random"};
		default = 2;
	};
	class PARM_Base_StartingDistance {
		title = "$STR_WF_PARAMETER_StartingDistance";
		values[] = {-1,1000,1500,2000,2500,3000,3500,4000,4500,5000,5500,6000,6500,7000,7500,8000,8500,9000};
		texts[] = {"$STR_WF_PARAMETER_StartingLocations_Random","1000m","1500m","2000m","2500m","3000m","3500m","4000m","4500m","5000m","5500m","6000m","6500m","7000m","7500m","8000m","8500m","9000m"};
		default = 8000;
	};
	class PARM_Economy_StartingFundsEast {
		title = "$STR_WF_PARAMETER_Funds_East";
		values[] = {800,1600,2400,3200,4000,5000,6400,8000,12800,25600,51200,102400,204800,409600,819200};
		texts[] = {"$ 800","$ 1600","$ 2400","$ 3200","$ 4000","$ 5000","$ 6400","$ 8000","$ 12800","$ 25600","$ 51200","$ 102400","$ 204800","$ 409600","$ 819200"};
		default = 5000;
	};
	class PARM_Economy_StartingFundsWest {
		title = "$STR_WF_PARAMETER_Funds_West";
		values[] = {800,1600,2400,3200,4000,5000,6400,8000,12800,25600,51200,102400,204800,409600,819200};
		texts[] = {"$ 800","$ 1600","$ 2400","$ 3200","$ 4000","$ 5000","$ 6400","$ 8000","$ 12800","$ 25600","$ 51200","$ 102400","$ 204800","$ 409600","$ 819200"};
		default = 5000;
	};
	class PARM_Economy_StartingSupplyEast {
		title = "$STR_WF_PARAMETER_Supply_East";
		values[] = {1200,2700,3000,4800,6000,7200,8400,9600,19200,38400,76800};
		texts[] = {"S 1200","S 2700","S 3000","S 4800","S 6000","S 7200","S 8400","S 9600","S 19200","S 38400","S 76800"};
		default = 2700;
	};
	class PARM_Economy_StartingSupplyWest {
		title = "$STR_WF_PARAMETER_Supply_West";
		values[] = {1200,2700,3000,4800,6000,7200,8400,9600,19200,38400,76800};
		texts[] = {"S 1200","S 2700","S 3000","S 4800","S 6000","S 7200","S 8400","S 9600","S 19200","S 38400","S 76800"};
		default = 2700;
	};
	class PARM_Economy_SupplySystem {
		title = "$STR_WF_PARAMETER_SupplySystem";
		values[] = {0,1};
		texts[] = {"$STR_WF_PARAMETER_SupplySystem_Truck","$STR_WF_PARAMETER_Time"};
		default = 1;
	};
	class PARM_Environment_FastTime {
		title = "$STR_WF_PARAMETER_FastTime";
		values[] = {0,1,2,3,4,5,6,7,8,9};
		texts[] = {"$STR_WF_Disabled","1 Second = 2 Seconds","1 Second = 3 Seconds","1 Second = 4 Seconds","1 Second = 5 Seconds","1 Second = 10 Seconds","1 Second = 15 Seconds","1 Second = 20 Seconds","1 Second = 25 Seconds","1 Second = 30 Seconds"};
		default = 0;
	};
	class PARM_Environment_TimeOfDay {
		title = "$STR_WF_PARAMETER_TimeOfDay";
		values[] = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23};
		texts[] = {"00:00","01:00","02:00","03:00","04:00 Sunrise","05:00","06:00","07:00","08:00","09:00","10:00","11:00",
		"12:00","13:00","14:00","15:00","16:00","17:00","18:00 Sunshine","19:00","20:00","21:00","22:00","23:00"};
		default = 7;
	};
	class PARM_Environment_Weather {
		title = "$STR_WF_PARAMETER_Weather";
		values[] = {0,1,2,3};
		texts[] = {"$STR_WF_PARAMETER_Weather_Clear","$STR_WF_PARAMETER_Weather_Cloudy","$STR_WF_PARAMETER_Weather_Rainy","$STR_WF_PARAMETER_Weather_Dynamic"};
		default = 0;
	};
	class PARM_Gameplay_GrassDistance {
		title = "$STR_WF_PARAMETER_Grass";
		values[] = {10,27,30,33,50};
		texts[] = {"10","27","30","33","Toggleable"};
		default = 30;
	};
	class PARM_Gameplay_ViewDistance {
		title = "$STR_WF_PARAMETER_ViewDistance";
		values[] = {200,500,800,1000,1500,2000,2500,3000,3500,4000,4500,5000,6000,7000,8000,9000,10000};
		texts[] = {"200m","500m","800m","1000m","1500m","2000m","2500m","3000m","3500m","4000m","4500m","5000m","6000m","7000m","8000m","9000m","10k"};
		default = 4000;
	};	
	class PARM_Gameplay_UpgradesEast {
		title = "$STR_WF_PARAMETER_Upgrades_East";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};
	class PARM_Gameplay_UpgradesWest {
		title = "$STR_WF_PARAMETER_Upgrades_West";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};
	class PARM_Module_ICBM {
		title = "$STR_WF_PARAMETER_ICBM";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 0;
	};
	class PARM_Respawn_Delay {
		title = "$STR_WF_PARAMETER_Respawn";
		values[] = {10,15,20,25,30,35,40,45,50,55,60,65,70,75,80,85,90};
		texts[] = {"10 Seconds","15 Seconds","20 Seconds","25 Seconds","30 Seconds TNT","35 Seconds","40 Seconds","45 Seconds","50 Seconds",
		"55 Seconds","60 Seconds","65 Seconds","70 Seconds","75 Seconds","80 Seconds","85 Seconds","90 Seconds"};
		default = 30;
	};
	class PARM_Respawn_Mobile {
		title = "$STR_WF_PARAMETER_MobileRespawn";
		values[] = {0,1,2,3};
		texts[] = {"$STR_WF_Disabled","Mash","Ambulance","Mash & Ambulance"};
		default = 3;
	};
	class PARM_Towns_Occupation {
		title = "$STR_WF_PARAMETER_Occupation";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};
	class PARM_Towns_OccupDifficulty {
		title = "$STR_WF_PARAMETER_Difficulty_Occupation";
		values[] = {1,2,3};
		texts[] = {"Hard","Normal (Default TNT)","LITE (less Server Load)"};
		default = 2;
	};
	class PARM_Towns_OccupationFactionEast {
		title = "$STR_WF_PARAMETER_Occupation_Type_East";
		values[] = {0,1,2};
		texts[] = {"Insurgents","Russians","Takistan Army"};
		default = 1;
	};
	class PARM_Towns_OccupationFactionWest {
		title = "$STR_WF_PARAMETER_Occupation_Type_West";
		values[] = {0,1,2,3};
		texts[] = {"Chernarussian Defence Force","United States","United States Marine Corps","British Armed Force"};
		default = 1;
	};
	class PARM_Towns_Resistance {
		title = "$STR_WF_PARAMETER_Resistance";
		values[] = {0,1};
		texts[] = {"$STR_WF_Disabled","$STR_WF_Enabled"};
		default = 1;
	};
	class PARM_Towns_ResistanceDifficulty {
		title = "$STR_WF_PARAMETER_Difficulty_Resistance";
		values[] = {1,2,3};
		texts[] = {"Hard","Normal (Default TNT)","LITE (less Server Load)"};
		default = 2;
	};
	class PARM_Towns_ResistanceFaction {
		title = "$STR_WF_PARAMETER_Reinforcement_Type";
		values[] = {0,1,2};
		texts[] = {"Guerillas","Private Military Company","Takistani Locals"};
		default = 2;
	};
	
};