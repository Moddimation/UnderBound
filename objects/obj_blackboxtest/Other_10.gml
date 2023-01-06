i= 0;
while(i < 4) {
    gel= instance_create(x, y, obj_blackboxpart );
    gel.image_angle= image_angle + i * 90;
    i++;
}
snd= choose(0, 1, 2);
if(snd == 0) snd_play(snd_breaka );
if(snd == 1) snd_play(snd_breakb );
if(snd == 2) snd_play(snd_breakc );
instance_destroy();


/*  */
