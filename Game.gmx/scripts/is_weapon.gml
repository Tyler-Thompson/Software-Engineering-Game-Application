/*
 * is_weapon(string item_name)
 * takes as input the name of an item and returns true if it is a weapon, false otherwise
 */

name = argument0;

for(i = 0; i < array_length_1d(item_information_controller.weapon); ++i)
{
  if(name == item_information_controller.weapon[i,0])
  {
    return true;
  }
}
return false;
