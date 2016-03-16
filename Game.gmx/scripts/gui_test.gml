/*
* GUI tests
*/
it("ensures the GUI controller is present", 1, instance_exists(gui_controller_obj));
it("ensures the GUI controller has been initialized", 1, gui_controller_obj.depth < 0);
it("ensures the GUI is drawing the HP bar at the proper position", 1, !is_undefined(gui_controller_obj.HP_BAR_X) && !is_undefined(gui_controller_obj.HP_BAR_Y));
it("ensures the GUI is drawing the power bar at the proper position", 1, !is_undefined(gui_controller_obj.POWER_BAR_X) && !is_undefined(gui_controller_obj.POWER_BAR_Y));

gui_complete = true;
return gui_complete;
