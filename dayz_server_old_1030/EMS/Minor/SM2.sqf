//Medical Outpost by lazyink (Full credit for code to TheSzerdi & TAW_Tonic)

private ["_coords","_wait","_MainMarker75"];
[] execVM "\z\addons\dayz_server\Missions\SMGoMinor.sqf";
WaitUntil {MissionGoMinor == 1};

_coords =  [getMarkerPos "center",0,5500,10,0,20,0] call BIS_fnc_findSafePos;

//Mission start
[nil,nil,rTitleText,"MJ2 [HARD]: Team GermanDayZ.de has taken over an Outpost! Check your map for the location!", "PLAIN",10] call RE;
[nil,nil,rGlobalRadio,"MJ2 [HARD]: Team GermanDayZ.de has taken over an Outpost! Check your map for the location!"] call RE;
[nil,nil,rHINT,"MJ2 [HARD]: Team GermanDayZ.de has taken over an Outpost! Check your map for the location!"] call RE;


MCoords = _coords;
publicVariable "MCoords";
[] execVM "germandayz\missions\addmarkers75.sqf";

_baserunover = createVehicle ["US_WarfareBFieldhHospital_Base_EP1",[(_coords select 0) +2, (_coords select 1)+5,-0.3],[], 0, "CAN_COLLIDE"];
_baserunover1 = createVehicle ["MASH_EP1",[(_coords select 0) - 24, (_coords select 1) - 5,0],[], 0, "CAN_COLLIDE"];
_baserunover2 = createVehicle ["MASH_EP1",[(_coords select 0) - 17, (_coords select 1) - 5,0],[], 0, "CAN_COLLIDE"];
_baserunover3 = createVehicle ["MASH_EP1",[(_coords select 0) - 10, (_coords select 1) - 5,0],[], 0, "CAN_COLLIDE"];
_baserunover4 = createVehicle ["UAZ_Unarmed_UN_EP1",[(_coords select 0) + 10, (_coords select 1) - 5,0],[], 0, "CAN_COLLIDE"];
_baserunover5 = createVehicle ["HMMWV_DZ",[(_coords select 0) + 15, (_coords select 1) - 5,0],[], 0, "CAN_COLLIDE"];
_baserunover6 = createVehicle ["SUV_DZ",[(_coords select 0) + 25, (_coords select 1) - 15,0],[], 0, "CAN_COLLIDE"];

_baserunover setVariable ["Sarge",1,true];
_baserunover1 setVariable ["Sarge",1,true];
_baserunover2 setVariable ["Sarge",1,true];
_baserunover3 setVariable ["Sarge",1,true];
_baserunover4 setVariable ["Sarge",1,true];
_baserunover4 setvehiclelock "LOCKED";
_baserunover5 setVariable ["Sarge",1,true];
_baserunover5 setvehiclelock "LOCKED";
_baserunover6 setVariable ["Sarge",1,true];
_baserunover6 setvehiclelock "LOCKED";


_crate = createVehicle ["USVehicleBox",[(_coords select 0) - 3, _coords select 1,0],[], 0, "CAN_COLLIDE"];
[_crate] execVM "\z\addons\dayz_server\missions\misc\fillBoxesM.sqf";
_crate setVariable ["Sarge",1,true];

_crate2 = createVehicle ["USLaunchersBox",[(_coords select 0) - 8, _coords select 1,0],[], 0, "CAN_COLLIDE"];
[_crate2] execVM "\z\addons\dayz_server\missions\misc\fillBoxesS.sqf";
_crate2 setVariable ["Sarge",1,true];

/*
[[(_coords select 0) - 20, (_coords select 1) - 15,0],40,4,2,0] execVM "\z\addons\dayz_server\missions\add_unit_server2.sqf";//AI Guards
sleep 3;
[[(_coords select 0) + 10, (_coords select 1) + 15,0],40,4,2,0] execVM "\z\addons\dayz_server\missions\add_unit_server2.sqf";//AI Guards
sleep 3;
[[(_coords select 0) - 10, (_coords select 1) - 15,0],40,4,2,0] execVM "\z\addons\dayz_server\missions\add_unit_server2.sqf";//AI Guards
sleep 3;
[[(_coords select 0) + 20, (_coords select 1) + 15,0],40,4,2,0] execVM "\z\addons\dayz_server\missions\add_unit_server2.sqf";//AI Guards
sleep 3;
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
    [SAR_marker_major,3,5,7,"fortify",false] call SAR_AI; //a,b,c,"fortify",false - a = 1 military, 2 survivor, 3 bandit - b = number of snipers - c = number of riflemen - fortify, ambush, patrol - respawn true/false, ,30, - time in seconds for respawn
	// SARGE END
	diag_log("Mission-DEBUG - SPAWNED MISSION SARGE AI");

waitUntil{{isPlayer _x && _x distance _baserunover < 5  } count playableunits > 0}; 

//Mission accomplished
[nil,nil,rTitleText,"The outpost is under survivor control!", "PLAIN",6] call RE;
[nil,nil,rGlobalRadio,"The outpost is under survivor control!"] call RE;
[nil,nil,rHINT,"The outpost is under survivor control!"] call RE;

deleteMarker "SAR_marker_major";
[] execVM "germandayz\missions\remmarkers75.sqf";
MissionGoMinor = 0;
MCoords = 0;
publicVariable "MCoords";



SM1 = 1;
[0] execVM "\z\addons\dayz_server\missions\minor\SMfinder.sqf";
