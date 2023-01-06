if(con == 1) {
    instance_create(0, 0, obj_musfadeout );
    undyne= instance_create(-40, 60, obj_undynea_actor );
    undyne.rsprite= 1425;
    undyne.dsprite= 1427;
    undyne.lsprite= 1426;
    undyne.usprite= 1432;
    undyne.sprite_index= undyne.rsprite;
    undyne.hspeed= 1;
    undyne.image_speed= 0.1;
    con= 2;
    alarm[4]= 20;
}
if(con == 3) {
    undyne.hspeed= 0;
    undyne.image_index= 0;
    undyne.image_speed= 0;
    con= 4;
    alarm[4]= 40;
}
if(con == 5) {
    walked++;
    if(walked < 3) {
        con= 2;
        alarm[4]= 20;
        undyne.hspeed= 1;
        undyne.image_speed= 0.2;
    } else  con= 7;
}
if(con == 7) {
    undyne.hspeed= 0;
    undyne.image_speed= 0;
    global.facechoice= 5;
    global.faceemotion= 1;
    global.typer= 37;
    global.msg[0]= "* Armor..^1. so..^1. hot..^1./";
    global.msg[1]= "* But I can\\'t..^1.&* Give up.../%%";
    global.msc= 0;
    instance_create(0, 0, obj_dialoguer );
    con= 8;
}
if(con == 8 && !instance_exists(OBJ_WRITER )) {
    undyne.hspeed= 0.5;
    undyne.image_speed= 0.1;
    alarm[4]= 40;
    con= 9;
}
if(con == 10) {
    undyne.hspeed= 0;
    undyne.image_speed= 0;
    undyne.image_index= 0;
    alarm[4]= 60;
    con= 11;
}
if(con == 12) {
    snd_play(snd_noise );
    undyne2= instance_create(undyne.x, undyne.y, obj_undynefall );
    with(undyne) instance_destroy();
    con= 13;
}
if(con == 13) {
    global.flag[17]= 0;
    global.interact= 0;
    global.plot= 122;
    global.flag[350]= 2;
    instance_destroy();
}

/* */
/*  */
