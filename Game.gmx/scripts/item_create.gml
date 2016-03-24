/*
 * item_create(string name, sprite, bool visible=false, x_coord=0, y_coord=0)
 * Takes as input the name of the item, the sprite associated with the item, 
 * a boolean indicating if the item is visible, and finally the x and y coordinates
 * of the item. The boolean as well as the x and y coordinates are optional.
 */

if(not is_undefined(argument2))
{
  argument2 = false;
}
if(not is_undefined(argument3))
{
  argument3 = 0;
}
if(not is_undefined(argument4))
{
  argument4 = 0;
}

item = instance_create(argument3, argument4, item_obj);
item.sprite_index = argument1;
item.name = argument0;
