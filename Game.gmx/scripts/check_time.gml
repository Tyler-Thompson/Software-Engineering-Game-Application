/*
* check_time()
*
* checks current time and sets day true or false
*/

day_start = 8;
day_end = 20;

if(current_hour < day_end && current_hour > day_start)
{
    day = true;
    background_visible[0] = true;
    background_visible[1] = false;
}
else
{
    day = false;
    background_visible[0] = false;
    background_visible[1] = true;
}

