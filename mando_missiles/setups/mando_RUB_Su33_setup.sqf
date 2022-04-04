// The following scripts are for players only, no need to run on dedi servers
[]spawn
{
   while {!alive player} do
   {
      Sleep 1;
   };


   _cam_pos_angles = [0,7,-1.3,0,181];

   _launch_pos = [0,0,-2.5];
   _background_mfd = [];

   _weapon_idx = "GLT_CH29L_Launcher";

   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_ch29l.sqs";
   // Pilots camera
   [["RUBSU33AA"], 0, 0, ["Vehicles","REMOTE"], "MMA Ch29L Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {(((driver _plane == player) && !(isPlayer gunner _plane)) || (gunner _plane == player)) && ("GLT_CH29L_Launcher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";


   _weapon_idx = "GLT_CH29T_Launcher";
   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_ch29.sqs";
   // Pilots camera
   [["RUBSU33AA"], 0, 0, ["Vehicles"], "MMA Ch29T Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {(((driver _plane == player) && !(isPlayer gunner _plane)) || (gunner _plane == player)) && ("GLT_CH29T_Launcher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";


   _weapon_idx = "Ch29Launcher_Su34";
   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_ch29.sqs";
   // Pilots camera
   [["RUBSU33AA"], 0, 0, ["Vehicles"], "MMA Ch29T Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {(((driver _plane == player) && !(isPlayer gunner _plane)) || (gunner _plane == player)) && ("Ch29Launcher_Su34" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";


   _weapon_idx = "GLT_CH59_Launcher";
   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_ch59.sqs";
   // Pilots camera
   [["RUBSU33AA"], 0, 0, ["Vehicles"], "MMA Ch59 Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {(((driver _plane == player) && !(isPlayer gunner _plane)) || (gunner _plane == player)) && ("GLT_CH59_Launcher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";


   _weapon_idx = "GLT_KAB250_Launcher";

   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_lgb_GLT_Falcon.sqs";
   // Pilots camera
   [["RUBSU33AA"], 0, 0, ["Vehicles", "REMOTE"], "MMA KAB250 Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {(((driver _plane == player) && !(isPlayer gunner _plane)) || (gunner _plane == player)) && ("GLT_KAB250_Launcher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";

   _weapon_idx = "GLT_KAB500_Launcher";

   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_lgb_GLT_Falcon.sqs";
   // Pilots camera
   [["RUBSU33AA"], 0, 0, ["Vehicles", "REMOTE"], "MMA KAB500 Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {(((driver _plane == player) && !(isPlayer gunner _plane)) || (gunner _plane == player)) && ("GLT_KAB500_Launcher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";

   _weapon_idx = "GLT_KAB1500_Launcher";

   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_lgb_GLT_Falcon.sqs";
   // Pilots camera
   [["RUBSU33AA"], 0, 0, ["Vehicles", "REMOTE"], "MMA KAB1500 Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {(((driver _plane == player) && !(isPlayer gunner _plane)) || (gunner _plane == player)) && ("GLT_KAB1500_Launcher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";


// Su34 HUD setup for pilot
   [["RUBSU33AA"], 0, "", [4,6], [4,6], 30, 30, 20, [4,3,-2.5], mando_missile_path+"huds\mando_hud_Su34.sqf", 0, 0, [[-7,"R73Launcher"],[-6,"Ch29Launcher_Su34"]], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";

};
