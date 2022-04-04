// The following scripts are for players only, no need to run on dedi servers


[]spawn
{
   while {!alive player} do
   {
      Sleep 1;
   };

   _cam_pos_angles = [0,-0.4,0.8,0,181];
   _launch_pos = [0,0,-2];

   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_agm65_2.sqs";
   [["sfp_jas39"], 0, 0, ["Vehicles"], "MMA RBS75 Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {("sfp_rbs75_launcher" in weapons _plane)}, 0, "sfp_rbs75_launcher", _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";
   
   _cam_pos_angles = [0,-0.4,0.8,0,181];   
   [["sfp_fpl37"], 0, 0, ["Vehicles"], "MMA RBS75 Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {("sfp_rbs75_launcher" in weapons _plane)}, 0, "sfp_rbs75_launcher", _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";   

   _mcctypeaascript = "mando_missiles\mcc\mcc_types\mando_missilecontrolon_rbs4e.sqs";
   [["sfp_fpl37"], 8, 8, [], "MMA RBS04E Grnd", _mcctypeaascript, [3,2,-2], [0,0,-1], {("sfp_rbs04_launcher" in weapons _plane)}, 0, "sfp_rbs04_launcher", [], 2]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";

   _mcctypeaascript = "mando_missiles\mcc\mcc_types\mando_missilecontrolon_rbs4e.sqs";
   [["sfp_fpl37"], 8, 8, ["Vehicles", "REMOTE"], "MMA RBS04E", _mcctypeaascript, [3,2,-2], [0,0,-1], {("sfp_rbs04_launcher" in weapons _plane)}, 0, "sfp_rbs04_launcher", [], 2]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";
   
   // GBU12 cameras setup
   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_lgb_GLT_Falcon.sqs";
   _cam_pos_angles = [0,1,0.5,0,181];
   _weapon_idx = "GLT_GBU12_Launcher";
   _launch_pos = [0,0,-2.5];
   _background_mfd = []; // Default values for MDF paa and button placements
   [["GLT_jas39_base"], 0, 0, ["Vehicles", "REMOTE"], "MMA GBU12 Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {"GLT_GBU12_Launcher" in weapons _plane}, 0, _weapon_idx, _background_mfd, 1, -3] execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";   
      
   // AGM65 cameras setup
   _weapon_idx = "GLT_AGM65_Launcher";
   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_agm65_2.sqs";
   [["GLT_jas39_base"], 0, 0, ["Vehicles"], "MMA AGM65 Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {"GLT_AGM65_Launcher" in weapons _plane}, 0, _weapon_idx, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";

   
// HUD Systems setup

// Jas39
   [["sfp_jas39"], 0, "", [4,6], [4,6], 15, 15, 20, [4,3,-2.5], mando_missile_path+"huds\mando_hud_sfp.sqf", 0, 0, [[-1,"xxx"]], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";

// Viggen
   [["sfp_fpl37"], 0, "", [4,6], [4,6], 15, 15, 20, [4,3,-2.5], mando_missile_path+"huds\mando_hud_sfp.sqf", 0, 0, [[-1,"xxx"]], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";   

// GLT Jas39   
   [["GLT_jas39_base"], 0, "sight", [4,6], [4,6], 15, 15, 20, [4,3,-2.5], mando_missile_path+"huds\mando_hud_GLT_Falcon.sqf", 0, 0, [[-6,"GLT_SidewinderXLauncher"],[-8,"GLT_AIM120Launcher"]], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";   
   
};
