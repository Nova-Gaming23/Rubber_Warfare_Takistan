createdialog "Rsc_Request";
disableSerialization;
_display = uiNamespace getVariable "Rsc_Request";

_Header = _this select 0;
_code = _this select 1;

(_display displayCtrl 1800) ctrlSetTextColor [0,0,0,1];
(_display displayCtrl 1801) ctrlSetTextColor [0,0,0,1];
(_display displayCtrl 1100) ctrlSetStructuredText parseText _Header;
WaitUntil {!isNil 'Return_Request'};

[Return_Request,_display] call _code;
Return_Request = nil;
