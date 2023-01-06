global.interact= 3;
instance_create(0, 0, obj_unfader );
audio_stop_all();
if(touched == 0) {
    snd_play(mus_dooropen );
    alarm[2]= 14;
    touched= 1;
}


/*  */
