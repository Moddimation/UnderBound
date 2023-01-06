if(con == 1) {
    // obj_npc_marker
    with(1363) visible= 0;
    with(brokemett) visible= 1;
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (20) );
    con= 2;
    alarm[4]= 50;
}
if(con == 2) global.interact= 1;
if(con == 3) {
    snd_play(snd_spearappear );
    con= 3.1;
    alarm[4]= 45;
}
if(con == 4.1) con= 4;
if(con == 4) {
    global.facechoice= 6;
    global.typer= 47;
    global.msc= 0;
    global.faceemotion= 6;
    global.msg[0]= "* I..^1. I managed to open&  the lock^1!&* Are you two.../%%";
    instance_create(0, 0, obj_dialoguer );
    con= 5;
}
if(con == 5 && !instance_exists(OBJ_WRITER )) {
    al= instance_create(obj_mainchara.x + 40, obj_mainchara.y + 75, obj_alphys_npc );
    al.sprite_index= al.usprite;
    al.vspeed= -3;
    al.fun= 1;
    al.image_speed= 0.25;
    con= 6;
    alarm[4]= 25;
}
if(con == 7) {
    al.speed= 0;
    al.image_speed= 0;
    con= 8;
    alarm[4]= 30;
}
if(con == 9) {
    global.flag[430]= 1;
    global.faceemotion= 0;
    global.msg[0]= "* Oh my god./%%";
    con= 10;
    instance_create(0, 0, obj_dialoguer );
}
if(con == 10 && !instance_exists(OBJ_WRITER )) {
    al.vspeed= -3.5;
    al.hspeed= -4;
    al.image_speed= 0.334;
    con= 11;
    alarm[4]= 10;
}
if(con == 12) {
    al.speed= 0;
    al.image_speed= 0;
    con= 13;
    alarm[4]= 30;
}
if(con == 14) {
    global.faceemotion= 0;
    global.msg[0]= "* Mettaton!/";
    global.msg[1]= "\\\\E1* Mettaton^1, are you.../%%";
    con= 15;
    instance_create(0, 0, obj_dialoguer );
}
if(con == 15 && !instance_exists(OBJ_WRITER )) {
    con= 16;
    alarm[4]= 80;
}
if(con == 17) {
    con= 18;
    al.sprite_index= al.rsprite;
    alarm[4]= 50;
}
if(con == 19) {
    global.faceemotion= 6;
    global.msg[0]= "* H..^1. hey.../";
    global.msg[1]= "* D..^1. don\\'t worry&  about it.../";
    global.msg[2]= "* I can always.../";
    global.msg[3]= "\\\\E5* I can always build&  a different robot!/";
    global.msg[4]= "\\\\E6* .../";
    global.msg[5]= "\\\\E5* Why don\\'t you go&  on ahead?/%%";
    if(global.flag[425] == 0) {
        global.faceemotion= 4;
        global.msg[0]= "* ... thank GOD^1, it\\'s just&  the batteries./";
        global.msg[1]= "\\\\E9* Mettaton^1, if you were&  gone^1, I would have..^1.&* I would have.../";
        global.msg[2]= "\\\\E8* .../";
        global.msg[3]= "\\\\E6* I m-mean^1, h-hey^1, it\\'s&  n-^1no problem^1, you&  know?/";
        global.msg[4]= "\\\\E5* He\\'s just a robot^1, if&  you messed it up^1, I&  c-could always.../";
        global.msg[5]= "\\\\E6* J-just build another./";
        global.msg[6]= "\\\\E4* .../";
        global.msg[7]= "* Why don\\'t you go&  on ahead?/%%";
    }
    con= 20;
    instance_create(0, 0, obj_dialoguer );
}
if(con == 20 && !instance_exists(OBJ_WRITER )) {
    al.sprite_index= al.utsprite;
    __view_set( e__VW.Object, 0, 1570 );
    obj_mainchara.cutscene= 1;
    con= 21;
    alarm[4]= 30;
}
if(con == 21) __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (2) );
if(con == 22) {
    obj_mainchara.cutscene= 0;
    global.plot= 193;
    al2= instance_create(al.x, al.y, obj_alphys_npc );
    al2.sprite_index= al.utsprite;
    al2.fun= 1;
    with(al) instance_destroy();
    con= 27;
    global.interact= 0;
}

/* */
/*  */
