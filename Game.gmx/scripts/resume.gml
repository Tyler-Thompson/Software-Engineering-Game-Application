/*
* resume()
* reactivates all objects and removes unnecessary buttons
*/

instance_activate_all();

with (continue_game_obj)
   {
    instance_destroy();
   }
with (options_obj)
   {
    instance_destroy();
   }
with (save_game_btn_obj)
   {
    instance_destroy();
   }
with (exit_obj)
   {
    instance_destroy();
   }
with (paused_title_obj)
    {
    instance_destroy();
    }

