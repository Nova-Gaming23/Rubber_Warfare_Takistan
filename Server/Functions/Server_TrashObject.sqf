/* 
	Author: Benny
	Name: Server_TrashObject.sqf
	Parameters:
	  0 - Object
	Description:
	  This function will remove an object after the defined amount of time.
*/

Private ["_get","_group","_isMan","_object","_timer","_delay"];
_object = _this;

_mhqprot=["LAV25_HQ","BMP2_HQ_TK_EP1","BMP2_HQ_CDF","BMP2_HQ_INS","BTR90_HQ"];

if !(isNull _object) then {
	if (_object in _mhqprot ) exitwith {};
	_group = [];
	_isMan = if (_object isKindOf "Man") then {true} else {false};
	
	if (_isMan) then {_group = group _object};
	
	_delay = ('WFBE_UNITREMOVEDLAY' Call GetNamespace);
	//_delay = 10;
	
	_timer = switch (true) do { case (_object isKindOf "Man"): {1*_delay}; case (_object isKindOf "Land"): {120}; case (_object isKindOf "Air"): {120}; default {240}};
	
	sleep _timer;
	//sleep 10;
	if (_object in _mhqprot ) exitwith {};
	if (_object in [('WFBE_WESTMHQNAME' Call GetNamespace),('WFBE_EASTMHQNAME' Call GetNamespace)]) exitwith {};
	trashQueu = trashQueu - [_object];
	
	if (_isMan) then {hideBody _object; sleep 6};
	
	deleteVehicle _object;
	
	if (_isMan) then {
		if !(isNull _group) then {
			_get = _group getVariable 'queue';
			if (isNil '_get') then {
				if (count (units _group) <= 0) then {deleteGroup _group;};
			};
		};
	};
};