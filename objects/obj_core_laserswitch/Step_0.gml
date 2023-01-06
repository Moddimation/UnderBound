if(myinteract == 1 && con == 0) {
    snd_play(snd_noise );
    obj_bluelaser_o.hspeed= -6;
    obj_bluelaser_o.active= 1;
    obj_bluelaser_o.rememberhspeed= 6;
    con= 1;
    sprite_index= spr_onoffswitch_on ;
    fader= 1;
    // obj_kitchenforcefield
    with(1183) canttalk= 1;
    ff2= instance_create(160, 80, obj_kitchenforcefield );
    ff2.image_yscale= 5;
    global.plot= 180;
}
if(fader == 1 && instance_exists(ff)) {
    with(ff) {
        canttalk= 1;
        if(instance_exists(solid1)) {
            with(solid1) instance_destroy();
        }
        image_alpha-= 0.1;
    }
    if(ff.image_alpha < 0.1) {
        with(ff) instance_destroy();
    }
}
if(pcon == 40 && obj_mainchara.x > 540 && global.interact == 0 && pcon == 40) {
    global.interact= 1;
    pcon= 41;
    snd_play(snd_phone );
    global.msg[0]= "* Ring.../";
    global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
    global.msg[2]= "* Oh my god^1, are&  you okay?/";
    global.msg[3]= "\\\\E8* I..^1. I\\'m sorry^1, I&  gave you the&  wrong order./";
    global.msg[4]= "\\\\E8* .../";
    global.msg[5]= "\\\\E6* E-everything\\'s fine^1,&  okay?/";
    global.msg[6]= "* L-let\\'s just keep&  heading to the&  right./";
    global.msg[7]= "\\\\TS \\\\F0 \\\\T0 %";
    global.msg[8]= "* Click.../%%";
    if(remhp > global.hp) {
        global.msg[0]= "* Ring.../";
        global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
        global.msg[2]= "* Oh my god..^1.&* Are you hurt?/";
        global.msg[3]= "\\\\E8* I..^1. I\\'m so sorry^1,&  I... I gave you&  the wrong order./";
        global.msg[4]= "\\\\E8* .../";
        global.msg[5]= "\\\\E6* Everything\\'s going&  to be fine^1, okay?/";
        global.msg[6]= "* L-let\\'s just keep&  heading to the&  right./";
        global.msg[7]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[8]= "* Click.../%%";
    }
    scr_regulartext();
}
if(pcon == 41 && !instance_exists(OBJ_WRITER )) {
    global.plot= 181;
    pcon= 42;
    global.interact= 0;
}


/*  */
