/*
 * draw_text_over_object(text, object)
 * takes as input the text to draw and the object to place the text over
 * and draws the text
 */
 
draw_text_effect = instance_create(argument1.x, argument1.y - argument1.sprite_height/2, draw_text_effect_obj);
draw_text_effect.text_to_draw = argument0;
