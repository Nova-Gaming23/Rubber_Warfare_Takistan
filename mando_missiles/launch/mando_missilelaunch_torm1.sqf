// mando missile launch FX example
// mando_missilelaunch_torm1.sqf v1.0
// Sep 2009 Mandoble
//
// Example of missile launch time FX 
//
//
private ["_mis"];
_mis = _this select 0;

_water = "\ca\data\cl_water";
_dust  = ["\Ca\Data\ParticleEffects\Universal\Universal", 16, 7, 48];
//_trail = "\ca\data\cl_basic";
_trail = "\ca\data\missileSmoke";

Sleep 0.8;
_mis say3D "mando_flares";
drop[_dust,"","Billboard",100,1,[0,-1,0],[0,-10,0],2,1.0,1.27,0.07,[2,3,4,5.5],[[1,1,1,1],[1,1,1,1],[0.8,0.8,0.8,0]],[0,1],0.2,0.2,"","",_mis];
Sleep 0.2;

_i = 0.0;
while {_i < 6} do
{
   _i = _i + 0.05;

   drop[_trail,"","Billboard",100,2,[0,-1,0],[0,-60,0],2,1.0,1.27,0.07,[2,3,4,5.5],[[1,1,1,1],[1,1,1,1],[0.8,0.8,0.8,0]],[0,1],0.2,0.2,"","",_mis];

   Sleep 0.001;
};