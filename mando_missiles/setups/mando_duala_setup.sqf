// The following scripts are for players only, no need to run on dedi servers
[]spawn
{
   while {!alive player} do
   {
      Sleep 1;
   };

   // GLT_Falcon_GBU cameras setup (onboard Mavericks)
   _weapon_idx = "ibr_AGM65_Launcher";
   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_agm65_2.sqs";
   _cam_pos_angles = [0,3,-2,0,90];
   _launch_pos = [0,0,-2];
   _background_mfd = []; // Default values for MDF paa and button placements
      
   [["ibr_viggen1"], 0, 0, ["Vehicles"], "MMA AGM65 Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {("ibr_AGM65_Launcher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";
   
   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_lgb_GLT_Falcon.sqs";
   _cam_pos_angles = [0,3,-2,0,181];
   _weapon_idx = "ibr_GBU12_Launcher";
   [["ibr_viggen1"], 0, 0, ["Vehicles", "REMOTE"], "MMA GBU12 Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {("ibr_GBU12_Launcher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3] execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";   
   
   [["ibr_viggen1"], 0, "", [4,6], [4,6], 15, 15, 20, [4,3,-2.5], mando_missile_path+"huds\mando_hud_duala.sqf", -0.025, 0, [[-1,"xxx"]], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";
   
   [["ibr_as350"], 0, "", [], [], 15, 15, 0, [4,3,-2.5], mando_missile_path+"huds\mando_hud_locations.sqf", 0, 0, [], 0]execVm mando_missile_path+"units\mando_assignvehicle_by_type.sqf";

   [["ibr_gazelle"], 0, "", [4,6], [4,6], 15, 15, 0, [4,3,-2.5], mando_missile_path+"huds\mando_hud_duala.sqf", 0, 0, [[-1,"xxx"]], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";

   [["PRACS_Su24Fencer"], 0, "", [4,6], [4,6], 15, 15, 20, [4,3,-2.5], mando_missile_path+"huds\mando_hud_duala.sqf", 0.01, 0.02, [[-1,"xxx"]], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";
   
   [["PRACS_Su24Fencer"], 1, "", [4,6], [4,6], 15, 15, 20, [4,3,-2.5], mando_missile_path+"huds\mando_hud_duala.sqf", 0, 0, [[-1,"xxx"]], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";   

   [["ibrPRACS_MiG21mol"], 0, "", [4,6], [4,6], 15, 15, 20, [4,3,-2.5], mando_missile_path+"huds\mando_hud_ibr.sqf", -0.02, -0.02, [[-1,"xxx"]], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";   
};
