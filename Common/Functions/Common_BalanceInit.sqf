Private ["_unit"];
_unit = _this select 0;

switch (typeOf _unit) do {
	case "HMMWV_Avenger": {
		if (WF_A2_Vanilla) then {
			_unit removeWeapon "SidewinderLaucher_AH1Z";
			_unit removeWeapon "StingerLaucher";
			_unit addMagazine "2Rnd_Sidewinder_AH1Z";
			_unit addMagazine "2Rnd_Sidewinder_AH1Z";
			_unit addMagazine "2Rnd_Sidewinder_AH1Z";
			_unit addMagazine "2Rnd_Sidewinder_AH1Z";
			_unit addMagazine "2Rnd_Sidewinder_AH1Z";
			_unit addMagazine "2Rnd_Sidewinder_AH1Z";
			_unit addMagazine "2Rnd_Sidewinder_AH1Z";
			_unit addMagazine "2Rnd_Sidewinder_AH1Z";
			_unit addWeapon "SidewinderLaucher_AH1Z";
		};
	};
	case "M6_EP1": {
		_unit removeWeapon "StingerLaucher_4x";
		_unit addMagazine "8Rnd_9M311";
		_unit addWeapon "9M311Laucher";
	};
	case "Ka52": {
		_unit removeWeapon "AT9Launcher";
		_unit removeWeapon "VikhrLauncher";
		_unit addMagazine "4Rnd_AT9_Mi24P";
		_unit addMagazine "4Rnd_AT9_Mi24P";
		_unit addweapon "AT9Launcher";
		_unit addMagazine "4Rnd_R73";
		_unit addweapon "R73Launcher";  
	};
	case "Ka52Black": {
		_unit removeWeapon "AT9Launcher";
		_unit removeWeapon "VikhrLauncher";
		_unit addMagazine "4Rnd_AT9_Mi24P";
		_unit addMagazine "4Rnd_AT9_Mi24P";
		_unit addweapon "AT9Launcher";
		_unit addMagazine "4Rnd_R73";
		_unit addweapon "R73Launcher";  
	};
	case "An2_TK_EP1": {
		_unit addMagazine "500Rnd_TwinVickers";
		_unit addMagazine "500Rnd_TwinVickers";
		_unit addweapon "TwinVickers";
	};
};