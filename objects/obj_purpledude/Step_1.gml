scr_npc_anim();
if(con == 1 && !instance_exists(OBJ_WRITER )) {
    global.interact= 1;
    con= 2;
    alarm[4]= 20;
}
if(con == 2) global.interact= 1;
if(con == 3) {
    global.phasing= 1;
    obj_mainchara.vspeed= 3;
    con= 4;
}
if(con == 4 && obj_mainchara.y > y - 10) {
    obj_mainchara.vspeed= 0;
    con= 5;
    alarm[4]= 20;
}
if(con == 6) {
    pil= instance_create(x + 10, y + 20, obj_waterpillar );
    con= 7;
    alarm[4]= 3;
}
if(con == 8) {
    visible= 0;
    obj_mainchara.visible= 0;
    con= 9;
    alarm[4]= 30;
}
if(con == 10) {
    instance_create(0, 0, obj_unfader );
    con= 11;
    global.entrance= 24;
    alarm[4]= 10;
}
if(con == 12) {
    instance_create(0, 0, obj_persistentfader );
    if(room == 93) room_goto(91);
    if(room == 91) room_goto(93);
    con= 13;
}
if(con == 20) {
    con= 21;
    alarm[4]= 20;
}
if(con == 21) {
    global.interact= 1;
    visible= 0;
    obj_mainchara.visible= 0;
    obj_mainchara.x= x;
    obj_mainchara.y= y - 8;
}
if(con == 22) {
    pil= instance_create(x + 10, y + 20, obj_waterpillar );
    con= 23;
    alarm[4]= 3;
}
if(con == 24) {
    obj_mainchara.visible= 1;
    visible= 1;
    con= 25;
    alarm[4]= 20;
}
if(con == 26) {
    global.phasing= 1;
    obj_mainchara.image_speed= 0.25;
    global.facing= 2;
    obj_mainchara.vspeed= -3;
    alarm[4]= 6;
    con= 27;
}
if(con == 28) {
    obj_mainchara.vspeed= 0;
    global.facing= 0;
    obj_mainchara.image_speed= 0;
    con= 29;
    alarm[4]= 20;
    global.phasing= 0;
}
if(con == 30) {
    global.msg[0]= "* Thanks for stepping on&  my face^1.&* Here\\'s the 3 gold./";
    global.msg[1]= "* (You got 3 gold.)/%%";
    global.gold+= 3;
    global.msc= 0;
    scr_regulartext();
    con= 31;
}
if(con == 31 && !instance_exists(OBJ_WRITER )) {
    global.interact= 0;
    con= 0;
}

/* */
/*  */
