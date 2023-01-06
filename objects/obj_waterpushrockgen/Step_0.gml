if(global.interact != 5) rate_time++;
if(falling == 0 && collision_rectangle(x1, y1, x2, y2, 1570, 0, 1)) {
    falling= 1;
    snd_play(snd_fall2 );
    obj_mainchara.image_alpha= 0.5;
    // obj_dialoguer
    with(779) instance_destroy();
    // OBJ_WRITER
    with(782) instance_destroy();
    // obj_face
    with(774) instance_destroy();
    global.interact= 1;
    obj_mainchara.vspeed= 6;
    global.phasing= 1;
}
if(falling == 1 && obj_mainchara.y > triggery) {
    if(fell == 0) {
        obj_mainchara.dsprite= 1043;
        obj_mainchara.usprite= 1044;
        obj_mainchara.rsprite= 1045;
        obj_mainchara.lsprite= 1046;
        fell= 1;
    } else  {
        obj_mainchara.dsprite= 1043;
        obj_mainchara.usprite= 1044;
        obj_mainchara.rsprite= 1045;
        obj_mainchara.lsprite= 1046;
        fell= 0;
    }
    obj_mainchara.image_alpha= 1;
    obj_mainchara.x= round(obj_mainchara.x);
    obj_mainchara.y= round(obj_mainchara.y);
    obj_mainchara.vspeed= 0;
    global.interact= 0;
    global.phasing= 0;
    falling= 0;
}

/* */
/*  */
