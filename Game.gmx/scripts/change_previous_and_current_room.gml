/*
 * change_previous_and_current_room
 * when called, sets the room in the current_room variable to be the
 * previous_room variable as well, then sets the room the player is in
 * to be the one held by the current_room variable.
 */

battle_controller_obj.previous_room = battle_controller_obj.current_room;
battle_controller_obj.current_room = room;
