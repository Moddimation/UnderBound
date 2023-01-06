if(con == 1) {
    // obj_mkid_actor
    with(1115) image_speed= 0.25;
    // obj_mkid_actor
    with(1115) sprite_index= rtsprite;
    global.facechoice= 0;
    global.msc= 0;
    global.typer= 5;
    global.msg[0]= "* Man^1, Undyne is sooooooo&  cool./";
    global.msg[1]= "* She beats up bad guys and&  NEVER loses./";
    global.msg[2]= "* If I was a human^1, I would&  wet the bed every night.../";
    global.msg[3]= "* ... knowing she was gonna&  beat me up^1!&* Ha ha./%%";
    scr_regulartext();
    con= 2;
}
if(con == 2 && !instance_exists(OBJ_WRITER )) {
    con= 3;
    global.flag[91]= 1;
    global.interact= 0;
    instance_destroy();
}

/* */
/*  */
