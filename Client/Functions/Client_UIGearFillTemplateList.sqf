Private ['_add','_currentUpgrades','_filler','_i','_listBox','_listCosts','_listNames','_listPictures','_listUpgrades','_listAllowed','_u'];
_filler = _this select 1;
_listBox = _this select 0;

{private "_x";
	_ID = _x;
	_Namespache = Format["RubberWF_%1_Template_%2",sideJoined,_ID];	
	_TempArray = profileNamespace getVariable _Namespache;
	if !(isNil '_TempArray') then {
		_Data = _TempArray select 0;
		_Inventory = _TempArray select 1;
		//_Temp_Data = [_NewTemplateLabel,_templateCosts,_pict,_upgr];
		//_Temp_Inventory = [_Temp_Weapons,_Temp_Mags,_Temp_Items,_Temp_Special];				
		//_Temp_Final = [_Temp_Data,_Temp_Inventory];	
		_Magaziens = _Inventory select 1;
		
		_Temp_Label = _Data select 0;
		_Temp_Coast = _Data select 1;
		_Temp_Pic = _Data select 2;
		_Temp_Upgrade = _Data select 3;
		_add = true;
		_curUpgrade = (sideJoinedText) Call GetSideUpgrades;
		if (_Temp_Upgrade > (_curUpgrade select 0)) then {_add = false};
			if (_add) then {
				{
				_get = _x Call GetNamespace;
				
				if (_add) then {if (_get select QUERYGEARUPGRADE > _curUpgrade select 0) then {_add = false}};
				}forEach _Magaziens;
			}; 			
			if (_add) then {
				_row = lnbAddRow [_listBox,['$'+str _Temp_Coast,_Temp_Label]];
					lnbSetPicture [_listBox,[_row, 0], _Temp_Pic];
					lnbSetData [_listBox,[_row,0],_filler];
					lnbSetValue [_listBox,[_row,0],_ID];
			};	
		lnbSetCurSelRow [_listBox,0];
	};
}forEach (profileNamespace getVariable (Format["RubberWF_%1_Template_Links",sideJoined]));










/*
_listCosts = _this select 0;
_listNames = _this select 1;
_listPictures = _this select 2;
_listUpgrades = _this select 3;
_listAllowed = _this select 4;
_filler = _this select 5;
_listBox = _this select 6;
_listMagazines = _this select 7;
_u = 0;
_i = 0;

_currentUpgrades = (sideJoinedText) Call GetSideUpgrades;

{
	if ((_listUpgrades select _u) <= (_currentUpgrades select 0)) then {
		_add = true;
		if (paramGearRestriction && !gearInRange) then {
			if !(_listAllowed select _u) then {_add = false};
		};
			if (_add) then {
				{
				_get = _x Call GetNamespace;
				
				if (_add) then {if (_get select QUERYGEARUPGRADE > _currentUpgrades select 0) then {_add = false}};
				}forEach (_listMagazines select _u);
			}; 
		if (_add) then {
			lnbAddRow [_listBox,['$'+str (_listCosts Select _u),_x]];
			lnbSetPicture [_listBox,[_i,0],_listPictures select _u];
			lnbSetData [_listBox,[_i,0],_filler];
			lnbSetValue [_listBox,[_i,0],_u];
			_i = _i + 1;
		};
	};
	_u = _u + 1;
} forEach _listNames;

lnbSetCurSelRow [_listBox,0]