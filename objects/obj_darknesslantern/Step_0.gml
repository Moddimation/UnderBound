if(myinteract == 1 && glowtimer <= 0) {
    if(snd_isplaying(snd_spearappear ) == 0) snd_play(snd_spearappear );
    myinteract= 0;
    glowtimer= 30;
    glowup= 1;
}
glowtimer--;
if(glowtimer <= 0) glowup= 0;
if(glowup == 1 && obj_darknesspuzzle.glowamt > 0)
    obj_darknesspuzzle.glowamt-= 0.07;
if(myinteract == 1) myinteract= 0;


/*  */
