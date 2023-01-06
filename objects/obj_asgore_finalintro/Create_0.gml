global.batmusic= caster_load("music/bergentruckung.ogg");
murder= 0;
if(scr_murderlv() >= 16) murder= 1;
image_speed= 0;
image_index= 0;
con= -10;
face_index= 0;
global.mnfight= -999;
global.myfight= -999;
obj_heart.x= -999;
obj_fightbt.sprite_index= spr_fightbt_hollow ;
obj_itembt.sprite_index= spr_itembt_hollow ;
obj_talkbt.sprite_index= spr_talkbt_hollow ;
// obj_sparebt
with(754) visible= 0;
if(murder == 0) instance_create(obj_sparebt.x, obj_sparebt.y, obj_mercybutton_shatter );
// obj_battlebg
with(185) instance_destroy();
obj_borderparent.visible= 0;
global.faceemotion= 0;
global.mercy= 2;
image_xscale= 2;
image_yscale= 2;
skip= 0;
if(global.tempvalue[10] > 0 && global.flag[493] < 12 && murder == 0) {
    skip= 1;
    con= 2;
    alarm[4]= 15;
    caster_free(-3);
}
obj_heart.visible= 0;
global.seriousbattle= 1;
cutsound= caster_load("music/sfx_cinematiccut.ogg");
swipesound= caster_load("music/sfx_swipe.ogg");
special_end= 0;
if(global.flag[493] >= 12 && murder == 0) {
    special_end= 1;
    con= -10;
    skip= 0;
    alarm[4]= 0;
}
if(skip == 0 && murder == 0) caster_play(global.batmusic, 1, 1);
if(murder == 1) global.faceemotion= 1;


/*  */
