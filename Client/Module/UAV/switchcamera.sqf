_uav = _this select 0;


if (cameraOn == _uav && cameraView == "External") then {
	playsound "beep";
	_uav switchcamera "Internal";
} else { 
	_uav switchcamera "External";
	playsound "beep";
};

 