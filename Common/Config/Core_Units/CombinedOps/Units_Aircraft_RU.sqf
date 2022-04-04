Private ['_r','_u'];

//--- Russian Aircraft Vehicles.
_u 			= [];

if (PARM_Equipment_Helicopter >= 1) then {
	// Transport
	_u = _u		+ ['Mi17_Ins'];
	_u = _u		+ ['UH1H_TK_EP1'];
	_u = _u		+ ['Mi17_medevac_RU'];
};

if (PARM_Equipment_Helicopter == 2) then {
	//Attack Helicopter
	_u = _u		+ ['Mi17_rockets_RU'];
	_u = _u		+ ['Mi24_V'];
	_u = _u		+ ['Mi24_D_TK_EP1'];
	_u = _u		+ ['Mi24_P'];
	_u = _u		+ ['Ka52'];
	_u = _u		+ ['Ka52Black'];	
};

_u = _u		+ ['ZSU_TK_EP1']; //TORM1
	
_u