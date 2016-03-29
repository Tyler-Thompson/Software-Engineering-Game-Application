/*
* npc_render()
*
* renders an NPC object
*/

draw_sprite_ext(sprite_index,-1,x,y,image_xscale,image_yscale,direction,image_blend,image_alpha);

//dialog
npc_depth = depth;
depth = -1000;
NPC_HEIGHT = 24;
draw_text(x,y-NPC_HEIGHT,dialog[dialog_index]);
depth = npc_depth;
