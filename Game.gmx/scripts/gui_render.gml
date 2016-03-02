/*
* gui_render()
*
* Renders GUI (graphical user interface) elements to the screen
*/

if (instance_number(player_obj) != 0 && room != first_room)
{
    //player exists and game is not in player selection stage; draw GUI elements
    
    BAR_WIDTH = sprite_get_width(hp_bar_spr);
    BAR_OFFSET_DISTANCE = 2;
    BAR_HEIGHT = sprite_get_height(hp_bar_spr);
    
    HP_BAR_X = view_xview[0]+BAR_WIDTH/2+BAR_OFFSET_DISTANCE;
    HP_BAR_Y = view_yview[0]+BAR_HEIGHT/2+BAR_OFFSET_DISTANCE;
    POWER_BAR_X = view_xview[0]+BAR_WIDTH/2+BAR_OFFSET_DISTANCE;
    POWER_BAR_Y = view_yview[0]+BAR_HEIGHT*1.5+BAR_OFFSET_DISTANCE*2;
    
    draw_set_color(c_white);
    
    draw_sprite_ext(hp_bar_spr,floor((player_controller_obj.current_hp/player_controller_obj.max_hp)*45),HP_BAR_X,HP_BAR_Y,image_xscale,image_yscale,direction,image_blend,image_alpha);
    draw_text(HP_BAR_X,HP_BAR_Y,"HP: "+string(round(player_controller_obj.current_hp))+"/"+string(player_controller_obj.max_hp));
    
    draw_sprite_ext(power_bar_spr,floor((player_controller_obj.current_power/player_controller_obj.max_power)*45),POWER_BAR_X,POWER_BAR_Y,image_xscale,image_yscale,direction,image_blend,image_alpha);
    draw_text(POWER_BAR_X,POWER_BAR_Y,"POWER: "+string(round(player_controller_obj.current_power))+"/"+string(player_controller_obj.max_power));
}
