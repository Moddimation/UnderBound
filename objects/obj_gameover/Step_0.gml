if(unpersist == 1) room_goto(global.currentroom);
if(room == global.currentroom) {
    room_persistent= 0;
    script_execute(scr_tempload );
    instance_destroy();
}


/*  */
