/*
 * is_armor(string item_name)
 * takes as input the name of an item and returns true if it is armor, false otherwise
 */

name = argument0;

for(i = 0; i < array_length_1d(item_information_controller.armor); ++i)
{
  if(name == item_information_controller.armor[i,0])
  {
    return true;
  }
}
return false;
