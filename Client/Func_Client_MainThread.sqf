	//main client thread
sleep 1;

	while {!gameover} do
	{
		
		if (Local_GUIActive &&  !Local_GUIWorking && (isNull Local_Camera) && !(visibleMap) && (isNil "BIS_CONTROL_CAM") && (RUBOSD == 1)) then {Local_GUIWorking=true; 1365 cutRsc ["RscOverlay","PLAIN",0]};//if GUI is not working, but it should - restart it
		
		
		sleep 0.5;
	};
	
	