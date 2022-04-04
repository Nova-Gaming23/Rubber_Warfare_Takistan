
_Text = "<t align='center'><br />
<t color='#E27101' size='2' underline='true' hadow='2'>Profile-Update</t><br /><br />
<t color='#BCBCBC' size='1.5'>New Template System.</t><br /> <br /> 
<t color='#BCBCBC' size='1.5'>Would you like to keep your current gear-templates?</t>
</t>";
_Code = {
	if (_this select 0) then {
		{private "_x";
			_Side = _x;
		
		if !(isNil {call compile format["profileNamespace getVariable 'RubberWF_Template_%1_Temp_Name';", _Side]}) then {
			_templateNames = call compile format["profileNamespace getVariable 'RubberWF_Template_%1_Temp_Name';", _Side];
			_templateCosts = call compile format["profileNamespace getVariable 'RubberWF_Template_%1_Temp_Cost';", _Side];
			_templatePictures = call compile format["profileNamespace getVariable 'RubberWF_Template_%1_Temp_Pic';", _Side];
			_Weapons = call compile format["profileNamespace getVariable 'RubberWF_Template_%1_Temp';", _Side];
			_templateMags = call compile format["profileNamespace getVariable 'RubberWF_Template_%1_Temp_Mag';", _Side];
			_templateItems = call compile format["profileNamespace getVariable 'RubberWF_Template_%1_Temp_Items';", _Side];
			_templateSpecs = call compile format["profileNamespace getVariable 'RubberWF_Template_%1_Temp_Secs';", _Side];
			_templateUpgrades = call compile format["profileNamespace getVariable 'RubberWF_Template_%1_Temp_Upgrade';", _Side];
			_templateAllowed = call compile format["profileNamespace getVariable 'RubberWF_Template_%1_Tamp_Allow';", _Side];
				{private "_x";		
					_NewTemplateLabel = _templateNames select _forEachIndex;
					_Costs = _templateCosts select _forEachIndex;
					_pict = _templatePictures select _forEachIndex;
					_upgr = _templateUpgrades select _forEachIndex;

					_Temp_Weapons = _Weapons select _forEachIndex;
					_Temp_Mags = _templateMags select _forEachIndex;
					_Temp_Items = _templateItems select _forEachIndex;
					_Temp_Special = _templateSpecs select _forEachIndex;
					
					_Temp_Data = [_NewTemplateLabel,_Costs,_pict,_upgr];
					_Temp_Inventory = [_Temp_Weapons,_Temp_Mags,_Temp_Items,_Temp_Special];				
					_Temp_Final = [_Temp_Data,_Temp_Inventory];

					_ID = count (profileNamespace getVariable (Format["RubberWF_%1_Template_Links",_Side]));				
					_Namespache = Format["RubberWF_%1_Template_Links",_Side];
					_TemplateLinks = (profileNamespace getVariable _Namespache);
					_TemplateLinks set [count _TemplateLinks,_ID];
								
					_Namespache = Format["RubberWF_%1_Template_%2",_Side,_ID];
					profileNamespace setVariable [_Namespache,_Temp_Final];				
				} forEach _templateNames;
			};
		}forEach [EAST,WEST];
		{private "_x";
			_Side = _x;
			call compile format["profileNamespace setVariable ['RubberWF_Template_%1_Temp',nil];", _Side];
			call compile format["profileNamespace setVariable ['RubberWF_Template_%1_Temp_Cost',nil];", _Side];
			call compile format["profileNamespace setVariable ['RubberWF_Template_%1_Temp_Pic',nil];", _Side];
			call compile format["profileNamespace setVariable ['RubberWF_Template_%1_Temp_Name',nil];", _Side];
			call compile format["profileNamespace setVariable ['RubberWF_Template_%1_Temp_Mag',nil];", _Side];
			call compile format["profileNamespace setVariable ['RubberWF_Template_%1_Temp_Items',nil];", _Side];
			call compile format["profileNamespace setVariable ['RubberWF_Template_%1_Temp_Secs',nil];", _Side];
			call compile format["profileNamespace setVariable ['RubberWF_Template_%1_Temp_Upgrade',nil];", _Side];
			call compile format["profileNamespace setVariable ['RubberWF_Template_%1_Tamp_Allow',nil];", _Side];
			call compile format["profileNamespace setVariable ['RubberWF_Template_%1',nil];", _Side];		
		}forEach [EAST,WEST];
	};
	(_this select 1) closeDisplay 1;
	Return_Request = nil;
};
[_Text,_Code] execVM "Client\Reqest_ProfileUpdate.sqf";

