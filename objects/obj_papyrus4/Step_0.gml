if(conversation == 1) {
    fade= instance_create(0, 0, obj_musfadeout );
    fade.fadespeed= 0.5;
    global.currentsong= caster_load("music/papyrus.ogg");
    caster_loop(global.currentsong, 0.6, 1);
    myinteract= 3;
    global.msc= 0;
    global.msc= 0;
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 1;
    global.interact= 1;
    papyrus.sprite_index= papyrus.ltsprite;
    sans.sprite_index= sans.ltsprite;
    conversation= 2;
}
if(conversation == 2 && !instance_exists(OBJ_WRITER )) {
    conversation= 3;
    xxblcon= instance_create(papyrus.x + 3, papyrus.y - 12, obj_cosmeticblcon );
    alarm[0]= 30;
    alarm[4]= 40;
}
if(conversation == 4) {
    global.msc= 243;
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 0;
    global.interact= 1;
    conversation= 6;
    if(murder == 1) {
        obj_mainchara.visible= 0;
        mc= scr_marker(obj_mainchara.x, obj_mainchara.y, 1045);
        conversation= 120;
        alarm[4]= -1;
        alarm[0]= -1;
        global.msc= 0;
        global.msg[0]= "HEY!/";
        global.msg[1]= "IT\\'S THE HUMAN!/";
        global.msg[2]= "\\\\E0YOU\\'RE GONNA&LOVE THIS&PUZZLE!/";
        global.msg[3]= "IT WAS MADE&BY THE GREAT.../%%";
    }
    mydialoguer= instance_create(0, 0, obj_dialoguer );
}
if(conversation == 6 && !instance_exists(OBJ_WRITER )) {
    papyrus.fun= 1;
    papyrus.image_speed= 0.2;
    papyrus.sprite_index= papyrus.usprite;
    sans.sprite_index= sans.ltsprite;
    obj_mainchara.cutscene= 1;
    __view_set( e__VW.Object, 0, -4 );
    conversation= 7;
    x= 220;
    global.interact= 0;
    solid= 0;
}
if(conversation == 50 && !instance_exists(OBJ_WRITER )) {
    obj_specialtile.alarm[0]= 2;
    conversation= 51;
    papyrus.sprite_index= papyrus.usprite;
    papyrus.fun= 1;
    papyrus.image_speed= 0.2;
    alarm[4]= 60;
    caster_set_volume(global.currentsong, 0.3);
    caster_loop(computersound, 0.6, 0.1);
}
if(conversation == 52) {
    papyrus.sprite_index= papyrus.lsprite;
    papyrus.image_speed= 0;
    if(obj_specialtile.randofactor == -1) {
        i= 0;
        while(i < 4) {
            instance_create(80 + i * 40, 80, obj_solidwide );
            instance_create(80 + i * 40, 100, obj_solidwide );
            instance_create(80 + i * 40, 160, obj_solidwide );
            instance_create(80 + i * 40, 180, obj_solidwide );
            i++;
        }
        caster_free(global.currentsong);
        caster_free(computersound);
        alarm[4]= 110;
        conversation= 53;
    }
}
if(conversation == 54) {
    sans.sprite_index= sans.usprite;
    papyrus.sprite_index= spr_papyrus_spin ;
    papyrus.image_speed= 0.2;
    papyrus.vspeed= 1;
    alarm[4]= 10;
    conversation= 55;
}
if(conversation == 56) {
    sans.fun= 1;
    sans.image_speed= 0.25;
    sans.vspeed= 2;
    sans.sprite_index= spr_sans_u ;
    conversation= 57;
    alarm[4]= 10;
}
if(conversation == 58) {
    sans.vspeed= 0;
    sans.image_speed= 0;
    alarm[4]= 20;
    conversation= 59;
}
if(conversation == 60) {
    papyrus.vspeed= 0;
    papyrus.hspeed= 1;
    if(papyrus.sprite_index == papyrus.dsprite) {
        papyrus.sprite_index= papyrus.rsprite;
        dddd= instance_create(0, 0, obj_musfadeout );
        dddd.fadespeed= 0.05;
    }
    alarm[4]= 100;
    conversation= 61;
}
if(conversation == 62) conversation= 63;
if(conversation == 80 && !instance_exists(OBJ_WRITER )) {
    instance_create(papyrus.x + 10, papyrus.y + 20, obj_spagnot );
    // obj_spagnot
    with(946) scr_depth();
    papyrus.sprite_index= papyrus.utsprite;
    alarm[4]= 30;
    conversation= 81;
}
if(conversation == 82) {
    sans.sprite_index= sans.usprite;
    papyrus.fun= 0;
    papyrus.sprite_index= papyrus.dsprite;
    papyrus.image_speed= 0.2;
    papyrus.vspeed= 1;
    alarm[4]= 10;
    conversation= 55;
}
if(conversation == 99 && !instance_exists(OBJ_WRITER ))
    conversation= 22;
if(conversation == 22) {
    global.interact= 1;
    global.msc= 228;
    global.faceemotion= 1;
    global.facechoice= 4;
    global.typer= 19;
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 23;
}
if(conversation == 23 && !instance_exists(OBJ_WRITER )) {
    papyrus.hspeed= 5;
    papyrus.fun= 1;
    papyrus.sprite_index= papyrus.rsprite;
    papyrus.image_speed= 0.25;
    hhh= instance_create(0, 0, obj_musfadeout );
    hhh.fadespeed= 0.05;
    alarm[1]= 30;
    conversation= 24;
}
if(conversation == 63) {
    global.currentsong= caster_load("music/snowy.ogg");
    caster_loop(global.currentsong, 1, 0.95);
    global.plot= 58;
    global.interact= 0;
    instance_create(sans.x, sans.y, obj_sans_room );
    with(sans) instance_destroy();
    with(papyrus) instance_destroy();
    instance_destroy();
}
if(conversation == 120 && !instance_exists(OBJ_WRITER )) {
    global.facing= 1;
    if(OBJ_WRITER.stringno == 2) {
        obj_mainchara.visible= 0;
        mc.hspeed= 3;
        mc.image_speed= 0.25;
    }
    if(mc.x > mc.xstart + 90) {
        mc.x= mc.xstart + 93;
        mc.image_speed= 0;
    }
}
if(conversation == 120 && !instance_exists(OBJ_WRITER )) {
    global.facing= 1;
    if(mc.x > mc.xstart + 90) {
        mc.x= mc.xstart + 93;
        mc.image_speed= 0;
        obj_mainchara.x= mc.x;
        obj_mainchara.visible= 1;
        with(mc) instance_destroy();
        global.msc= 0;
        global.msg[0]= "\\\\E3... ARE YOU&SERIOUS?/";
        global.msg[1]= "\\\\E1SANS!!^1!&HELP!!!/";
        global.msg[2]= "THEY KEEP WALKING&THROUGH MY PUZZLES!/";
        global.msg[3]= "\\\\E3THEY\\'RE SUPPOSED&TO LET ME&EXPLAIN THEM./";
        global.msg[4]= "\\\\E0THEN THREATEN AND&BAFFLE THEM WITH&DANGEROUS JAPES./";
        scr_sansface(5, 0);
        global.msg[6]= "* well^1, maybe they&  don\\'t like japes./";
        scr_papface(7, 4);
        global.msg[8]= "EVERYONE LIKES&JAPES!!!/";
        scr_sansface(9, 0);
        global.msg[10]= "* what about undyne^1?&* doesn\\'t she hate&  puzzles?/";
        scr_papface(11, 0);
        global.msg[12]= "SHE HATES PUZZLES^1.&BUT SHE LOVES&JAPES./";
        scr_sansface(13, 1);
        global.msg[14]= "* that makes sense./";
        scr_papface(15, 1);
        global.msg[16]= "HUMAN!^1!&WHAT DO YOU&THINK!?/";
        global.msg[17]= "PUZZLES OR JAPES?/";
        global.msg[18]= ".../";
        global.msg[19]= "\\\\E3.../";
        global.msg[20]= "OKAY^1, THIS IS&NORMALLY THE&PART./";
        global.msg[21]= "WHERE YOU EITHER&AGREE OR DISAGREE./";
        global.msg[22]= "AND DEPENDING ON&YOUR ANSWER./";
        global.msg[23]= "\\\\E0WE SAY SOMETHING&GREAT IN RESPONSE./";
        global.msg[24]= "\\\\E3.../";
        global.msg[25]= "\\\\E0HERE^1, WHY DON\\'T&YOU DO THIS&PUZZLE YOURSELF./%%";
        mydialoguer= instance_create(0, 0, obj_dialoguer );
        conversation= 80;
    }
}

/* */
/*  */
