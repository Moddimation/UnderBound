if(instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.stringno == 3 && con == 1) {
        caster_pause(global.batmusic);
        con= 2;
    }
    if(con == 2 && OBJ_WRITER.stringno == 15) {
        caster_resume(global.batmusic);
        con= 3;
        global.flag[21]= 0;
        // OBJ_WRITER
        with(782) instance_destroy();
        global.msg[0]= "* You ate the Instant Noodles.";
        script_execute(scr_recoitem , 4);
        instance_create(0, 0, obj_foodsound );
    }
} else  instance_destroy();


/*  */
