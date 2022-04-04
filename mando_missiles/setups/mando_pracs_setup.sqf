// The following scripts are for players only, no need to run on dedi servers
[]spawn
{
   while {!alive player} do
   {
      Sleep 1;
   };

   _weapon_idx = "PRACS_A4_MaverickLauncher";
   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_agm65_2.sqs";
   _cam_pos_angles = [0,5,-0.3,0,90];
   _launch_pos = [0,0,-2];
   _background_mfd = [];
      
   [["PRACS_A4"], 0, 0, ["Vehicles"], "MMA AGM65 Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {("PRACS_A4_MaverickLauncher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";
   [["PRACS_A4"], 0, "", [4,6], [4,6], 15, 15, 20, [4,3,-2.5], mando_missile_path+"huds\mando_hud_pracs.sqf", 0, 0.03, [[-1,"xxx"]], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";
   


   [["PRACS_F15"], 0, "", [4,6], [4,6], 15, 15, 20, [4,3,-2.5], mando_missile_path+"huds\mando_hud_pracs.sqf", 0, 0, [[-1,"xxx"]], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";


   
   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_lgb_GLT_Falcon.sqs";
   _cam_pos_angles = [0,5,-0.3,0,181];
   _weapon_idx = "PRACS_M3_GBU12_Launcher";
   [["PRACS_Mirage3"], 0, 0, ["Vehicles", "REMOTE"], "MMA GBU12 Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {("PRACS_M3_GBU12_Launcher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3] execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";   

   _weapon_idx = "PRACS_MaverickLauncher";
   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_agm65_2.sqs";
   _cam_pos_angles = [0,5,-0.3,0,90];
   _launch_pos = [0,0,-2];
   [["PRACS_Mirage3"], 0, 0, ["Vehicles"], "MMA AGM65 Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {("PRACS_MaverickLauncher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";      
   
   [["PRACS_Mirage3"], 0, "", [4,6], [4,6], 15, 15, 20, [4,3,-2.5], mando_missile_path+"huds\mando_hud_pracs.sqf", 0, 0, [[-1,"xxx"]], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";   



   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_lgb_GLT_Falcon.sqs";
   _cam_pos_angles = [0,6,-1,0,181];
   _weapon_idx = "PRACS_ET_GBU12_Launcher";
   [["PRACS_Etendard"], 0, 0, ["Vehicles", "REMOTE"], "MMA GBU12 Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {("PRACS_ET_GBU12_Launcher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3] execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";   

   _weapon_idx = "PRACS_ET_Exocet_Launcher";
   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_exocet.sqs";
   [["PRACS_Etendard"], 0, 0, ["Vehicles", "REMOTE"], "MMA Exocet Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {("PRACS_ET_Exocet_Launcher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";

   [["PRACS_Etendard"], 0, "", [4,6], [4,6], 15, 15, 20, [4,3,-2.5], mando_missile_path+"huds\mando_hud_pracs.sqf", 0, 0, [[-1,"xxx"]], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf"; 


   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_lgb_GLT_Falcon.sqs";
   _cam_pos_angles = [-0.6,2.7,-2,0,181];
   _launch_pos = [0,0,-2];   
   _weapon_idx = "PRACS_F16_GBU10_Launcher";
   [["PRACS_F16"], 0, 0, ["Vehicles", "REMOTE"], "MMA GBU10 Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {("PRACS_F16_GBU10_Launcher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3] execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";
   
   _weapon_idx = "PRACS_F16_GBU12_Launcher";
   [["PRACS_F16"], 0, 0, ["Vehicles", "REMOTE"], "MMA GBU12 Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {("PRACS_F16_GBU12_Launcher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3] execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";

   _weapon_idx = "PRACS_F16_GBU16_Launcher";
   [["PRACS_F16"], 0, 0, ["Vehicles", "REMOTE"], "MMA GBU16 Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {("PRACS_F16_GBU16_Launcher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3] execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";   
   

   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_agm65_2.sqs";
   _cam_pos_angles = [-0.6,2.7,-2,0,90];
   _launch_pos = [0,0,-2];
   _weapon_idx = "PRACS_Maverick_Launcher";   
   [["PRACS_F16"], 0, 0, ["Vehicles"], "MMA AGM65 Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {("PRACS_Maverick_Launcher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";      

   _weapon_idx = "MaverickLauncher";   
   [["PRACS_F16"], 0, 0, ["Vehicles"], "MMA AGM65 Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {("MaverickLauncher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";      

   
   [["PRACS_F16"], 0, "", [4,6], [4,6], 15, 15, 20, [4,3,-2.5], mando_missile_path+"huds\mando_hud_pracs.sqf", 0, 0, [[-1,"xxx"]], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";   


   
   [["PRACS_puma330"], 0, "", [], [], 20, 20, 0, [4,3,-2.5], mando_missile_path+"huds\mando_hud_hexa_transports.sqf", 0, 0, [], 0]execVm mando_missile_path+"units\mando_assignvehicle_by_type.sqf";
   
   [["UH1H_TK_EP1"], 0, "", [], [], 20, 20, 0, [4,3,-2.5], mando_missile_path+"huds\mando_hud_hexa_transports.sqf", 0, 0, [], 0]execVm mando_missile_path+"units\mando_assignvehicle_by_type.sqf";   
   
};
