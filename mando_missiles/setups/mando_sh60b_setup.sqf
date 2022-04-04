// The following scripts are for players only, no need to run on dedi servers
[]spawn
{
   while {!alive player} do
   {
      Sleep 1;
   };

   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_hexa_hellfire.sqs";
   _cam_pos_angles = [0,7.2,-1.3,0,90];
   _weapon_idx = "yup_Seahawk_HellfireLauncher";
   _launch_pos = [-3,2,-3];
   _background_mfd = [];
   [["yup_SH60B"], 0, 0, ["Vehicles", "REMOTE"], "MMA Hellfire Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {(((driver _plane == player) && !(isPlayer gunner _plane)) || (gunner _plane == player)) && ("yup_Seahawk_HellfireLauncher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";
 
  _weapon_idx = "HellfireLauncher";
   [["yup_SH60B"], 0, 0, ["Vehicles", "REMOTE"], "MMA Hellfire Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {(((driver _plane == player) && !(isPlayer gunner _plane)) || (gunner _plane == player)) && ("HellfireLauncher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";

 
   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_onlylaser.sqs";
   _weapon_idx = -1;   
   [["yup_SH60B"], 0, 0, ["Vehicles"], "MMA Laser", _mcc_tv_script, _launch_pos, _cam_pos_angles, {(((driver _plane == player) && !(isPlayer gunner _plane)) || (gunner _plane == player)) && ("yup_Seahawk_Laser" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";
   
// SH60B HUD setup for pilot
   [["yup_SH60B"], 0, "", [3,4], [3,4], 10, 10, 0, [4,3,-2.5], mando_missile_path+"huds\mando_hud_sono_mk54.sqf", 0, 0.0, [[0,""],[1,""]], 0]execVm mando_missile_path+"units\mando_assignvehicle_by_type.sqf";
   
// SH60B HUD setup for gunner
   [["yup_SH60B"], 1, "", [], [], 15, 15, 0, [4,3,-2.5], "", 0, 0.07, [], 1]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";

};
