/*
 * get_item_info(string item_name)
 * takes as input the name of an item and returns all associated information in an array
 */
 
name = argument0;
armor_length = array_height_2d(item_information_controller.armor);
weapon_length = array_height_2d(item_information_controller.weapon);
potion_length = array_height_2d(item_information_controller.potion);
var to_return;
for(i = 0; i < max(armor_length, weapon_length, potion_length); ++i)
{
  if((i < armor_length) and (item_information_controller.armor[i,0] == name))
  {
    to_return[0] = "armor";
    for(j = 1; j < array_length_2d(item_information_controller.armor,i); ++j)
    {
      to_return[j] = item_information_controller.armor[i, j];
    }
    return to_return;
  }
  else if(i < weapon_length and item_information_controller.weapon[i,0] == name)
  {
    to_return[0] = "weapon";
    for(j = 1; j < array_length_2d(item_information_controller.weapon,i); ++j)
    {
      to_return[j] = item_information_controller.weapon[i, j];
    }
    return to_return;
  }
  else if(i < potion_length and item_information_controller.potion[i,0] == name)
  {
    to_return[0] = "potion";
    for(j = 1; j < array_length_2d(item_information_controller.potion,i); ++j)
    {
      to_return[j] = item_information_controller.potion[i, j];
    }
    return to_return;
  }
}
to_return[0] = "";
return to_return;
