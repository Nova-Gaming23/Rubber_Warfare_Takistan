
_Filter = _this select 0;

switch (_Filter) do {
	Case "SetVar":{//["setVar","Namespace",["Test",["Content"]]]
	_Filter2 = _this select 1;
		switch (_Filter2) do {
			Case "Namespace":{
				_Parms = _this select 2;
				_Title = _Parms select 0;
				_Content = _Parms select 1;
				missionNamespace setVariable [_Title,_Content];			
			};
			Case "Var":{
				_Parms = _this select 2;
				_Title = _Parms select 0;
				_Content = _Parms select 1;
				call compile Format["%1 = %2;",_Title,_Content];
			};
		};		
	};
	Case "GetVar":{//["GetVar","Namespace",[player,"Variabele"]]
	_Filter2 = _this select 1;
		switch (_Filter2) do {
			Case "Namespace":{
				_Parms = _this select 2;
				_Player = _Parms select 0;
				_Variable = _Parms select 1;
				HV_Return = missionNamespace getVariable _Variable;
				if !(isNil 'HV_Return') then {				
					(owner _Player) publicVariableClient "HV_Return";
				};		
			};
			Case "Var":{
				_Parms = _this select 2;
				_Player = _Parms select 0;
				_Variable = _Parms select 1;
				HV_Return = call compile _Variable;
				if !(isNil 'HV_Return') then {				
					(owner _Player) publicVariableClient "HV_Return";
				};	

			};
		};		
	};
WFBE_Request_HandleVar = nil;
HV_Return = nil;
};