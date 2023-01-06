con= 0;
if(global.flag[497] < 2) {
    global.flag[497]= 2;
    obj_mainchara.visible= 0;
    obj_mainchara.x= 99;
    obj_mainchara.y= 136;
    mc= scr_marker(obj_mainchara.x, 112, obj_mainchara.sprite_index);
    mc.depth= 1000;
    pap= scr_marker(75, 190, 1325);
    pap.image_speed= 0;
    pap.depth= 80;
    global.interact= 1;
    con= 1;
    alarm[4]= 45;
    snd_play(snd_noise );
} else  instance_destroy();

/* */
/*  */
