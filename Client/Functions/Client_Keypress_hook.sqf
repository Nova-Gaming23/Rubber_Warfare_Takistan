/* Gps keybinding */
//private['_code,_done']; 

Keypress_hook = {

	_code = _this select 1;
	_done = false;

	if (_code in ActionKeys "User18") then {
		if ( zoomgps < 1 ) then { zoomgps = (zoomgps + 0.025); hint "zoom OUT";_handled = true;} else { zoomgps = 1; hint "GPS Zoom: \n\n MAX Value";_done = true;};
	};
	if (_code in ActionKeys "User19") then {
		if ( zoomgps >= 0.025 ) then { zoomgps = (zoomgps - 0.025); hint "zoom IN";_handled = true;} else { zoomgps = 0.025; hint "GPS Zoom: \n\n MIN Value";_handled = true;};
	};
	if (_code in ActionKeys "User20") then {
		if ( zoomauto == 1 ) then { zoomauto = 2; hint "GPS zoom \nMANUAL"; ctrlSetText [11021,"Client\images\zauto.paa"];} else { zoomauto = 1; hint "GPS Zoom: \nAUTO";ctrlSetText [11021,"Client\images\zman.paa"];};
	};
		
	_done;

};
/*
private['_handled']; 
_handled = false; 

_handled = _this select 1;

    //T key 
     if (_handled in (actionKeys "User15")) then {
		if ( zoomgps < 1 ) then { zoomgps = (zoomgps + 0.15); hint "zoom +";_handled = true;} else { zoomgps = 1; hint "GPS Zoom: \n\n MAX Value";_handled = true;};
    };
	if (_handled in (actionKeys "User16")) then {
		if ( zoomgps > 0.3) then { zoomgps = (zoomgps - 0.15); hint "zoom -";_handled = true;} else { zoomgps = 0.15; hint "GPS Zoom: \n\n MIN Value";_handled = true;};
	};

_handled*/

	/*
	if (_key in (actionKeys "User15")) then {
		
	};
	if (_key in (actionKeys "User16")) then {
		if ( zoomgps > 0.3) then { zoomgps = (zoomgps - 0.15); hint "zoom -";_handled = true;} else { zoomgps = 0.15; hint "GPS Zoom: \n\n MIN Value";_handled = true;};
	};
	if (_key in (actionKeys "User17")) then {
		WF_Logic setVariable ['filler','primary'];
	};
	if (_key in (actionKeys "User18")) then {
		WF_Logic setVariable ['filler','secondary'];
	};
	if (_key in (actionKeys "User19")) then {
		WF_Logic setVariable ['filler','sidearm'];
	};
	if (_key in (actionKeys "User20")) then {
		WF_Logic setVariable ['filler','misc'];
	};*/


