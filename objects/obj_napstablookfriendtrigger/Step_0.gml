if(con == 1) {
    alarm[4]= 15;
    con= 2;
}
if(con == 3) {
    nap.sprite_index= spr_napstablook_d ;
    con= 4;
    alarm[4]= 20;
}
if(con == 5) {
    global.msg[0]= "* oh hey... you...&* followed me.../";
    global.msg[1]= "* my house is up here.../";
    global.msg[2]= "* so you probably don\\'t want to&  come this way.../";
    global.msg[3]= "* hope that helps.../%%";
    if(global.flag[36] > 0) {
        global.msg[0]= "* hey..^1.&* my house is up here.../";
        global.msg[1]= "* in case you want to see.../";
        global.msg[2]= "* or in case.../";
        global.msg[3]= "* you don\\'t.../%%";
    }
    scr_regulartext();
    con= 6;
}
if(con == 6 && !instance_exists(OBJ_WRITER )) {
    nap.vspeed= -3;
    con= 7;
    alarm[4]= 30;
}
if(con == 8) {
    global.interact= 0;
    global.plot= 117;
    instance_destroy();
}

/* */
/*  */
