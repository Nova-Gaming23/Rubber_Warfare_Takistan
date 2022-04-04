mando_lrr_fire_code = 
{
	if (alive gunner mando_lrr_unit) then
	{	
		if (!isPlayer gunner mando_lrr_unit) then
		{
			if ((mando_lrr_unit ammo "9M311Laucher") > 0) then
			{
				(gunner mando_lrr_unit) sideChat format["Tracking %1", getText (configFile>>"cfgVehicles">>typeOf mando_lrr_target >>"displayName")];
				(gunner mando_lrr_unit) lookAt mando_lrr_target;				
				
				Sleep 4;
				if (!isNull mando_lrr_target) then
				{
					(gunner mando_lrr_unit) doTarget mando_lrr_target;
					Sleep 1;
					(gunner mando_lrr_unit) sideChat format["Engaging %1", getText (configFile>>"cfgVehicles">>typeOf mando_lrr_target >>"displayName")];
					if (!isNull mando_lrr_target) then
					{
						mando_lrr_unit fireAtTarget [mando_lrr_target, "9M311Laucher"];
					};
				};
			}
			else
			{
				(gunner mando_lrr_unit) sideChat "No missiles ready";
			};
		};
	};
};