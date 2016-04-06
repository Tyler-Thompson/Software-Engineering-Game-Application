/*
* music_play()
*
* Starts playing music based on the room the player is currently in
*/

var song_priority = 10;

switch (room)
{
    case menu_room:
        song_index = shiny_trinkets_mp3;
        break;
    case first_room:
        song_index = shiny_trinkets_mp3;
        break;
    case second_room:
        song_index = shiny_trinkets_mp3;
        break;
    case options_room:
        song_index = shiny_trinkets_mp3;
        break;
    case rock_dodge_room:
        song_index = minigame_music_mp3;
        break;
    default:
        song_index = shiny_trinkets_mp3;
        break;
}

//plays music
if (!audio_is_playing(song_index)) 
{ 
    audio_stop_all();
    audio_play_sound(song_index, song_priority, 1); 
}
