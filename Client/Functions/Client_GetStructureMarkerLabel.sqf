Private["_class","_label","_structure"];

_structure = _this Select 0;

_label = "";
_class = TypeOf _structure;

if (_class == EASTBAR || _class == WESTBAR) then {_label = "B"};
if (_class == EASTLVF || _class == WESTLVF) then {_label = "LF"};
if (_class == EASTCC || _class == WESTCC) then {_label = "Com"};
if (_class == EASTHEAVY || _class == WESTHEAVY) then {_label = "HF"};
if (_class == EASTFH || _class == WESTFH) then {_label = "FH"};
if (_class == EASTAIR || _class == WESTAIR) then {_label = "Air"};
if (_class == EASTSP || _class == WESTSP) then {_label = "Service"};
if (_class == EASTAAR || _class == WESTAAR) then {_label = "AARadar"};

_label