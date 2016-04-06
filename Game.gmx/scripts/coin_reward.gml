/*
* coin_reward()
*
* gives coins to the player
*/

//money variables
MONEY_BAG_INDEX = 0;
MONEY_BAG_VALUE = 5;
GOLD_INDEX = 3;
GOLD_VALUE = 3;
SILVER_INDEX = 2;
SILVER_VALUE = 2;
COPPER_INDEX = 1;
COPPER_VALUE = 1;

switch (image_index)
{
    case MONEY_BAG_INDEX:
        my_value = MONEY_BAG_VALUE;
        break;
    case GOLD_INDEX:
        my_value = GOLD_VALUE;
        break;
    case SILVER_INDEX:
        my_value = SILVER_VALUE;
        break;
    case COPPER_INDEX:
        my_value = COPPER_VALUE;
        break;
    default:
        my_value = 0;
        break;
}

//awards player money
player_controller_obj.current_gold += my_value;
//plays sound
sound_effect_play(alert_wav,false);
//creates effect to alert player they were given money
IMAGE_HEIGHT = sprite_height;
inst = instance_create(x,y-IMAGE_HEIGHT,draw_text_effect_obj);
inst.text_to_draw = "+"+string(my_value)+" coins";
//destroys self
instance_destroy();
