
_path = (configfile >> "CfgMissions" >> "MPMissions");
for "_i" from 0 to (count _path)-1 do {
	_subClass = _path select _i;
	diag_log _subClass;
	diag_log (configName  _subClass);
	diag_log "----------------------------------------------";
};

//hint (name _soldier);