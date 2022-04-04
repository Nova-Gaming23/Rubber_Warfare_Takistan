private ['_unit', '_id','_speed','_smoke1','_smoke2', '_smoke3', '_terminate'];

_unit = _this select 0;
_id = _this select 2; // the action's ID.
_speed = [0,0,0] distance (velocity _unit);
_speed = ((_speed * 60) * 60) / 1000;
_terminate = false;

if (_speed >= 10) then
{
_unit removeAction _id;
if (sideJoinedText == "West") then {
_smoke1= "SmokeShellGreen" createVehicle getPos _unit;
_smoke1 attachto [_unit,[-3.5,-2.6,-0.9]];
_smoke1a= "SmokeShellGreen" createVehicle getPos _unit;
_smoke1a attachto [_unit,[-3.4,-2.6,-0.9]];
_smoke1b= "SmokeShellGreen" createVehicle getPos _unit;
_smoke1b attachto [_unit,[-3.45,-2.6,-0.9]];
_smoke1c= "SmokeShellGreen" createVehicle getPos _unit;
_smoke1c attachto [_unit,[-3.5,-2.6,-0.85]];


_smoke2= "SmokeShell" createVehicle getPos _unit;
_smoke2 attachto [_unit,[0,-2.6,-0.9]];
_smoke2a= "SmokeShell" createVehicle getPos _unit;
_smoke2a attachto [_unit,[0.05,-2.6,-0.9]];
_smoke2b= "SmokeShell" createVehicle getPos _unit;
_smoke2b attachto [_unit,[-0.05,-2.6,-0.9]];
_smoke2c= "SmokeShell" createVehicle getPos _unit;
_smoke2c attachto [_unit,[0.1,-2.6,-0.8]];

_smoke3= "SmokeShellRed" createVehicle getPos _unit;
_smoke3 attachto [_unit,[3.5,-2.6,-0.9]];
_smoke3a= "SmokeShellRed" createVehicle getPos _unit;
_smoke3a attachto [_unit,[3.4,-2.6,-0.9]];
_smoke3b= "SmokeShellRed" createVehicle getPos _unit;
_smoke3b attachto [_unit,[3.45,-2.6,-0.9]];
_smoke3c= "SmokeShellRed" createVehicle getPos _unit;
_smoke3c attachto [_unit,[3.5,-2.6,-0.8]];
} Else {
_smoke1= "SmokeShell" createVehicle getPos _unit;
_smoke1 attachto [_unit,[-3.5,-2.6,-0.9]];
_smoke1a= "SmokeShell" createVehicle getPos _unit;
_smoke1a attachto [_unit,[-3.4,-2.6,-0.9]];
_smoke1b= "SmokeShell" createVehicle getPos _unit;
_smoke1b attachto [_unit,[-3.45,-2.6,-0.9]];
_smoke1c= "SmokeShell" createVehicle getPos _unit;
_smoke1c attachto [_unit,[-3.5,-2.6,-0.85]];


_smoke2= "SmokeShellBlue" createVehicle getPos _unit;
_smoke2 attachto [_unit,[0,-2.6,-0.9]];
_smoke2a= "SmokeShellBlue" createVehicle getPos _unit;
_smoke2a attachto [_unit,[0.05,-2.6,-0.9]];
_smoke2b= "SmokeShellBlue" createVehicle getPos _unit;
_smoke2b attachto [_unit,[-0.05,-2.6,-0.9]];
_smoke2c= "SmokeShellBlue" createVehicle getPos _unit;
_smoke2c attachto [_unit,[0.1,-2.6,-0.8]];

_smoke3= "SmokeShellRed" createVehicle getPos _unit;
_smoke3 attachto [_unit,[3.5,-2.6,-0.9]];
_smoke3a= "SmokeShellRed" createVehicle getPos _unit;
_smoke3a attachto [_unit,[3.4,-2.6,-0.9]];
_smoke3b= "SmokeShellRed" createVehicle getPos _unit;
_smoke3b attachto [_unit,[3.45,-2.6,-0.9]];
_smoke3c= "SmokeShellRed" createVehicle getPos _unit;
_smoke3c attachto [_unit,[3.5,-2.6,-0.8]];
};
for "_i" from 1 to 30 do 
{
    sleep 1;
    if (!alive _unit) then {deletevehicle _smoke1; deletevehicle _smoke2; deletevehicle _smoke3;_terminate = true;};
};
if (!_terminate) then {_unit addAction ["Smoke Trail", "Client\Functions\Client_CORERussianPride.sqf", [],1408, false, true, "", "driver _target == _this && alive _target && speed _target > 5"];};
} else {
	hint "You need to be travelling more than 10km/h to do that.";
};