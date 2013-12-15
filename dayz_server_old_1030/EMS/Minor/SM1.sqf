//Bandit Hunting Party by lazyink (Full credit to TheSzerdi & TAW_Tonic for the code)

private ["_coords","_wait","_MainMarker75"];
[] execVM "\z\addons\dayz_server\Missions\SMGoMinor.sqf";
WaitUntil {MissionGoMinor == 1};

_coords = [getMarkerPos "center",0,5500,2,0,2000,0] call BIS_fnc_findSafePos;

//Mission start
[nil,nil,rTitleText,"A bandit hunting party has been spotted! Check your map for the location!", "PLAIN",10] call RE;
[nil,nil,rGlobalRadio,"A bandit hunting party has been spotted! Check your map for the location!"] call RE;
[nil,nil,rHINT,"A bandit hunting party has been spotted! Check your map for the location!"] call RE;


MCoords = _coords;
publicVariable "MCoords";
[] execVM "germandayz\missions\addmarkers75.sqf";

_hummer = createVehicle ["UAZ_Unarmed_UN_EP1",[(_coords select 0) + 10, (_coords select 1) - 5,0],[], 0, "CAN_COLLIDE"];
_hummer setVariable ["Sarge",1,true];
_hummer setVehicleLock "LOCKED";
/*
[_coords,80,4,2,1] execVM "\z\addons\dayz_server\missions\add_unit_server2.sqf";//AI Guards
sleep 5;
[_coords,80,4,2,1] execVM "\z\addons\dayz_server\missions\add_unit_server2.sqf";//AI Guards
sleep 5;
[_coords,80,4,2,1] execVM "\z\addons\dayz_server\missions\add_unit_server2.sqf";//AI Guards
sleep 1;
*/
     // SARGE AI
    _ai_marker = createMarker ["SAR_marker_minor", _coords];
    _ai_marker setMarkerShape "RECTANGLE";
    _ai_marker setMarkeralpha 0;
    _ai_marker setMarkerType "Flag";
    _ai_marker setMarkerBrush "Solid";
    _ai_marker setMarkerSize [100,100];
    SAR_marker_minor = _ai_marker;
    diag_log("Mission-DEBUG - MISSION AI MARKER DONE");
sleep 1;
    [SAR_marker_minor,3,2,4,"fortify",false] call SAR_AI; //a,b,c,"fortify",false - a = 1 military, 2 survivor, 3 bandit - b = number of snipers - c = number of riflemen - fortify, ambush, patrol - respawn true/false, ,30, - time in seconds for respawn
	// SARGE END
	diag_log("Mission-DEBUG - SPAWNED MISSION SARGE AI");

waitUntil{{isPlayer _x && _x distance _hummer < 5  } count playableunits > 0}; 	
//waitUntil{({alive _x} count (units SniperTeam)) < 1};

//Mission accomplished
[nil,nil,rTitleText,"The hunting party has been wiped out! But wait.... the car has been wired! RUN!", "PLAIN",6] call RE;
[nil,nil,rGlobalRadio,"The hunting party has been wiped out! But wait.... the car has been wired! RUN!"] call RE;
[nil,nil,rHINT,"The hunting party has been wiped out! But wait.... the car has been wired! RUN!"] call RE;
sleep 3;
_hummer setDamage 1;

deleteMarker "SAR_marker_minor";

[] execVM "germandayz\missions\remmarkers75.sqf";
MissionGoMinor = 0;
MCoords = 0;
publicVariable "MCoords";

SM1 = 1;
[0] execVM "\z\addons\dayz_server\missions\minor\SMfinder.sqf";