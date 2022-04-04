Private ['_r','_u'];

//--- US Aircraft Vehicles.
_u 			= [];

if (PARM_Equipment_Helicopter >= 1) then {
	// Transport
	_u = _u		+ ['MH6J_EP1'];
	_u = _u		+ ['MH60S'];
	_u = _u		+ ['UH60M_EP1'];
	_u = _u		+ ['UH60M_MEV_EP1'];
	_u = _u		+ ['CH_47F_EP1'];
	_u = _u		+ ['CH_47F_BAF'];
	_u = _u		+ ['BAF_Merlin_HC3_D'];
};

if (PARM_Equipment_Helicopter == 2) then {
	//Attack Helicopter
	_u = _u		+ ['UH1Y'];
	_u = _u		+ ['AH6J_EP1'];
	_u = _u		+ ['AH1Z'];
	_u = _u		+ ['AH64D_EP1'];
	_u = _u		+ ['AW159_Lynx_BAF'];
	_u = _u		+ ['BAF_Apache_AH1_D'];
};

_u = _u		+ ['ZSU_CDF']; // RAPIER
	
_u