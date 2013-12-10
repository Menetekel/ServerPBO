_crate = _this select 0;

clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;

x=floor(random 4);    //Random Auswahl zwischen 0-4

if (x == 0) then {
				_crate addWeaponCargoGlobal ["ItemToolbox", 2];
				_crate addWeaponCargoGlobal ["ItemKeyKit", 2];
				_crate addWeaponCargoGlobal ["glock17_EP1", 2];
				_crate addMagazineCargoGlobal ["ItemLightBulb", 3];
				_crate addMagazineCargoGlobal ["PartGeneric", 2];
				_crate addMagazineCargoGlobal ["ItemGenerator", 1];
				_crate addMagazineCargoGlobal ["ItemFuelBarrel", 2];
			};

if (x == 1) then {
				_crate addWeaponCargoGlobal ["M14_EP1", 2];
				_crate addWeaponCargoGlobal ["FN_FAL_ANPVS4", 2];
				_crate addWeaponCargoGlobal ["M4SPR", 1];
				_crate addMagazineCargoGlobal ["PartPlankPack", 2];
				_crate addMagazineCargoGlobal ["30Rnd_556x45_Stanag", 3];
				_crate addMagazineCargoGlobal ["20Rnd_762x51_DMR", 4];
				_crate addMagazineCargoGlobal ["ItemTankTrap", 1];
				_crate addMagazineCargoGlobal ["ItemWire", 2];
			};
if (x == 2) then {
				_crate addMagazineCargoGlobal ["ItemComboLock", 2];
				_crate addMagazineCargoGlobal ["ItemWoodWallLg", 5];
				_crate addMagazineCargoGlobal ["ItemCorrugated", 3];
				_crate addMagazineCargoGlobal ["PartGlass", 4];
				_crate addMagazineCargoGlobal ["ItemLightBulb", 1];
				_crate addMagazineCargoGlobal ["ItemPole", 4];
				_crate addMagazineCargoGlobal ["CinderBlocks", 12];
				_crate addMagazineCargoGlobal ["MortarBucket", 4];
			};
if (x == 3) then {
				_crate addWeaponCargoGlobal ["M4SPR", 1];
				_crate addWeaponCargoGlobal ["M4A1_HWS_GL_SD_Camo", 1];
				_crate addBackpackCargoGlobal ['DZ_Backpack_EP1', 1];
			};
