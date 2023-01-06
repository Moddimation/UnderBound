if(con == 1) {
    global.interact= 1;
    alarm[4]= 25;
    con= 2;
}
if(con == 3) {
    global.msg[0]= "* Undyne..^1.&* You...^1.&* You saved me!/";
    global.msg[1]= "* Huh^1?&* They ran away?/";
    global.msg[2]= "* Yo^1, you\\'re wrong.../";
    global.msg[3]= "* They went to get help!/";
    global.msg[4]= "* They\\'ll be back any second!!/";
    global.msg[5]= "* O-okay^1, I\\'ll go home.../%%";
    scr_regulartext();
    con= 4;
}
if(con == 4 && !instance_exists(OBJ_WRITER )) {
    con= 5;
    global.plot= 120;
    global.interact= 0;
    instance_destroy();
}

/* */
/*  */
