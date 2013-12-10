private ["_loot", "_loot_amount","_crate", "_hint"];

_crate = "RUVehicleBox";
_loot_lists = [
[
["revolver_gold_EP1"],
["6Rnd_45ACP","6Rnd_45ACP","6Rnd_45ACP","ItemSilverBar10oz","ItemSilverBar10oz","ItemSilverBar10oz","ItemSilverBar10oz","ItemSilverBar10oz","ItemSilverBar10oz","ItemSilverBar10oz","ItemSilverBar10oz","ItemSilverBar10oz","ItemSilverBar10oz","ItemSilverBar10oz"]
],
[
["revolver_gold_EP1"],
["6Rnd_45ACP","6Rnd_45ACP","6Rnd_45ACP","ItemGoldBar10oz","ItemGoldBar10oz","ItemGoldBar10oz","ItemGoldBar10oz","ItemGoldBar10oz","ItemGoldBar10oz","ItemGoldBar10oz"]
],
[
["revolver_gold_EP1"],
["6Rnd_45ACP","6Rnd_45ACP","6Rnd_45ACP","ItemGoldBar","ItemGoldBar","ItemGoldBar","ItemGoldBar","ItemGoldBar","ItemGoldBar","ItemGoldBar","ItemGoldBar","ItemGoldBar","ItemGoldBar","ItemGoldBar","ItemGoldBar","ItemGoldBar","ItemGoldBar","ItemGoldBar","ItemGoldBar","ItemGoldBar"]
],
[
["revolver_gold_EP1"],
["6Rnd_45ACP","6Rnd_45ACP","6Rnd_45ACP","ItemBriefcase100oz"]
],
[
["revolver_gold_EP1"],
["6Rnd_45ACP","6Rnd_45ACP","6Rnd_45ACP","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar"]
],
[
["revolver_gold_EP1"],
["6Rnd_45ACP","6Rnd_45ACP","6Rnd_45ACP","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar","ItemCopperBar"]
],
[
["revolver_gold_EP1"],
["6Rnd_45ACP","6Rnd_45ACP","6Rnd_45ACP","ItemCopperBar","ItemCopperBar"]
],
[
["revolver_gold_EP1"],
["6Rnd_45ACP","6Rnd_45ACP","6Rnd_45ACP","ItemCopperBar","ItemCopperBar"]
],
[
["revolver_gold_EP1"],
["6Rnd_45ACP","6Rnd_45ACP","6Rnd_45ACP","ItemCopperBar","ItemCopperBar"]
],
[
["revolver_gold_EP1"],
["6Rnd_45ACP","6Rnd_45ACP","6Rnd_45ACP","ItemCopperBar","ItemCopperBar"]
],
[
["revolver_gold_EP1"],
["6Rnd_45ACP","6Rnd_45ACP","6Rnd_45ACP","ItemCopperBar","ItemCopperBar"]
],
[
["revolver_gold_EP1"],
["6Rnd_45ACP","6Rnd_45ACP","6Rnd_45ACP","ItemGoldBar","ItemCopperBar","ItemGoldBar10oz","ItemSilverBar10oz","ItemTinBar","ItemSilverBar","ItemGoldBar","ItemCopperBar","ItemGoldBar10oz","ItemSilverBar10oz","ItemTinBar","ItemSilverBar"]
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