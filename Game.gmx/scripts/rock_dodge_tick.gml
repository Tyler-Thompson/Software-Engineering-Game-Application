/*
* rock_dodge_tick()
*
* creates objects in the rock_dodge minigame
*/

COIN_VALUE = 0;

var coin_or_rock = irandom(5);

if (coin_or_rock == COIN_VALUE)
{
    instance_create(random(room_width),0,coin_obj);
}
else
{
    instance_create(random(room_width),0,rock_obj);
}

//resets alarm
FRAMES_PER_SECOND = room_speed;
alarm[0] = FRAMES_PER_SECOND / 6;
