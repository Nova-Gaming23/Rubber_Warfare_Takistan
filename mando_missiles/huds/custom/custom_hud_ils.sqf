/* MMA HUD customisation for Apache AH-64 IHADSS by deFUNKt & Mandoble - January 2010 */

private ["_vehicle", "_display"];

DisableSerialization;

_vehicle = Vehicle player;
_display = (UINameSpace GetVariable "mandotarget_disp");
if (isNil "mando_ils_dest") then
{
	mando_ils_dest = objNull;
};

Sleep 1.0;

[_vehicle] Spawn 
{
	private["_vehicle","_soffset_x","_soffset_y", "_ang", "_angv","_extrah", "_pos_ini", "_loca", "_log","_max_x","_max_y", "_pos3"];
	DisableSerialization;
	_vehicle = _this select 0;
	_rng = 100;
	_loca = locationNull;
	_log = "logic" createVehicleLocal [0,0,0];
	_log_wp = "logic" createVehicleLocal [0,0,0];	
	_reset = true;
	while {!mando_exit_hud} do 
	{
		_display = (UINameSpace GetVariable "mandotarget_disp");
		if (!isNull _display) then 
		{
			if (_reset) then
			{
				(_display DisplayCtrl 52) CtrlSetText "mando_missiles\huds\custom\images\helmet\ball.paa";
				_reset = false;
			};
			_ils_on = false;
			if (!isNull mando_ils_dest) then
			{		
				_ttypes = _vehicle getVariable "mando_target_types";

				if ((_ttypes select 0) == "LOCATIONS") then
				{			
					_ang = mando_ils_dest getVariable "mando_ils_angh";
					_angv = mando_ils_dest getVariable "mando_ils_angv";				
					
					_extrah = mando_ils_dest getVariable "mando_ils_ealt";
					_pos_ini = mando_ils_dest getVariable "mando_ils_pos";					
					_pos_ini = [(_pos_ini select 0)+sin(_ang)*20, (_pos_ini select 1)+cos(_ang)*20, 0];
					
					if ((!isNil "_ang") && (!isNil "_extrah") && (!isNil "_pos_ini")) then
					{
						if (isNull _loca) then
						{
							_loca = createLocation ["NameCity", _pos_ini, 100, 100];
							_loca setSide side player;
							_loca setText "";
							_loca setVariable ["mando_nav_info", "ILS"];
						};

						_log setPos _pos_ini;
						_pos_ini = getPosASL _log;
						
						_ils_on = true;						
					};
				};
			};
			
			if (_ils_on) then
			{
				_loca setPosition getPos _log;
				_pos_ini1 = [(_pos_ini select 0)+sin(_ang - 90)*10,(_pos_ini select 1)+cos(_ang - 90)*10, _pos_ini select 2];
				_pos_ini2 = [(_pos_ini select 0)+sin(_ang + 90)*10,(_pos_ini select 1)+cos(_ang + 90)*10, _pos_ini select 2];
				if ((_vehicle GetVariable "mando_weapon_name") == "sight") then
				{
					_soffset_x = 0;
					_soffset_y = 0;
					_max_x = 0.45;
					_max_y = 0.45;
				}
				else
				{
					_soffset_x = mando_hud_sccenter select 0;
					_soffset_y = mando_hud_sccenter select 1;
					_max_x = 0.1;
					_max_y = 0.12					
				};
				
				_first = [];
				_last = [];
				_firstc = [];
				_lastc = [];
				_dfirst = 0;
				_dlast = 0;
				
				_speed = speed _vehicle;
				_red = 0.5;
				_blue = 0.5;
				_green = 1;
				if (_speed > 260) then
				{
					_red = 0.5 + ((_speed - 260) max 50)/100;
					_green = 1 - (_red-0.5)/2;
					_blue = 0.5 - (_red-0.5)/2;
				}
				else
				{
					if (_speed < 240) then
					{
						_blue = 0.5 + (abs(240 - _speed) max 50)/100;
						_green = 1 - (_blue-0.5)/2;
						_red = 0.5 - (_blue-0.5)/2;
					};
				};
				
				_rng = (((_vehicle distance _pos_ini) max 2000)*.75)/17;
				
				for [{_i=0},{_i<17},{_i=_i+1}] do
				{
					_pos1 = [(_pos_ini1 select 0)+sin(_ang-3)*_i*_rng,
							 (_pos_ini1 select 1)+cos(_ang-3)*_i*_rng,
							 (_pos_ini1 select 2)+_extrah+_i*_rng*sin(_angv)];

					_pos2 = [(_pos_ini2 select 0)+sin(_ang+3)*_i*_rng,
							 (_pos_ini2 select 1)+cos(_ang+3)*_i*_rng,
							 (_pos_ini2 select 2)+_extrah+_i*_rng*sin(_angv)];

					_pos3 = [(_pos_ini select 0)+sin(_ang)*_i*_rng,
							 (_pos_ini select 1)+cos(_ang)*_i*_rng,
							 (_pos_ini select 2)+_extrah+_i*_rng*sin(_angv)];

					_log setPosASL _pos1;
					_poss1 = worldToScreen getPos _log;
					_log setPosASL _pos2;
					_poss2 = worldToScreen getPos _log;
					_log setPosASL _pos3;					
					_poss3 = worldToScreen getPos _log;
					if ((count _poss1 == 2) && (count _poss2 == 2)) then					
					{
						if ((abs(_soffset_x+0.5-(_poss1 select 0)) < _max_x) &&
						    (abs(_soffset_y+0.5-(_poss1 select 1)) < _max_y) &&
							(abs(_soffset_x+0.5-(_poss2 select 0)) < _max_x) &&
						    (abs(_soffset_y+0.5-(_poss2 select 1)) < _max_y)) then
						{
							_last = [_poss1 select 0,
											_poss1 select 1,
											(_poss2 select 0)-(_poss1 select 0),
											(_poss2 select 1)-(_poss1 select 1)];
							_lastc = _poss3;
							_dlast = _pos3 distance _vehicle;							
							if (count _first == 0) then
							{
								_first = [_poss1 select 0,
											_poss1 select 1,
											(_poss2 select 0)-(_poss1 select 0),
											(_poss2 select 1)-(_poss1 select 1)];
								_firstc = _poss3;
								_dfirst = _pos3 distance _vehicle;
							};
							(_display DisplayCtrl (30+_i)) CtrlSetPosition [_poss1 select 0,
																			_poss1 select 1,
																			(_poss2 select 0)-(_poss1 select 0),
																			(_poss2 select 1)-(_poss1 select 1)];
							(_display DisplayCtrl (30+_i)) CtrlCommit 0;
							(_display DisplayCtrl (30+_i)) CtrlSetTextColor [_red, _green, _blue] + [mando_hud_max_alpha/2];
						}
						else
						{
							(_display DisplayCtrl (30+_i)) CtrlSetTextColor [0,0,0,0];						
						};
					}
					else
					{
						(_display DisplayCtrl (30+_i)) CtrlSetTextColor [0,0,0,0];
					};
				};
				
				if ((count _first > 0) && (count _last > 0)) then
				{
					_pos1 = [_first select 0, _first select 1, 
							 (_last select 0)-(_first select 0), 
							 (_last select 1)-(_first select 1)];
							 
					_pos2 = [(_first select 0)+(_first select 2), (_first select 1)+(_first select 3), 
							 ((_last select 0)+(_last select 2))-((_first select 0)+(_first select 2)),
							 ((_last select 1)+(_last select 3))-((_first select 1)+(_first select 3))];
							 
					(_display DisplayCtrl 47) CtrlSetPosition _pos1;
					(_display DisplayCtrl 47) CtrlCommit 0;
					(_display DisplayCtrl 47) CtrlSetTextColor [_red, _green, _blue] + [mando_hud_max_alpha/2];

					(_display DisplayCtrl 48) CtrlSetPosition _pos2;
					(_display DisplayCtrl 48) CtrlCommit 0;
					(_display DisplayCtrl 48) CtrlSetTextColor [_red, _green, _blue] + [mando_hud_max_alpha/2];
					
					_pos3 = [_firstc select 0, _firstc select 1,
							(_lastc select 0) - (_firstc select 0),
							(_lastc select 1) - (_firstc select 1)];
							
					(_display DisplayCtrl 49) CtrlSetPosition _pos3;
					(_display DisplayCtrl 49) CtrlCommit 0;
					(_display DisplayCtrl 49) CtrlSetTextColor [_red, _green, _blue] + [mando_hud_max_alpha/2];
					
					if (_dfirst > _dlast) then
					{
						(_display DisplayCtrl 52) CtrlSetPosition [(_lastc select 0)-0.02*3/4,(_lastc select 1)-0.02, 0.04*3/4, 0.04];
						(_display DisplayCtrl 52) CtrlCommit 0;
						(_display DisplayCtrl 52) CtrlSetTextColor [_red, _green, _blue] + [mando_hud_max_alpha/2];
					}
					else
					{
						(_display DisplayCtrl 52) CtrlSetPosition [(_firstc select 0)-0.02*3/4,(_firstc select 1)-0.02, 0.04*3/4, 0.04];
						(_display DisplayCtrl 52) CtrlCommit 0;
						(_display DisplayCtrl 52) CtrlSetTextColor [_red, _green, _blue] + [mando_hud_max_alpha/2];					
					};
					Sleep 0.002;
				}
				else
				{
/*				
					(_display DisplayCtrl 47) CtrlSetTextColor [0,0,0,0];
					(_display DisplayCtrl 48) CtrlSetTextColor [0,0,0,0];
					(_display DisplayCtrl 49) CtrlSetTextColor [0,0,0,0];				
*/
					_log setPos getPos _vehicle;
					_log setDir getDir _vehicle;
					if (((_log worldToModel _pos3) select 0) < 0) then
					{
						(_display DisplayCtrl 47) CtrlSetPosition [_soffset_x+0.45, 0.5, 0.03, 0];
						(_display DisplayCtrl 47) CtrlCommit 0;
						(_display DisplayCtrl 47) CtrlSetTextColor [_red, _green, _blue] + [mando_hud_max_alpha/2];
						(_display DisplayCtrl 48) CtrlSetPosition [_soffset_x+0.45, 0.5, 0.02, 0.02];
						(_display DisplayCtrl 48) CtrlCommit 0;
						(_display DisplayCtrl 48) CtrlSetTextColor [_red, _green, _blue] + [mando_hud_max_alpha/2];					
						(_display DisplayCtrl 49) CtrlSetPosition [_soffset_x+0.45, 0.5, 0.02, -0.02];
						(_display DisplayCtrl 49) CtrlCommit 0;
						(_display DisplayCtrl 49) CtrlSetTextColor [_red, _green, _blue] + [mando_hud_max_alpha/2];											
					}
					else
					{
						(_display DisplayCtrl 47) CtrlSetPosition [_soffset_x+0.55, 0.5, -0.03, 0];
						(_display DisplayCtrl 47) CtrlCommit 0;
						(_display DisplayCtrl 47) CtrlSetTextColor [_red, _green, _blue] + [mando_hud_max_alpha/2];
						(_display DisplayCtrl 48) CtrlSetPosition [_soffset_x+0.55, 0.5, -0.02, 0.02];
						(_display DisplayCtrl 48) CtrlCommit 0;
						(_display DisplayCtrl 48) CtrlSetTextColor [_red, _green, _blue] + [mando_hud_max_alpha/2];					
						(_display DisplayCtrl 49) CtrlSetPosition [_soffset_x+0.55, 0.5, -0.02, -0.02];
						(_display DisplayCtrl 49) CtrlCommit 0;
						(_display DisplayCtrl 49) CtrlSetTextColor [_red, _green, _blue] + [mando_hud_max_alpha/2];										
					};
					
					(_display DisplayCtrl 52) CtrlSetTextColor [0,0,0,0];					
					Sleep 0.1;
				};
			}
			else
			{
				for [{_i=0},{_i<17},{_i=_i+1}] do
				{
					(_display DisplayCtrl (30+_i)) CtrlSetTextColor [0,0,0,0];
				};
				(_display DisplayCtrl 52) CtrlSetTextColor [0,0,0,0];
				
				_ttypes = _vehicle getVariable "mando_target_types";
				if ((_ttypes select 0) == "LOCATIONS") then
				{
				
					_wps = waypoints group player;
					_wp = currentWaypoint group player;					
				
					if ((count _wps > 1) && (_wp < count _wps)) then
					{
						_log setPos getPos _vehicle;
						_log setDir getDir _vehicle;
						_pos3 = getWPPos [group player, _wp]; 
						_log_wp setPos _pos3;
						if (mando_hud_guidance != 4) then
						{
							_vehicle setVariable ["mando_current_target", _log_wp];
						};
						
						if ((_vehicle GetVariable "mando_weapon_name") == "sight") then
						{
							_soffset_x = 0;
							_soffset_y = 0;
							_max_x = 0.45;
							_max_y = 0.45;
						}
						else
						{
							_soffset_x = mando_hud_sccenter select 0;
							_soffset_y = mando_hud_sccenter select 1;
							_max_x = 0.1;
							_max_y = 0.12					
						};
						
						if (((_log worldToModel _pos3) select 0) < 0) then
						{
							(_display DisplayCtrl 47) CtrlSetPosition [_soffset_x+0.45, 0.5, 0.03, 0];
							(_display DisplayCtrl 47) CtrlCommit 0;
							(_display DisplayCtrl 47) CtrlSetTextColor [0.5, 1, 0.5] + [mando_hud_max_alpha/2];
							(_display DisplayCtrl 48) CtrlSetPosition [_soffset_x+0.45, 0.5, 0.02, 0.02];
							(_display DisplayCtrl 48) CtrlCommit 0;
							(_display DisplayCtrl 48) CtrlSetTextColor [0.5, 1, 0.5] + [mando_hud_max_alpha/2];					
							(_display DisplayCtrl 49) CtrlSetPosition [_soffset_x+0.45, 0.5, 0.02, -0.02];
							(_display DisplayCtrl 49) CtrlCommit 0;
							(_display DisplayCtrl 49) CtrlSetTextColor [0.5, 1, 0.5] + [mando_hud_max_alpha/2];											
						}
						else
						{
							(_display DisplayCtrl 47) CtrlSetPosition [_soffset_x+0.55, 0.5, -0.03, 0];
							(_display DisplayCtrl 47) CtrlCommit 0;
							(_display DisplayCtrl 47) CtrlSetTextColor [0.5, 1, 0.5] + [mando_hud_max_alpha/2];
							(_display DisplayCtrl 48) CtrlSetPosition [_soffset_x+0.55, 0.5, -0.02, 0.02];
							(_display DisplayCtrl 48) CtrlCommit 0;
							(_display DisplayCtrl 48) CtrlSetTextColor [0.5, 1, 0.5] + [mando_hud_max_alpha/2];					
							(_display DisplayCtrl 49) CtrlSetPosition [_soffset_x+0.55, 0.5, -0.02, -0.02];
							(_display DisplayCtrl 49) CtrlCommit 0;
							(_display DisplayCtrl 49) CtrlSetTextColor [0.5, 1, 0.5] + [mando_hud_max_alpha/2];										
						};					
					}
					else
					{
						(_display DisplayCtrl 47) CtrlSetTextColor [0,0,0,0];
						(_display DisplayCtrl 48) CtrlSetTextColor [0,0,0,0];
						(_display DisplayCtrl 49) CtrlSetTextColor [0,0,0,0];					
					};
					Sleep 1;
				}
				else
				{				
					(_display DisplayCtrl 47) CtrlSetTextColor [0,0,0,0];
					(_display DisplayCtrl 48) CtrlSetTextColor [0,0,0,0];
					(_display DisplayCtrl 49) CtrlSetTextColor [0,0,0,0];

					Sleep 1;
				};
			};
		} 
		else 
		{
			_reset = true;
			Sleep 1;
		};
	};
	
	if (!isNull _loca) then
	{
		deleteLocation _loca;
	};
	deleteVehicle _log;
	deleteVehicle _log_wp;	
};