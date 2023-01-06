scr_depth(0, 0, 0, 0, 0);
if(con == 99999) {
    global.interact= 1;
    obj_mainchara.x= 66;
    con= 1;
    global.msg[0]= "* (The cavern is too narrow&  for an umbrella.)/%%";
    scr_regulartext();
}
if(con == 1 && !instance_exists(OBJ_WRITER )) {
    global.interact= 0;
    con= 0;
}

/* */
/*  */
