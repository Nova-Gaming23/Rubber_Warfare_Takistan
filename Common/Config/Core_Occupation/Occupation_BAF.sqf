Private ["_n","_u"];

_n		= ["SmallTeam1"];
_u		= ["BAF_Soldier_TL_DDPM"];
_u = _u + ["BAF_Soldier_SL_DDPM"];
_u = _u + ["BAF_Soldier_AR_DDPM"];
_u = _u + ["BAF_Soldier_AR_DDPM"];
_u = _u + ["BAF_Soldier_DDPM"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallTeam2"];
_u		= ["BAF_Soldier_TL_DDPM"];
_u = _u + ["BAF_Soldier_AR_DDPM"];
_u = _u + ["BAF_Soldier_AR_DDPM"];
_u = _u + ["BAF_Soldier_AT_DDPM"];
_u = _u + ["BAF_Soldier_Medic_DDPM"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallTeam3"];
_u		= ["BAF_Soldier_TL_DDPM"];
_u = _u + ["BAF_Soldier_MG_DDPM"];
_u = _u + ["BAF_Soldier_AR_DDPM"];
_u = _u + ["BAF_Soldier_AR_DDPM"];
_u = _u + ["BAF_Soldier_AT_DDPM"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallVehTeam1"];
_u		= ["BAF_Soldier_TL_DDPM"];
_u = _u + ["BAF_Jackal2_L2A1_D"];
_u = _u + ["BAF_Jackal2_GMG_D"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallVehTeam2"];
_u		= ["BAF_Soldier_SL_DDPM"];
_u = _u + ["HMMWV_TOW_DES_EP1"];
_u = _u + ["BAF_Jackal2_L2A1_D"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["SmallVehTeam3"];
_u		= ["BAF_Soldier_TL_DDPM"];
_u = _u + ["HMMWV_M998_crows_M2_DES_EP1"];
_u = _u + ["BAF_Jackal2_L2A1_D"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumTeam1"];
_u		= ["BAF_Soldier_TL_DDPM"];
_u = _u + ["BAF_Soldier_AR_DDPM"];
_u = _u + ["BAF_Soldier_Medic_DDPM"];
_u = _u + ["BAF_Soldier_AA_DDPM"];
_u = _u + ["BAF_Soldier_AT_DDPM"];
_u = _u + ["BAF_Soldier_AA_DDPM"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumTeam2"];
_u		= ["BAF_Soldier_TL_DDPM"];
_u = _u + ["BAF_Soldier_AA_DDPM"];
_u = _u + ["BAF_Soldier_AA_DDPM"];
_u = _u + ["BAF_Soldier_HAT_DDPM"];
_u = _u + ["BAF_Soldier_AT_DDPM"];
_u = _u + ["BAF_Soldier_AR_DDPM"];
_u = _u + ["BAF_Soldier_MG_DDPM"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumTeam3"];
_u		= ["BAF_Soldier_scout_DDPM"];
_u = _u + ["US_Soldier_Marksman_EP1"];
_u = _u + ["BAF_Soldier_AR_DDPM"];
_u = _u + ["BAF_Soldier_AT_DDPM"];
_u = _u + ["US_Soldier_Marksman_EP1"];
_u = _u + ["US_Soldier_SniperH_EP1"];
_u = _u + ["US_Soldier_SniperH_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumVehTeam1"];
_u		= ["BAF_Soldier_TL_DDPM"];
_u = _u + ["HMMWV_Avenger_DES_EP1"];
_u = _u + ["M2A3_EP1"];
_u = _u + ["BAF_Jackal2_GMG_D"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumVehTeam2"];
_u		= ["BAF_Soldier_TL_DDPM"];
_u = _u + ["BAF_FV510_D"];
_u = _u + ["BAF_FV510_D"];
_u = _u + ["BAF_Jackal2_GMG_D"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumVehTeam3"];
_u		= ["BAF_Soldier_TL_DDPM"];
_u = _u + ["BAF_Jackal2_GMG_D"];
_u = _u + ["HMMWV_M998_crows_M2_DES_EP1"];
_u = _u + ["BAF_FV510_D"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeTeam1"];
_u		= ["BAF_Soldier_FAC_DDPM"];
_u = _u + ["BAF_Soldier_AT_DDPM"];
_u = _u + ["BAF_Soldier_AHAT_DDPM"];
_u = _u + ["BAF_Soldier_HAT_DDPM"];
_u = _u + ["BAF_Soldier_HAT_DDPM"];
_u = _u + ["BAF_Soldier_DDPM"];
_u = _u + ["BAF_Soldier_Marksman_DDPM"];
_u = _u + ["BAF_Soldier_Medic_DDPM"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeTeam2"];
_u		= ["BAF_Soldier_TL_DDPM"];
_u = _u + ["BAF_Soldier_FAC_DDPM"];
_u = _u + ["BAF_Soldier_SL_DDPM"];
_u = _u + ["BAF_ASoldier_DDPM"];
_u = _u + ["BAF_Soldier_AHAT_DDPM"];
_u = _u + ["BAF_Soldier_HAT_DDPM"];
_u = _u + ["BAF_Soldier_Marksman_DDPM"];
_u = _u + ["BAF_Soldier_Medic_DDPM"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeTeam3"];
_u		= ["BAF_Soldier_TL_DDPM"];
_u = _u + ["BAF_Soldier_AA_DDPM"];
_u = _u + ["BAF_Soldier_AA_DDPM"];
_u = _u + ["BAF_Soldier_Medic_DDPM"];
_u = _u + ["BAF_Soldier_GL_DDPM"];
_u = _u + ["BAF_Soldier_scout_DDPM"];
_u = _u + ["BAF_Soldier_AT_DDPM"];
_u = _u + ["BAF_Soldier_MG_DDPM"];
_u = _u + ["BAF_Soldier_AR_DDPM"];
_u = _u + ["BAF_Soldier_HAT_DDPM"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeVehTeam1"];
_u		= ["BAF_Soldier_TL_DDPM"];
_u = _u + ["BAF_FV510_D"];
_u = _u + ["M1A1_US_DES_EP1"];
_u = _u + ["M2A3_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeVehTeam2"];
_u		= ["BAF_Soldier_TL_DDPM"];
_u = _u + ["M1A2_US_TUSK_MG_EP1"];
_u = _u + ["BAF_FV510_D"];
_u = _u + ["M2A3_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeVehTeam3"];
_u		= ["BAF_Soldier_TL_DDPM"];
_u = _u + ["M1A2_US_TUSK_MG_EP1"];
_u = _u + ["BAF_FV510_D"];
_u = _u + ["M6_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

//--- AA Units used by towns occupation in case of 'air assault' only.
_n = _n + ["SmallAATeam"];
_u		= ["BAF_Soldier_TL_DDPM"];
_u = _u + ["BAF_Soldier_AA_DDPM"];
_u = _u + ["BAF_Soldier_AA_DDPM"];
_u = _u + ["BAF_Soldier_AA_DDPM"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["MediumAATeam"];
_u		= ["BAF_Soldier_TL_DDPM"];
_u = _u + ["BAF_Soldier_AA_DDPM"];
_u = _u + ["BAF_Soldier_AA_DDPM"];
_u = _u + ["HMMWV_Avenger_DES_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

_n = _n + ["LargeAATeam"];
_u		= ["BAF_Soldier_TL_DDPM"];
_u = _u + ["BAF_Soldier_AA_DDPM"];
_u = _u + ["BAF_Soldier_AA_DDPM"];
_u = _u + ["M6_EP1"];
_u = _u + ["M6_EP1"];
[Format["WFBE_WEST%1UNITS",_n select (count _n - 1)],_u,true] Call SetNamespace;

diag_log Format ["[WFBE (INIT)][frameno:%1 | ticktime:%2] Occupation_US: Initialization - [Done]",diag_frameno,diag_tickTime];