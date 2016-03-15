/*
* resume()
* reactivates all objects and removes unnecessary buttons
*/

instance_activate_all();
/*instance_destroy(continue_game_obj);
instance_destroy(options_obj);
instance_destroy(save_game_btn_obj);
instance_destroy(exit_obj);*/
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
