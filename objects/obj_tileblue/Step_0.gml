if(collision_rectangle(x + 5, y + 5, x + 15, y + 15, 1212, 0, 1)) {
    if(splash == 0) {
        snd_play(snd_splash );
        splash= 1;
    }
} else  splash= 0;

/* */
/*  */
