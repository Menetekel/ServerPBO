private ["_loot", "_loot_amount","_crate", "_hint"];

_crate = "RUVehicleBox";
_loot_lists = [
[
["M9SD"],
["15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","ItemSodaCoke","ItemSodaCoke","ItemSodaCoke","ItemSodaCoke","ItemSodaPepsi","ItemSodaPepsi","ItemSodaPepsi","ItemSodaPepsi","FoodCanBakedBeans","FoodCanBakedBeans","FoodCanBakedBeans","FoodCanBakedBeans","FoodCanPasta","FoodCanPasta","FoodCanPasta","FoodCanPasta","FoodCanSardines","FoodCanSardines","FoodCanSardines","FoodCanSardines","FoodMRE","FoodMRE","FoodMRE","FoodMRE","FoodMRE"]
],
[
["M9SD"],
["15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","ItemSodaRbull","ItemSodaR4z0r","ItemSodaRbull","ItemSodaR4z0r","ItemSodaRbull","ItemSodaR4z0r","ItemSodaRbull","ItemSodaR4z0r","FoodbaconCooked","FoodchickenCooked","FoodbaconCooked","FoodchickenCooked","FoodbaconCooked","FoodchickenCooked","FoodbaconCooked","FoodchickenCooked","FoodbaconCooked","FoodchickenCooked","FoodbaconCooked","FoodchickenCooked","FoodbaconCooked","FoodchickenCooked"]
],
[
["M9SD"],
["15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","ItemSodaRbull"]
],
[
["M9SD"],
["15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","ItemSodaRbull"]
],
[
["M9SD"],
["15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","ItemSodaRbull"]
],
[
["M9SD"],
["15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","ItemSodaRbull"]
],
[
["M9SD"],
["15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","ItemSodaRbull"]
],
[
["M9SD"],
["15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","ItemSodaRbull"]
],
[
["M9SD"],
["15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","Skin_Camo1_DZ","Skin_CZ_Soldier_Sniper_EP1_DZ","Skin_CZ_Special_Forces_GL_DES_EP1_DZ","Skin_Drake_Light_DZ","Skin_FR_OHara_DZ","Skin_FR_Rodriguez_DZ","Skin_Graves_Light_DZ","Skin_Sniper1_DZ","Skin_Soldier1_DZ","Skin_Soldier_Bodyguard_AA12_PMC_DZ"]
],
[
["M9SD"],
["15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","Skin_Functionary1_EP1_DZ","Skin_Pilot_EP1_DZ","Skin_Priest_DZ","Skin_Rocker1_DZ","Skin_Rocker2_DZ","Skin_RU_Policeman_DZ","Skin_RU_Policeman_DZ","Skin_Pilot_EP1_DZ","Skin_Functionary1_EP1_DZ","Skin_Priest_DZ"]
],
[
["M9SD"],
["15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","Skin_Bandit1_DZ","Skin_Bandit2_DZ","Skin_BanditW1_DZ","Skin_GUE_Commander_DZ","kin_GUE_Soldier_2_DZ","Skin_GUE_Soldier_Crew_DZ","Skin_GUE_Soldier_Sniper_DZ","Skin_Ins_Soldier_GL_DZ","Skin_TK_INS_Soldier_EP1_DZ","Skin_TK_INS_Warlord_EP1_DZ","Skin_GUE_Commander_DZ"]
],
[
["M9SD"],
["15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","ItemAntibiotic","ItemBandage","ItemBloodbag","ItemEpinephrine","ItemMorphine","ItemPainkiller","ItemBloodbag","ItemBandage","ItemBandage","ItemMorphine","ItemAntibiotic","ItemBandage","ItemBloodbag","ItemEpinephrine","ItemMorphine","ItemPainkiller","ItemBloodbag","ItemSodaCoke","ItemSodaCoke","ItemSodaCoke","ItemSodaPepsi","ItemSodaPepsi","ItemSodaPepsi","ItemSodaPepsi","FoodCanBakedBeans","FoodCanBakedBeans","FoodCanBakedBeans","FoodCanBakedBeans","FoodCanPasta","FoodCanPasta","FoodCanPasta","FoodCanPasta","FoodCanSardines","FoodCanSardines","FoodCanSardines","FoodCanSardines","FoodMRE","FoodMRE","FoodMRE","FoodMRE","FoodMRE","ItemBandage","ItemBandage","ItemMorphine","ItemAntibiotic","ItemBandage","ItemBloodbag","ItemEpinephrine","ItemMorphine","ItemPainkiller","ItemBloodbag","ItemBandage","ItemBandage","ItemMorphine","ItemTent","ItemJerrycan","ItemTent","ItemJerrycan","ItemTent","ItemJerrycan"]
],
[
["M9SD"],
["15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","ItemAntibiotic","ItemBandage","ItemBloodbag","ItemEpinephrine","ItemMorphine","ItemPainkiller","ItemBloodbag","ItemBandage","ItemBandage","ItemMorphine","ItemAntibiotic","ItemBandage","ItemBloodbag","ItemEpinephrine","ItemMorphine","ItemPainkiller","ItemBloodbag","ItemBandage","ItemBandage","ItemMorphine","ItemAntibiotic","ItemBandage","ItemBloodbag","ItemEpinephrine","ItemMorphine","ItemPainkiller","ItemBloodbag","ItemBandage","ItemBandage","ItemMorphine","ItemAntibiotic","ItemBandage","ItemBloodbag","ItemEpinephrine","ItemMorphine","ItemPainkiller","ItemBloodbag","ItemBandage","ItemBandage","ItemMorphine","ItemAntibiotic","ItemBandage","ItemBloodbag","ItemEpinephrine","ItemMorphine","ItemPainkiller","ItemBloodbag","ItemBandage","ItemBandage","ItemMorphine","ItemAntibiotic","ItemBandage","ItemBloodbag","ItemEpinephrine","ItemMorphine","ItemPainkiller","ItemBloodbag","ItemBandage","ItemBandage","ItemMorphine","ItemAntibiotic","ItemBandage","ItemBloodbag","ItemEpinephrine","ItemMorphine","ItemPainkiller","ItemBloodbag","ItemBandage","ItemBandage","ItemMorphine"]
]
];
_loot = _loot_lists call BIS_fnc_selectRandom;
 
_loot_amount = 20;

// Create ammo box
_crate = _this select 0;
clearWeaponCargoGlobal _crate;
clearMagazineCargoGlobal _crate;
 
// Add loot
{
_crate addWeaponCargoGlobal [_x,1];
} forEach (_loot select 0);
{
_crate addMagazineCargoGlobal [_x,1];
} forEach (_loot select 1);