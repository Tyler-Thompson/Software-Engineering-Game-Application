/*
* effect_fade()
*
* Fades an effect out from existence.
*/

image_alpha = (my_time_to_live - my_time_expired) / my_time_to_live;

if (image_alpha <= 0)
{
    instance_destroy();
}
