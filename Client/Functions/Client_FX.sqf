Private ["_index"];
_index = _this select 0;

switch (_index) do {
	case 0: {
		// None.
		"colorCorrections" ppEffectEnable false;
		"chromAberration" ppEffectEnable false;
		"radialBlur" ppEffectEnable false;
		"filmGrain" ppEffectEnable false; 
	};
	case 1: {
		// High contrast postprocess added.
		"colorCorrections" ppEffectAdjust [1, 0.9, -0.002, [0.0, 0.0, 0.0, 0.0], [1.0, 0.6, 0.4, 0.6],  [0.199, 0.587, 0.114, 0.0]];
		"colorCorrections" ppEffectCommit 1;
		"colorCorrections" ppEffectEnable true;
	};
	case 2: {
		// Blue color corrections added (movie night style).
		"colorCorrections" ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0.0, 0.0], [0.6, 0.6, 1.8, 0.7],  [0.199, 0.587, 0.114, 0.0]];
		"colorCorrections" ppEffectCommit 1;
		"colorCorrections" ppEffectEnable true;
	};			
	case 3: {
		// Color corrections.
		"colorCorrections" ppEffectAdjust [1, 0.8, -0.002, [0.0, 0.0, 0.0, 0.0], [0.6, 0.7, 0.8, 0.65],  [0.199, 0.587, 0.114, 0.0]];
		"colorCorrections" ppEffectCommit 1;
		"colorCorrections" ppEffectEnable true;
	};
	case 4: {
		// Color corrections.
		"colorCorrections" ppEffectAdjust [1, 1, -0.0045, [0.0, 0.0, 0.0, 0.0], [1, 0.6, 0.4, 0.4],  [0.199, 0.587, 0.114, 0.0]];
		"colorCorrections" ppEffectCommit 1;
		"colorCorrections" ppEffectEnable true;
		// Light film grain.
		"filmGrain" ppEffectEnable true;
		"filmGrain" ppEffectAdjust [0.02, 1, 1, 0.1, 1, false];
		"filmGrain" ppEffectCommit 1;
	};
	case 5: {
		// Color corrections.
		"colorCorrections" ppEffectAdjust [1, 1, -0.002, [0.1, 0.05, 0.0, 0.02], [1.2, 1.0, 0.8, 0.666], [0.5, 0.5, 0.5, 0.0]];
		"colorCorrections" ppEffectCommit 1;
		"colorCorrections" ppEffectEnable true;
		// Light film grain.
		"filmGrain" ppEffectEnable true;
		"filmGrain" ppEffectAdjust [0.02, 1, 1, 0.1, 1, false];
		"filmGrain" ppEffectCommit 1;
	};
	case 6: {
		
		"colorCorrections" ppEffectEnable true; 
		"filmGrain" ppEffectEnable true;
		"filmGrain" ppEffectAdjust [0.1, -1, 0.1, 0.05, 2, false];  
		"filmGrain" ppEffectCommit 1; 
		"colorCorrections" ppEffectAdjust [1, 0.75, 0, [0.8,0.9,1,-0.1], [1,1,1,2], [-0.5,0,-1,5]]; 
		"colorCorrections" ppEffectCommit 1;
	};
	case 7: {
		
		"colorCorrections" ppEffectEnable true;
		"colorCorrections" ppEffectAdjust [1,1,0,[0,0,0,0],[2,0,0,1.25],[2.5,-2.5,0,0]];
		"colorCorrections" ppEffectCommit 0;
	};
	case 8: {
		
		"colorCorrections" ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0.0, 0.0], [0.6, 1.4, 0.6, 0.7],  [0.199, 0.587, 0.114, 0.0]];  
		"colorCorrections" ppEffectCommit 1;  
		"colorCorrections" ppEffectEnable true;
	};
	case 9: {
		
		"colorCorrections" ppEffectAdjust [1, 1, 0, [0.0, 0.0, 0.0, 0.0], [1.8, 1.8, 0.3, 0.7],  [0.199, 0.587, 0.114, 0.0]];  
		"colorCorrections" ppEffectCommit 0;  
		"colorCorrections" ppEffectEnable true;
	};
	//Stealth's Takistan
	case 10: {
		
		 "colorCorrections" ppEffectAdjust[ 1, 0.95, 0.001, [0, 0, 0, -0.7],[0, 0, 0, 0.7],[0, 0, 0, 0]]; 
		 "colorCorrections" ppEffectCommit 0; 
		 "colorCorrections" ppEffectEnable true;
	};
	//Stealth's Zargabad
	case 11: {
		
		 "colorCorrections" ppEffectAdjust[ 1, 1, 0.004, [0, 0, 0, -0.3],[0, 0, 0, 0.7],[0, 0, 0, 0]]; 
		 "colorCorrections" ppEffectCommit 0; 
		 "colorCorrections" ppEffectEnable true;
	};
	//Stealth's Chernarus
	case 12: {
		
		 "colorCorrections" ppEffectAdjust[ 1, 1, -0.002, [0, 0, 0, -0.3],[0, 0, 0, 0.8],[0, 0, 0, 0]]; 
		 "colorCorrections" ppEffectCommit 0; 
		 "colorCorrections" ppEffectEnable true;
	};
};