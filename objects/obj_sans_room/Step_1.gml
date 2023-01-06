scr_depth(0, 0, 0, 0, 0);
script_execute(scr_npcdir , 2);
if(s_click == 1 && instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 8)
    caster_free(-3);
if(s_click == 1 && !instance_exists(OBJ_WRITER )) {
    s_click= 2;
    snd_play(snd_noise );
    visible= 0;
    blk= scr_marker(0, 0, 996);
    blk.depth= -20;
    blk.image_xscale= 3000;
    blk.image_yscale= 1000;
    global.interact= 1;
    alarm[4]= 10;
}
if(s_click == 2) global.interact= 1;
if(s_click == 3) {
    snd_play(snd_noise );
    with(blk) instance_destroy();
    s_click= 4;
    // obj_mainchara
    with(1570) uncan= 0;
    global.interact= 0;
    instance_destroy();
}

/* */
/*  */
