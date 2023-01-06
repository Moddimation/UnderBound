if(room == 221 && con == 0 && global.flag[450] <= 2 && global.flag[455] == 0 && obj_mainchara.x < 90) {
    global.border= 3;
    global.flag[15]= 1;
    global.flag[16]= 1;
    SCR_BORDERSETUP();
    instance_create(0, 0, obj_battleblcon );
    global.flag[455]= 1;
    con= 1;
    alarm[0]= 50;
}
if(room == 221 && con < 2 && global.flag[450] <= 2 && global.flag[455] == 1 && global.flag[456] < 2 && obj_mainchara.x > 180) {
    global.border= 3;
    global.flag[15]= 1;
    global.flag[16]= 1;
    SCR_BORDERSETUP();
    instance_create(0, 0, obj_battleblcon );
    global.flag[455]= 2;
    con= 3;
    alarm[0]= 50;
}
if(room == 222 && con == 0 && global.flag[450] <= 2 && global.flag[456] == 0 && obj_mainchara.x > 460) {
    global.border= 3;
    global.flag[15]= 1;
    global.flag[16]= 1;
    SCR_BORDERSETUP();
    instance_create(0, 0, obj_battleblcon );
    global.flag[456]= 1;
    con= 1;
    alarm[0]= 50;
}
if(room == 222 && con < 2 && global.flag[450] <= 2 && global.flag[456] == 1 && global.flag[455] < 2 && obj_mainchara.x < 100) {
    global.border= 3;
    global.flag[15]= 1;
    global.flag[16]= 1;
    SCR_BORDERSETUP();
    instance_create(0, 0, obj_battleblcon );
    global.flag[456]= 2;
    con= 3;
    alarm[0]= 50;
}


/*  */
