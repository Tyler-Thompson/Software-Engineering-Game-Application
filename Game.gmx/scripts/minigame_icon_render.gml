/*
* minigame_icon_render()
*
* renders a minigame icon object
*/

draw_sprite(sprite_index,-1,x,y);

FOREGROUND_DEPTH = -100;
ITEM_HEIGHT = 18;

item_depth = depth;
depth = FOREGROUND_DEPTH;
draw_text(x,y-ITEM_HEIGHT,my_name);
depth = item_depth;
