shadow= 1;
alarm[0]= 12;
if(level == 2) alarm[0]= 3;
if(level == 3) alarm[0]= 3;
caster_pause(global.batmusic);
// obj_bonestab
with(502) instance_destroy();
// obj_sans_shaker
with(512) instance_destroy();
// obj_bonewall_normal
with(500) instance_destroy();
// obj_bonewall
with(501) instance_destroy();
// obj_boneplat
with(515) instance_destroy();
// obj_sans_bonebul
with(499) instance_destroy();
// obj_gasterblaster
with(498) instance_destroy();
if(shadow_num >= shadow_max) global.border= 0;
snd_play(snd_noise );
// obj_borderparent
with(757) visible= 0;

/* */
/*  */
