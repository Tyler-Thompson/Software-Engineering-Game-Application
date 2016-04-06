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
    
    draw_sprite_ext(power_bar_spr,floor((max(0,player_controller_obj.my_defense)/player_controller_obj.max_defense)*45),DEFENSE_BAR_X,DEFENSE_BAR_Y,image_xscale,image_yscale,direction,image_blend,image_alpha);
    draw_text(DEFENSE_BAR_X,DEFENSE_BAR_Y,"ARMOR: "+string(max(0,round(player_controller_obj.my_defense)))+"/"+string(player_controller_obj.max_defense));
    
    draw_sprite_ext(power_bar_spr,floor((player_controller_obj.current_power/player_controller_obj.max_power)*45),POWER_BAR_X,POWER_BAR_Y,image_xscale,image_yscale,direction,image_blend,image_alpha);
    draw_text(POWER_BAR_X,POWER_BAR_Y,"POWER: "+string(round(player_controller_obj.current_power))+"/"+string(player_controller_obj.max_power));
    if(room != battle_room)
    {
      GOLD_MESSAGE = "Current Gold: " + string(player_controller_obj.current_gold);
      gold_count_vertical_offset_distance = 20;
      draw_set_halign(fa_right);
      draw_text(view_xview[0]+view_wview[0], view_yview[0]+view_hview[0] - gold_count_vertical_offset_distance, GOLD_MESSAGE);
      draw_set_halign(fa_center);
    }
}
if(room == battle_room and battle_controller_obj.display_results == false)
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
    
    draw_sprite_ext(power_bar_spr,floor((max(0,battle_controller_obj.enemy_defense)/battle_controller_obj.enemy_max_defense)*45),DEFENSE_BAR_X,DEFENSE_BAR_Y,image_xscale,image_yscale,direction,image_blend,image_alpha);
    draw_text(DEFENSE_BAR_X,DEFENSE_BAR_Y,"ARMOR: "+string(max(0,round(battle_controller_obj.enemy_defense)))+"/"+string(battle_controller_obj.enemy_max_defense));
}
else if(room == battle_room and battle_controller_obj.display_results == true)
{
  draw_text(room_width/2, 40, "You Won!");
  draw_text(room_width/3, 70, "You have gained:");
  draw_text(room_width/2, 70, string(battle_controller_obj.gold_reward) + " gold");
  draw_text(room_width/2, 100, "Congratulations!"); 
}
if(player_controller_obj.inventory_is_displayed and room != first_room and instance_exists(player_obj))
{
  SPRITE_SIZE = 24;
  INVENTORY_TEXT_OFFSET_CONSTANT = 1.75;
  draw_set_halign(fa_left);
  draw_text(view_xview[0], view_yview[0]+view_hview[0] - INVENTORY_TEXT_OFFSET_CONSTANT*SPRITE_SIZE, "Inventory");
  draw_text(view_xview[0]+SPRITE_SIZE*11, view_yview[0]+view_hview[0] - INVENTORY_TEXT_OFFSET_CONSTANT*SPRITE_SIZE, "Equipped items");
  draw_set_halign(fa_center);
  for(gui_render_i = 0; gui_render_i < player_controller_obj.MAX_INVENTORY_SIZE; ++gui_render_i)
  {
    draw_sprite(inventory_box_spr,-1,view_xview[0]+SPRITE_SIZE*gui_render_i + SPRITE_SIZE/2, view_yview[0]+view_hview[0] - SPRITE_SIZE/2);
    draw_text(view_xview[0]+SPRITE_SIZE*gui_render_i + SPRITE_SIZE/2, view_yview[0]+view_hview[0] - 1.25*SPRITE_SIZE, string((gui_render_i+1) % 10));
    
    if(gui_render_i < player_controller_obj.player_inventory_size)
    {
      if(not is_undefined(player_controller_obj.player_inventory[gui_render_i]) and player_controller_obj.player_inventory[gui_render_i] != "")
      {
        draw_sprite(get_item_sprite(player_controller_obj.player_inventory[gui_render_i]),-1,view_xview[0]+SPRITE_SIZE*gui_render_i + SPRITE_SIZE/2, view_yview[0]+view_hview[0] - SPRITE_SIZE/2);
      }
    }
  }
  for(gui_render_i = 0; gui_render_i < 2; ++gui_render_i)
  {
    draw_sprite(inventory_box_spr,-1,view_xview[0]+SPRITE_SIZE*(gui_render_i+11) + SPRITE_SIZE/2, view_yview[0]+view_hview[0] - SPRITE_SIZE/2);
    draw_text(view_xview[0]+SPRITE_SIZE*(gui_render_i+11) + SPRITE_SIZE/2, view_yview[0]+view_hview[0] - 1.25*SPRITE_SIZE, string((gui_render_i+9) % 10));
      if(not is_undefined(player_controller_obj.equip[gui_render_i]) and player_controller_obj.equip[gui_render_i] != "")
      {
        draw_sprite(get_item_sprite(player_controller_obj.equip[gui_render_i]),-1,view_xview[0]+SPRITE_SIZE*(gui_render_i+11) + SPRITE_SIZE/2, view_yview[0]+view_hview[0] - SPRITE_SIZE/2);
      }
  }
}
