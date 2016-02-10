/*
* music_play()
*
* Starts playing music based on the room the player is currently in
*/

var song_priority = 10;

switch (room)
{
    case menu_room:
        var song_index = shiny_trinkets_mp3;
        break;
    case first_room:
        var song_index = shiny_trinkets_mp3;
        break;
    case options_room:
        var song_index = shiny_trinkets_mp3;
        break;
    default:
        var song_index = "";
        audio_stop_all();
}

//plays music
if (!audio_is_playing(song_index)&&!song_index=="") 
{ 
    audio_play_sound(song_index, song_priority, 1); 
}
