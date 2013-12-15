//Created by Falcyn [QF]
//_wait = [2500,1600] call fnc_hTime;  //first entry: random time between missions - 2500 = 41mins - second entry: minimum time before mission starts - 800 = 13mins
_wait = [1800,900] call fnc_hTime;  //first entry: random time between missions - 2500 = 41mins - second entry: minimum time before mission starts - 800 = 13mins
sleep _wait;
MissionGo = 1;