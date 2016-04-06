/*
* instructions_render()
*
* renders a minigame instruction
*/

FOREGROUND_DEPTH = -1000;
depth = FOREGROUND_DEPTH;
OFFSET_HEIGHT = 24;
draw_text(room_width/2,OFFSET_HEIGHT,my_text+"#Current Gold: "+string(player_controller_obj.current_gold));
