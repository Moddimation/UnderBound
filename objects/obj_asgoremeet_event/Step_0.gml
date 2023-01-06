if(con == 1) {
    con= 2;
    alarm[4]= 40;
}
if(con == 2) global.facing= 2;
if(con == 3) {
    obj_mainchara.vspeed= -1;
    obj_mainchara.image_speed= 0.1;
    con= 4;
    alarm[4]= 100;
}
if(con == 5) {
    obj_mainchara.image_speed= 0;
    obj_mainchara.vspeed= 0;
    con= 6;
    alarm[4]= 30;
}
if(con == 7) {
    remy= __view_get( e__VW.YView, 0 );
    obj_mainchara.cutscene= 1;
    __view_set( e__VW.Object, 0, -4 );
    con= 8;
    alarm[4]= 90;
}
if(con == 8) __view_set_pp( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - 1 );
if(con == 9) {
    con= 10;
    alarm[4]= 50;
}
if(con == 11) {
    global.facechoice= 0;
    global.typer= 60;
    global.msc= 0;
    global.msg[0]= "* Dum dee dum.../";
    global.msg[1]= "* Oh^1?&* Is someone there?/";
    global.msg[2]= "* Just a moment!/";
    global.msg[3]= "* I have almost finished watering&  these flowers./%%";
    con= 12;
    if(scr_murderlv() >= 16) {
        global.msg[0]= "* Curious^1.&* I\\'ve never seen a plant..^1.&* Cry before./%%";
        con= 99;
    }
    instance_create(0, 0, obj_dialoguer );
}
if(con == 12 && !instance_exists(OBJ_WRITER )) {
    asg.image_speed= 0.2;
    con= 13;
    alarm[4]= 50;
}
if(con == 14) {
    asg.image_speed= 0;
    asg.image_index= 0;
    con= 15;
    alarm[4]= 30;
}
if(con == 16) {
    global.msg[0]= "* ... Here we are!/%%";
    con= 17;
    instance_create(0, 0, obj_dialoguer );
}
if(con == 17 && !instance_exists(OBJ_WRITER )) {
    con= 18;
    alarm[4]= 20;
}
if(con == 19) {
    asg.sprite_index= asg.rsprite;
    con= 20;
    alarm[4]= 35;
}
if(con == 21) {
    asg.sprite_index= asg.dtsprite;
    con= 22;
    alarm[4]= 20;
}
if(con == 23) {
    global.facechoice= 7;
    global.msc= 0;
    global.faceemotion= 0;
    global.msg[0]= "* Howdy^1!&* How can I.../%%";
    instance_create(0, 0, obj_dialoguer );
    con= 24;
}
if(con == 24 && !instance_exists(OBJ_WRITER )) {
    con= 24.1;
    caster_free(-3);
    // obj_birbnoise
    with(88) instance_destroy();
    global.currentsong= caster_load("music/smallshock.ogg");
    alarm[4]= 15;
    asg.sprite_index= spr_asgore_d_shock ;
    asg.vspeed= -1;
    asg.image_speed= 0.2;
}
if(con == 25.1) {
    asg.vspeed= 0;
    asg.image_index= 0;
    asg.image_speed= 0;
    con= 25;
    alarm[4]= 80;
}
if(con == 26) {
    asg.sprite_index= spr_asgore_dt_shock ;
    caster_loop(global.currentsong, 1, 1);
    global.faceemotion= 1;
    global.msg[0]= "* Oh./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 27;
}
if(con == 27 && !instance_exists(OBJ_WRITER )) {
    asg.sprite_index= asg.rsprite;
    con= 28;
    alarm[4]= 110;
}
if(con == 29) {
    asg.sprite_index= asg.dtsprite;
    con= 30;
    alarm[4]= 30;
}
if(con == 31) {
    asg.sprite_index= asg.dtsprite;
    global.faceemotion= 3;
    global.msg[0]= "\\\\E3* .../";
    global.msg[1]= "\\\\E2* I so badly want to&  say^1, " + chr(ord("\"")) + "would you like&  a cup of tea?" + chr(ord("\"")) + "/";
    global.msg[2]= "* But.../";
    global.msg[3]= "\\\\E3* You know how it is./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 32;
}
if(con == 32 && !instance_exists(OBJ_WRITER )) {
    con= 33;
    alarm[4]= 60;
}
if(con == 34) {
    asg.sprite_index= asg.lsprite;
    asg.image_speed= 0.2;
    asg.hspeed= -1;
    alarm[4]= 80;
    con= 35;
}
if(con == 36) {
    asg.hspeed= 0;
    asg.image_speed= 0;
    con= 37;
    alarm[4]= 70;
}
if(con == 38) {
    asg.sprite_index= asg.dtsprite;
    asg.image_index= 0;
    con= 39;
    alarm[4]= 30;
}
if(con == 40) {
    global.faceemotion= 0;
    global.msg[0]= "* Nice day today^1, huh?/";
    global.msg[1]= "* Birds are singing^1,&  flowers are blooming.../";
    global.msg[2]= "* Perfect weather for a&  game of catch./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 41;
}
if(con == 41 && !instance_exists(OBJ_WRITER )) {
    asg.sprite_index= asg.lsprite;
    con= 42;
    alarm[4]= 120;
}
if(con == 43) {
    asg.sprite_index= spr_asgore_dt_sad ;
    con= 44;
    alarm[4]= 60;
}
if(con == 45) {
    global.faceemotion= 3;
    global.msg[0]= "* .../";
    global.msg[1]= "* You know what we must&  do./";
    global.msg[2]= "* When you are ready^1,&  come into the next&  room./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 46;
}
if(con == 46 && !instance_exists(OBJ_WRITER )) {
    asg.sprite_index= asg.usprite;
    asg.image_speed= 0.25;
    asg.vspeed= -2;
    con= 47;
    alarm[4]= 30;
}
if(con == 48) {
    if(__view_get( e__VW.YView, 0 ) < remy)
        __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (2) );
    else  {
        __view_set( e__VW.YView, 0, remy );
        obj_mainchara.cutscene= 0;
        __view_set( e__VW.Object, 0, 1570 );
        global.interact= 0;
        with(asg) instance_destroy();
        instance_destroy();
        global.plot= 206;
        con= 49;
    }
}
if(con == 99 && !instance_exists(OBJ_WRITER )) {
    asg.sprite_index= asg.rtsprite;
    con= 100;
    alarm[4]= 10;
}
if(con == 101) {
    asg.sprite_index= asg.dtsprite;
    con= 102;
    alarm[4]= 10;
}
if(con == 103) {
    global.facechoice= 7;
    global.msc= 0;
    global.faceemotion= 0;
    global.msg[0]= "\\\\E3* ... huh?/";
    global.msg[1]= "* You must be the one&  that flower just warned&  me about./";
    global.msg[2]= "\\\\E0* Howdy!/";
    global.msg[3]= "* .../";
    global.msg[4]= "\\\\E3* Erm..^1.&* What kind of monster&  are you...?/";
    global.msg[5]= "\\\\E0* Sorry^1, I cannot tell./";
    global.msg[6]= "* Well^1, we can always%%";
    instance_create(0, 0, obj_dialoguer );
    con= 111;
}
if(con == 111 && !instance_exists(OBJ_WRITER )) {
    global.battlegroup= 100;
    global.mercy= 1;
    instance_create(0, 0, obj_battler );
    con= 112;
}


/*  */
