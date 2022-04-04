/*********************************************************************************
   mando_giveme_score.sqf v1.0

   Lists MMA score

*/

private["_acidx1", "_veh"];

if (isDedicated) exitWith {};
Sleep 2;
if (!isNil "mando_no_score") exitWith {};
_acidx1 = -1;
while {true} do
{
   while {!alive player} do
   {
      Sleep 1;      
   };

   _veh = vehicle player;
   _acidx1 = _veh addAction ["<t color=""#ffffff"">MMA Score", mando_missile_path+"mando_display_score.sqf", "",-101,false, true];

   while {vehicle player == _veh} do
   {
      Sleep 1;
   };
   _veh removeAction _acidx1;
}; 