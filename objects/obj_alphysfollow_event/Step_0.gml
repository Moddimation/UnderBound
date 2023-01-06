if(con == 1 && global.interact == 0 && obj_mainchara.x > 400) {
    al= instance_create(__view_get( e__VW.XView, 0 ) - 40, obj_mainchara.ystart, obj_alphys_npc );
    al.mask_index= 1644;
    al.fun= 1;
    al.image_speed= 0.2;
    al.sprite_index= al.rsprite;
    al.hspeed= 2;
    con= 2;
    alarm[4]= 50;
    global.interact= 1;
}
if(con == 3) {
    al.speed= 0;
    al.image_speed= 0;
    con= 4;
    alarm[4]= 60;
}
if(con == 5) {
    global.flag[430]= 1;
    global.msc= 0;
    global.typer= 47;
    global.facechoice= 6;
    global.faceemotion= 6;
    global.msg[0]= "* S..^1. Sorry about&  that!/";
    global.msg[1]= "\\\\E5* L-let\\'s k-keep&  going!/%%";
    con= 6;
    instance_create(0, 0, obj_dialoguer );
}
if(con == 6 && !instance_exists(OBJ_WRITER )) {
    global.interact= 0;
    con= 7;
    follow= 1;
    nowx= obj_mainchara.x;
    nowax= obj_mainchara.x - al.x;
}
if(follow == 1) {
    if(al.x <= obj_mainchara.x - nowax) {
        al.x= obj_mainchara.x - nowax;
        al.image_speed= obj_mainchara.image_speed;
    } else  al.image_speed= 0;
    if(obj_mainchara.x > 1050) {
        follow= 0;
        al.image_speed= 0;
    }
}
if(con == 7 && obj_mainchara.x > nowx + 200 && global.interact == 0) {
    global.interact= 1;
    global.flag[430]= 1;
    global.msc= 0;
    global.typer= 47;
    global.faceemotion= 5;
    global.facechoice= 6;
    global.msg[0]= "* S-so you\\'re about&  to meet ASGORE^1,&  h-huh?/";
    global.msg[1]= "\\\\E6* You must be..^1.&* Y-you must be.../";
    global.msg[2]= "\\\\E5* Pr..^1. pretty&  excited about all&  that^1, huh?/%%";
    con= 8;
    instance_create(0, 0, obj_dialoguer );
}
if(con == 8 && !instance_exists(OBJ_WRITER )) {
    global.interact= 0;
    con= 9;
    follow= 1;
    nowx= obj_mainchara.x;
    nowax= obj_mainchara.x - al.x;
}
if(con == 9 && obj_mainchara.x > nowx + 200 && global.interact == 0) {
    global.interact= 1;
    global.flag[430]= 1;
    global.msc= 0;
    global.typer= 47;
    global.faceemotion= 4;
    global.facechoice= 6;
    global.msg[0]= "* You\\'ll f-f-finally.../";
    global.msg[1]= "\\\\E7* You\\'ll finally get&  to go home!/%%";
    con= 10;
    instance_create(0, 0, obj_dialoguer );
}
if(con == 10 && !instance_exists(OBJ_WRITER )) {
    global.interact= 0;
    con= 11;
    follow= 1;
    nowx= obj_mainchara.x;
    nowax= obj_mainchara.x - al.x;
}
if(con == 50) {
    con= 51;
    alarm[4]= 10;
}
if(con == 52) {
    global.interact= 1;
    global.flag[430]= 1;
    global.msc= 0;
    global.typer= 47;
    global.faceemotion= 0;
    global.facechoice= 6;
    global.msg[0]= "* W..^1.&* Wait!/%%";
    obj_alphys_npc.sprite_index= spr_alphys_r_sad ;
    con= 53;
    instance_create(0, 0, obj_dialoguer );
}
if(con == 53 && !instance_exists(OBJ_WRITER )) {
    global.facing= 3;
    con= 54;
    alarm[4]= 30;
}
if(con == 55) {
    obj_alphys_npc.sprite_index= spr_alphys_r ;
    global.interact= 1;
    global.flag[430]= 2;
    global.msc= 0;
    global.typer= 47;
    global.faceemotion= 1;
    global.facechoice= 6;
    global.msg[0]= "* I mean^1, um..^1.&* I.../";
    global.msg[1]= "\\\\E1* I was just going&  to..^1.&* ...um.../";
    global.msg[2]= "\\\\E2* Say goodbye^1, and.../";
    global.msg[3]= "* .../";
    global.msg[4]= "\\\\E3* .../";
    global.msg[5]= "\\\\E4* .../";
    global.msg[6]= "* I can\\'t take&  this anymore./%%";
    con= 56;
    instance_create(0, 0, obj_dialoguer );
}
if(con == 56 && !instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 6)
    al.sprite_index= al.usprite;
if(con == 56 && !instance_exists(OBJ_WRITER )) {
    obj_alphys_npc.sprite_index= spr_alphys_l_sad2 ;
    con= 57;
    alarm[4]= 45;
}
if(con == 58) {
    global.interact= 1;
    global.flag[430]= 2;
    global.msc= 0;
    global.typer= 47;
    global.faceemotion= 6;
    global.facechoice= 6;
    global.msg[0]= "* I.../";
    global.msg[1]= "\\\\E5* I lied to you./";
    global.msg[2]= "\\\\E7* A human SOUL isn\\'t&  strong enough to&  cross the barrier alone./";
    global.msg[3]= "\\\\E6* It takes at least&  a human soul.../";
    global.msg[4]= "\\\\E5* And a monster&  soul./";
    global.msg[5]= "\\\\E5* .../%%";
    obj_alphys_npc.sprite_index= spr_alphys_l_sad2 ;
    con= 59;
    instance_create(0, 0, obj_dialoguer );
}
if(con == 59 && !instance_exists(OBJ_WRITER )) {
    con= 60;
    alarm[4]= 30;
}
if(con == 61) {
    al.sprite_index= spr_alphys_r_sad2 ;
    con= 62;
    alarm[4]= 30;
}
if(con == 63) {
    global.interact= 1;
    global.flag[430]= 2;
    global.msc= 0;
    global.typer= 47;
    global.faceemotion= 6;
    global.facechoice= 6;
    global.msg[0]= "* If you want to&  go home.../";
    global.msg[1]= "\\\\E5* You\\'ll have to&  take his soul./";
    global.msg[2]= "\\\\E7* You\\'ll have to&  kill ASGORE./%%";
    obj_alphys_npc.sprite_index= spr_alphys_r_sad2 ;
    con= 64;
    instance_create(0, 0, obj_dialoguer );
}
if(con == 64 && !instance_exists(OBJ_WRITER )) {
    con= 65;
    alarm[4]= 30;
}
if(con == 66 && !instance_exists(OBJ_WRITER )) {
    obj_alphys_npc.sprite_index= spr_alphys_l_sad2 ;
    follow= 0;
    al.image_speed= 0.2;
    al.hspeed= -1;
    con= 67;
    alarm[4]= 40;
}
if(con == 68) {
    al.image_speed= 0;
    al.speed= 0;
    con= 68.1;
    alarm[4]= 60;
}
if(con == 69.1) con= 69;
if(con == 69) {
    global.interact= 1;
    global.flag[430]= 2;
    global.msc= 0;
    global.typer= 47;
    global.faceemotion= 7;
    global.facechoice= 6;
    global.msg[0]= "* I\\'m sorry./%%";
    obj_alphys_npc.sprite_index= spr_alphys_l_sad2 ;
    con= 70;
    instance_create(0, 0, obj_dialoguer );
}
if(con == 70 && !instance_exists(OBJ_WRITER )) {
    al.hspeed= -4;
    al.image_speed= 0.3334;
    global.facing= 2;
    con= 71;
    follow= 0;
    global.interact= 0;
    global.flag[492]= 1;
    global.plot= 199;
    instance_destroy();
}


/*  */
