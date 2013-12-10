//Weapons Cache by lazyink (Full credit for original code to TheSzerdi & TAW_Tonic)

private ["_coords","_MainMarker","_wait"];
[] execVM "\z\addons\dayz_server\Missions\SMGoMajor.sqf";
WaitUntil {MissionGo == 1};

_coords = [getMarkerPos "center",0,5500,100,0,20,0] call BIS_fnc_findSafePos;

//Mission start
[nil,nil,rTitleText,"MJ 1 [VERY HARD]: Bandits have discovered a weapons cache! Check your map for the location!", "PLAIN",10] call RE;
[nil,nil,rGlobalRadio,"MJ 1 [VERY HARD]: Bandits have discovered a weapons cache! Check your map for the location!"] call RE;
[nil,nil,rHINT,"MJ 1 [VERY HARD]: Bandits have discovered a weapons cache! Check your map for the location!"] call RE;

Ccoords = _coords;
publicVariable "Ccoords";
[] execVM "germandayz\missions\addmarkers.sqf";

_hummer = createVehicle ["UAZ_Unarmed_UN_EP1",[(_coords select 0) + 10, (_coords select 1) - 20,0],[], 0, "CAN_COLLIDE"];
_hummer1 = createVehicle ["UAZ_Unarmed_UN_EP1",[(_coords select 0) + 20, (_coords select 1) - 10,0],[], 0, "CAN_COLLIDE"];
_hummer2 = createVehicle ["SUV_DZ",[(_coords select 0) + 30, (_coords select 1) + 10,10],[], 0, "CAN_COLLIDE"];

_hummer setVariable ["Sarge",1,true];
_hummer setvehiclelock "LOCKED";
_hummer1 setVariable ["Sarge",1,true];
_hummer1 setvehiclelock "LOCKED";
_hummer2 setVariable ["Sarge",1,true];
_hummer2 setvehiclelock "LOCKED";

_crate = createVehicle ["USVehicleBox",_coords,[], 0, "CAN_COLLIDE"];
[_crate] execVM "\z\addons\dayz_server\missions\misc\fillBoxes.sqf";

_crate setVariable ["Sarge",1,true];
/*
_aispawn = [_coords,80,6,6,1] execVM "\z\addons\dayz_server\missions\add_unit_server.sqf";//AI Guards
sleep 5;
_aispawn = [_coords,80,6,6,1] execVM "\z\addons\dayz_server\missions\add_unit_server.sqf";//AI Guards
sleep 5;
_aispawn = [_coords,40,4,4,1] execVM "\z\addons\dayz_server\missions\add_unit_server.sqf";//AI Guards
sleep 5;
_aispawn = [_coords,40,4,4,1] execVM "\z\addons\dayz_server\missions\add_unit_server.sqf";//AI Guards
sleep 5;
*/
    // SARGE AI
    _ai_marker = createMarker ["SAR_marker_major", _coords];
    _ai_marker setMarkerShape "RECTANGLE";
    _ai_marker setMarkeralpha 0;
    _ai_marker setMarkerType "Flag";
    _ai_marker setMarkerBrush "Solid";
    _ai_marker setMarkerSize [100,100];
    SAR_marker_major = _ai_marker;
    diag_log("Mission-DEBUG - MISSION AI MARKER DONE");
sleep 1;
    [SAR_marker_major,3,3,6,"fortify",false] call SAR_AI; //a,b,c,"fortify",false - a = 1 military, 2 survivor, 3 bandit - b = number of snipers - c = number of riflemen - fortify, ambush, patrol - respawn true/false, ,30, - time in seconds for respawn
	// SARGE END
	diag_log("Mission-DEBUG - SPAWNED MISSION SARGE AI");
	
waitUntil{{isPlayer _x && _x distance _crate < 5  } count playableunits > 0}; 

//Mission accomplished
[nil,nil,rTitleText,"The weapons cache is under survivor control!", "PLAIN",6] call RE;
[nil,nil,rGlobalRadio,"The weapons cache is under survivor control!"] call RE;
[nil,nil,rHINT,"The weapons cache is under survivor control!"] call RE;

_hummer setDamage 1;
_hummer1 setDamage 1;
_hummer2 setDamage 1;

deleteMarker "SAR_marker_major";

[] execVM "germandayz\missions\remmarkers.sqf";
MissionGo = 0;
Ccoords = 0;
publicVariable "Ccoords";

SM1 = 1;
[0] execVM "\z\addons\dayz_server\missions\major\SMfinder.sqf";
