//Created by axeman Edited by TheSzerdi
private ["_aiunit","_xpos","_ypos","_unitpos","_aiGroup","_wppos","_wpradius","_wpnum","_levelnum","_numunits","_rndLOut","_ailoadout","_wp","_aispawnpos","_aiwep1","_aiammo1","_aiwep2","_aiammo2"];
 
    _aiunit = objNull;
    _aiGroup = createGroup EAST;
    _aispawnpos =_this select 0;
    _wpradius = _this select 1;
    _wpnum = _this select 2;
    _numunits = _this select 3;
    _levelnum = _this select 4;
 
    _xpos = _aispawnpos select 0;
    _ypos = _aispawnpos select 1;
 
    diag_log format ["AIUNIT: Spawn initiated: Centre:%1 | Radius in m:%2 | Waypoint number:%3 | WeaponLevel:%4",_aispawnpos,_wpradius,_wpnum,_levelnum];
 
    for [{ x=1 },{ x < _numunits+1 },{ x = x + 1; }] do
    {
        _unitpos = [_xpos+x,_ypos+x,0];
 
        if (_levelnum==0) then // in_sityes troops
        {
            if ((x == 1) || (x == 3) || (x == 5)) then //troop soldiers
            {
                "Bandit1_DZ" createUnit [_unitpos, _aiGroup, "_aiunit=this;",1,"PRIVATE"];
                _rndLOut=floor(random 4);
                _ailoadout=
                switch (_rndLOut) do
                {
                  case 0: {["M1014","8Rnd_B_Beneli_74Slug","revolver_EP1","6Rnd_45ACP"]};
                  case 1: {["M1014","8Rnd_B_Beneli_Pellets","revolver_EP1","6Rnd_45ACP"]};
                  case 2: {["Remington870_lamp","8Rnd_B_Beneli_74Slug","Colt1911","7Rnd_45ACP_1911"]};
                  case 3: {["Remington870_lamp","8Rnd_B_Beneli_Pellets","Colt1911","7Rnd_45ACP_1911"]};
                };
            };
            if ((x == 2) || (x == 4) || (x >= 6)) then //troops snipers
            {
                "Bandit1_DZ" createUnit [_unitpos, _aiGroup, "_aiunit=this;",1,"PRIVATE"];
                _rndLOut=floor(random 3);
                _ailoadout=
                switch (_rndLOut) do
                {
                  case 0: {["LeeEnfield","10x_303","Makarov","17Rnd_9x19_glock17"]};
                  case 1: {["Huntingrifle","5x_22_LR_17_HMR","Makarov","17Rnd_9x19_glock17"]};
                  case 2: {["M14_EP1","20Rnd_762x51_DMR","Makarov","17Rnd_9x19_glock17"]};
                };
            };
        };
        if (_levelnum==1) then //in_military troops
        {
            if (x == 1) then //one troops comander
            {
                "Bandit1_DZ" createUnit [_unitpos, _aiGroup, "_aiunit=this;",1,"LIEUTENANT"];
                _rndLOut=floor(random 7);
                _ailoadout=
                switch (_rndLOut) do
                {
                  case 0: {["AK_47_M","30Rnd_762x39_AK47","glock17_EP1","17Rnd_9x19_glock17"]};
                  case 1: {["M4A1_RCO_GL","30Rnd_762x39_AK47","glock17_EP1","15Rnd_9x19_M9SD"]};
                  case 2: {["Sa58P_EP1","30Rnd_762x39_SA58","glock17_EP1","17Rnd_9x19_glock17"]};
                  case 3: {["Sa58V_CCO_EP1","30Rnd_762x39_SA58","glock17_EP1","15Rnd_9x19_M9SD"]};
                  case 4: {["Sa58V_EP1","30Rnd_762x39_SA58","glock17_EP1","17Rnd_9x19_glock17"]};
                  case 5: {["M4SPR","30Rnd_556x45_Stanag","glock17_EP1","15Rnd_9x19_M9SD"]};
                  case 6: {["M4A1_HWS_GL_SD_Camo","30Rnd_556x45_StanagSD","glock17_EP1","17Rnd_9x19_glock17"]};
                };
            };
            if ((x == 2) || (x == 3)) then //troops sergeant
            {
                "Bandit1_DZ" createUnit [_unitpos, _aiGroup, "_aiunit=this;",1,"SERGEANT"];
                _rndLOut=floor(random 4);
                _ailoadout=
                switch (_rndLOut) do
                {
                  case 0: {["LeeEnfield","10x_303","glock17_EP1","17Rnd_9x19_glock17"]};
                  case 1: {["RPK_74","75Rnd_545x39_RPK","M9","15Rnd_9x19_M9"]};
                  case 2: {["AK_47_M","30Rnd_762x39_AK47","glock17_EP1","17Rnd_9x19_glock17"]};
                  case 3: {["M4SPR","30Rnd_556x45_Stanag","glock17_EP1","17Rnd_9x19_glock17"]};
                };
            };
            if (x > 3) then //troops soldiers
            {
                "Ins_Soldier_1" createUnit [_unitpos, _aiGroup, "_aiunit=this;",1,"CORPORAL"];
         
                _rndLOut=floor(random 5);
                _ailoadout=
                switch (_rndLOut) do
                {
                  case 0: {["AK_47_M","30Rnd_762x39_AK47","glock17_EP1","17Rnd_9x19_glock17"]};
                  case 1: {["M4SPR","30Rnd_556x45_Stanag","glock17_EP1","17Rnd_9x19_glock17"]};
                  case 2: {["LeeEnfield","10x_303","glock17_EP1","17Rnd_9x19_glock17"]};
                  case 3: {["SVD","10Rnd_762x54_SVD","glock17_EP1","17Rnd_9x19_glock17"]};
			      case 4: {["AK_107_pso","30Rnd_545x39_AK","M9","15Rnd_9x19_M9"]};
                };
            };
        };
        diag_log format ["AIUNIT: Creating Ins_Soldier_1 by %1 at %2. Result:%3 | Loadout:%4 / Num:%5",player,_unitpos,_aiunit,_ailoadout,_rndLOut];
 
        _aiunit enableAI "TARGET";
        _aiunit enableAI "AUTOTARGET";
        _aiunit enableAI "MOVE";
        _aiunit enableAI "ANIM";
        _aiunit enableAI "FSM";
        _aiunit allowDamage true;
  	
		_aiunit addEventHandler ['killed',{_this execVM "\z\addons\dayz_server\Missions\bodyclean.sqf"}]; //Body disappear time
 
        _aiunit setCombatMode "RED";
        _aiunit setBehaviour "COMBAT";
 
        //clear default weapons / ammo
        removeAllWeapons _aiunit;
        //add random selection
        _aiwep1 = _ailoadout select 0;
        _aiammo1 = _ailoadout select 1;
        _aiwep2 = _ailoadout select 2;
        _aiammo2 = _ailoadout select 3;
        _aiunit addweapon _aiwep1;
        _aiunit addMagazine _aiammo1;
        _aiunit addMagazine _aiammo1;
        _aiunit addMagazine _aiammo1;
        _aiunit addweapon _aiwep2;
        _aiunit addMagazine _aiammo2;
        _aiunit addMagazine _aiammo2;
		_aiunit removeWeapon "ItemRadio","NVGoggles";
      //add some garbage
        if (x == 1) then {
        _aiunit addMagazine "SmokeShellGreen";
        _aiunit addMagazine "HandGrenade_West";
        _aiunit addMagazine "FoodCanBakedBeans";
        _aiunit addMagazine "ItemSodaCoke";
        _aiunit addMagazine "ItemPainkiller";
        _aiunit addMagazine "ItemHeatPack";
        _aiunit addMagazine "ItemEpinephrine";
        _aiunit addMagazine "ItemMorphine";
        };
        if (x == 2) then {
        _aiunit addMagazine "ItemHeatPack";
        _aiunit addMagazine "ItemPainkiller";
        _aiunit addMagazine "ItemEpinephrine";
        _aiunit addMagazine "ItemMorphine";
        };
        if (x >= 3) then {
        _aiunit addMagazine "ItemHeatPack";
        _aiunit addMagazine "ItemBandage";
        };
        //set skills
        _aiunit setSkill ["aimingAccuracy",1.0];
        _aiunit setSkill ["aimingShake",1.0];
        _aiunit setSkill ["aimingSpeed",1.0];
        _aiunit setSkill ["endurance",1.0];
        _aiunit setSkill ["spotDistance",1.0];
        _aiunit setSkill ["spotTime",1.0];
        _aiunit setSkill ["courage",1.0];
        _aiunit setSkill ["reloadSpeed",1.0];
        _aiunit setSkill ["commanding",1.0];
        _aiunit setSkill ["general",1.0];
        //sleep 0.5;
    };
    //generate waypoints
    for [{ x=1 },{ x < _wpnum },{ x = x + 1; }] do {
    _wppos = [_xpos+(x*20),_ypos+(x*20),_wpradius];
    _wp = _aiGroup addWaypoint [_wppos, _wpradius];
    _wp setWaypointType "MOVE";
    };
    _wp = _aiGroup addWaypoint [[_xpos,_ypos,0], _wpradius];
    _wp setWaypointType "CYCLE";
 
    diag_log format ["AIUNIT: Last Waypoint %1 at %2",_wp,_wppos];
