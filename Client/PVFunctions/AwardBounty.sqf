Private["_assist","_bounty","_get","_name","_type"];

_type = _this select 0;
_assist = _this select 1;
_ai = if (count _this > 2) then {_this select 2} else {objNull};

_get = _type Call GetNamespace;

_name = _get select QUERYUNITLABEL;

_bountyMod = 'WFBE_BOUNTYMODIFIER' Call GetNamespace;

_score = score player;
				
				if (_score >= 10 ) then {_bountyMod = _bountyMod + 0.05};
				
				if (_score >= 30 ) then {_bountyMod = _bountyMod + 0.05};
				
				if (_score >= 100 ) then {_bountyMod = _bountyMod + 0.05};
				
				if (_score >= 150 ) then {_bountyMod = _bountyMod + 0.05};
				
				if (_score >= 200 ) then {_bountyMod = _bountyMod + 0.05};
				
				if (_score >= 300 ) then {_bountyMod = _bountyMod + 0.05};

_bounty = round((_get select QUERYUNITPRICE) * _bountyMod);

//--- Are we dealing with a kill assist or a full kill.
if (_assist) then {
	_bounty = _bounty * ('WFBE_BOUNTYMODIFIERASSIST' Call GetNamespace);
	Format[Localize "STR_WF_CHAT_Award_Bounty_Assist",_bounty,_name] Call GroupChatMessage;
} else {
	Format[Localize "STR_WF_CHAT_Award_Bounty",_bounty,_name] Call GroupChatMessage;
};

_bounty Call ChangePlayerFunds;

//hint format ["bounty = %1\nCoef = %2",_bounty,_bountyMod];

/*if (alive _ai) then {//--- If the killer was one of our ai, then we improve it's skill.
	Private ["_skill", "_skill_ai"];
	_skill = switch (true) do {
		case (_type isKindOf "Infantry"): {0.01};
		case (_type isKindOf "Car"): {0.02};
		case (_type isKindOf "Ship"): {0.02};
		case (_type isKindOf "Motorcycle"): {0.01};
		case (_type isKindOf "Tank"): {0.04};
		case (_type isKindOf "Helicopter"): {0.05};
		case (_type isKindOf "Plane"): {0.05};
		case (_type isKindOf "StaticWeapon"): {0.03};
		case (_type isKindOf "Building"): {0.02};
		default {0.005};
	};
	
	_skill_ai = skill _ai;
	if (_skill_ai < 1) then { //--- Don't bother if the unit's skill is already 1.
		if (_skill_ai + _skill > 1) then {_skill = 1 - _skill_ai};
		_ai setSkill (_skill_ai + _skill);
	};
};*/