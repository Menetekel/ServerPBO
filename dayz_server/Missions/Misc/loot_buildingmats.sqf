private ["_loot", "_loot_amount","_crate", "_hint"];

_crate = "RUVehicleBox";
_loot_lists = [
[
["glock17_EP1"],
["15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","ItemWoodStairs","ItemWoodStairs","ItemWoodStairs","MortarBucket","CinderBlocks","MortarBucket","CinderBlocks","MortarBucket","CinderBlocks","MortarBucket","CinderBlocks","MortarBucket","CinderBlocks","MortarBucket","CinderBlocks","MortarBucket","CinderBlocks","MortarBucket","CinderBlocks","MortarBucket","CinderBlocks","MortarBucket","CinderBlocks","MortarBucket","CinderBlocks","MortarBucket","CinderBlocks","MortarBucket","CinderBlocks","MortarBucket","CinderBlocks","MortarBucket","CinderBlocks","MortarBucket","CinderBlocks","MortarBucket","CinderBlocks","MortarBucket","CinderBlocks","MortarBucket","CinderBlocks","MortarBucket","CinderBlocks","MortarBucket","CinderBlocks","MortarBucket","CinderBlocks","MortarBucket","CinderBlocks"]
],
[
["glock17_EP1"],
["15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","ItemWoodStairs","ItemWoodStairs","ItemWoodStairs","ItemWoodStairs","PartPlankPack","PartPlywoodPack","PartPlankPack","PartPlywoodPack","PartPlankPack","PartPlywoodPack","PartPlankPack","PartPlywoodPack","PartPlankPack","PartPlywoodPack","PartPlankPack","PartPlywoodPack","PartPlankPack","PartPlywoodPack","PartPlankPack","PartPlywoodPack","PartPlankPack","PartPlywoodPack","PartPlankPack","PartPlywoodPack","PartPlankPack","PartPlywoodPack","PartPlankPack","PartPlywoodPack","PartPlankPack","PartPlywoodPack","PartPlankPack","PartPlywoodPack","PartPlankPack","PartPlywoodPack","PartPlankPack","PartPlywoodPack","PartPlankPack","PartPlywoodPack","PartPlankPack","PartPlywoodPack","PartPlankPack","PartPlywoodPack","PartPlankPack","PartPlywoodPack","PartPlankPack","PartPlywoodPack"]
],
[
["glock17_EP1"],
["15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor"]
],
[
["glock17_EP1"],
["15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor","metal_floor_kit","ItemWoodFloor"]
],
[
["glock17_EP1"],
["15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","outhouse_kit","outhouse_kit","cinder_wall_kit","cinder_wall_kit","cinder_wall_kit","cinder_wall_kit","cinder_wall_kit","cinder_wall_kit","cinder_wall_kit","cinder_wall_kit","cinder_wall_kit","cinder_wall_kit","cinder_wall_kit","cinder_wall_kit","cinder_wall_kit","cinder_wall_kit","cinder_wall_kit","cinder_wall_kit","cinder_wall_kit","cinder_wall_kit","cinder_wall_kit","cinder_wall_kit","cinder_wall_kit","cinder_wall_kit"]
],
[
["glock17_EP1"],
["15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","outhouse_kit","outhouse_kit","ItemWoodStairs","ItemWoodStairs","ItemWoodStairs","ItemWoodStairs","workbench_kit","ItemComboLock","ItemComboLock","ItemWoodWallLg","ItemWoodWallGarageDoor","ItemWoodWallWindowLg","ItemWoodWallLg","ItemWoodWallLg","ItemWoodWallLg"]
],
[
["glock17_EP1"],
["15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","ItemWoodStairs","ItemWoodStairs","ItemWoodStairs","ItemWoodStairs","workbench_kit","ItemComboLock","ItemComboLock","ItemWoodWallLg","ItemWoodWallGarageDoor","ItemWoodWallWindowLg","ItemWoodWallLg","ItemWoodWallLg","ItemWoodWallLg"]
],
[
["glock17_EP1"],
["15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","PartGeneric","metal_floor_kit","PartGeneric","metal_floor_kit","PartGeneric","metal_floor_kit","PartGeneric","metal_floor_kit","PartGeneric","metal_floor_kit","PartGeneric","metal_floor_kit","PartGeneric","metal_floor_kit","PartGeneric","metal_floor_kit","PartGeneric","metal_floor_kit","PartGeneric","metal_floor_kit","PartGeneric","metal_floor_kit","Itemvault"]
],
[
["glock17_EP1"],
["15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","ItemWoodWallGarageDoor","ItemWoodWallWindowLg","ItemWoodWallLg","ItemWoodWallLg","ItemWoodWallLg","ItemWoodWallGarageDoor","ItemWoodWallWindowLg","ItemWoodWallLg","ItemWoodWallLg","ItemWoodWallLg","ItemWoodWallGarageDoor","ItemWoodWallWindowLg","ItemWoodWallLg","ItemWoodWallLg","ItemWoodWallLg","ItemWoodWallGarageDoor","ItemWoodWallWindowLg"]
],
[
["glock17_EP1"],
["15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","workbench_kit","Itemvault","cinder_wall_kit","ItemComboLock","ItemComboLock","cinder_garage_kit","cinder_garage_kit","cinder_door_kit","cinder_door_kit","cinder_wall_kit","cinder_wall_kit","cinder_wall_kit","cinder_wall_kit","cinder_wall_kit","cinder_wall_kit"]
],
[
["glock17_EP1"],
["15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","15Rnd_9x19_M9SD","workbench_kit","ItemWoodStairs","ItemWoodStairs","ItemWoodStairs","wood_shack_kit","wood_shack_kit","wood_shack_kit","deer_stand_kit","deer_stand_kit","ItemWoodLadder","ItemWoodLadder","desert_net_kit","desert_net_kit","ItemWoodLadder","ItemWoodLadder","desert_net_kit","forest_net_kit","forest_net_kit","forest_net_kit","desert_net_kit","desert_net_kit","ItemSandbagLarge","ItemSandbagLarge","Itemvault","Itemvault"]
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