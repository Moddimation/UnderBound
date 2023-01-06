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
    con= 2;
    alarm[4]= 10;
    global.interact= 1;
}
if(con == 2) global.interact= 1;
if(con == 3) {
    sprite_index= lsprite;
    image_speed= 0.25;
    hspeed= -3;
    con= 4;
    alarm[4]= 14;
}
if(con == 5) {
    sprite_index= dsprite;
    hspeed= 0;
    vspeed= 3;
    con= 6;
    alarm[4]= 18;
    global.facing= 3;
}
if(con == 7) {
    sprite_index= rsprite;
    global.facing= 0;
    hspeed= 3;
    vspeed= 0;
    con= 8;
    alarm[4]= 17;
}
if(con == 9) {
    image_speed= 0;
    hspeed= 0;
    con= 10;
    alarm[4]= 20;
}
if(con == 11) {
    instance_create(0, 0, obj_musfadeout );
    global.facing= 0;
    sprite_index= usprite;
    image_index= 0;
    global.msc= 0;
    global.facechoice= 3;
    global.msg[0]= "* over here^1.&* i know a shortcut./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 12;
}
if(con == 12 && !instance_exists(OBJ_WRITER )) {
    // obj_doorA
    with(805) instance_destroy();
    // obj_doorAmusicfade
    with(811) instance_destroy();
    global.facing= 1;
    hspeed= 3;
    sprite_index= rsprite;
    image_speed= 0.25;
    obj_mainchara.hspeed= 2;
    obj_mainchara.vspeed= 1;
    obj_mainchara.image_speed= 0.334;
    con= 13;
    alarm[4]= 30;
}
if(con == 14) {
    event_user(2);
    con= 15;
}

/* */
/*  */
