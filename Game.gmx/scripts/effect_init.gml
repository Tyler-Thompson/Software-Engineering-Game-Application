/*
* effect_init(time_to_live, hspeed, vspeed)
*
* Initializes an effect.
*
* @argument0: time before effect disappears completely, in game steps.
* @argument1: horizontal speed of the effect
* @argument2: vertical speed of the effect
*/

my_time_to_live = argument0;
my_time_expired = 0;
hspeed = argument1;
vspeed = argument2;
depth = -10;
