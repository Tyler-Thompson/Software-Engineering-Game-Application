/*
* Initializes constants for the player controller object
*/
max_hp = 100;
max_power = 100;
max_defense = 20;
my_attack = 10;
current_hp = max_hp;
current_power = max_power;
my_defense = max_defense;
MAX_INVENTORY_SIZE = 8;
inventory_is_displayed = true;
player_inventory_size = 3;
equip[0] = "";
equip[1] = "";
player_inventory[0] = "simple armor";
player_inventory[1] = "basic health potion";
player_inventory[2] = "simple sword"
for(i = 3; i < MAX_INVENTORY_SIZE; ++i)
{
  player_inventory[i] = "";
}
current_gold = 10;
sprite_num = 0;
sprite_x_scale = 1;
sprite_y_scale = 1;
spr_name[0] = paladin_spr;
spr_name[1] = wizard_spr;
spr_name[2] = priestess_spr;
sprite_visible_name[0] = "Paladin";
sprite_visible_name[1] = "Wizard";
sprite_visible_name[2] = "Priestess";

//player control key-bindings
left_key = ord('A');
right_key = ord('D');
up_key = ord('W');
down_key = ord('S');
