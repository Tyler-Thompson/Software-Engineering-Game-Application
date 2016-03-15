/*
* add_enemy_information(string enemy information, next_index)
* takes as a string the various enemy information, which should be ordered as:
* "name level region attack defense health power [special_abilities]"
* and adds it to the enemy information controller
*/

arguments = argument0;
first_index = argument1;
second_index = 0;
word = "";
last_argument = false;
for(i = 1; i <= string_length(arguments); ++i)
{
    if(last_argument)
    {
        if(string_char_at(arguments,i) != "]")
        {
            word += string_char_at(arguments,i);
        }
        else
        {
            enemy[first_index, second_index] = word;
            second_index += 1;
            word = "";
            last_argument = false;
        }
    }
    else if(string_char_at(arguments,i) != " " and string_char_at(arguments,i) != "[" and last_argument == false)
    {
        word += string_char_at(arguments,i);
    }
    else if(string_char_at(arguments,i) == " " and last_argument == false)
    {
        enemy[first_index, second_index] = word;
        second_index += 1;
        global.test = self.enemy[first_index, 0];
        word = "";        
    }
    else if(string_char_at(arguments,i) == "[" and last_argument == false)
    {
        last_argument = true;
    }    
}
