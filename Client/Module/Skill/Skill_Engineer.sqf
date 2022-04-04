/*
	Script: Engineer Skill System by Benny.
	Description: Add special skills to the defined engineer.
*/
Private ['_dammages','_skip','_sorted','_vehicle','_vehicles','_z'];

_Total_RepairTime = 20;

_RepairAmount = 0.2;

_vehicles = player nearEntities [["Car","Motorcycle","Tank","Ship","Air","StaticWeapon"],5];
if (count _vehicles < 1) exitWith {};

_sorted = [player,_vehicles] Call SortByDistance;
_vehicle = _sorted select 0;

_dammages = getDammage _vehicle;
_DamageInPercent = 100 / 1 * _dammages;

if (_dammages <= 0) exitWith {Hint (localize "STR_WF_EngineerNoRepair");};

WFBE_SK_V_LastUse_Repair = time;

//Hint (localize "STR_WF_EngineerRepair");
_VehName=getText (configFile >> "CfgVehicles" >> (typeOf _vehicle) >> "DisplayName");
[_VehName,
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


_i = 0;
while {alive player && vehicle player == player && alive _vehicle && _vehicle distance player <= 5 && (_i<_Total_RepairTime)} do
{
	//make player play animation
	player playMove "AinvPknlMstpSlayWrflDnon_medic";
	
	sleep 1;
	if (alive player && vehicle player == player && alive _vehicle && _vehicle distance player <= 5) then
	{
		_i=_i+1;
	};
	
	//show Info Text
	titleText[format["\nRepairing - %1:\n %2(%3)\n",_VehName,_i,_Total_RepairTime],"PLAIN DOWN"];
};

//If something wrong, exit with these
if (_i<_Total_RepairTime) exitWith
{
	titleText["", "PLAIN DOWN"];
	[_VehName,localize "STR_WF_EngineerRepairFailed","Addon\Valhalla\pic\i_repair_f.paa",1.0] call Func_Client_ShowCustomMessage;
	Local_TechnicalService=false;			
};


//			--------------------------------------			
//repair the vehicle
_dam=(getDammage _vehicle) - _RepairAmount;

_vehicle setDammage _dam;

// Inform Player Repairprocess done
titleText["", "PLAIN DOWN"];
ExecVM "Hint\accuraterepair.sqf";

//helicopters often loose fuel
//restore it, or why did we cary out repairs?
if ((_vehicle isKindOf "Air") && (_dam>0.20)) then
{
	//_dam=0.20;
	_vehicle setFuel (fuel _vehicle)+0.3;
};	