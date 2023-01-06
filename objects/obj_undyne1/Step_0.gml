if(con == 1) {
    obj_mainchara.x-= 3;
    global.interact= 1;
    fade= instance_create(0, 0, obj_musfadeout );
    fade.fadespeed= 0.02;
    global.currentsong= caster_load("music/undynescary.ogg");
    song2= caster_load("music/undynetheme.ogg");
    obj_mainchara.cutscene= 1;
    con= 1.5;
    alarm[4]= 10;
    originy= __view_get( e__VW.YView, 0 );
}
if(con == 2.5) {
    if(__view_get( e__VW.YView, 0 ) > 80) __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (2) );
    else  {
        if(global.flag[67] != 1) {
            papyrus.hspeed= 2;
            papyrus.image_speed= 0.25;
            con= 2.6;
            alarm[4]= 50;
        } else  {
            con= 90;
            caster_loop(global.currentsong, 0, 1);
            t= instance_create(0, 0, obj_musfadein );
            t.fadespeed= 0.02;
            alarm[4]= 240;
        }
    }
}
if(con == 3.6) {
    papyrus.hspeed= 0;
    papyrus.image_index= 0;
    papyrus.image_speed= 0;
    con= 3;
    alarm[4]= 40;
}
if(con == 4) {
    global.msc= 0;
    caster_loop(global.currentsong, 0, 1);
    t= instance_create(0, 0, obj_musfadein );
    t.fadespeed= 0.02;
    global.typer= 5;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msg[0]= "\\\\TP %";
    global.msg[1]= "\\\\M5H..^1. HI^1, UNDYNE!&I\\'M HERE WITH MY&DAILY REPORT.../";
    global.msg[2]= "UHHH... REGARDING THAT&HUMAN I CALLED YOU&ABOUT EARLIER.../";
    global.msg[3]= "\\\\M0I THINK^1, UH...&HOW DO I.../";
    global.msg[3]= "\\\\M1.\\\\M6.. HUH^1?&DID I FIGHT THEM?/";
    global.msg[4]= "\\\\M4Y-YES^1!&OF COURSE I DID!/";
    global.msg[5]= "\\\\M4I FOUGHT THEM&VALIANTLY!/";
    global.msg[6]= "\\\\M5...WHAT^1?&\\\\M1DID I CAPTURE THEM...?/";
    global.msg[7]= "\\\\M0W-W-WELL.../";
    global.msg[8]= "\\\\M1NO./";
    global.msg[9]= "\\\\M1I TRIED VERY HARD^1,&UNDYNE^1, BUT IN THE&END.../";
    global.msg[10]= "\\\\M0I FAILED./";
    global.msg[11]= "\\\\M6... W-WHAT?/";
    global.msg[12]= "\\\\M1YOU\\'RE GOING TO TAKE&THE HUMAN\\'S SOUL&YOURSELF.../";
    global.msg[13]= "\\\\M5BUT UNDYNE^1, YOU DON\\'T&H-HAVE TO DESTROY&THEM^1! \\\\M0YOU SEE.../";
    global.msg[14]= "\\\\M1YOU SEE.../%%";
    global.msg[15]= "\\\\M6..^1.&.../";
    global.msg[16]= "... I UNDERSTAND./";
    global.msg[17]= "I\\'LL HELP YOU IN&ANY WAY I CAN./";
    global.msg[18]= "\\\\TS %";
    global.msg[19]= "* Click.../%%";
    g= instance_create(0, 0, obj_dialoguer );
    g.side= 1;
    OBJ_WRITER.y+= 155;
    con= 80;
    minicon= 0;
    papx= papyrus.x;
}
if(con == 80 && !instance_exists(OBJ_WRITER ) && minicon == 0 && (OBJ_WRITER.stringno == 13 || OBJ_WRITER.stringno == 14)) {
    if(papyrus.sprite_index == 1329 && papyrus.x < papx + 60) {
        papyrus.image_speed= 0.25;
        papyrus.x++;
    } else  {
        papyrus.image_index= 0;
        papyrus.image_speed= 0;
    }
}
if(con == 80 && !instance_exists(OBJ_WRITER )) {
    undyne.sprite_index= spr_undynea_starkl ;
    papyrus.hspeed= -0.5;
    papyrus.image_speed= 0.25;
    con= 80.5;
    alarm[4]= 40;
}
if(con == 81.5) {
    papyrus.image_index= 0;
    papyrus.hspeed= 0;
    papyrus.image_speed= 0;
    con= 81;
    alarm[4]= 90;
}
if(con == 82 && !instance_exists(OBJ_WRITER )) {
    global.msg[0]= "\\\\M0.../";
    global.msg[1]= "\\\\M1... I UNDERSTAND./";
    global.msg[2]= "I\\'LL HELP YOU IN&ANY WAY I CAN./%%";
    g= instance_create(0, 0, obj_dialoguer );
    g.side= 1;
    OBJ_WRITER.y+= 155;
    con= 5;
}
if(con == 5 && !instance_exists(OBJ_WRITER )) {
    global.flag[20]= 3;
    papyrus.hspeed= -3;
    papyrus.image_speed= 0.25;
    con= 5.1;
    gg= instance_create(0, 0, obj_musfadeout );
    gg.fadespeed= 0.02;
    global.currentsong= song2;
}
if(con == 5.1) {
    if(__view_get( e__VW.YView, 0 ) < originy)
        __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (2) );
    else  con= 5.2;
}
if(con == 5.2) {
    obj_mainchara.cutscene= 0;
    global.interact= 0;
    con= 6;
    helltrigger= 0;
}
if(con == 6 && helltrigger > 5) {
    alarm[4]= 4;
    con= 6.1;
}
if(con == 7.1) {
    obj_mainchara.cutscene= 1;
    global.interact= 1;
    con= 7.2;
    obj_mainchara.x= obj_mainchara.xprevious;
    obj_mainchara.y= obj_mainchara.yprevious;
}
if(con == 7.2) {
    if(__view_get( e__VW.YView, 0 ) > 80) __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (10) );
    else  con= 8;
}
if(con == 8) {
    global.interact= 1;
    instance_create(undyne.x + 10, undyne.y - 10, obj_cosmeticblcon );
    undyne.sprite_index= spr_undyne_starkd ;
    snd_play(snd_b );
    con= 9;
    alarm[4]= 20;
}
if(con == 10) {
    snd_stop(29);
    caster_loop(global.currentsong, 1, 1);
    con= 11;
    alarm[4]= 20;
}
if(con == 12) {
    undyne.vspeed= 0.5;
    undyne.image_speed= 0.2;
    alarm[4]= 30;
    con= 14.6;
}
if(con == 14) {
    undyne.vspeed= 0;
    undyne.sprite_index= spr_undyne_throw ;
    undyne.fun= 1;
    undyne.image_index= 0;
    undyne.image_speed= 0.3334;
    con= 14.1;
}
if(con == 14.1 && undyne.image_index >= 9) {
    undyne.image_speed= 0;
    undyne.image_index= 9;
    alarm[4]= 100;
    con= 13.2;
}
if(con == 14.2) {
    undyne.image_index= 10;
    undyne.image_speed= 0.035;
    con= 14.3;
}
if(con == 14.3 && undyne.image_index >= 13) {
    undyne.image_speed= 0;
    undyne.image_index= 13;
    alarm[4]= 30;
    con= 13.4;
}
if(con == 14.4) {
    undyne.image_index= 9;
    undyne.image_speed= -0.5;
    con= 14.5;
}
if(con == 14.5 && undyne.image_index <= 1) {
    undyne.sprite_index= spr_undyne_starkd ;
    undyne.fun= 0;
    undyne.image_speed= 0;
    undyne.image_index= 0;
    con= 18;
}
if(con == 15.6) {
    undyne.vspeed= 0;
    undyne.image_speed= 0;
    con= 15.1;
    alarm[4]= 50;
}
if(con == 16.1) {
    undyne.vspeed= 0.5;
    undyne.image_speed= 0.2;
    alarm[4]= 20;
    con= 15.2;
}
if(con == 16.2) {
    undyne.vspeed= 0;
    undyne.image_speed= 0;
    con= 13;
    alarm[4]= 60;
}
if(con == 18) {
    undyne.vspeed= 0;
    undyne.image_speed= 0;
    alarm[4]= 60;
    con= 19;
}
if(con == 20) {
    undyne.vspeed= -2;
    undyne.image_speed= 0.2;
    alarm[4]= 20;
    con= 21;
}
if(con == 22) {
    undyne.vspeed= 0;
    undyne.image_speed= 0;
    alarm[4]= 60;
    con= 23;
}
if(con == 24) {
    d= instance_create(undyne.x, undyne.y, obj_npc_marker );
    d.sprite_index= spr_undyne_starkeye ;
    d.visible= 1;
    b= instance_create(0, 0, obj_musfadeout );
    b.fadespeed= 0.01;
    con= 25;
    snd_play(snd_undynedis );
}
if(con == 25) {
    if(undyne.image_alpha > 0)
        undyne.image_alpha-= 0.02;
    else  con= 26;
}
if(con == 26) {
    if(d.image_alpha > 0) d.image_alpha-= 0.02;
    else  con= 27;
}
if(con == 27) {
    if(__view_get( e__VW.YView, 0 ) < originy)
        __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (2) );
    else  con= 28;
}
if(con == 28) {
    obj_mainchara.cutscene= 0;
    global.interact= 0;
    // obj_starker
    with(1093) instance_destroy();
    obj_mainchara.usprite= 1044;
    obj_mainchara.rsprite= 1045;
    obj_mainchara.lsprite= 1046;
    obj_mainchara.dsprite= 1043;
    con= 39;
}
if(con == 39 && (collision_rectangle(60, 100, 80, 900, 1570, 0, 1) || collision_rectangle(430, 100, 440, 900, 1570, 0, 1))) {
    caster_free(-3);
    global.currentsong= caster_load("music/waterfall.ogg");
    global.interact= 1;
    con= 40;
}
if(con == 40) {
    if(obj_mainchara.y > 276) {
        mkid.y= 260;
        up= 0;
    } else  {
        mkid.y= 286;
        up= 1;
    }
    with(mkid) depth= 900000;
    if(obj_mainchara.x < 200) {
        left= 1;
        mkid.hspeed= -4;
        mkid.sprite_index= mkid.lsprite;
    } else  {
        left= 0;
        mkid.hspeed= 4;
    }
    con= 40.5;
    alarm[4]= 28;
    if(left == 1) alarm[4]= 36;
}
if(con == 41.3) con= 41.5;
if(con == 41.5) {
    mkid.hspeed= 0;
    con= 42;
    mkid.image_index= 0;
    alarm[4]= 20;
}
if(con == 43) {
    con= 44;
    if(left == 1) mkid.sprite_index= mkid.rsprite;
    else  mkid.sprite_index= mkid.lsprite;
    alarm[4]= 20;
}
if(con == 45) {
    if(up == 1) mkid.sprite_index= mkid.usprite;
    if(up == 0) mkid.sprite_index= mkid.dsprite;
    con= 46;
    alarm[4]= 20;
}
if(con == 47) {
    if(left == 1) mkid.sprite_index= mkid.ltsprite;
    else  mkid.sprite_index= mkid.rtsprite;
    mkid.myinteract= 3;
    global.typer= 5;
    global.msc= 0;
    global.facechoice= 0;
    if(global.flag[67] != 1) {
        global.msg[0]= "* Yo..^1. did you see the&  way she was staring at&  you...?/";
        global.msg[1]= "* That.../";
        global.msg[2]= "* ... was AWESOME!/";
        global.msg[3]= "* I\\'m SOOOO jealous!/";
        global.msg[4]= "* What\\'d you do to get her&  attention...^1?&* Ha ha./";
        global.msg[5]= "* C\\'mon^1!&* Let\\'s go watch her beat&  up some bad guys!/%%";
    } else  {
        global.msg[0]= "* Yo..^1. did you see the&  way she was staring at&  you...?/";
        global.msg[1]= "* That.../";
        global.msg[2]= "* ... was AWESOME!/";
        global.msg[3]= "* I\\'m SOOOO jealous!/";
        global.msg[4]= "* She was just standing there&  waiting FOREVER^1, and&  then you just...!!!/";
        global.msg[5]= "* C\\'mon^1!&* Let\\'s go watch her beat&  up some bad guys!/%%";
    }
    instance_create(0, 0, obj_dialoguer );
    con= 48;
}
if(con == 48 && !instance_exists(OBJ_WRITER )) {
    mkid.hspeed= 6;
    mkid.myinteract= 0;
    mkid.image_speed= 0.3;
    mkid.sprite_index= mkid.rsprite;
    con= 48.1;
    if(left == 1) alarm[4]= 6;
    else  alarm[4]= 16;
}
if(con == 49.1) {
    mkid.hspeed= 0;
    mkid.fun= 1;
    mkid.image_index= 0;
    mkid.image_speed= 0.334;
    mkid.sprite_index= spr_mkid_trip_r ;
    con= 49.2;
}
if(con == 49.2 && mkid.image_index >= 19) {
    mkid.image_index= 0;
    mkid.x+= 13;
    mkid.sprite_index= mkid.rsprite;
    con= 49.3;
    alarm[4]= 15;
}
if(con == 50.3) {
    mkid.hspeed= 4;
    alarm[4]= 30;
    con= 49;
}
if(con == 50) {
    global.interact= 0;
    caster_loop(global.currentsong, 0.8, 1);
    if(scr_murderlv() >= 8 && global.flag[27] == 0)
        caster_set_pitch(global.currentsong, 0.15);
    con= 51;
    global.plot= 106;
    instance_destroy();
}
if(con == 90) {
}
if(con == 91) {
    gg= instance_create(0, 0, obj_musfadeout );
    gg.fadespeed= 0.02;
    global.currentsong= song2;
    con= 5.1;
}

/* */
/*  */
