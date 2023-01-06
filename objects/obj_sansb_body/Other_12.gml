if(damageturn == 0) {
    snd_stop(53);
    snd_play(snd_hurt1 );
    global.hp--;
    damageturn= 1;
}

/* */
/*  */
