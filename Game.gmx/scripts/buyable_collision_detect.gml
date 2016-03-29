/*
* buyable_collision_detect()
*
* detects for collisions with the player_obj to purchase item
*/

if (place_meeting(x,y,player_obj))
{
    TEXT_OFFSET = player_obj.sprite_height/2;
    if (player_controller_obj.current_gold >= my_cost && !inventory_is_full())
    {
        add_item_to_inventory(my_name);
        player_controller_obj.current_gold -= my_cost;
        inst = instance_create(player_obj.x,player_obj.y-TEXT_OFFSET,draw_text_effect_obj);
        inst.text_to_draw = "Purchased the "+my_name+" for "+string(my_cost)+" gold";
        instance_destroy();
    }
    else
    {
        if (instance_number(draw_text_effect_obj) == 0)
        {
            if (!inventory_is_full())
            {
                //player has room in inventory but does not have sufficient funds to purchase
                inst = instance_create(player_obj.x,player_obj.y-TEXT_OFFSET,draw_text_effect_obj);
                inst.text_to_draw = "Need more gold to buy!";
            }
            else
            {
                //inventory is full
                inst = instance_create(player_obj.x,player_obj.y-TEXT_OFFSET,draw_text_effect_obj);
                inst.text_to_draw = "Cannot buy: inventory is full!";
            }
        }
    }
}
