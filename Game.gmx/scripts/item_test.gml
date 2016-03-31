/*
 * item_test()
 * This test makes sure that items are placed and removed
 * from the player's inventory correctly and that items
 * have the proper effect when used
 */

player = instance_create(0,0,player_obj);
with(player_controller_obj)
{
  player_controller_init();
}
it("UT11: Checking to make sure that the player correctly initializes with 3 items in the inventory",3,items_in_inventory());
inventory_size = items_in_inventory();
for(i = 0; i < inventory_size; ++i)
{
  remove_from_inventory(player_controller_obj.player_inventory[items_in_inventory()-1], items_in_inventory()-1);
  it("UT11: Removed an item. Confirming the number of items is now " + string(2 - i) + ".",2-i,items_in_inventory());
}
it("UT11: Confirming that an item that is not in the inventory can't be removed.",false,remove_from_inventory("simple armor",0));
it("UT11: Confirming there are still 0 items in the inventory.",0,items_in_inventory());

item_test_i = 0;
while(not inventory_is_full())
{
  ++item_test_i;
  add_item_to_inventory(item_information_controller.armor[0,0]);
  it("UT11: Added item. Confirming the inventory now contains " + string(item_test_i) + " item(s).", item_test_i, items_in_inventory());
  it("UT11: Confirming that the item is in the inventory.", true, is_in_inventory(item_information_controller.armor[0,0]));
  if(not inventory_is_full())
  {
    ++item_test_i;
    add_item_to_inventory(item_information_controller.potion[0,0]);
    it("UT11: Added item. Confirming the inventory now contains " + string(item_test_i) + " item(s).", item_test_i, items_in_inventory());
    it("UT11: Confirming that the item is in the inventory.", true, is_in_inventory(item_information_controller.potion[0,0]));
    if(not inventory_is_full())
    { 
      ++item_test_i;
      add_item_to_inventory(item_information_controller.weapon[0,0]);
      it("UT11: Added item. Confirming the inventory now contains " + string(item_test_i) + " item(s).", item_test_i, items_in_inventory());
      it("UT11: Confirming that the item is in the inventory.", true, is_in_inventory(item_information_controller.weapon[0,0]));
    }
  }
  
}

it("UT11: Confirming that items cannot be added to the inventory when it is full.", false,add_item_to_inventory(item_information_controller.weapon[0,0]));
t_attack = player_controller_obj.my_attack;
t_defense = player_controller_obj.my_defense;
equip_item(item_information_controller.weapon[0,0],0);
equip_item(item_information_controller.armor[0,0],2);
it("UT11: Confirming that equipping a weapon correctly modifies the attack stat.", t_attack + item_information_controller.weapon[0,1], player_controller_obj.my_attack);
it("UT11: Confirming that equipping armor correctly modifies the defense stat.", t_defense + item_information_controller.armor[0,1], player_controller_obj.my_defense);
it("UT11: Confirming that equipped items are removed from the inventory.", player_controller_obj.MAX_INVENTORY_SIZE - 2, items_in_inventory());
set_test_draw();
return true;
