myinteract= 0;
read= 0;
image_xscale= 1;
image_yscale= 1;
if(global.plot == 0) instance_destroy();
active= 1;
if(global.flag[7] == 1) active= 0;
if(active == 1) {
    idealvolume[0]= 1;
    idealvolume[1]= 0.01;
    curvol1= caster_get_volume(global.currentsong);
    curvol2= caster_get_volume(global.currentsong2);
    crumblebaby= audio_sound_get_track_position(global.currentsong);
    audio_sound_set_track_position(global.currentsong2, crumblebaby);
}

