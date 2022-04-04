/* MMA HUD customization - Ground Mode MAP TGT Mandoble - July 2010 */

DisableSerialization;

mando_waypoints_setup = 
{
   private["_event", "_params", "_display", "_unit", "_ttypes", "_target","_marker_name"];
   _event = _this select 0;
   _params = _this select 1;

   if (_event == "onLoad") then
   {
		onMapSingleClick "true";
		_display = _params select 0;
		(_display displayCtrl 100) ctrlSetText (mando_missile_path+"mfds\raptor6_mfd1.paa");

		_unit = vehicle player;
		(_display DisplayCtrl 105) CtrlSetTextColor [0, 0, 0, 1];
		(_display DisplayCtrl 106) CtrlSetTextColor [0, 0, 0, 1];
		(_display displayCtrl 99) ctrlSetText "Left click adds WP, ALT+ Left click removes closest WP";

		(_display displayCtrl 23903) ctrlMapAnimAdd [0, 1, getPos vehicle player];
		
		_display displayCtrl 102 ctrlSetTooltip "Clear all waypoints";
		_display displayCtrl 103 ctrlSetTooltip "Select next ILS";
		_display displayCtrl 104 ctrlSetTooltip "Map free";
		_display displayCtrl 105 ctrlSetTooltip "Map centered on player";
		_display displayCtrl 106 ctrlSetTooltip "Map centered on ILS";
		ctrlMapAnimCommit (_display displayCtrl 23903);
		
		mando_waypoints_center = 0;
		
		[]spawn 
		{
            private["_unit", "_ttypes", "_target"];
            _unit = vehicle player;
			
			for [{_i=0},{_i<10},{_i=_i+1}] do
			{
				createMarkerLocal [format["mk_mando_wp_lnk%1", _i], [0,0]];
				format["mk_mando_wp_lnk%1", _i] setMarkerShapeLocal "RECTANGLE";
				format["mk_mando_wp_lnk%1", _i] setMarkerColorLocal "ColorWhite";
				format["mk_mando_wp_lnk%1", _i] setMarkerSizeLocal [0, 0];			
			};

			for [{_i=0},{_i<10},{_i=_i+1}] do
			{
				createMarkerLocal [format["mk_mando_wp_cir%1", _i], [0,0]];
				format["mk_mando_wp_cir%1", _i] setMarkerTypeLocal "mil_circle";
				format["mk_mando_wp_cir%1", _i] setMarkerColorLocal "ColorWhite";
				format["mk_mando_wp_cir%1", _i] setMarkerSizeLocal [0, 0];			
			};

            createMarkerLocal ["mk_mando_wp_cils_dir", getPos _unit];
            "mk_mando_wp_cils_dir" setMarkerTypeLocal "mil_arrow2";
            "mk_mando_wp_cils_dir" setMarkerColorLocal "ColorBlue";
            "mk_mando_wp_cils_dir" setMarkerSizeLocal [0, 0];
            "mk_mando_wp_cils_dir" setMarkerDirLocal 0;
			"mk_mando_wp_cils_dir" setMarkerAlphaLocal 0.5;
			
			for [{_i=0},{_i<10},{_i=_i+1}] do
			{
				createMarkerLocal [format["mk_mando_wp_ils%1", _i], [0,0]];
				format["mk_mando_wp_ils%1", _i] setMarkerTypeLocal "selector_selectable";
				format["mk_mando_wp_ils%1", _i] setMarkerColorLocal "ColorBlue";
				format["mk_mando_wp_ils%1", _i] setMarkerSizeLocal [0, 0];			
			};

			createMarkerLocal ["mk_mando_wp_cils", [0,0]];
			"mk_mando_wp_cils" setMarkerShapeLocal "RECTANGLE";
			"mk_mando_wp_cils" setMarkerColorLocal "ColorBlue";
			"mk_mando_wp_cils" setMarkerSizeLocal [0, 0];			
			
			
            createMarkerLocal ["mk_mando_wp_dir", getPos _unit];
            "mk_mando_wp_dir" setMarkerTypeLocal "Move";
            "mk_mando_wp_dir" setMarkerColorLocal "ColorWhite";
            "mk_mando_wp_dir" setMarkerSizeLocal [0.65, 0.65];
            "mk_mando_wp_dir" setMarkerDirLocal (getDir _unit)-90;
			
            Sleep 0.5;
            
            while {!isNull (findDisplay 24000)} do
            {
				_wps = waypoints group player;
				_wp = currentWaypoint group player;
				_posa = [getPos _unit];				
				_types = ["None"];
				
				if ((count _wps > 1) && (_wp < count _wps)) then
				{
					for [{_i=_wp},{_i < (count _wps)},{_i=_i+1}] do
					{
						_posa = _posa + [getWPPos [group player, _i]];
						_types = _types + [waypointType [group player, _i]];
					};
				};
				
				_ils_found = false;				
				for [{_i=0},{_i<10},{_i=_i+1}] do
				{
					if ((_i < (count _wps - 1)) && (count _posa > _i + 1)) then
					{
						_poso = _posa select _i;
						_post = _posa select _i + 1;

						_ang = ((_post select 0)-(_poso select 0)) atan2 ((_post select 1)-(_poso select 1));
						_dist = sqrt (((_post select 0)-(_poso select 0))^2 + ((_post select 1)-(_poso select 1))^2);
						
						format["mk_mando_wp_lnk%1", _i] setMarkerPosLocal [(_poso select 0)+sin(_ang)*_dist/2, (_poso select 1)+cos(_ang)*_dist/2];
						format["mk_mando_wp_lnk%1", _i] setMarkerDirLocal _ang;
						format["mk_mando_wp_lnk%1", _i] setMarkerSizeLocal [10, _dist/2];

						format["mk_mando_wp_cir%1", _i] setMarkerPosLocal _post;
						format["mk_mando_wp_cir%1", _i] setMarkerSizeLocal [0.6, 0.6];
						_txt = format["%1 - %2 Km", (_types select _i + 1), floor((_post distance vehicle player)/100)/10];
						format["mk_mando_wp_cir%1", _i] setMarkerTextLocal _txt;
					}
					else
					{
						format["mk_mando_wp_lnk%1", _i] setMarkerSizeLocal [0, 0];
						format["mk_mando_wp_cir%1", _i] setMarkerSizeLocal [0, 0];
						format["mk_mando_wp_cir%1", _i] setMarkerTextLocal "";
					};
					

					if (_i < count mando_ilss) then
					{
						_ils = mando_ilss select _i;
						
						if (mando_ils_dest == _ils) then
						{
							format["mk_mando_wp_ils%1", _i] setMarkerTypeLocal "selector_selectedMission";
							format["mk_mando_wp_ils%1", _i] setMarkerSizeLocal [0.6, 0.6];							
							_ils_found = true;
							
							_poso = getPos vehicle player;
							_post = getPos _ils;

							_ang = ((_post select 0)-(_poso select 0)) atan2 ((_post select 1)-(_poso select 1));
							_dist = sqrt (((_post select 0)-(_poso select 0))^2 + ((_post select 1)-(_poso select 1))^2);
							
							"mk_mando_wp_cils" setMarkerPosLocal [(_poso select 0)+sin(_ang)*_dist/2, (_poso select 1)+cos(_ang)*_dist/2];
							"mk_mando_wp_cils" setMarkerDirLocal _ang;
							"mk_mando_wp_cils" setMarkerSizeLocal [10, _dist/2];
							
							_ang = _ils getVariable "mando_ils_angh";
							_poso = [(_post select 0)+ sin (_ang)*200,(_post select 1)+ cos (_ang)*200, 0];
							"mk_mando_wp_cils_dir" setMarkerPosLocal _poso;
							"mk_mando_wp_cils_dir" setMarkerDirLocal _ang + 180;
							"mk_mando_wp_cils_dir" setMarkerSizeLocal [0.6, 0.6];
							
						}
						else
						{
							format["mk_mando_wp_ils%1", _i] setMarkerTypeLocal "Airport";						
						};
						format["mk_mando_wp_ils%1", _i] setMarkerPosLocal getPos _ils;
						format["mk_mando_wp_ils%1", _i] setMarkerSizeLocal [0.8, 0.8];						
						_txt = format["ILS %1 - %2 Km", _ils getVariable "mando_ils_name", floor((_ils distance vehicle player)/100)/10];
						format["mk_mando_wp_ils%1", _i] setMarkerTextLocal _txt;
					}
					else
					{
						format["mk_mando_wp_ils%1", _i] setMarkerSizeLocal [0, 0];
						format["mk_mando_wp_ils%1", _i] setMarkerTextLocal "";
					};					
				};
				
				if (! _ils_found) then
				{
					"mk_mando_wp_cils" setMarkerSizeLocal [0, 0];
					"mk_mando_wp_cils_dir" setMarkerSizeLocal [0, 0];
				};
				
               "mk_mando_wp_dir" setMarkerDirLocal (getDir _unit)-90;
               "mk_mando_wp_dir" setMarkerPosLocal (getPos _unit);				

				if (mando_waypoints_center != 0) then
				{
					if (mando_waypoints_center == 1) then
					{
						((findDisplay 24000) displayCtrl 23903) ctrlMapAnimAdd [0.1, 1, getPos vehicle player];
						ctrlMapAnimCommit ((findDisplay 24000) displayCtrl 23903);
					}
					else
					{
						if (_ils_found) then
						{
							((findDisplay 24000) displayCtrl 23903) ctrlMapAnimAdd [0.1, 1, getPos mando_ils_dest];
							ctrlMapAnimCommit ((findDisplay 24000) displayCtrl 23903);						
						};
					};
				};
			   
				Sleep 0.1;
			};            
		};		
	}
	else
	{
		if (_event == "onUnload") then
		{
			deleteMarker "mk_mando_wp_dir";
			deleteMarker "mk_mando_wp_cils";
			deleteMarker "mk_mando_wp_cils_dir";			
			for [{_i=0},{_i<10},{_i=_i+1}] do
			{
				deleteMarker format["mk_mando_wp_lnk%1", _i];
				deleteMarker format["mk_mando_wp_cir%1", _i];
				deleteMarker format["mk_mando_wp_ils%1", _i];
			};
			
			if (!isNil "mando_last_onmapsclick") then
			{
				onMapSingleClick mando_last_onmapsclick;
			}
			else
			{
				onMapSingleClick "";
			};
		}
		else
		{		
			_display = findDisplay 24000;
			if (_event == "on_btn1") then
			{
				if (leader group player == player) then
				{
			
					_nw = count waypoints group player;
					for [{_i=1},{_i< _nw},{_i=_i+1}] do
					{
						deleteWaypoint [group player, 1];
					};
				}
				else
				{
					playSound "mando_denied";
					titleText ["\n\nYou need to be group leader to modify waypoints", "PLAIN DOWN"];
				};					
			};
			
			if (_event == "on_btn2") then
			{
				if ((count mando_ilss) > 0) then
				{
					mando_ils_selected = mando_ils_selected + 1; 
					if (mando_ils_selected >= (count mando_ilss)) then
					{
						mando_ils_selected = -1;
						mando_ils_dest = objNull;
					}
					else
					{
						mando_ils_dest = mando_ilss select mando_ils_selected;			
					};
					playSound "mando_target1";
					if (((vehicle player getVariable "mando_target_types") select 0) == "LOCATIONS") then
					{
						if (mando_hud_guidance != 4) then
						{
							vehicle player setVariable ["mando_current_target", mando_ils_dest];
						};
					};
				};
			};

			if (_event == "on_btn3") then
			{
				mando_waypoints_center = 0;
				(_display DisplayCtrl 104) CtrlSetTextColor [1, 1, 1, 1];
				(_display DisplayCtrl 105) CtrlSetTextColor [0, 0, 0, 1];
				(_display DisplayCtrl 106) CtrlSetTextColor [0, 0, 0, 1];				
			};

			if (_event == "on_btn4") then
			{
				mando_waypoints_center = 1;
				(_display DisplayCtrl 104) CtrlSetTextColor [0, 0, 0, 1];
				(_display DisplayCtrl 105) CtrlSetTextColor [1, 1, 1, 1];
				(_display DisplayCtrl 106) CtrlSetTextColor [0, 0, 0, 1];				
			};

			if (_event == "on_btn5") then
			{
				mando_waypoints_center = 2;
				(_display DisplayCtrl 104) CtrlSetTextColor [0, 0, 0, 1];
				(_display DisplayCtrl 105) CtrlSetTextColor [0, 0, 0, 1];
				(_display DisplayCtrl 106) CtrlSetTextColor [1, 1, 1, 1];				
			};			
		};
	};
};


mando_waypoints_add = 
{
   private ["_unit", "_ttypes", "_target", "_marker_name"];
   _unit = vehicle player;
   
	if (((_this select 1) select 1) == 0) then
	{
	
		if (leader group player == player) then
		{
			if (!((_this select 1) select 6)) then
			{
				_pos = ((_this select 1) select 0) ctrlMapScreenToWorld [(_this select 1) select 2, (_this select 1) select 3];
				_wp = group player addWaypoint [_pos, 0];
				_wp setWaypointType "MOVE";
				_wp showWaypoint "NEVER";
			}
			else
			{
				_pos = ((_this select 1) select 0) ctrlMapScreenToWorld [(_this select 1) select 2, (_this select 1) select 3];
				_closer = 0;
				_min_dst = 100000;
				_wps = waypoints group player;
				for [{_i=0},{_i < (count _wps)},{_i=_i+1}] do
				{
					_dist = _pos distance getWPPos [group player, _i];
					if ((_dist < _min_dst) && (_dist < 100)) then
					{
						_min_dst = _dist;
						_closer = _i;
					};
				};
				
				if (_closer != 0) then
				{
					deleteWaypoint [group player, _closer];
				};		
			};
		}
		else
		{
		    playSound "mando_denied";
			titleText ["\n\nYou need to be group leader to modify waypoints", "PLAIN DOWN"];
		};
	};
};

if (isNull(findDisplay 24000)) then
{
	_ok = createDialog "Mando_waypoints";
}
else
{
	closeDialog 24000;
};
