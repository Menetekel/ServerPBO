//Medical C-130 Crash by lazyink (Full credit for original code to TheSzerdi & TAW_Tonic)

private ["_coords","_MainMarker","_wait"];
[] execVM "\z\addons\dayz_server\Missions\SMGoMajor.sqf";
WaitUntil {MissionGo == 1};

_coords = [getMarkerPos "center",0,5600,100,0,20,0] call BIS_fnc_findSafePos;

//Mission start
[nil,nil,rTitleText,"MJ2: A C-130 carrying medical supplies has crashed and bandits are securing the site! Check your map for the location!", "PLAIN",10] call RE;
[nil,nil,rGlobalRadio,"MJ2: A C-130 carrying medical supplies has crashed and bandits are securing the site! Check your map for the location!"] call RE;
[nil,nil,rHINT,"MJ2: A C-130 carrying medical supplies has crashed and bandits are securing the site! Check your map for the location!"] call RE;

Ccoords = _coords;
publicVariable "Ccoords";
[] execVM "germandayz\missions\addmarkers.sqf";

_c130wreck = createVehicle ["C130J_wreck_EP1",[(_coords select 0) + 30, (_coords select 1) - 5,0],[], 0, "NONE"];
_hummer = createVehicle ["HMMWV_DZ",[(_coords select 0) - 20, (_coords select 1) - 5,0],[], 0, "CAN_COLLIDE"];
_hummer1 = createVehicle ["UAZ_Unarmed_UN_EP1",[(_coords select 0) - 30, (_coords select 1) - 10,0],[], 0, "CAN_COLLIDE"];
_hummer2 = createVehicle ["SUV_DZ",[(_coords select 0) + 10, (_coords select 1) + 5,0],[], 0, "CAN_COLLIDE"];

_c130wreck setVariable ["Sarge",1,true];
_c130wreck setvehiclelock "locked";
_hummer setVariable ["Sarge",1,true];
_hummer setvehiclelock "locked";
_hummer1 setVariable ["Sarge",1,true];
_hummer1 setvehiclelock "locked";
_hummer2 setVariable ["Sarge",1,true];
_hummer2 setvehiclelock "locked";

_crate = createVehicle ["USVehicleBox",[(_coords select 0) - 10, _coords select 1,0],[], 0, "CAN_COLLIDE"];
[_crate] execVM "\z\addons\dayz_server\missions\misc\fillBoxesM.sqf";

_crate setVariable ["Sarge",1,true];

_crate2 = createVehicle ["USLaunchersBox",[(_coords select 0) - 6, _coords select 1,0],[], 0, "CAN_COLLIDE"];
[_crate2] execVM "\z\addons\dayz_server\missions\misc\fillBoxesS.sqf";
_crate2 setVariable ["Sarge",1,true];

_aispawn = [[(_coords select 0) + 20, _coords select 1,0],80,6,6,1] execVM "\z\addons\dayz_server\missions\add_unit_server.sqf";//AI Guards
sleep 5;
_aispawn = [[(_coords select 0) + 30, _coords select 1,0],80,6,6,1] execVM "\z\addons\dayz_server\missions\add_unit_server.sqf";//AI Guards
sleep 5;
_aispawn = [[(_coords select 0) + 20, _coords select 1,0],40,4,4,1] execVM "\z\addons\dayz_server\missions\add_unit_server.sqf";//AI Guards
sleep 5;
_aispawn = [[(_coords select 0) + 30, _coords select 1,0],40,4,4,1] execVM "\z\addons\dayz_server\missions\add_unit_server.sqf";//AI Guards

waitUntil{{isPlayer _x && _x distance _c130wreck < 25 } count playableunits > 0}; 

[] execVM "germandayz\missions\remmarkers.sqf";
MissionGo = 0;
Ccoords = 0;
publicVariable "Ccoords";

//Mission accomplished
[nil,nil,rTitleText,"The crash site has been secured by survivors! The vehicles have been booby trapped - watch out!", "PLAIN",6] call RE;
[nil,nil,rGlobalRadio,"The crash site has been secured by survivors! The vehicles have been booby trapped - watch out!"] call RE;
[nil,nil,rHINT,"The crash site has been secured by survivors! The vehicles have been booby trapped - watch out!"] call RE;
sleep 5;
_c130wreck setDamage 1;
_hummer setDamage 1;
_hummer1 setDamage 1;
_hummer2 setDamage 1;

SM1 = 1;


[0] execVM "\z\addons\dayz_server\missions\major\SMfinder.sqf";