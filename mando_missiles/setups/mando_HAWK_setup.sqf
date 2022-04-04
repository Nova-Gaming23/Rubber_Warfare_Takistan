// The following scripts are for players only, no need to run on dedi servers
[]spawn
{
   while {!alive player} do
   {
      Sleep 1;
   };
   
    // LAV25 units will be simulated HAWK launchers for players as gunners (missile idx 0)
   _mcctypeaascript = "mando_missiles\mcc\mcc_types\mando_missilecontrolon_hawk.sqs";
	[["ZSU_CDF"], 6, 6, ["Air"], "Rapier Console", _mcctypeaascript, [0,0,4,2], [0,1,0.25], 2, -1, 0, [], 3, 100]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";
};