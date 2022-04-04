// The following scripts are for players only, no need to run on dedi servers
[]spawn
{
   while {!alive player} do
   {
      Sleep 1;
   };

   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_at9_mi24p.sqs";
   _cam_pos_angles = [-0.5,8,-2.5,0,181];
   _launch_pos = [-3,2,-3];
   _background_mfd = [];
   _weapon_idx = "AT9Launcher";      
   [["CSLA_Mi24_Base","Mi24_P","Mi24_P_Iraq","Georgian_Mi24_P","cwr2_Mi24D"], 0, 0, ["Vehicles"], "MMA Ataka-V Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {(((driver _plane == player) && !(isPlayer gunner _plane)) || (gunner _plane == player)) && ("AT9Launcher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";

   _weapon_idx = "cwr2_AT9Launcher";      
   [["CSLA_Mi24_Base","Mi24_P","Mi24_P_Iraq","Georgian_Mi24_P","cwr2_Mi24D"], 0, 0, ["Vehicles"], "MMA Ataka-V Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {(((driver _plane == player) && !(isPlayer gunner _plane)) || (gunner _plane == player)) && ("cwr2_AT9Launcher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";   
   
// Mi24_P HUD setup for pilot
   [["CSLA_Mi24_Base","Mi24_P","Mi24_P_Iraq","Georgian_Mi24_P","cwr2_Mi24D"], 0, "", [4], [4], 20, 20, 0, [4,3,-2.5], mando_missile_path+"huds\mando_hud_mi24.sqf", 0, 0, [[-1,"Igla_twice"]], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";

// Mi24_P HUD setup for gunner
   [["CSLA_Mi24_Base","Mi24_P","Mi24_P_Iraq","Georgian_Mi24_P","cwr2_Mi24D"], 1, "", [4], [4], 20, 20, 0, [4,3,-2.5], "", 0, 0.07, [], 1]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";

};
