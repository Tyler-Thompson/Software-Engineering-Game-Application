/*
* save_game()
*
* Saves the status of the current play session to the game's savefile.
*/

var FILENAME = "game_savefile"
game_save(FILENAME);

instance_create(x+40, y-15, game_saved_effect_obj);
