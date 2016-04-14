/*
* Initializes constants for the player controller object
*/
INITIAL_ATTACK = 10;
max_hp = 100;
max_power = 100;
max_defense = 20;
my_attack = INITIAL_ATTACK;
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
spr_name[3] = white_paladin_spr;
spr_name[4] = white_wizard_spr;
spr_name[5] = white_priestess_spr;
sprite_visible_name[0] = "Paladin";
sprite_visible_name[1] = "Wizard";
sprite_visible_name[2] = "Priestess";
sprite_visible_name[3] = "White Paladin";
sprite_visible_name[4] = "White Wizard";
sprite_visible_name[5] = "White Priestess";

//player control key-bindings
left_key = ord('A');
right_key = ord('D');
up_key = ord('W');
down_key = ord('S');
