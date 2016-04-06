/*
 * item_information_init()
 * initializes the necessary variables for the item information controller
 *
 */

/******************************
* ARMOR
******************************/
//name
armor[0,0] = "simple armor";
//added defense
armor[0,1] = 20;
//sprite
armor[0,3] = basic_armor_spr;

//name
armor[1,0] = "diamond armor";
//added defense
armor[1,1] = 50;
//sprite
armor[1,3] = diamond_armor_spr;

/******************************
* POTIONS
******************************/
//name
potion[0,0] = "basic health potion";
//type
potion[0,1] = "health";
//added health
potion[0,2] = 10;
//sprite
potion[0,3] = health_pot_spr;

//name
potion[1,0] = "super health potion";
//type
potion[1,1] = "health";
//added health
potion[1,2] = 100;
//sprite
potion[1,3] = super_health_pot_spr;

/******************************
* WEAPONS
******************************/
//name
weapon[0,0] = "simple sword";
//added damage
weapon[0,1] = 5;
//sprite
weapon[0,3] = basic_sword_spr;

//name
weapon[1,0] = "ice sword";
//added damage
weapon[1,1] = 10;
//sprite
weapon[1,3] = ice_sword_spr;

//name
weapon[2,0] = "flame blade";
//added damage
weapon[2,1] = 25;
//sprite
weapon[2,3] = flame_blade_spr;
