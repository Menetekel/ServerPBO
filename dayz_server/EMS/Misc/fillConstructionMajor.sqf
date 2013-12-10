//Created by TheSzerdi edited by MimiC
_crate = _this select 0;

clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;

// CONSTRUCTION MATERIALS
_crate addMagazineCargoGlobal ["bulk_empty", 5];
_crate addMagazineCargoGlobal ["CinderBlocks", 12];
_crate addMagazineCargoGlobal ["MortarBucket", 6];
_crate addMagazineCargoGlobal ["PartPlywoodPack", 10];
_crate addMagazineCargoGlobal ["PartLumberPack", 10];
_crate addMagazineCargoGlobal ["ItemCanvas", 5];
_crate addMagazineCargoGlobal ["PartGeneric", 8];
_crate addMagazineCargoGlobal ["ItemSandbag", 12];
_crate addMagazineCargoGlobal ["ItemTankTrap", 9];
_crate addMagazineCargoGlobal ["PartWoodPile", 25];

// TOOLS
_crate addWeaponCargoGlobal ["ItemToolbox", 2];
_crate addWeaponCargoGlobal ["ItemEtool", 2];
_crate addWeaponCargoGlobal ["ItemCrowbar", 2];
_crate addWeaponCargoGlobal ["ItemKnife", 2];