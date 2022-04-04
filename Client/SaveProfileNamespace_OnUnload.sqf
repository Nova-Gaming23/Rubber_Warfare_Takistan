private ["_action"];

_action = _this select 0;

switch (_action) do {
	case "onUnload": {
		saveProfileNamespace;
	};
};