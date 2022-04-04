/* Titles */

#ifdef VANILLA
	#define usflag "\ca\data\flag_usa_co.paa"
	#define ruflag "\ca\data\flag_rus_co.paa"
#endif

#ifdef ARROWHEAD
	#define usflag "\ca\ca_e\data\flag_us_co.paa"
	#define ruflag "\ca\ca_e\data\flag_tkg_co.paa"
#endif

#ifdef COMBINEDOPS
	#define usflag "\ca\ca_e\data\flag_us_co.paa"
	#define ruflag "\ca\data\flag_rus_co.paa"
#endif

#ifndef usflag
	#define usflag "\ca\ca_e\data\flag_us_co.paa"
	#define ruflag "\ca\ca_e\data\flag_tkg_co.paa"
#endif

#define resize 0.60

class RscTitles {

	//--- Mando Missiles - Titles.
	#include "Mando\mando_missiletitles.h"
	
	titles[] = {RscOverlay,OptionsAvailable,EndOfGameStats};


		class RscOverlay
	{
		idd=10200;
		movingEnable = 0;
		duration=15000;
		name="gps";
		controls[]={"map_bg","RUBHUD_GPSMAP","txt_dwn","txt_crw","OptionsIcon0","OptionsIcon1","OptionsIcon2","OptionsIcon3","OptionsIcon4","OptionsIcon5","OptionsIcon6","ManPic","HeadPic","BodyPic","ArmsPic","LegsPic"};
		onload="uiNamespace setVariable['GUI',_this select 0]; [] spawn Func_Client_UpdateGUI";		
		
		
		class map_bg:RscText
		{
			idc=6001;
			style=64;
			colorText[]={0.9,0.9,0.9,0.9};
			text="";
			w=0.175 * safezoneW;
			h=0.187 * safezoneH;
			x = 0.824 * safezoneW + safezoneX;
			y = 0.812000 * safezoneH + safezoneY;
			default=true;
		};
		
		class RUBHUD_GPSMAP: RscMapControl {
			idc = 6002;
			//text = "";
			x = 0.825 * safezoneW + safezoneX;
			y = 0.814000 * safezoneH + safezoneY;
			w = 0.172 * safezoneW;
			h = 0.182 * safezoneH;
			default=true;
			//sizeEx = 0.028;
			//colorText[] = {1,1,1,1};
		};
		//--- Pulizie di primavera "map_bg","map_src","Players","Score","Funds",
		/*class map_bg:RscText
		{
			idc=6001;
			style=64;
			colorText[]={0.9,0.9,0.9,0.5};
			text="";
			w=0.224;
			h=0.222;
			x=-1;
			y=-1;
			default=true;
		};
		class map_src:RscMapControl
		{
			idc=6002;
			w=0.222;
			h=0.220;
			x=-1;
			y=-1;
			default=true;
		};*/
		class txt_dwn:RscStructuredTextB
		{
			idc=6003;
			font = "Zeppelin33";
			w = 0.175 * safezoneW;
			h=0.026 * safezoneH;
			x = 0.824 * safezoneW + safezoneX;
			y = 0.784000 * safezoneH + safezoneY;
			colorText[]={0.95,0.95,0.95,1};
			//colorBackground[]={0.45,0.60,0.25,1};
		};
		class txt_crw:RscStructuredTextC
		{
			idc=6004;
			w=0.50;
			h=0.85;
			
			colorBackground[]={0,0,0,0};
			
		};
		class OptionsImageAspectRatio: RscPicture 
		{
			w = 0.078431;
			h = 0.104575;
			style = "0x30+0x800";
		};

		class OptionsIcon0: OptionsImageAspectRatio 
		{
			IDC = 6005;
			x = "(SafeZoneW + SafeZoneX) - (0.0392157)";
			y = 0.6;
			w = 0.039216;
			h = 0.052288;
			colortext[] = {0, 0, 0, 0.9};
			text = "";
		};

		class OptionsIcon1: OptionsIcon0 
		{
			IDC = 6006;
			y = "0.4+(0.0532876*1)";
		};

		class OptionsIcon2: OptionsIcon0 
		{
			IDC = 6007;
			y = "0.4+(0.0532876*2)";
		};

		class OptionsIcon3: OptionsIcon0 
		{
			IDC = 6008;
			y = "0.4+(0.0532876*3)";
		};

		class OptionsIcon4: OptionsIcon0 
		{
			IDC = 6009;
			y = "0.4+(0.0532876*4)";
		};

		class OptionsIcon5: OptionsIcon0 
		{
			IDC = 6010;
			y = "0.4+(0.0532876*5)";
		};
		class OptionsIcon6: OptionsIcon0 
		{
			IDC = 6011;
			y = "0.4+(0.0532876*6)";
		};
		
		class ManPic:RscPicture
		{	
			idc=6015;		
			//colorText[]={0.1,1,0.1,0.7};
			text="pic\man.paa";
			x=0.94;
			y=0.02;
			w=0.04*1.25;
			h=0.14*1.25;
		};		
		class HeadPic:RscPicture
		{
			idc=6016;
			//colorText[]={1,0,0,0.8};
			text="";
			x=0.9492;
			y=0.0172;
			w=0.022*1.25;
			h=0.02*1.25;
		};
		class BodyPic:RscPicture
		{
			idc=6017;
			//colorText[]={1,0,0,0.8};
			text="";
			x=0.93995;
			y=0.04;
			w=0.04*1.25;
			h=0.044*1.25;
		};
		class ArmsPic:RscPicture
		{
			idc=6018;
			//colorText[]={1,0,0,0.8};
			text="";
			x=0.94;
			y=0.052;
			w=0.04*1.25;
			h=0.044*1.25;
		};
		class LegsPic:RscPicture
		{
			idc=6019;
			//colorText[]={1,0,0,0.8};
			text="";
			x=0.93999;
			y=0.085;
			w=0.04*1.25;//0.04
			h=0.044*1.25;//0.044
		};
		
	};
	
	class OptionsAvailable {
		idd = 10300;
		movingEnable = 0;
		objects[] = {};
		duration = 15000;
		name = "OptionsAvailable";
		onLoad = "_this ExecVM ""Client\GUI\GUI_SetCurrentCutDisplay.sqf""";
		onUnload = "_this ExecVM ""Client\GUI\GUI_ClearCurrentCutDisplay.sqf""";
		controls[] = {"RUBHUD_BackLine","RUBHUD_Background","RUBHUD_Health","RUBHUD_Health_Value","RUBHUD_Uptime","RUBHUD_Uptime_Value","RUBHUD_Money","RUBHUD_Money_Value","RUBHUD_Income","RUBHUD_Income_Value","RUBHUD_Supply","RUBHUD_Supply_Value","RUBHUD_SupplyMin","RUBHUD_SupplyMin_Value","RUBHUD_City","RUBHUD_City_Value","RUBHUD_Server","RUBHUD_Server_Value",
		"ProgressBarBackground","ProgressBarBackground","ProgressBar","CA_Progress_Label","OptionsIcon0", "OptionsIcon1", "OptionsIcon2", "OptionsIcon3", "OptionsIcon4", "OptionsIcon5", "OptionsIcon6", "OptionsIcon7", "OptionsIcon8", "OptionsIcon9", "OptionsIcon10",
		"OptionsIcon11", "OptionsIcon12", "OptionsIcon13", "OptionsIcon14", "OptionsIcon15", "OptionsIcon16", "OptionsIcon17","statblue","np_blue","score_blue","statred","np_red","score_red"};
		controlsBackground[] = {};	
		
		class RUBHUD_BackLine : RscText {
			idc = 1344;
			x = 0.872584 * safezoneW + safezoneX;
			y = 0.759 * safezoneH + safezoneY;
			w = 0.107 * safezoneW;
			h = 0.0012 * safezoneH;
			//colorBackground[] = OA_header_dark;
			colorBackground[] = {0,0,0,0};
		};
		class RUBHUD_Background : RscText {
			idc = 1345;
			x = 0.872584 * safezoneW + safezoneX;
			y = 0.6375 * safezoneH + safezoneY;
			w = 0.107 * safezoneW;
			h = 0.0012 * safezoneH;
			//colorBackground[] = OA_header_dark;
			colorBackground[] = {0,0,0,0};
		};
		
		//class RUBHUD_Background_Frame : RscFrame
		//{
		//	idc = 1800;
		//	x = 0.872188 * safezoneW + safezoneX;
		//	y = 0.90463 * safezoneH + safezoneY;
		//	w = 0.1025 * safezoneW;
		//	h = 0.0875925 * safezoneH;
		//};
		
		class RUBHUD_Health : RscText
		{
			idc = 1346;
			text = "";
			x = 0.871708 * safezoneW + safezoneX;
			y = 0.61626 * safezoneH + safezoneY;
			w = 0.7977083 * safezoneW;
			h = 0.0228518 * safezoneH;
			sizeEx = 0.030;
			//colorText[] = {0.9,0.9,0.9,1};
		};
		
		class RUBHUD_Health_Value : RscText
		{
			idc = 1347;
			text = "";
			x = 0.911938 * safezoneW + safezoneX;
			y = 0.61626 * safezoneH + safezoneY;
			w = 0.7977083 * safezoneW;
			h = 0.0228518 * safezoneH;
			sizeEx = 0.030;
			//colorText[] = {0.9,0.9,0.9,1};
		};
		
		class RUBHUD_Uptime: RscText {
			idc = 1348;
			text = "";
			x = 0.871708 * safezoneW + safezoneX;
			y = 0.63626 * safezoneH + safezoneY;
			w = 0.1025 * safezoneW;
			h = 0.0255556 * safezoneH;
			sizeEx = 0.024;
			colorText[] = {1,1,1,1};
		};
		
		class RUBHUD_Uptime_Value: RscText {
			idc = 1349;
			text = "";
			x = 0.911938 * safezoneW + safezoneX;
			y = 0.63626 * safezoneH + safezoneY;
			w = 0.4401041 * safezoneW;
			h = 0.0255556 * safezoneH;
			sizeEx = 0.024;
			colorText[] = {1,1,1,1};
		};
		
		class RUBHUD_Money: RscText {
			idc = 1350;
			text = "";
			x = 0.871708 * safezoneW + safezoneX;
			y = 0.656000 * safezoneH + safezoneY;
			w = 0.1025 * safezoneW;
			h = 0.0255556 * safezoneH;
			sizeEx = 0.024;
			colorText[] = {1,1,1,1};
		};
		
		class RUBHUD_Money_Value: RscText {
			idc = 1351;
			text = "";
			x = 0.911938 * safezoneW + safezoneX;
			y = 0.656000 * safezoneH + safezoneY;
			w = 0.4401041 * safezoneW;
			h = 0.0255556 * safezoneH;
			sizeEx = 0.024;
			colorText[] = {1,1,1,1};
		};
		
		class RUBHUD_Income: RscText {
			idc = 1352;
			text = "";
			x = 0.871708 * safezoneW + safezoneX;
			y = 0.67600 * safezoneH + safezoneY;
			w = 0.1025 * safezoneW;
			h = 0.0255556 * safezoneH;
			sizeEx = 0.024;
			colorText[] = {1,1,1,1};
		};
		
		class RUBHUD_Income_Value: RscText {
			idc = 1353;
			text = "";
			x = 0.911938 * safezoneW + safezoneX;
			y = 0.67600 * safezoneH + safezoneY;
			w = 0.4401041 * safezoneW;
			h = 0.0255556 * safezoneH;
			sizeEx = 0.024;
			colorText[] = {1,1,1,1};
		};
		
		class RUBHUD_Supply: RscText {
			idc = 1354;
			text = "";
			x = 0.871708 * safezoneW + safezoneX;
			y = 0.696000 * safezoneH + safezoneY;
			w = 0.1025 * safezoneW;
			h = 0.0255556 * safezoneH;
			sizeEx = 0.024;
			colorText[] = {1,1,1,1};
		};
		
		class RUBHUD_Supply_Value: RscText {
			idc = 1355;
			text = "";
			x = 0.911938 * safezoneW + safezoneX;
			y = 0.696000 * safezoneH + safezoneY;
			w = 0.4401041 * safezoneW;
			h = 0.0255556 * safezoneH;
			sizeEx = 0.024;
			colorText[] = {1,1,1,1};
		};
		
		class RUBHUD_SupplyMin: RscText {
			idc = 1356;
			text = "";
			x = 0.871708 * safezoneW + safezoneX;
			y = 0.71600 * safezoneH + safezoneY;
			w = 0.1025 * safezoneW;
			h = 0.0255556 * safezoneH;
			sizeEx = 0.024;
			colorText[] = {1,1,1,1};
		};
		
		class RUBHUD_SupplyMin_Value: RscText {
			idc = 1357;
			text = "";
			x = 0.911938 * safezoneW + safezoneX;
			y = 0.71600 * safezoneH + safezoneY;
			w = 0.4401041 * safezoneW;
			h = 0.0255556 * safezoneH;
			sizeEx = 0.024;
			colorText[] = {1,1,1,1};
		};
		
		class RUBHUD_City: RscText {
			idc = 1358;
			text = "";
			x = 0.871708 * safezoneW + safezoneX;
			y = 0.736000 * safezoneH + safezoneY;
			w = 0.1025 * safezoneW;
			h = 0.0255556 * safezoneH;
			sizeEx = 0.024;
			colorText[] = {1,1,1,1};
		};
		
		class RUBHUD_City_Value: RscText {
			idc = 1359;
			text = "";
			x = 0.911938 * safezoneW + safezoneX;
			y = 0.736000 * safezoneH + safezoneY;
			w = 0.4401041 * safezoneW;
			h = 0.0255556 * safezoneH;
			sizeEx = 0.026;
			colorText[] = {1,1,1,1};
		};
		class RUBHUD_Server: RscText {
			idc = 1360;
			text = "";
			x = 0.871708 * safezoneW + safezoneX;
			y = 0.75696 * safezoneH + safezoneY;
			w = 0.1025 * safezoneW;
			h = 0.0255556 * safezoneH;
			sizeEx = 0.024;
			colorText[] = {1,1,1,1};
		};
		
		class RUBHUD_Server_Value: RscText {
			idc = 1361;
			text = "";
			x = 0.911938 * safezoneW + safezoneX;
			y = 0.75696 * safezoneH + safezoneY;
			w = 0.4401041 * safezoneW;
			h = 0.0255556 * safezoneH;
			sizeEx = 0.024;
			colorText[] = {1,1,1,1};
		};
		/*class plblue:RscPicture
		{
			idc=1369;
			x = 0.820 * safezoneW + safezoneX;
			y = 0.734000 * safezoneH + safezoneY;
			w=0.032;
			h = 0.036;
			//text="";
			//text="Client\Images\plablu.paa";
			text="Client\Images\flag_bluefor_ca.paa";
			
		};	*/
		class statblue:RscPicture
		{
			idc=1362;
			x = 0.840 * safezoneW + safezoneX;
			y = 0.734000 * safezoneH + safezoneY;
			w=0.064;
			h = 0.036;
			text="";
			//text="Client\Images\flag_bluefor_ca.paa";
			
		};	
		class np_blue:RscText
		{
			idc=1363;
			w = 0.175 * safezoneW;
			h=0.030 * safezoneH;
			x = 0.8252 * safezoneW + safezoneX;
			y = 0.731000 * safezoneH + safezoneY;
			sizeEx = 0.032;
			//font = "EtelkaMonospaceProBold";
			shadow = 2;
			colorText[]={0.95,0.95,0.95,1};
			text="";
			//colorBackground[]={0.45,0.60,0.25,1};
		};
		class score_blue:RscText
		{
			idc=1364;
			w = 0.175 * safezoneW;
			h=0.030 * safezoneH;
			x = 0.842 * safezoneW + safezoneX;
			y = 0.729500 * safezoneH + safezoneY;
			colorText[]={0.95,0.95,0.95,1};
			text="";
			//colorBackground[]={0.45,0.60,0.25,1};
		};
		
		class statred:RscPicture
		{
			idc=1365;
			x = 0.840 * safezoneW + safezoneX;
			y = 0.758000 * safezoneH + safezoneY;
			w=0.064;
			h = 0.036;
			text="";
			//text="Client\Images\flag_opfor_ca.paa";
			
		};	
		class np_red:RscText
		{
			idc=1366;
			w = 0.175 * safezoneW;
			h=0.030 * safezoneH;
			x = 0.8252 * safezoneW + safezoneX;
			y = 0.755000 * safezoneH + safezoneY;
			sizeEx = 0.032;
			//font = "EtelkaMonospaceProBold";
			shadow = 2;
			colorText[]={0.95,0.95,0.95,1};
			text="";
			//colorBackground[]={0.45,0.60,0.25,1};
		};
		class score_red:RscText
		{
			idc=1367;
			w = 0.175 * safezoneW;
			h=0.030 * safezoneH;
			x = 0.842 * safezoneW + safezoneX;
			y = 0.753500 * safezoneH + safezoneY;
			colorText[]={0.95,0.95,0.95,1};
			text="";
			//colorBackground[]={0.45,0.60,0.25,1};
		};
										
		class ProgressBarBackground : RscText {
			style = 128;
			idc = 3600;
			x = 0.3;
			y = "((SafeZoneH + SafeZoneY) - (1 + 0.165))*-1";
			w = 0.4;
			h = 0.06;
			colorBackground[] = {0,0,0,0.001};
		};
			
		class ProgressBar : RscText {
			style = 128;
			idc = 3800;
			x = 0.31;
			y = "((SafeZoneH + SafeZoneY) - (1 + 0.175))*-1";
			w = 0.38;
			h = 0.04;
			colorBackground[] = {0,0,0,0.001};
		};
		
		class CA_Progress_Label: RscText {
			idc = 3900;
			text = "";
			colorText[]={0.9,0.9,0.9,0.9};
			x = 0.42;
			w = 0.3;
			y = "((SafeZoneH + SafeZoneY) - (1 + 0.175))*-1";
		};
		
		class OptionsImageAspectRatio : RscPicture {
			w = 0.0784314;
			h = 0.104575;
			style = 0x30+0x800;
		};
			
		class OptionsIcon0 : OptionsImageAspectRatio {
			idc = 3500;
			x = "(SafeZoneW + SafeZoneX) - (0.0392157)";
			y = 0+(0.0482876*17);
			w = 0.0392157;
			h = 0.0471876;
			colorText[] = {0.2588, 0.7137, 1, 1};
			//colorText[] = WFBE_OA_Icon;
			text = "";
		};
			
		class OptionsIcon1 : OptionsIcon0 {
			idc = 3500 + 1;
			y = 0+(0.0482876*16);
		};
		
		class OptionsIcon2 : OptionsIcon0 {
			idc = 3500 + 2;
			y = 0+(0.0482876*15);
		};
		
		class OptionsIcon3 : OptionsIcon0 {
			idc = 3500 + 3;
			y = 0+(0.0482876*14);
		};
		
		class OptionsIcon4 : OptionsIcon0 {
			idc = 3500 + 4;
			y = 0+(0.0482876*13);
		};
		
		class OptionsIcon5 : OptionsIcon0 {
			idc = 3500 + 5;
			y = 0+(0.0482876*12);
		};
		
		class OptionsIcon6 : OptionsIcon0 {
			idc = 3500 + 6;
			y = 0+(0.0482876*11);
		};
		
		class OptionsIcon7 : OptionsIcon0 {
			idc = 3500 + 7;
			y = 0+(0.0482876*10);
		};
		
		class OptionsIcon8 : OptionsIcon0 {
			idc = 3500 + 8;
			y = 0+(0.0482876*9);
		};
		
		class OptionsIcon9 : OptionsIcon0 {
			idc = 3500 + 9;
			y = 0+(0.0482876*8);
		};
		
		class OptionsIcon10 : OptionsIcon0 {
			idc = 3500 + 10;
			y = 0+(0.0482876*7);
		};
		
		class OptionsIcon11 : OptionsIcon0 {
			idc = 3500 + 11;
			y = 0+(0.0482876*6);
		};
		
		class OptionsIcon12 : OptionsIcon0 {
			idc = 3500 + 12;
			y = 0+(0.0482876*5);
		};
		
		class OptionsIcon13 : OptionsIcon0 {
			idc = 3500 + 13;
			y = 0+(0.0482876*4);
		};
		
		class OptionsIcon14 : OptionsIcon0 {
			idc = 3500 + 14;
			y = 0+(0.0482876*3);
		};
		
		class OptionsIcon15 : OptionsIcon0 {
			idc = 3500 + 15;
			y = 0+(0.0482876*2);
		};
		
		class OptionsIcon16 : OptionsIcon0 {
			idc = 3500 + 16;
			y = 0+(0.0482876*1);
		};
		
		class OptionsIcon17 : OptionsIcon0 {
			idc = 3500 + 17;
			y = 0.0482876;
		};
	};
	
	class EndOfGameStats {
		idd = 90000;
		duration = 15000;
		movingEnable = 0;
		objects[] = {};
		name = "EndOfGameStats";

		onLoad = "_this ExecVM ""Client\GUI\GUI_SetCurrentCutDisplay.sqf""";
		onUnload = "_this ExecVM ""Client\GUI\GUI_ClearCurrentCutDisplay.sqf"""; 

		controls[] = {StatsBackGroundHeader,SideWinsText,StatsBackGround,EastImage,WestImage,SoldiersRecruitedLabel,SoldiersLostLabel,VehiclesCreatedLabel,VehiclesLostLabel,
					  EastSoldiersRecruitedCount,WestSoldiersRecruitedCount,EastSoldiersLostCount,WestSoldiersLostCount,
					  EastVehiclesCreatedCount,WestVehiclesCreatedCount,EastVehiclesLostCount,WestVehiclesLostCount,VehiclesStatLabel,EastVehiclesCount,WestVehiclesCount,TimeLabel};

		controlsBackground[] = {};
		
		class StatsBackGroundHeader : RscText {
			style = 128;
			idc = 90002;
			x = "SafeZoneX";
			y = 0.06 * resize;
			w = 1 * resize;
			h = 0.18 * resize;
			colorBackground[] = {1.0, 1.0, 1.0, 0.90};
		};
		
		class SideWinsText : RscText {
			idc = 90001;
			style = 2;
			sizeEx = 0.045;
			x = __EVAL(SafeZoneX + (0.25 * resize));
			y = 0.1 * resize;
			w = 0.3;
			h = 0.08;
			colorText[] = {0.0,0.0,0.0,1};
		};
		
		class StatsBackGround : RscText {
			style = 128;
			idc = 90003;
			x = "SafeZoneX";
			y = 0.24 * resize ;
			w = 1 * resize;
			h = 0.67 * resize;
			colorBackground[] = {0.1582, 0.1582, 0.1582, 0.80};
		};

		class EastImage : RscPicture {
			style = 48 + 0x800;
			x = __EVAL(SafeZoneX + (0.02 * resize));
			y = 0.05 * resize ;
			w = 0.2 * resize;
			h = 0.2 * resize;
			text = usflag;
		};
		
		class WestImage:EastImage {
		    x = __EVAL(SafeZoneX + (0.78 * resize));
			text = ruflag;
		};

		class SoldiersRecruitedLabel : RscText {
			style = 2;
			sizeEx = 0.025;
			x = __EVAL(SafeZoneX + (0.05 * resize));
			y = 0.34 * resize;
			w = 0.9 * resize;
			h = 0.04 * resize;
			colorText[] = {1.0,1.0,1.0,1};
			text = "POINTS:";
		};

		class SoldiersRecruitedCountBase : RscText {
			idc = 90100;
			style = 0;
			sizeEx = 0.07;
			x = __EVAL(SafeZoneX + (0.81 * resize));
			y = 0.3 * resize;
			w = 0.2 * resize;
			h = 0.1 * resize;
			colorText[] = {1.0,1.0,1.0,1};
		};

		class EastSoldiersRecruitedCount : SoldiersRecruitedCountBase {
			idc = 90101;
		};

		class WestSoldiersRecruitedCount : SoldiersRecruitedCountBase {
			idc = 90200;
			x = "SafeZoneX + 0.05";
		};

		class SoldiersLostLabel : SoldiersRecruitedLabel {
			y = 0.49 * resize;
			text = "Supply:";
		};

		class EastSoldiersLostCount : SoldiersRecruitedCountBase {
			idc = 90103;
			y = 0.45 * resize;
			sizeEx = 0.045;
			colorText[] = {1, 1, 0, 1};
		};

		class WestSoldiersLostCount : SoldiersRecruitedCountBase {
			idc = 90202;
			y = 0.45 * resize;
			x = "SafeZoneX + 0.05";
			sizeEx = 0.045;
			colorText[] = {1, 1, 0, 1};
		};
		class VehiclesCreatedLabel : SoldiersRecruitedLabel {
			y = 0.60 * resize;
			text = "Soldiers (Lost):";
		};

		class EastVehiclesCreatedCount : SoldiersRecruitedCountBase	{
			idc = 90105;
			y = 0.57 * resize;
			sizeEx = 0.025;
			
		};

		class WestVehiclesCreatedCount : SoldiersRecruitedCountBase {
			idc = 90204;
			x = "SafeZoneX + 0.05";
			y = 0.57 * resize;
			sizeEx = 0.025;
			
		};
		class VehiclesStatLabel : SoldiersRecruitedLabel {
			y = 0.70 * resize;
			text = "Vehicles (Lost):";
		};

		class EastVehiclesCount : SoldiersRecruitedCountBase	{
			idc = 90265;
			y = 0.67 * resize;
			sizeEx = 0.025;
			
		};

		class WestVehiclesCount : SoldiersRecruitedCountBase {
			idc = 90266;
			x = "SafeZoneX + 0.05";
			y = 0.67 * resize;
			sizeEx = 0.025;
			
		};

		class VehiclesLostLabel : SoldiersRecruitedLabel {
			y = 0.79 * resize;
			text = "City:";
		};

		class EastVehiclesLostCount : SoldiersRecruitedCountBase {
			idc = 90107;
			y = 0.75 * resize;
			sizeEx = 0.045;
			colorText[] = {1.0,0,0.0,1};
		};

		class WestVehiclesLostCount : SoldiersRecruitedCountBase {
			idc = 90206;
			x = "SafeZoneX + 0.05";
			y = 0.75 * resize;
			sizeEx = 0.045;
			colorText[] = {0.25,0.45,1.0,1};
		};

		class TimeLabel : SoldiersRecruitedLabel {
			idc = 90208;
			y = 0.85 * resize;
			colorText[] = {1.0,1.0,0.0,0.90};
			text = "";
		};
	};
	
	class WFBE_ConstructionInterface {
		idd = 112200;
		movingEnable = 0;
		duration = 1e+011;
		name = "Construction Interface";
		onLoad = "uiNamespace setVariable ['wfbe_title_coin', _this select 0]";
		onUnload = "uiNamespace setVariable ['wfbe_title_coin', displayNull]";
		
		class controls {
			class center : RscPictureKeepAspect {
				idc = 112201;
				x = 0.4;
				y = 0.4;
				w = 0.2;
				h = 0.2;
				colorText[] = {1, 1, 1, 0.1};
				text = "\ca\ui\data\cursor_w_laserlock_gs.paa";
			};
			
			class descBackLeft : IGUIBack {
				idc = 112211;
				x = "SafezoneX + 0.01";
				y = "SafezoneY + SafezoneH - 0.13 + 0.01";
				w = 0.3;
				h = 0.12;
			};
			class descBackCenter : descBackLeft {
				idc = 112212;
				x = "SafezoneX + 0.01 +	0.3";
				w = "SafeZoneW - 0.02 -	0.3*2";
			};
			class descBackRight : descBackLeft {
				idc = 112213;
				x = "SafezoneX + SafeZoneW - 0.01 -	0.3";
				w = 0.3;
			};
			
			class descText : RscStructuredText {
				idc = 112214;
				x = "SafezoneX + 0.01 + 0.3";
				y = "SafezoneY + SafezoneH - 0.13 + 0.021";
				w = "SafeZoneW - 0.02 -	0.3*2";
				h = 0.11;
				size = 0.035;
				
				class Attributes {
					font = "Zeppelin32";
					color = "#B6F862";
					align = "left";
					shadow = true;
				};
			};
			
			class controlsText : descText {
				idc = 112215;
				x = "SafezoneX + SafeZoneW - 0.01 -	0.3";
				y = "SafezoneY + SafezoneH - 0.13 + 0.015";
				w = 0.3;
				h = 0.11;
			};
			
			class cashText : descText {
				idc = 112224;
				x = "SafezoneX + 0.012*2";
				y = "SafezoneY + SafezoneH - 0.13 + 0.02";
				w = 0.2;
				h = 0.1;
			};
			class Help_InfoText: RscText
			{
				idc = 1122244445;
				text = "F1 Help";
				x = 0.834913 * safezoneW + safezoneX;
				y = 0.936387 * safezoneH + safezoneY;
				w = 0.035676 * safezoneW;
				h = 0.031477 * safezoneH;
				ColorBackground[] = {1,1,1,0};
				ColorText[] = {0.662745,0.662745,0.662745,1};
				SizeEx = 0.032;
			};
		};
	};
	class stats{
		idd=1675;
		duration=4;
		name="stats";
		controls[]={"txt"};
		onload="_this call compile 'private [''_control''];disableSerialization; _Control=(_this select 0) displayCtrl 1671; _Control ctrlSetStructuredText parseText Local_MultiUseString;'";
		class txt:RscStructuredText
		{
			idc=1671;
			colorBackground[]={0,0,0,0};
			font="Zeppelin32";
			colorText[]={1,1,1,1};
			size=0.04;
			x=SafeZoneX;
			y=0.635;			
			w=SafeZoneW;
			h=1-0.635;
			default=true;
		};
	};
	/*class RscTargetOverlay {
				idd=-1;
				duration=10000;
				name="gps";
				controls[]={"Target00"};
				onload="uiNamespace setVariable['AARadarGUI',_this select 0]; [] spawn Func_Client_UpdateOSD";		
		
			class Target00:RscStructuredText {
				idc=6080;
				x = 0.5;
				y = 0.5;
				w = 0.25;
				h = 0.2;
				sizeEx=0.028;
				size=0.028;
				lineSpacing=1;
				colorText[]={1,1,1,0.5};
				colorBackground[]={0,0,0,0};
			class Attributes {
				font=Zeppelin32;
				color="#ffffff";
				align="left";
				shadow=false;
			};
		};
			class Target01:Target00 {idc=6081;};
			class Target02:Target00 {idc=6082;};
			class Target03:Target00 {idc=6083;};
			class Target04:Target00 {idc=6084;};
			class Target05:Target00 {idc=6085;};						
	};*/
};