if(myinteract == 1) {
    global.interact= 1;
    alarm[0]= 1;
    myinteract= 2;
}
if(myinteract == 3 && !instance_exists(mydialoguer) && con == 0) {
    global.interact= 0;
    myinteract= 0;
}
if(con == 1 && !instance_exists(OBJ_WRITER )) {
    obj_mainchara.cutscene= 1;
    __view_set( e__VW.Object, 0, -4 );
    con= 2;
    alarm[4]= 10;
    global.interact= 1;
}
if(con == 2) global.interact= 1;
if(con == 3) {
    rface= global.facing;
    if(obj_mainchara.x < x && obj_mainchara.y < y + 15) {
        global.facing= 0;
        obj_mainchara.image_speed= 0.25;
        obj_mainchara.vspeed= 3;
        con= 2.9;
        alarm[4]= 6;
    } else  con= 3.9;
}
if(con == 3.9) {
    global.facing= rface;
    obj_mainchara.image_speed= 0;
    obj_mainchara.vspeed= 0;
    sprite_index= lsprite;
    image_speed= 0.25;
    hspeed= -3;
    con= 4;
    alarm[4]= 10;
}
if(con == 5) {
    global.facing= 3;
    scr_npc_halt("d");
    con= 6;
    alarm[4]= 30;
}
if(con == 7) {
    instance_create(0, 0, obj_musfadeout );
    sprite_index= dsprite;
    image_index= 0;
    global.msc= 0;
    global.facechoice= 3;
    global.msg[0]= "* over here^1.&* i know a shortcut./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 8;
    m1= 0;
    m2= 0;
}
if(con == 8 && !instance_exists(OBJ_WRITER )) {
    if(m1 == 0) {
        sprite_index= lsprite;
        hspeed= -3;
        image_speed= 0.25;
        obj_mainchara.hspeed= -3;
        global.facing= 3;
        obj_mainchara.image_speed= 0.25;
        m1= 1;
        m2= 1;
    }
    if(m1 == 1 && x <= 53) {
        x= 50;
        vspeed= -3;
        hspeed= 0;
        sprite_index= usprite;
        m1= 2;
    }
    if(m2 == 1 && obj_mainchara.x <= 53) {
        obj_mainchara.x= 50;
        obj_mainchara.vspeed= -3;
        obj_mainchara.hspeed= 0;
        global.facing= 2;
        m2= 2;
        con= 13;
        alarm[4]= 45;
    }
}
if(con == 14) {
    event_user(2);
    con= 15;
}

/* */
/*  */
