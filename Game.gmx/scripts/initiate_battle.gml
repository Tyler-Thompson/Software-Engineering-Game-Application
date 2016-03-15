/*
* initiate_battle()
* Switches to the battle room and begins the turn based combat
*/

battle_controller_obj.enemy_sprite = sprite_index;
battle_controller_obj.enemy_name = my_name;
battle_controller_obj.previous_room = room;
room = battle_room;
