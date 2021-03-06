/*
   mando_check_los.sqf v1.0
   Sep 2006 Mandoble (Mando Missile Suite)

   Parameters:
      Generic los created outside
      Origin object
      Destination object
      jump for each iteration in meters
      Delta Z over origin

      Done inside mando_missileinit.sqf at mando missile initialization
      mando_check_los = compile (preprocessFileLineNumbers (mando_missile_path+"mando_check_los.sqf"));

      Usage (_loglos already created with _loglos = "logic" createVehicleLocal [0,0,0];):
      _los_ok = [_loglos, _firer, _target, 20, 2] call mando_check_los;
*/


private["_log", "_orig", "_dest", "_poso", "_posd", "_vdir", "_dist", "_los_ok", "_delta", "_deltaz"];
_log    = _this select 0;
_orig   = _this select 1;
_dest   = _this select 2;
_delta  = _this select 3;
_deltaz = _this select 4;


_poso = getPosASL _orig;
_poso set [2, (_poso select 2)+_deltaz];
_posd = getPos _dest;
_log setPosASL _poso;
_log setDir 0;
_dist = _log distance _dest;
_posd = _log worldToModel [_posd select 0, _posd select 1, (_posd select 2)+_deltaz];
_vdir = [(_posd select 0)/_dist, (_posd select 1)/_dist,(_posd select 2)/_dist];


_los_ok = true;
for [{_j = 20},{(_j < (_dist - _delta)) && _los_ok},{_j=_j + _delta}] do
{
   _log setPosASL [(_poso select 0)+(_vdir select 0)*_j,(_poso select 1)+(_vdir select 1)*_j,(_poso select 2)+(_vdir select 2)*_j];

   if ((getPos _log select 2) < -0.5) then
   {
      _los_ok = false;     
   };
   Sleep 0;
};
_los_ok;
