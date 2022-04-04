Private ['_camps'];

_camps = _this getVariable "camps";
if (isNil '_camps') exitWith {8};
if (count _camps == 0) exitWith {8};

count _camps