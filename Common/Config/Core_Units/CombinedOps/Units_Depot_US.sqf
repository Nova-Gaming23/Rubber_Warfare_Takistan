Private ['_u'];
Private ['_u'];
		
				

/* US Depot Vehicles */
/*_u 			= ["Old_bike_TK_CIV_EP1"];
_u = _u		+ ["Old_moto_TK_Civ_EP1"];
_u = _u		+ ["Lada1_TK_CIV_EP1"];
_u = _u		+ ["Volha_1_TK_CIV_EP1"];
_u = _u		+ ["LandRover_TK_CIV_EP1"];
_u = _u		+ ["V3S_Open_TK_CIV_EP1"];
_u = _u		+ ["Ikarus_TK_CIV_EP1"];*/


_u =     ['MMT_USMC'];
_u = _u+ ['M1030_US_DES_EP1'];
_u = _u+ ['ATV_US_EP1'];
_u = _u + ['HMMWV_DES_EP1'];
_u = _u + ['LandRover_CZ_EP1'];
_u = _u+ ["MTVR_DES_EP1"];
_u = _u + ['MtvrSalvage_DES_EP1'];

if (paramPurchaseInfDepot) then {
	//_u = _u		+ ['WFBE_WESTSOLDIER' Call GetNamespace];
	_u = _u + ['US_Soldier_Light_EP1'];
	
	//_u = _u + ['US_Soldier_MG_EP1'];
	
	_u = _u + ['US_Soldier_Medic_EP1'];
	_u = _u + ['US_Soldier_Engineer_EP1'];
};

_u