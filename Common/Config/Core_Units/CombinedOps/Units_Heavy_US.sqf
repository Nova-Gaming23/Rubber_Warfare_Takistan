Private ['_u','_r'];

//--- US Heavy Vehicles.
_u 			= ['AAV'];

_u = _u		+ ['M1133_MEV_EP1'];
_u = _u		+ ['M2A2_EP1'];
_u = _u		+ ['M2A3_EP1'];
_u = _u		+ ['M1A1'];
_u = _u		+ ['M1A1_US_DES_EP1'];
_u = _u		+ ['M1A2_TUSK_MG'];
_u = _u		+ ['M1A2_US_TUSK_MG_EP1'];
_u = _u		+ ['M6_EP1'];
_u = _u		+ ['BAF_FV510_W'];
_u = _u		+ ['BAF_FV510_D'];

if (PARM_Equipment_Artillery == 1) then {
	_u = _u		+ ['MLRS'];
	_u = _u		+ ['MLRS_DES_EP1'];
	_u = _u		+ ['M1129_MC_EP1'];
};
	
_u = _u		+ ['ZSU_CDF']; // RAPIER

_u