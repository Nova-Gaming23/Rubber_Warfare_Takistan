Private ["_VarName2","_VarName3","_MHQE2","_MHQW3","_side","_NG23_Error_Code","_ErrorAddInfo","_Info1"];
//-------Simple MHQ Respawn/Debug script by NG23-------



NG23_MHQ_Position_Condition = false;


//-------- Get Information---------
If (getMarkerColor "HQUndeployed" == "ColorOrange") then {
	NG23_MHQ_Position_set=getMarkerPos "HQUndeployed";
	NG23_MHQ_Marker_Name="HQUndeployed";
	NG23_MHQ_Position_Condition = true;
	}else{ 
		if (getMarkerColor "DeadHQ" == "ColorBrown") then{
		NG23_MHQ_Position_set=getMarkerPos "DeadHQ";
		NG23_MHQ_GET_POS = worldToScreen getMarkerPos "DeadHQ";
		NG23_MHQ_Marker_Name="DeadHQ";
		NG23_MHQ_Position_Condition= true;
		}else{
			if ((alive player) && (getMarkerColor "DeadHQ" == ("")) && (getMarkerColor "HQUndeployed" == (""))) then {
			NG23_MHQ_Position_set=getPos player;
			NG23_MHQ_GET_POS = worldToScreen getPos player;
			NG23_MHQ_Marker_Name="Player";
			NG23_MHQ_Position_Condition= true;}
			};
		};
//------------END Get Information----------

//---------Addition Information -------
_NG23_Error_Code = "100";
_ErrorAddInfo = true;
_Info1 = "There was no Spawnpoint found!";
_InfoMHQLocation = NG23_MHQ_Marker_Name;
_InfoMHQPositon	= NG23_MHQ_Position_set;
//-------END Addition Information -------



//--------------Vehicle Creation-----------
if (sidejoined == west) then {

	_VarName2="WestMHQ";
	_MHQE2="LAV25_HQ" CreateVehicle NG23_MHQ_Position_set;
	_MHQE2 SetVehicleVarName _VarName2;
	_MHQE2 setDammage 0;
	_MHQE2 Call Compile Format ["%1=_This ; PublicVariable ""%1""",_VarName2];
	WestMHQ setVehicleInit Format["['Headquarters','ColorGreen',[1,1],'','HQUndeployed',this,0.2,true,'Headquarters','ColorOrange',true,West] ExecVM 'Common\Common_MarkerUpdate.sqf';%1",_text];
	processInitCommands;
	sleep 0.5;
	_MHQE2 setDammage 1;
	[_InfoMHQLocation,_InfoMHQPositon]ExecVM "NG23\Hint\debug_mhq_hint.sqf";
	}else{
			if (sidejoined == east) then {
			_VarName3="EastMHQ";
			_MHQW3="BTR90_HQ" CreateVehicle NG23_MHQ_Position_set;
			_MHQW3 SetVehicleVarName _VarName3;
			_MHQW3 setDammage 0;
			_MHQW3 Call Compile Format ["%1=_This ; PublicVariable ""%1""",_VarName3];
			EastMHQ setVehicleInit Format["['Headquarters','ColorGreen',[1,1],'','HQUndeployed',this,0.9,true,'Headquarters','ColorOrange',true,East] ExecVM 'Common\Common_MarkerUpdate.sqf';%1",_text];
			processInitCommands;
			sleep 0.5;
			_MHQW3 setDammage 1;
			[_InfoMHQLocation,_InfoMHQPositon]ExecVM "NG23\Hint\debug_mhq_hint.sqf";
			}else{
				NG23_MHQ_Position_Condition= false;
				};
		};
//--------------END Vehicle Creation-----------


//---------Somthing wrong----------
if (!NG23_MHQ_Position_Condition) exitWith{[_NG23_Error_Code,_ErrorAddInfo,_Info1]ExecVM "NG23\Hint\Error.sqf";};
//----------END somthing wrong------

