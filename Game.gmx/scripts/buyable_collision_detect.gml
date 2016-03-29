/*
* buyable_collision_detect()
*
* detects for collisions with the player_obj to purchase item
*/

if (place_meeting(x,y,player_obj))
{
    if (player_controller_obj.current_gold >= my_cost)
    {
        add_item_to_inventory(my_name);
        player_controller_obj.current_gold -= my_cost;
        TEXT_OFFSET = 12;
        inst = instance_create(player_obj.x,player_obj.y-TEXT_OFFSET,draw_text_effect_obj);
        inst.text_to_draw = "Purchased the "+my_name+" for "+string(my_cost)+" gold";
        instance_destroy();
    }
    else
    {
        if (instance_number(draw_text_effect_obj) == 0)
        {
            TEXT_OFFSET = 12;
            inst = instance_create(player_obj.x,player_obj.y-TEXT_OFFSET,draw_text_effect_obj);
            inst.text_to_draw = "Need more gold to buy!";
        }
    }
}
