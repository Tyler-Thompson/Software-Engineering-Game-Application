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
      if (instance_number(draw_text_effect_obj) == 0)
      {
        draw_text_over_object("Equipped " + argument0,player_obj)
      }
      test_attack = player_controller_obj.my_attack;
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
          draw_text_over_object("Already at max health",player_obj)
        }
        return false;
      }
      player_controller_obj.current_hp += item[2];
      player_controller_obj.current_hp = min(player_controller_obj.current_hp, player_controller_obj.max_hp);
    }
    else if(item[1] == "set_attack")
    {
      if(get_player_base_attack() < item[2])
      {
        player_controller_obj.my_attack = player_controller_obj.my_attack - get_player_base_attack() + item[2];
      }
      else
      {
        if (instance_number(draw_text_effect_obj) == 0)
        {
          draw_text_over_object("You are already brimming with youth!",player_obj)
        }
        return false;
      }
    }
    else if(item[1] == "color change")
    {
        if(item[2] == "white")
        {
            custom_character();
        }
    }
    else if(item[1] == "armor")
    {
      if(player_controller_obj.my_defense < player_controller_obj.max_defense)
      {
        player_controller_obj.my_defense = min(player_controller_obj.max_defense, player_controller_obj.my_defense + item[2]);
      }
      else
      {
        if (instance_number(draw_text_effect_obj) == 0)
        {
          draw_text_over_object("Your armor is already spotless!",player_obj)
        }
        return false;
      }
    }
    remove_from_inventory(argument0, argument1);
    if (instance_number(draw_text_effect_obj) == 0)
    {
      draw_text_over_object("Used a " + argument0,player_obj)
    }
  }
}
