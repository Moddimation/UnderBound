defeat= 1;
snd_play(snd_break1 );
// other
with(-2) instance_destroy();
if(instance_exists(obj_shootguy )) {
    obj_shootguy.buffer= 60;
    obj_shootguy.win= 1;
    obj_shootguy.alarm[2]= 30;
}

/* */
/*  */
