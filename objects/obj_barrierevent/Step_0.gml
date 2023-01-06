if(con == 0) {
    con= 1;
    alarm[4]= 180;
}
if(con == 1) {
    global.interact= 1;
    global.facing= 2;
}
if(con == 2) {
    global.msc= 762;
    global.typer= 60;
    global.facechoice= 0;
    global.faceemotion= 0;
    if(global.flag[457] == 0) global.msc= 762;
    else  global.msc= 764;
    instance_create(0, 0, obj_dialoguer );
    con= 3;
}
if(con == 10 && !instance_exists(OBJ_WRITER )) {
    con= 11;
    alarm[4]= 50;
}
if(con == 11) global.facing= 2;
if(con == 12) {
    asg.sprite_index= asg.rsprite;
    con= 13;
    alarm[4]= 30;
}
if(con == 14) {
    asg.sprite_index= asg.dtsprite;
    con= 15;
    alarm[4]= 30;
}
if(con == 16) {
    global.typer= 60;
    global.facechoice= 7;
    global.faceemotion= 1;
    global.msc= 0;
    global.msg[0]= "* Ready?/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 17;
}
if(con == 17 && !instance_exists(OBJ_WRITER )) {
    caster_free(-3);
    snd_play(snd_spearappear );
    h[0]= instance_create(60, 220, obj_heartcontainer );
    h[0].image_blend= 32768;
    h[1]= instance_create(80, 220, obj_heartcontainer );
    h[1].image_blend= 65535;
    h[2]= instance_create(100, 220, obj_heartcontainer );
    h[2].image_blend= 4235519;
    h[3]= instance_create(120, 220, obj_heartcontainer );
    h[4]= instance_create(200, 220, obj_heartcontainer );
    h[4].image_blend= 8388736;
    h[5]= instance_create(220, 220, obj_heartcontainer );
    h[5].image_blend= 16711680;
    h[6]= instance_create(240, 220, obj_heartcontainer );
    h[6].image_blend= 16776960;
    con= 18;
    alarm[4]= 150;
}
if(con == 19) {
    global.flag[15]= 0;
    global.flag[16]= 1;
    caster_free(-3);
    global.battlegroup= 100;
    instance_create(0, 0, obj_battler );
    con= 20;
}
if(con == 40 && !instance_exists(OBJ_WRITER )) {
    instance_create(obj_mainchara.x, obj_mainchara.y + 15, obj_doorBmusicfade );
    con= 41;
}


/*  */
