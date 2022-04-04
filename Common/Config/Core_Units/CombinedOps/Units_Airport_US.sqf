Private ['_r','_u'];

_r = 'WFBE_RESTRICTIONADVAIR' Call GetNamespace;

/* US Airport Vehicles */
_u = [];
if (PARM_Equipment_Planes == 1) then {
	_u = _u 	+ ['MV22'];	
	//--- Comabat planes	
	_u = _u		+ ['C130J_US_EP1'];
	_u = _u		+ ['A10_US_EP1'];
	_u = _u		+ ['A10'];
	//--- advanced aircraft
	_u = _u		+ ['F35B']; ///--- Temporary removed for balance
	//_u = _u		+ ['AV8B']; ///--- Moved to redfor for balance
	_u = _u		+ ['AV8B2'];
	_u = _u		+ ['ZSU_CDF']; // RAPIER
};

_u