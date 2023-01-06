if(won == 1 && !instance_exists(OBJ_WRITER ))
    room_goto(global.currentroom);
if(won == 1 && !instance_exists(OBJ_WRITER ) && OBJ_WRITER.halt != 0)
    room_goto(global.currentroom);


/*  */
