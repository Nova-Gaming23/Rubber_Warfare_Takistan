while {true} do
{
	if (vehicle player isKindOf "MAZ_543_SCUD_TK_EP1") then
	{
		_var = vehicle player getVariable "mando_min_rng";
		if (!isNil "_var") then
		{
			_rng = _var;
			_var = vehicle player getVariable "mando_current_target";
			if (!isNil "_var") then
			{
				if (!isNull _var) then
				{
					if (_var distance vehicle player < _rng) then
					{
						playSound "mando_denied";
						titleText ["Current target is reset\nYour vehicle is closer than minimum firing range", "PLAIN"];
						vehicle player setVariable ["mando_current_target", objNull];
					};
				};
			};
		};
	};
	Sleep 5;
};