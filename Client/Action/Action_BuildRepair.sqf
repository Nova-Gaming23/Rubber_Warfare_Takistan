if !(playerType in WFBE_SK_V_Engineers) exitwith {ExecVM "Hint\noGenio.sqf"};
[player,player,2,RCoin,getpos player,_this select 0] ExecVM "Client\Module\CoIn\coin_interface.sqf";