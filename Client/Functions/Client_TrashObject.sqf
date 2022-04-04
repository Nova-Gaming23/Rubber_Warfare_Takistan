/* 
	Author: Benny ( Rubber add for client side objects )
	Name: Client_TrashObject.sqf
	Parameters:
	  0 - Object
	Description:
	  This function will remove an object after the defined amount of time.
*/

Private ["_get","_group","_isMan","_object","_timer","_delay"];
_object = _this;
if (_object in [('WFBE_WESTMHQNAME' Call GetNamespace),('WFBE_EASTMHQNAME' Call GetNamespace)]) exitwith {};
if !(isNull _object) then {
	_group = [];
	_isMan = if (_object isKindOf "Man") then {true} else {false};
	
	if (_isMan) then {_group = group _object};
	
	//_delay = ('WFBE_UNITREMOVEDLAY' Call GetNamespace);
	//_delay = 30;
	
	//_timer = switch (true) do { case (_object isKindOf "Man"): {1.5*_delay}; case (_object isKindOf "Land"): {5*_delay}; case (_object isKindOf "Air"): {7*_delay}; default {1*_delay}};
	
	//sleep _timer;
	sleep 15;
	if (!isNil 'trashQueu') then {
		if (_object in trashQueu) then {
			trashQueu = trashQueu - [_object];
		};	
	};

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