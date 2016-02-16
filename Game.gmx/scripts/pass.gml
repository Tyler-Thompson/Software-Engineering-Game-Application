/**
* Track that the test passed
*/
description = argument0;
with(TEST)
  {
  result[test_count] = c_green;
  test_lines += "#[PASS]";
  test_lines += " " + description; 
  }
