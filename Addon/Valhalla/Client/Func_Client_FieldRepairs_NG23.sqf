	//user action: Field Repair
	//see Func_Client_UpdateUserActions

	#include "defines.sqf";

	private["_veh","_name","_vehicles","_sorted","_dammages"];	
	_vehicles = player nearEntities [["Car","Motorcycle","Tank","Ship","Air","StaticWeapon","_uid"],5];
	if (count _vehicles < 1) exitWith {};
	_sorted = [player,_vehicles] Call SortByDistance;
	_veh = _sorted select 0;
	_veh setVariable ["fieldrepair",0,true];
	_dammages = getDammage _veh;

	
	_Total_RepairTime = 20;
	
	_DamageInPercent = 100 / 1 * _dammages;	
	
	_RepairAmount = 0.2;


	
	//check, if vehicle is not being feld repairedat the moment
	_time=_veh getVariable "fieldrepair";
	_name=getText (configFile >> "CfgVehicles" >> (typeOf _veh) >> "DisplayName");

	//if vehicle has repair packs
	//perform repair process
		//if there are crew inside - cancel repair		
		//just because i want so :)
		//if vehcie is allready being field repaired - cancel repair
		//because some persons at one time can spend all of the repair kits
		//though it will give poor result anyway
		if (({alive _x} count crew _veh) > 0) exitWith {[_name,localize "STR_HINT_FieldCrew","Addon\Valhalla\pic\i_repair_f.paa",1.0] call Func_Client_ShowCustomMessage;_veh setVariable ["fieldrepair",0,true];};
		if ((time-_time)<_Total_RepairTime) exitWith {[_name,localize "STR_HINT_FieldAllready","Addon\Valhalla\pic\i_repair_f.paa",1.0] call Func_Client_ShowCustomMessage};	
		if (!(isNull _veh)) then{ 
			private["_x"];
			//show start hint			
			//[_name,localize "STR_HINT_FieldStarted","Addon\Valhalla\pic\i_repair_s.paa",1.0] call Func_Client_ShowCustomMessage;
			[_name,
			Format[
			"%1<br/>"+
			"<t align='left' color='#cc6e02'>Damaged: %2%5<br/></t>"+
			"<t align='left' color='#78cc02'>Repairing: %3%5<br/></t>"+
			"<t align='left' color=''>Repairtime: %4s<br/></t>",
					localize "STR_HINT_FieldStarted",
					round _DamageInPercent,
					round (100 / 1 * _RepairAmount),
					_Total_RepairTime,
					"%"
					]
			,"Addon\Valhalla\pic\i_repair_s.paa",1.0] call Func_Client_ShowCustomMessage;

			//mark the vehicle is under field repair
			_veh setVariable ["fieldrepair",time,true];
			//mark player is engaged in technical service
			//see Func_Client_UpdateVehicleActions
			Local_TechnicalService=true;
			_i=0;
			while {(alive player) && (alive _veh) && (({alive _x} count crew _veh)==0) && (_i<_Total_RepairTime)} do
			{
				//make player play animation
				player playMove "AinvPknlMstpSlayWrflDnon_medic";
				
				sleep 1;
				if ((alive player) && (alive _veh) && (({alive_x} count crew _veh)==0)) then
				{
					_i=_i+1;
				};
				
				//show Info Text
				titleText[format["\nRepairing - %1:\n %2(%3)\n",_name,_i,_Total_RepairTime],"PLAIN DOWN"];
			};
			
			
			if (_i<_Total_RepairTime) exitWith
			{
				//if i<20 that means player is dead / _veh is dead / some crew got into veh
				titleText["", "PLAIN DOWN"];
				[_name,localize "STR_HINT_FieldFailed","Addon\Valhalla\pic\i_repair_f.paa",1.0] call Func_Client_ShowCustomMessage;
				Local_TechnicalService=false;
				_veh setVariable ["fieldrepair",0,true];				
			};
			
			//reduce number of repair packs remaining			
//			--------------------------------------
//						
				_weapons=weapons player;
				{ 
					if (_x in _weapons) exitWith
					{	
						player removeWeapon _x;
					};
				} forEach System_FieldRepirPacks;	

//			--------------------------------------			
			//repair the vehicle
			_dam=(getDammage _veh) - _RepairAmount;
			
			_veh setDammage _dam;
			
			// Inform Player Repairprocess done
			titleText["", "PLAIN DOWN"];
			[_name,format[localize "STR_HINT_FieldComplete","0"],"Addon\Valhalla\pic\i_repair_s.paa",1.0] call Func_Client_ShowCustomMessage;
			
			//helicopters often loose fuel
			//restore it, or why did we cary out repairs?
			if ((_veh isKindOf "Air") && (_dam>0.20)) then
			{
				//_dam=0.20;
				_veh setFuel (fuel _veh)+0.2;
			};			
					
			//mark player is not engaged in technical service
			//see Func_Client_UpdateVehicleActions
			Local_TechnicalService=false;
		};
	

	