/*
* Initializes constants for the player controller object
*/
max_hp = 100;
max_power = 100;
max_defense = 20;
my_attack = 10;
my_defense = 20;
current_hp = max_hp;
current_power = max_power;

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

