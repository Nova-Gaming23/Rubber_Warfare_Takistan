// The following scripts are for players only, no need to run on dedi servers
[]spawn
{
   while {!alive player} do
   {
      Sleep 1;
   };
   
    // BTR90_HQ units will be simulated TORM1 launchers for players as gunners (missile idx 0)
   _mcctypeaascript = "mando_missiles\mcc\mcc_types\mando_missilecontrolon_torm1.sqs";
   //if (PkgCombinedOps) then {[["ZSU_TK_EP1"], 8, 8, ["Air"], "TorM1 Console", _mcctypeaascript, [0,0,4,2], [0,1,0.25], 2, -1, 0, [], 3, 85]execVM "mando_missiles\mcc\mando_mccallow_by_type.sqf"};
   //if (PkgA2) then {[["ZSU_INS"], 8, 8, ["Air"], "TorM1 Console", _mcctypeaascript, [0,0,4,2], [0,1,0.25], 2, -1, 0, [], 3, 85]execVM "mando_missiles\mcc\mando_mccallow_by_type.sqf"};

	[["ZSU_TK_EP1"], 6, 6, ["Air"], "TorM1 Console", _mcctypeaascript, [0,0,4,2], [0,1,0.25], 2, -1, 0, [], 3, 85]execVM "mando_missiles\mcc\mando_mccallow_by_type.sqf"
 };  
 