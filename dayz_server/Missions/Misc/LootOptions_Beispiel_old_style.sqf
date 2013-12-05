_crate = _this select 0;

clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;

	_num		= round(random 4) + 4;
	
	itemType[] = {{"ItemWatch", "generic"}, {"ItemCompass", "generic"}, {"ItemMap", "weapon"}, {"Makarov", "weapon"}, {"glock17_EP1", "weapon"}, {"Colt1911", "weapon"}, {"ItemFlashlight", "generic"}, {"ItemKnife", "generic"}, {"ItemMatchbox_DZE", "generic"}, {"", "generic"}, {"LeeEnfield", "weapon"}, {"revolver_EP1", "weapon"}, {"backpacks", "backpack"}, {"Winchester1866", "weapon"}, {"tents", "single"}, {"", "military"}, {"", "trash"}, {"Crossbow_DZ", "weapon"}, {"Binocular", "weapon"}, {"PartPlywoodPack", "magazine"}, {"clothes", "single"}, {"specialclothes", "single"}, {"WeaponHolder_MeleeCrowbar", "object"}, {MR43, "weapon"}};
	itemChance[] = {0.04, 0.03, 0.02, 0.05, 0.01, 0.02, 0.01, 0.04, 0.01, 0.36, 0.03, 0.02, 0.04, 0.01, 0.01, 0.02, 0.17, 0.01, 0.02, 0.02, 0.01, 0.01, 0.03, 0.01};
	
	itemTypeSmall[] = {{"ItemSodaMdew", "magazine"}, {"ItemSodaRbull", "magazine"}, {"ItemSodaOrangeSherbet", "magazine"}, {"ItemWatch", "weapon"}, {"ItemCompass", "weapon"}, {"ItemMap", "weapon"}, {"Makarov", "weapon"}, {"glock17_EP1", "weapon"}, {"Colt1911", "weapon"}, {"ItemFlashlight", "weapon"}, {"ItemKnife", "weapon"}, {"ItemMatchbox_DZE", "weapon"}, {"", "generic"}, {"revolver_EP1", "weapon"}, {"", "military"}, {"", "trash"}, {"Binocular", "weapon"}, {"clothes", "single"}, {"specialclothes", "single"}};
	itemChanceSmall[] = {0.01, 0.01, 0.02, 0.05, 0.04, 0.03, 0.05, 0.02, 0.03, 0.02, 0.04, 0.03, 0.38, 0.02, 0.04, 0.17, 0.02, 0.01, 0.01};
	

