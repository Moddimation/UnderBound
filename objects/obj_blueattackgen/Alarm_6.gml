if(!instance_exists(OBJ_WRITER )) {
    obj_papyrusboss.truefight= 1;
    with(blcon) instance_destroy();
    caster_loop(global.batmusic, 0.8, 1);
    global.turntimer= 2;
    instance_destroy();
    global.msg[0]= "* You\\'re blue now.";
    obj_papyrusboss.dontcancel= 0;
    exit;
} else  {
    alarm[6]= 2;
    exit;
}


/*  */
