Private ["_lock","_position","_side","_type","_vehicle"];
_type = _this select 0;
_position = _this select 1;
_side = _this select 2;
_lock = _this select 3;

_vehicle = _type createVehicle _position;
if (_side != resistance) then {
    //if(_type =="GAZ_Vodnik")then{_vehicle setVehicleInit "this setObjectTexture [0,""desert\vodnik_body_co.jpg""]";_vehicle setVehicleInit "this setObjectTexture [1,""desert\vodnik_cabin_co.jpg""]";_vehicle setVehicleInit "this setObjectTexture [2,""desert\vodnik_mod_co.jpg""]";};
    //if(_type =="GAZ_Vodnik_MedEvac")then{_vehicle setVehicleInit "this setObjectTexture [0,""desert\vodnik_body_co.jpg""]";_vehicle setVehicleInit "this setObjectTexture [1,""desert\vodnik_cabin_co.jpg""]";_vehicle setVehicleInit "this setObjectTexture [2,""desert\vodnik_mod_co.jpg""]";};
    //if(_type =="GAZ_Vodnik_HMG")then{_vehicle setVehicleInit "this setObjectTexture [0,""desert\vodnik_body_co.jpg""]";_vehicle setVehicleInit "this setObjectTexture [1,""desert\vodnik_cabin_co.jpg""]";_vehicle setVehicleInit "this setObjectTexture [2,""desert\vodnik_mod_co.jpg""]";};
	//if(_type =="AV8B")then{_vehicle setVehicleInit "this setObjectTexture [0,""desert\desav8b_ext_co.jpg""]";};
//	if(_type =="SU34")then{_vehicle setVehicleInit "this setObjectTexture [0,""desert\su34_1_co.jpg""]";_vehicle setVehicleInit "this setObjectTexture [1,""desert\su34_2_co.jpg""]";};
	if(_type =="T72_RU")then{_vehicle setVehicleInit "this setObjectTexture [0,""desert\t72_ru1_cod.paa""]";_vehicle setVehicleInit "this setObjectTexture [1,""desert\t72_ru2_cod.paa""]";_vehicle setVehicleInit "this setObjectTexture [2,""desert\t72_ru3_cod.paa""]";};
	if(_type =="T90")then{_vehicle setVehicleInit "this setObjectTexture [0,""desert\t90_body1_co.paa""]";_vehicle setVehicleInit "this setObjectTexture [1,""desert\t90_body2_co.paa""]";_vehicle setVehicleInit "this setObjectTexture [2,""desert\t90_body3_co.paa""]";};
	if(_type =="BMP3")then{_vehicle setVehicleInit "this setObjectTexture [0,""desert\bmp3_body_co.jpg""]";_vehicle setVehicleInit "this setObjectTexture [1,""desert\bmp3_body2_co.jpg""]";_vehicle setVehicleInit "this setObjectTexture [2,""desert\bmp3_wheels_co.jpg""]";};
//	if(_type =="2S6M_Tunguska")then{_vehicle setVehicleInit "this setObjectTexture [0,""desert\tunguska_co.jpg""]";_vehicle setVehicleInit "this setObjectTexture [2,""desert\tunguska_turret_co.jpg""]";};
	if(_type =="BTR90")then{_vehicle setVehicleInit "this setObjectTexture [0,""desert\btr_body_co.jpg""]";_vehicle setVehicleInit "this setObjectTexture [1,""desert\btr_body2_co.jpg""]";};
	if(_type =="BTR90_HQ")then{_vehicle setVehicleInit "this setObjectTexture [0,""desert\btr_body_co.jpg""]";_vehicle setVehicleInit "this setObjectTexture [1,""desert\btr_body2_co.jpg""]";_vehicle setVehicleInit "this setObjectTexture [2,""desert\btr_hq_co.jpg""]";};
	if(_type =="LAV25")then{_vehicle setVehicleInit "this setObjectTexture [0,""desert\lavbody_coD.jpg""]";_vehicle setVehicleInit "this setObjectTexture [1,""desert\lavbody2_coD.jpg""]";};
//	if(_type =="AAV")then{_vehicle setVehicleInit "this setObjectTexture [0,""desert\aav_ext_coD.jpg""]";_vehicle setVehicleInit "this setObjectTexture [1,""desert\aav_ext2_coD.jpg""]";};
	//if (_type == "AV8B") then {_vehicle removeMagazine "6Rnd_GBU12_AV8B"; _vehicele removeWeapon "BombLauncher"; _vehicle addMagazine "4Rnd_Sidewinder_AV8B"; _vehicle addWeapon "SidewinderLaucher"};
	//if (_type == "AV8B2") then {_vehicle removeMagazine "6Rnd_Mk82"; _vehicle removeWeapon "Mk82BombLauncher_6"; _vehicle removeMagazine "2Rnd_Sidewinder_AH1Z";  _vehicle removeWeapon "SidewinderLaucher_AH1Z"; _vehicle addMagazine "4Rnd_Sidewinder_AV8B"; _vehicle addWeapon "SidewinderLaucher"};
	if (_type == "AV8B") then {[_vehicle,0] Call EASA_Equip};
	if (_type == "AV8B2") then {[_vehicle,0] Call EASA_Equip};
	_vehicle SetVehicleInit Format["[this,%1] ExecVM 'Common\Common_InitUnit.sqf';",_side];
	ProcessInitCommands;
	Call Compile Format ["_vehicle addEventHandler ['Killed',{[_this select 0,_this select 1,%1] Spawn UnitKilled}]",_side];
} else {
	//--- Note To be optimized, 1.03 BIS BUG, cannot add resistance side via call compile format? which still isn't fixed in OA 1.59...
	if(_type =="T72_Gue")then{_vehicle setVehicleInit "this setObjectTexture [0,""desert\t72_gue1_co.paa""]";_vehicle setVehicleInit "this setObjectTexture [1,""desert\t72_gue2_co.paa""]";_vehicle setVehicleInit "this setObjectTexture [2,""desert\t72_gue3_co.paa""]";};
	_vehicle addEventHandler ["Killed",{[_this select 0,_this select 1,resistance] Spawn UnitKilled}];
	
};

_vehicle lock _lock;
//Valhalla
if (isClient) then {	
	[_vehicle] call Func_Common_InitCustomVehicle;
};

if (WF_Extend_RPT_LOG) then {
	diag_log Format["[WFBE (INFORMATION)][frameno:%4 | ticktime:%5] Common_CreateVehicle: A %1 '%2' vehicle has been created (position: %3)",str _side,_type,_position,diag_frameno,diag_tickTime];
};
_vehicle