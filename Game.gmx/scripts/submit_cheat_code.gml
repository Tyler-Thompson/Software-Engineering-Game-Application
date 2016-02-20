/*
* submit_cheat_code(code)
* @argument0: The code entered into the box.
*/

if (argument0 == "giantsize")
{
    player_controller_obj.sprite_x_scale = 2;
    player_controller_obj.sprite_y_scale = 2;
    return "Successful cheat entry! The player is now giant.";
}
if (argument0 == "normal")
{
    player_controller_obj.sprite_x_scale = 1;
    player_controller_obj.sprite_y_scale = 1;
    return "Successful cheat entry! The player is now normal-sized.";
}
if (argument0 == "shrinkydink")
{
    player_controller_obj.sprite_x_scale = 0.5;
    player_controller_obj.sprite_y_scale = 0.5;
    return "Successful cheat entry! The player is now tiny.";
}
else
{
    return "Cheat code was incorrect.";
}
