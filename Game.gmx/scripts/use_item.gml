/*
 * use_item(string item_name, int location)
 * when called, this script checks if an item is in the user's inventory
 * if so, it will apply the effect of the item to the player
 * if it is armor or a weapon, it will equip the item
 * if the item is used successfully, returns true,
 * returns false otherwise
 */
 
if(not is_undefined(argument0) and argument0 != "" and is_in_inventory(argument0))
{
  item = get_item_info(argument0);
  if(item[0] == "weapon" or item[0] == "armor")
  {
    result = equip_item(argument0, argument1);
    if(result)
    {
      displayed_text_effect = instance_create(player_obj.x, player_obj.y - player_obj.sprite_height/2, draw_text_effect_obj);
      displayed_text_effect.text_to_draw = "Equipped " + argument0;
    }
    return result;
  }
  else if(item[0] == "potion")
  {
    if(item[1] == "health")
    {
      if(player_controller_obj.current_hp = player_controller_obj.max_hp)
      {
       
        if (instance_number(draw_text_effect_obj) == 0)
        {
            displayed_text_effect = instance_create(player_obj.x, player_obj.y - player_obj.sprite_height/2, draw_text_effect_obj);
            displayed_text_effect.text_to_draw = "Already at max health";
        }
        return false;
      }
      player_controller_obj.current_hp += item[2];
      if(player_controller_obj.current_hp > player_controller_obj.max_hp)
      {
        player_controller_obj.current_hp = player_controller_obj.max_hp;
      }
    }
    remove_from_inventory(argument0, argument1);
    displayed_text_effect = instance_create(player_obj.x, player_obj.y - player_obj.sprite_height/2, draw_text_effect_obj);
    displayed_text_effect.text_to_draw = "Used a " + argument0;
  }
}
