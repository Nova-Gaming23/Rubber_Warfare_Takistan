
_planetypes    = _this select 0;
_position      = _this select 1;
while {true} do
{
   waitUntil {!isNull player};

   _inplane = false;

   while {!_inplane} do
   {
      Sleep 1;
      if ((vehicle player) != player) then
      {
         _plane = vehicle player;
         _class = typeOf _plane;

            if (_class isKindOf ((_planetypes) select 0)) then
            {
               _driver = driver _plane;
               _gunner = gunner _plane;
               if ((_position == 6) && (_driver == player)) then
               {
                  _inplane = true;
               };
            }; 
	   };
	};


[vehicle player]spawn
{
   private["_unit", "_weapons", "_weapon", "_weapon_old", "_adjust", "_i", "_start", "_found", "_ammo_class", "_magazines"];
   _unit = _this select 0;
   _weapon_old = "";

   while {(driver vehicle player == player)} do
   {
      _weapon = currentWeapon _unit;
      if (_weapon != _weapon_old) then
      {         
         _weapons = [];
         _weapons = (weapons _unit) + (weapons _unit);

         _adjust = false;

         _magazines = getArray(configFile>>"cfgWeapons" >> _weapon >> "magazines");

         if (count _magazines > 0) then
         {
            _ammo_class = getText(configFile>>"CfgMagazines" >> (_magazines select 0) >> "ammo");

//            if ((_ammo_class isKindOf "MissileBase") || (_ammo_class isKindOf "LaserBombCore") || (_ammo_class isKindOf "BombCore")) then
            if ((_ammo_class isKindOf "MissileBase")) then
            {
               _adjust = true;
            };
         };


         if (_adjust) then
         {
            _start = -1;     
            for [{_i = 0},{_i < count _weapons},{_i=_i+1}] do
            {
    
               if ((_weapons select _i) == _weapon) then
               {
                  _start = _i+1;
                  _i = 9999;
               };
            };


            if (_start > 0) then
            {
               _found = true;
               for [{_i = _start},{(_i < count _weapons) && _found},{_i=_i+1}] do
               {
                  _found = false;

                  _magazines = getArray(configFile>>"cfgWeapons" >> (_weapons select _i) >> "magazines");
                  if (count _magazines > 0) then
                  {
                     _ammo_class = getText(configFile>>"CfgMagazines" >> (_magazines select 0) >> "ammo");
/*
                     if ((_ammo_class isKindOf "MissileBase") || (_ammo_class isKindOf "LaserBombCore") || (_ammo_class isKindOf "BombCore")) then
*/
                     if ((_ammo_class isKindOf "MissileBase")) then

                     {
                        _found = true;
                     };
                  };

   
                  if (!_found) then
                  {
                     _unit selectWeapon (_weapons select _i);
                     weapon_old = (_weapons select _i);
                  };
               };  
            };
         }
         else
         {
            _weapon_old = _weapon;
         };
      };
      Sleep 0.1;

   };
};
if (driver vehicle player != player) then {
_inplane = false;
};
};