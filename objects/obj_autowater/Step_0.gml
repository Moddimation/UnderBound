if(global.interact == 0 && con == 1) {
    global.msc= 0;
    if(room == 137)
        global.msg[0]= "* (The cup of water returned&  to the water cooler.)/%%";
    if(room == 138)
        global.msg[0]= "* (The cup of water was erased&  by a mysterious force.)/%%";
    if(room == 139) {
        global.msg[0]= "* (The water evaporated from&  the heat.)/";
        global.msg[1]= "* (The cup evaporated^1, too.)/%%";
    }
    // obj_mainchara
    with(1570) {
        dsprite= 1043;
        rsprite= 1045;
        usprite= 1044;
        lsprite= 1046;
    }
    con= 2;
    scr_regulartext();
    global.interact= 1;
}
if(con == 2 && !instance_exists(OBJ_WRITER )) {
    global.flag[366]= 0;
    global.interact= 0;
    instance_destroy();
}


/*  */
