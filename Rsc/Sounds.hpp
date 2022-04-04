class CfgSounds {
	sounds[] = {};
	
	//--- Mando Missiles - Sounds
	#include "Mando\mando_sounds.h"	
	
	class vodka
	{
		name="vodka";
		sound[]={"hint\sounds\vodka2.ogg",0.7,1};
		titles[]={};
	};	
	class bitmenu
	{
		name="bitmenu";
		sound[]={"hint\sounds\bitmenu.ogg",0.7,1};
		titles[]={};
	};
	class uskd_taskhint {
		name = "uskd_taskhint";
		sound[] = {"hint\sounds\uskd_taskhint.wss", 0.7, 1.0};
		titles[] = {0};
	};
	class beep {
		name = "beep";
		sound[] = {"hint\sounds\beep.ogg", 0.7, 1.0};
		titles[] = {0};
	};

	class promotion
	{
		name="promotion";
		sound[]={"hint\sounds\promotion.ogg",0.7,1};
		titles[]={};
	};
	class general
	{
		name="general";
		sound[]={"hint\sounds\general.ogg",0.6,1};
		titles[]={};
	};	
	class loading
	{
		name="loading";
		sound[]={"hint\sounds\loading.ogg",0.7,1};
		titles[]={};
	};
	class intro
	{
		name="intro";
		sound[] = {"Client\Sounds\intro.ogg",0.7, 1};
		titles[]={};
	};
	class banana
	{
		name="banana";
		sound[]={"hint\sounds\aawar.ogg",0.7,1};
		titles[]={};
	};
	class promote
	{
		name="promote";
		sound[]={"hint\sounds\Paycall.ogg",0.7,1};
		titles[]={};
	};
	class goodjob
	{
		name="goodjob";
		sound[]={"hint\sounds\goodjob.ogg",0.7,1};
		titles[]={};
	};
	
	class RU_MissileLaunchDetected
	{
		name = "RU_MissileLaunchDetected";
		sound[] = {"Client\Sounds\RU_MissileLaunchDetected.ogg", 1, 1};
		titles[] = {};
	};
	
	class RU_StructureSold
	{
		name = "RU_StructureSold";
		sound[] = {"Client\Sounds\RU_StructureSold.ogg", 1, 1};
		titles[] = {};
	};
	
		
	class RU_UnitReady
	{
		name = "RU_UnitReady";
		sound[] = {"Client\Sounds\RU_UnitReady.ogg", 1, 1};
		titles[] = {};
	};
		
	class US_MissileLaunchDetected
	{
		name = "US_MissileLaunchDetected";
		sound[] = {"Client\Sounds\US_MissileLaunchDetected.ogg", 1, 1};
		titles[] = {};
	};	
	
	class US_StructureSold
	{
		name = "US_StructureSold";
		sound[] = {"Client\Sounds\US_StructureSold.ogg", 1, 1};
		titles[] = {};
	};
	
	class US_UnitReady
	{
		name = "US_UnitReady";
		sound[] = {"Client\Sounds\US_UnitReady.ogg", 1, 1};
		titles[] = {};
	};
	
	class NukeSiren
	{
		name = "NukeSiren";
		sound[] = {"Client\Sounds\NukeSiren.ogg", 1, 1};
		titles[] = {};
	};

class CfgRadio
{
	sounds[] = {};
	class tank_alarm
	{
		name = "";
		sound[] = {"Addon\Valhalla\Sound\tank_alarm.ogg", db+1, 1.0};
		title = "";
	};	
};

};