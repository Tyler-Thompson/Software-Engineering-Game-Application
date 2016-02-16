/*
* hobo_init()
*
* Initializes the unit tests
*/

set_test_draw();

//set test_obj position
x = 0; 
y = 0;

//scrolling variables
draw_offset_y = 0;
scroll_speed = 15;

//testing variables
is_complete = false;
test_stack = ds_stack_create();
test_x = 0;
test_count = 0;
fail_count = 0;
test_plan = "1.."+string(test_count);
test_lines = "";
test_results = "";
