// The following scripts are for players only, no need to run on dedi servers
[]spawn
{
   while {!alive player} do
   {
      Sleep 1;
   };

   // BIS Mi24_V cameras setup (onboard AT9)

   // The MCC script is executed upon activation of the corresponding TV, and setting up all the TV parameters
   // including missile parameters, this is the control script for this TV system and mission editors can 
   // create their owns at will. "mando_missiles\tv\tv_types\" folder has several preconfigured types.
   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_at6_mi24v.sqs";

   // TV camera position relative to launcher + angles
   // angles is composed by initial horizontal angle (relative to TV vehicle) and max angle diff with origin
   // [0, 181] = 100% free camera initially heading to vehicle direction
   _cam_pos_angles = [-0.5,8,-2.5,0,181];

   // Weapon index, if >= 0, it is a virtual missile, non existing in the TV vehicle
   // if < 0, then it is (the arma weapon idx + 1) in negative. -6 to use ArmA AV8 idx 5 (LGB bomb)
   _weapon_idx = -1;

   // Launch position is the relative position to the TV vehicle 
   // or a displacement offset to be applied to real weapons fired from the TV vehicle
   // with mando_tv_keepgeo = true for the first case and false for the second (set in the control script)
   _launch_pos = [-3,2,-3];


   _background_mfd = []; // Default values for MDF paa and button placements
   [["ACE_Mi24_V_FAB250_RU", "Mi24_V","Georgian_Mi24_V","Mi24_V_Iraq","ACE_Mi24_V_FAB250_CDF","CSLA_Mi24V_4UB32","p85_PL_Mi24_V","TPS_PL_Mi24_V","TPS_PL_Mi24_V_olive"], 0, 0, ["Vehicles"], "MMA Shturm Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {(((driver _plane == player) && !(isPlayer gunner _plane)) || (gunner _plane == player)) && ("AT6Launcher" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";
   
   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_at9_mi24p.sqs";   
   [["ACE_Mi24_V_FAB250_RU", "Mi24_V","Georgian_Mi24_V","Mi24_V_Iraq","ACE_Mi24_V_FAB250_CDF","CSLA_Mi24V_4UB32","p85_PL_Mi24_V","TPS_PL_Mi24_V","TPS_PL_Mi24_V_olive"], 0, 0, ["Vehicles"], "MMA Ataka-V Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {(((driver _plane == player) && !(isPlayer gunner _plane)) || (gunner _plane == player)) && ("AT9Launcher" in weapons _plane)}, 0, "AT9Launcher", _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";

   _mcc_tv_script = mando_missile_path+"tv\tv_types\mando_tv_at9_ace2.sqs";   
   [["ACE_Mi24_V_FAB250_RU", "Mi24_V","Georgian_Mi24_V","Mi24_V_Iraq","ACE_Mi24_V_FAB250_CDF","CSLA_Mi24V_4UB32","p85_PL_Mi24_V","TPS_PL_Mi24_V","TPS_PL_Mi24_V_olive"], 0, 0, ["Vehicles"], "MMA Ataka-V Camera", _mcc_tv_script, _launch_pos, _cam_pos_angles, {(((driver _plane == player) && !(isPlayer gunner _plane)) || (gunner _plane == player)) && ("ACE_AT9Launcher_Mi28" in weapons _plane)}, 0, _weapon_idx, _background_mfd, 1, -3]execVM"mando_missiles\mcc\mando_mccallow_by_type.sqf";
   

// Mi24_V HUD setup for pilot
   [["ACE_Mi24_V_FAB250_RU", "Mi24_V","Georgian_Mi24_V","Mi24_V_Iraq","ACE_Mi24_V_FAB250_CDF","CSLA_Mi24V_4UB32","p85_PL_Mi24_V","TPS_PL_Mi24_V","TPS_PL_Mi24_V_olive"], 0, "", [], [], 20, 20, 0, [4,3,-2.5], mando_missile_path+"huds\mando_hud_locations.sqf", 0, 0.07, [], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";


// Mi24_V HUD setup for gunner
   [["ACE_Mi24_V_FAB250_RU", "Mi24_V","Georgian_Mi24_V","Mi24_V_Iraq","ACE_Mi24_V_FAB250_CDF","CSLA_Mi24V_4UB32","p85_PL_Mi24_V","TPS_PL_Mi24_V","TPS_PL_Mi24_V_olive"], 1, "", [], [], 20, 20, 0, [4,3,-2.5], "", 0, 0.07, [], 1]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";

};
