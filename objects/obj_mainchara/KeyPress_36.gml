if(global.debug == 1) {
    global.battlegroup= 80 + nnn;
    global.border= 0;
    instance_create(0, 0, obj_battleblcon );
    if(global.plot == 998) {
        global.flag[10]= 0;
        global.flag[11]= 0;
        global.flag[12]= 0;
        global.flag[13]= 0;
        global.entrance= 0;
        global.battlegroup= 82;
        obj_mainchara.depth= -600;
        if(!instance_exists(obj_battler )) instance_create(0, 0, obj_battler );
    }
}


/*  */
