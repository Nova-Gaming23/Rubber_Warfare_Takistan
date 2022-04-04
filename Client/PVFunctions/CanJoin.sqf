Private ['_canjoin','_name'];
_name = _this select 0;
_canjoin = _this select 1;
_Reason = _this select 2;

if (!_canjoin && vehicleVarName player != _name) then {_canjoin = true};

['WFBE_P_CANJOIN',[_canjoin,_Reason],true] Call SetNamespace;