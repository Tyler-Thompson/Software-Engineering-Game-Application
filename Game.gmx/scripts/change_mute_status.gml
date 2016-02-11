/*
* change_mute_status()
*
* If the master volume is muted, this function unmutes the game and sets it to full volume; if the volume was unmuted, this function mutes the master volume
*/

if (audio_get_master_gain(MASTER_LISTENER_INDEX) > 0)
{
    //audio is unmuted, mute the audio
    audio_set_master_gain(MASTER_LISTENER_INDEX, 0);
}
else
{
    //audio is muted, unmute the audio and set to full volume
    audio_set_master_gain(MASTER_LISTENER_INDEX, 1);
}
