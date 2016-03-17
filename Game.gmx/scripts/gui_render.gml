/*
* gui_render()
*
* Renders GUI (graphical user interface) elements to the screen
*/
BAR_WIDTH = sprite_get_width(hp_bar_spr);
BAR_OFFSET_DISTANCE = 2;
BAR_HEIGHT = sprite_get_height(hp_bar_spr);

HP_BAR_X = view_xview[0]+BAR_WIDTH/2+BAR_OFFSET_DISTANCE;
HP_BAR_Y = view_yview[0]+BAR_HEIGHT/2+BAR_OFFSET_DISTANCE;
DEFENSE_BAR_X = view_xview[0]+BAR_WIDTH/2+BAR_OFFSET_DISTANCE;
DEFENSE_BAR_Y = view_yview[0]+BAR_HEIGHT*1.5+BAR_OFFSET_DISTANCE*2;
POWER_BAR_X = view_xview[0]+BAR_WIDTH/2+BAR_OFFSET_DISTANCE;
POWER_BAR_Y = view_yview[0]+BAR_HEIGHT*2.75+BAR_OFFSET_DISTANCE*2;

if ((instance_number(player_obj) + instance_number(player_battle_obj)) != 0 && room != first_room)
{
    //player exists and game is not in player selection stage; draw GUI elements
    draw_set_color(c_white);
    
    draw_sprite_ext(hp_bar_spr,floor((player_controller_obj.current_hp/player_controller_obj.max_hp)*45),HP_BAR_X,HP_BAR_Y,image_xscale,image_yscale,direction,image_blend,image_alpha);
    draw_text(HP_BAR_X,HP_BAR_Y,"HP: "+string(round(player_controller_obj.current_hp))+"/"+string(player_controller_obj.max_hp));
    
    draw_sprite_ext(power_bar_spr,floor((player_controller_obj.my_defense/player_controller_obj.max_defense)*45),DEFENSE_BAR_X,DEFENSE_BAR_Y,image_xscale,image_yscale,direction,image_blend,image_alpha);
    draw_text(DEFENSE_BAR_X,DEFENSE_BAR_Y,"DEFENSE: "+string(round(player_controller_obj.my_defense))+"/"+string(player_controller_obj.max_defense));
    
    draw_sprite_ext(power_bar_spr,floor((player_controller_obj.current_power/player_controller_obj.max_power)*45),POWER_BAR_X,POWER_BAR_Y,image_xscale,image_yscale,direction,image_blend,image_alpha);
    draw_text(POWER_BAR_X,POWER_BAR_Y,"POWER: "+string(round(player_controller_obj.current_power))+"/"+string(player_controller_obj.max_power));
}
if(room == battle_room)
{
    //if a battle has started, then the enemy hp and power bar should be displayed
    HP_BAR_X = room_width - HP_BAR_X;
    DEFENSE_BAR_X = room_width - DEFENSE_BAR_X;
    POWER_BAR_X = room_width - POWER_BAR_X;
    draw_set_color(c_white);
    
    draw_sprite_ext(hp_bar_spr,floor((battle_controller_obj.enemy_health/battle_controller_obj.enemy_max_health)*45),HP_BAR_X,HP_BAR_Y,image_xscale,image_yscale,direction,image_blend,image_alpha);
    draw_text(HP_BAR_X,HP_BAR_Y,"HP: "+string(round(battle_controller_obj.enemy_health))+"/"+string(battle_controller_obj.enemy_max_health));
    
    draw_sprite_ext(power_bar_spr,floor((battle_controller_obj.enemy_power/battle_controller_obj.enemy_max_power)*45),POWER_BAR_X,POWER_BAR_Y,image_xscale,image_yscale,direction,image_blend,image_alpha);
    draw_text(POWER_BAR_X,POWER_BAR_Y,"POWER: "+string(round(battle_controller_obj.enemy_power))+"/"+string(battle_controller_obj.enemy_max_power));
    
    draw_sprite_ext(power_bar_spr,floor((battle_controller_obj.enemy_defense/battle_controller_obj.enemy_max_defense)*45),DEFENSE_BAR_X,DEFENSE_BAR_Y,image_xscale,image_yscale,direction,image_blend,image_alpha);
    draw_text(DEFENSE_BAR_X,DEFENSE_BAR_Y,"DEFENSE: "+string(round(battle_controller_obj.enemy_defense))+"/"+string(battle_controller_obj.enemy_max_defense));
}

