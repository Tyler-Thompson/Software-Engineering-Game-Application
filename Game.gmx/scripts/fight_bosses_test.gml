/*
 * fight_bosses()
 * When this script is called from the testing room,
 * it runs through a simulation of a player fight with 
 * the various bosses and ensures that the basic attacks
 * and abilities function correctly.
 */

var test_finished = true;

enemy_name = "Grim_Reaper";
battle_controller_obj.enemy_name = "Grim_Reaper";
battle_controller_obj.enemy_sprite = grim_reaper_spr;
get_enemy_information(enemy_name);
battle_controller_obj.battle_over = false;
battle_controller_obj.display_results = false;
battle_controller_obj.turn = battle_controller_obj.PLAYER_TURN;
player = instance_create(216, 120, player_battle_obj);
enemy = instance_create(264, 120, enemy_battle_obj);
enemy.sprite_index = battle_controller_obj.enemy_sprite;
attack_btn = instance_create(48, 120, basic_attack_btn);

var current_endurance = player_controller_obj.current_hp + max(player_controller_obj.my_defense, 0);
basic_attack();
var new_endurance = player_controller_obj.current_hp + max(player_controller_obj.my_defense, 0);
it("UT14 Verifying that the grim reaper's basic attack works correctly", current_endurance - battle_controller_obj.enemy_attack, new_endurance);

var count = 0;
var break_loop = false;
var first = false;
var second = false;
var current_attack;
var new_attack;
while(count < 1000000 and not break_loop)
{
  current_endurance = player_controller_obj.current_hp + max(player_controller_obj.my_defense, 0);
  current_attack = player_controller_obj.my_attack;
  touchofdeath();
  new_endurance = player_controller_obj.current_hp + max(player_controller_obj.my_defense, 0);
  new_attack = player_controller_obj.my_attack;
  if(not first and current_endurance == new_endurance + 2*battle_controller_obj.enemy_attack)
  {
    first = true;
    if(current_attack == new_attack + 1)
    {
      second = true;
    }
  }
  if(first and second)
  {
    it("UT14 Verified that touchofdeath works as expected.", true, true);
    break_loop = true;
  }
  player_controller_obj.current_hp = player_controller_obj.max_hp;
  ++count;
}
if(count >= 1000000)
{
  it("UT14 Verified that touchofdeath works as expected.", true, false);
}

with(player)
{
  instance_destroy();
}
with(enemy)
{
  instance_destroy();
}

enemy_name = "Grim_Reaper";
battle_controller_obj.enemy_name = "Dragon_Lord";
battle_controller_obj.enemy_sprite = dragon_lord_spr;

get_enemy_information(enemy_name);
battle_controller_obj.battle_over = false;
battle_controller_obj.display_results = false;
battle_controller_obj.turn = battle_controller_obj.PLAYER_TURN;
player = instance_create(216, 120, player_battle_obj);
enemy = instance_create(264, 120, enemy_battle_obj);
enemy.sprite_index = battle_controller_obj.enemy_sprite;
attack_btn = instance_create(48, 120, basic_attack_btn);



var current_endurance = player_controller_obj.current_hp + max(player_controller_obj.my_defense, 0);
basic_attack();
var new_endurance = player_controller_obj.current_hp + max(player_controller_obj.my_defense, 0);
it("UT14 Verifying that the grim reaper's basic attack works correctly", current_endurance - battle_controller_obj.enemy_attack, new_endurance);

count = 0;
break_loop = false;
first = false;
second = false;
var third = false;
var fourth = false;
var current_defense;
var new_defense;
while(count < 1000000 and not break_loop)
{
  current_endurance = player_controller_obj.current_hp;
  current_defense = player_controller_obj.my_defense;
  firebreath();
  new_endurance = player_controller_obj.current_hp;
  new_defense = player_controller_obj.my_defense;
  if(not first and current_endurance == new_endurance)
  {
    first = true;
    it("UT14 Verifying that the dragon can miss.", true, true);
  }
  else if(not second and current_endurance == new_endurance + battle_controller_obj.enemy_attack)
  {
    it("UT14 Verifying that firebreath removes armor before dealing the normal damage.", 0, new_defense);
    it("UT14 Verified that firebreath can deal normal damage.", true, true);
    second = true;
  }
  else if(not third and current_endurance == new_endurance + 2*battle_controller_obj.enemy_attack)
  {
    it("UT14 Verifying that firebreath removes armor before dealing double damage.", 0, new_defense);
    it("UT14 Verified that firebreath can deal double damage.", true, true);
    third = true;
  }
  else if(not fourth and current_endurance == new_endurance + 3*battle_controller_obj.enemy_attack)
  {
    it("UT14 Verifying that firebreath removes armor before dealing triple damage.", 0, new_defense);
    it("UT14 Verified that firebreath can deal triple damage.", true, true);
    fourth = true;
  }
  if(first and second and third and fourth)
  {
    break_loop = true;
  }
  player_controller_obj.current_hp = player_controller_obj.max_hp;
  player_controller_obj.my_defense = player_controller_obj.max_defense;
  ++count;
}
if(count >= 1000000)
{
  it("UT14 Verified that firebreath works as expected.", true, false);
}



with(player)
{
  instance_destroy();
}
with(enemy)
{
  instance_destroy();
}


return test_finished;
