/*
	Display simple information in WF-UI  as StructuredText
		Parameter
			Global-Variable : RscMenu_Help_SingelInfo = "";
*/
private ["_action"];
if (isNil 'RscMenu_Help_SingelInfo') exitWith {hint "Die variable 'RscMenu_Help_SingelInfo' ist nicht vorhanden!";};
disableSerialization;
_action = _this select 0;

switch (_action) do {
	case "onLoad": {
		_Title = Format["Help - %1",RscMenu_Help_SingelInfo select 0];
		((findDisplay 240640) displayCtrl 240642) ctrlSetText _Title;
		((findDisplay 240640) displayCtrl 240641) ctrlSetStructuredText parseText (RscMenu_Help_SingelInfo select 1);
	};
	case "onUnload": {
		RscMenu_Help_SingelInfo = nil;
	};		
};