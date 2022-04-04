/*
	save Scores from (DC)Offline Players
	Caller: Init_Server.sqf : l:60
*/

//SubArray Detail = [ 0 => Name, 1 => Side, 2 => Score, 3 => Online(true) or Offline(falses)]
// Detail[3] is false. We check this later, on endgame
NG23_SERVER_SIDE_SCORE_LOGGER_Players = [];
while{!gameOver} do {
	{
		_unit = _x;
		if (isPlayer _unit) then {			
			
			_select = count NG23_SERVER_SIDE_SCORE_LOGGER_Players;
			
			{// search player in List
				if ((_x select 0) == (name _unit)) then {
					_select = _forEachIndex;
				};
			}forEach NG23_SERVER_SIDE_SCORE_LOGGER_Players;
			
			NG23_SERVER_SIDE_SCORE_LOGGER_Players set [_select, [ name _unit, side _unit, score _unit,false]];
		};
	} forEach playableunits;
	sleep 5;
}