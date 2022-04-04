// The following scripts are for players only, no need to run on dedi servers
[]spawn
{
   while {!alive player} do
   {
      Sleep 1;
   };

   if (isNil "mando_ah64s") then
   {
      mando_ah64s = ["AH64D","AH64D_Sidewinders","AH64D_EP1","BAF_Apache_AH1_D","cwr2_AH64C"];
   }
   else
   {
      mando_ah64s = mando_ah64s + ["AH64D","AH64D_Sidewinders","AH64D_EP1","BAF_Apache_AH1_D","cwr2_AH64C"];
   };


   _background_mfd = [];

   // Cameras for gunners of AH1Z class choppers
   _weapon_idx = "HellfireLauncher";
   // AH64 cameras setup (8 onboard hellfires)
    _mcctypeaascript = mando_missile_path+"tv\tv_types\mando_tv_hellfire.sqs";
   [mando_ah64s, 0, 0, ["Vehicles", "REMOTE"], "MMA AGM-114K", _mcctypeaascript, [-3,2,-2], [0.05,6.5,-.25,0,181], {(((driver _plane == player) && !(isPlayer gunner _plane)) || (gunner _plane == player)) && ("HellfireLauncher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3]execVM mando_missile_path+"mcc\mando_mccallow_by_type.sqf";

   _weapon_idx = "cwr2_HellfireLauncher";
   // AH64 cameras setup (8 onboard hellfires)
    _mcctypeaascript = mando_missile_path+"tv\tv_types\mando_tv_hellfire.sqs";
   [mando_ah64s, 0, 0, ["Vehicles", "REMOTE"], "MMA AGM-114K", _mcctypeaascript, [-3,2,-2], [0.05,6.5,-.25,0,181], {(((driver _plane == player) && !(isPlayer gunner _plane)) || (gunner _plane == player)) && ("cwr2_HellfireLauncher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3]execVM mando_missile_path+"mcc\mando_mccallow_by_type.sqf";
   
   // HUDs for pilots and gunners
   [mando_ah64s, 0, "sight", [4], [4], 20, 20, 15, [4,3,-2.5], mando_missile_path+"huds\mando_hud_ah64.sqf", 0, 0, [[-9,"HellfireLauncher"]], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";

   // HUDs for pilots and gunners
   [mando_ah64s, 1, "sight", [4], [4], 20, 20, 0, [4,3,-2.5], mando_missile_path+"huds\mando_hud_ah64_gun.sqf", 0, 0, [[-9,"HellfireLauncher"]], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";

};
