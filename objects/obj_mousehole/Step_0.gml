if(myinteract == 1) {
    if(audio_is_playing(112) == 0) {
        snd_stop(112);
        snd_play(snd_movemenu );
    }
    myinteract= 0;
}

/* */
/*  */
