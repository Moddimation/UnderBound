if(global.debug == 1) {
    if(playthesong == 0) {
        undyne= caster_load("music/undynetruetheme.ogg");
        caster_loop(undyne, 1, 1);
        playthesong= 1;
    }
    global.flag[18]= 1;
    fakedrawer= 1;
    instance_create(0, 0, obj_flasher );
    scr_shake(3, 3, 2);
    __view_set( e__VW.Object, 0, object_index );
    __view_set( e__VW.HBorder, 0, 160 );
    __view_set( e__VW.VBorder, 0, 100 );
    __view_set( e__VW.WView, 0, 160 );
    __view_set( e__VW.HView, 0, 120 );
    snd_play(snd_damage );
    global.typer= 5;
    global.msc= 0;
    global.msg[0]= "*TEST!!!/%%";
    instance_create(10 + xx, 150 + yy, OBJ_WRITER );
    if(__view_get( e__VW.Angle, 0 ) <= 0) __view_set( e__VW.Angle, 0, 10 + random(40) );
    else  __view_set( e__VW.Angle, 0, -1 - random(40) );
}

/* */
/*  */
