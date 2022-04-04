/* mando_airtorpedo_mk54.sqf
By Mandoble Aug 2010
*/
private ["_launcher", "_pos", "_rpos", "_target"];

_launcher = _this select 0;
if (isClass (configFile >> "CfgVehicles" >> "A10_US_EP1")) then
{
	call compile "_handle = (vehicle player) fireAtTarget [objNull, 'yup_mk54TorpedoLauncher']";
}
else
{
    _widx = [_launcher, "yup_mk54TorpedoLauncher"] call mando_weaponindex;
	if (!isNull gunner _launcher) then
	{
		_launcher action ["useWeapon",_launcher, gunner _launcher, _widx];
	}
	else
	{
		_launcher action ["useWeapon",_launcher, driver _launcher, _widx];	
	};
};



_left = _launcher getVariable "mando_missilesleft1";
_text = "";
if (_left == (_launcher getVariable "mando_maxmissiles1") - 1) then
{
	_rpos = _launcher selectionPosition "torp1";
	
	_text = "torp1";
}
else
{
	if (_left == (_launcher getVariable "mando_maxmissiles1") - 2) then
	{
		_rpos = _launcher selectionPosition "torp2";
		_text = "torp2";
	}
	else
	{
		if (_left == (_launcher getVariable "mando_maxmissiles1") - 3) then
		{
			_rpos = _launcher selectionPosition "torp3";
			_text = "torp3";
		}
		else
		{
			_rpos = _launcher selectionPosition "torp4";
			_text = "torp4";
		};	
	};
};

_pos      = _launcher modelToWorld _rpos;
_target   = _this select 2;

_torp = "yup_mk54" createVehicle _pos;
_torp setPos _pos;
_torp exec "\mk54\Init.sqs";

_torp setVectorDir vectorDir _launcher;
_torp setVectorUp vectorUp _launcher;
_torp setVelocity velocity _launcher;


while {(getPos _torp select 2) > 0.2} do
{
   sleep 0.01;
};

Sleep 2;

_launcher         = objNull;
_missilebody      = "yup_mk54";
_vangle           = -1.5;
_speedini         = 15;
_speedmax         = 50;
_acceleration     = 15;
_boomrange        = 5;
_activerange      = 600;
_modeinit         = 1;
_cruisealt        = -4;
_boomscript       = mando_missile_path+"warheads\mando_missileheadtorp.sqf";
_smokescript      = mando_missile_path+"exhausts\mando_torpedowater1a.sqf";
_soundrsc         = "";
_sounddur         = 29;
_endurance        = 140;
_terrainavoidance = false;
_updatefreq       = 2;
_delayinit        = 2;
_controltime      = 0;
_detectable       = false;


_debug            = true;


_launchscript     = "";
_hagility         = 30;
_vagility         = 30;
_accuracy         = 1;
_intercept        = false;
_scanarch         = 180;
_scanarcv         = 90;
_offsety          = -5;
 
[_launcher, _missilebody, [getPos _torp select 0, getPos _torp select 1, getPos _torp select 2], getDir _torp, _vangle, _speedini, _speedmax, _acceleration, _target, _boomrange, _activerange, _modeinit, _cruisealt, _boomscript, _smokescript, _soundrsc, _sounddur, _endurance, _terrainavoidance, _updatefreq, _delayinit, _controltime, _detectable, _debug, _launchscript,_hagility, _vagility, _accuracy, _intercept, _scanarch, _scanarcv,_offsety] execVM mando_missile_path+"mando_missile.sqf";

deleteVehicle _torp;                
