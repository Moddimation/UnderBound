con= 0;
alpha= 0;
amalgam= 0;
anim= 0;
myinteract= 0;
scr_depth();
talkedto= 0;
if(global.flag[482] == 1) {
    x= 170;
    y= 138;
    sprite_index= spr_leverkey ;
    image_speed= 0.2;
    image_blend= 16711680;
}
if(global.flag[482] > 1) instance_destroy();


/*  */
