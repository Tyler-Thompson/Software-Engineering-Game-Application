/*
* buyable_render()
*
* renders a buyable object
*/

draw_sprite(sprite_index,-1,x,y);

item_depth = depth;
depth = -1000;
ITEM_HEIGHT = 18;
draw_text(x,y-ITEM_HEIGHT,my_name);
draw_text(x,y+ITEM_HEIGHT,"Cost: "+string(my_cost));
depth = item_depth;
