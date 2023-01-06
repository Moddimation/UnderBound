if(visible == 1) visible= 0;
else  {
    visible= 1;
    claps++;
    snd_stop(106);
    snd_play(snd_noise );
}
if(claps < 2) alarm[4]= 2;

/* */
/*  */
