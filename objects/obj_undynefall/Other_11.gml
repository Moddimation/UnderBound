if(waterthing == 0) {
    // obj_watercooler
    with(1298) havewater= 0;
    con= 10;
    waterthing= 1;
    global.interact= 1;
    // OBJ_WRITER
    with(782) instance_destroy();
}

