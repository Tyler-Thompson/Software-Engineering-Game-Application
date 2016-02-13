/*
* increment_player_sprite()
* When this is called, the player's character sprite is incremented, so that they will
* appear as a different class than before
*/

player_obj.sprite_num = (player_obj.sprite_num + 1) mod (array_length_1d(player_obj.spr_name));
player_obj.sprite_index = player_obj.spr_name[player_obj.sprite_num];
