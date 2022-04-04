// The following scripts are for players only, no need to run on dedi servers
[]spawn
{
   while {!alive player} do
   {
      Sleep 1;
   };
   
// L39 HUDs
   [["L39_TK_EP1"], 0, "", [2], [2], 35, 35, 0, [4,3,-2.5], mando_missile_path+"huds\mando_hud_l39.sqf", 0, 0, [[-9,"R73Launcher"]], 0]execVm"mando_missiles\units\mando_assignvehicle_by_type.sqf";

};

