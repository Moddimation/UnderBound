g= 0;
myinteract= 0;
image_xscale= 1;
image_yscale= 1;
if(object_index == 962) {
    if(global.flag[55] == 1) {
        g= 1;
        sprite_index= spr_dogmush ;
        y+= 20;
    }
    if(global.flag[55] == 0 && global.plot < 67) {
        g= 2;
        sprite_index= spr_lessdogsnow ;
        y+= 30;
    }
} else  {
    if(global.flag[55] == 1 || global.flag[55] == 0) instance_destroy();
}
scr_depth(0, 0, 0, 0, 0);


/*  */
