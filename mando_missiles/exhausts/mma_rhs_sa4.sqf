_mis = _this select 0;

if (isDedicated) exitWith {};


_mis say3D "2p24_sounds";

_exhaustlight = "#lightpoint" createVehicleLocal [0,0,0];
_exhaustlight setLightColor [0.7,0.8,1];

_exhaustlight setLightAmbient [0.7,0.8,1];
_exhaustlight setLightBrightness 0.2;
_exhaustlight LightAttachObject [_mis,[0,-2,0]];



_vol = 1.0;
_wei = 1.27;

_smoketrails = [];
for [{_i=0},{_i<4},{_i=_i+1}] do
{
	_smoketrails =  _smoketrails + ["#particlesource" createVehicleLocal getPos _mis];
	(_smoketrails select _i) setParticleParams [["\Ca\Data\ParticleEffects\Universal\Universal.p3d", 16, 3, 64, 1],"","Billboard",100,0.5,[0,0,0],[0,0,0],0,_wei,_vol,0.05,[1,2,1.5,0.5],[[0,0,1,0],[0,0,1,0.3],[0,0,1,0.2],[0,0,1,0.1]],[0],0,0,"","",_mis];
	(_smoketrails select _i) setDropInterval 0.002;
};
_whitetrail = "#particlesource" createVehicleLocal getPos _mis;
_whitetrail setParticleParams [["\Ca\Data\ParticleEffects\Universal\Universal.p3d", 16, 7, 48, 1],"","Billboard",100,2,[0,0,0],[0,0,0],0,_wei,_vol,0.05,[2,3,6,8],[[1,1,1,1],[1,1,1,1],[1,1,1,1],[1,1,1,0]],[0.5],1,1,"","",_mis];
_whitetrail setDropInterval 0.005;
	
_posr = [[-10,-20,10],[-10,-20,-10],[10,-20,10],[10,-20,-10]];
while {(alive _mis) && (speed _mis < 1000)} do
{	
	for [{_i=0},{_i<4},{_i=_i+1}] do
	{
		(_smoketrails select _i) setPos getPos _mis;
		_posi = _mis modelToWorld [0,0,0];		
		_pos = _mis modelToWorld (_posr select _i);
		_vel = [(_pos select 0)-(_posi select 0), (_pos select 1)-(_posi select 1),(_pos select 2)-(_posi select 2)];
		(_smoketrails select _i) setParticleParams [["\Ca\Data\ParticleEffects\Universal\Universal.p3d", 16, 3, 64, 1],"","Billboard",100,0.5,[0,0,0],_vel,0,_wei,_vol,0.05,[1,2,1.5,0.5],[[0,0,1,0.1],[1,1,1,0.2],[1,1,1,0.2],[1,1,1,0.1]],[0.5],0,0,"","",_mis];
	};
		_whitetrail setPos getPos _mis;
		_posi = _mis modelToWorld [0,0,0];		
		_pos = _mis modelToWorld [0,-20,0];
		_vel = [(_pos select 0)-(_posi select 0), (_pos select 1)-(_posi select 1),(_pos select 2)-(_posi select 2)];
		_whitetrail setParticleParams [["\Ca\Data\ParticleEffects\Universal\Universal.p3d", 16, 7, 48, 1],"","Billboard",100,4,[0,0,0],_vel,0,_wei,_vol,0.5,[2,3,6,8],[[1,1,1,1],[1,1,1,1],[1,1,1,1],[1,1,1,0]],[0.5],0.5,2,"","",_mis];		
	
   Sleep 0.01;
};
deleteVehicle (_smoketrails select 0);
deleteVehicle (_smoketrails select 1);
deleteVehicle (_smoketrails select 2);
deleteVehicle (_smoketrails select 3);
_whitetrail setParticleParams ["\ca\data\missileSmoke","","Billboard",100,4,[0,0,0],[0,0,0],0,_wei,_vol,0.1,[2,3,6,8],[[1,1,1,0.5],[1,1,1,0.5],[1,1,1,0.5],[1,1,1,0]],[0.5],1,1,"","",_mis];	
_whitetrail setDropInterval 0.005;
while {alive _mis} do
{
	_whitetrail setPos getPos _mis;
   Sleep 0.1;
};


deleteVehicle _whitetrail;
deleteVehicle _exhaustlight;