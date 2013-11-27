/*  Key to open the menu  */ _OpenMenuKey = 0x3C;    /* google DIK_KeyCodes (0x3C is F2) */
/*  AdminPassword         */ _AdminPassword = "1234";

/*  Mod OverWatch ?       */ _MOW = false;   /* true or false */
/*  Mod EPOCH ?           */ _MEH =  true;   /* true or false */

/*  LOW ADMIN HERE        */ _LowLevel_List = 	[];	//do not have a , at the end.
/*  NORMAL ADMIN HERE     */ _NormalLevel_List =[];	//do not have a , at the end.
/*  SUPER ADMIN HERE      */ _SuperLevel_List = [];	//do not have a , at the end.
/*  BANNED PLAYER HERE    */ _BLOCKED = [];	//do not have a , at the end.

/*  Top esc menu TXT      */ _TopOfESC = 'Welcome!';
/*  Bottom esc menu TXT   */ _LowerTop = 'DayZ Epoch Server';
/*  Bottom esc menu TXT2  */ _LowerBottom = 'by GermanDayZ.de';
/*  Color esc menu TXT    */// _EscColor = [0,0.6,1,1];
/*  Color esc menu TXT    */ _EscColor = [1,1,1,1];

/*  DebugMonitor TXT      */ _BottomDebug = 'GermanDayZ.de';
/*  DebugMonitor Key      */ _ODK =  0xCF;	/* google DIK_KeyCodes (0xCF is END) */
/*  Use DebugMonitor      */ _DMS =  true;	/* true or false */	/* starts up with debugmonitor ON if true */
/*  DebugMonitor Action   */ _DMW = false;	/* true or false */	/* "Debug" option on mousewheel */
/*  DebugMonitor ITEM     */ _DBI = false;	/* item or false */	/* _DBI = 'your item choice'; */

/*  BLOCK ALL CMDMenus    */ _BCM =  true;   /* true or false */	/* we don't need commandingMenus. */
/*  Check Actions ?       */ _CSA =  true;   /* true or false */	/* tested mods: DayZ/Epoch/OverWatch */
/*  Use AUTOBAN HACKER    */ _UAB =  true;   /* true or false */	/* recommended to use - we always used this. */
/*  Use FileScan ?        */ _UFS =  true;   /* true or false */	/* spams the rpt but often finds hackers */
/*  Use _AdminPassword ?  */ _APW = false;   /* true or false */	/* admins need to insert a password on load in */
/*  Use cut-scene ?       */ _UCS =  true;   /* true or false */	/* dynamicText ~ often colored, animated or used in credits */
/*  Use SafeZones ?       */ _USZ =  true;   /* true or false */	/* if you have a zone where people get godmode/anti zombie aggro */
/*  Forbid VON Sidechat   */ _VON = true;   /* true or false */	/* talking on sidechat will put out a warning and kick if continue */
/*  Use vehicle check?    */ _UVC = false;   /* true or false */	/* using _ALLOWED_Vehicles and _FORBIDDEN_Vehicles lists */
/*  Vehicle WHITELIST     */ _UVW = false;   /* true or false */	/* if false - _ALLOWED_Vehicles won't not be used */

/*  ALLOWED  Vehicles     */ _ALLOWED_Vehicles = 
[
	'ALL IF _UVW = false','Tractor','Policecar'
];
/*  FORBIDDEN Vehicles    */ _FORBIDDEN_Vehicles = 
[
	'A10','AH1Z','AH64D'
];
/*  ALLOWED CMDMenus      */ _cMenu = 
[
	'','RscMainMenu','RscMoveHigh','#WATCH','#WATCH0',
	'RscWatchDir','RscDisplayClassSelecter','RscDisplayGenderSelect',
	'RscDisplaySpawnSelecter','RscWatchMoreDir','#GETIN','RscStatus',
	'RscCombatMode','RscFormations','RscTeam','RscSelectTeam','RscReply',
	'RscCallSupport','#ACTION','#CUSTOM_RADIO','RscRadio','RscGroupRootMenu'
];
/*  FORBIDDEN Weapons     */ _ForbiddenWeapons = 
[
	'BAF_AS50_scoped','BAF_AS50_TWS','BAF_AS50_scoped_Large','BAF_AS50_TWS_Large',
	'PMC_AS50_scoped','PMC_AS50_TWS'
];