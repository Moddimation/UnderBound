if(conversation == 1) {
    fade= instance_create(0, 0, obj_musfadeout );
    fade.fadespeed= 0.5;
    myinteract= 3;
    global.msc= 0;
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 0;
    global.interact= 1;
    global.msg[0]= "SO^1, AS I&WAS SAYING&ABOUT UNDYNE,/%%";
    if(murder == 1) {
        global.faceemotion= 2;
        global.msg[0]= "\\\\E2SO SANS^1!&WHEN\\'S THE HUMAN&SHOWING UP???/";
        global.msg[1]= "\\\\E3I WANT TO LOOK&MY SUNDAY BEST.../";
        global.msg[2]= "\\\\E0OR AT LEAST MY&TUESDAY&PRETTY-GOOD./";
        scr_sansface(3, 1);
        global.msg[4]= "\\\\E1* don\\'t you only have&  one outfit?/";
        scr_papface(5, 2);
        global.msg[6]= "\\\\E2YEAH^1, BUT I COULD&STYLE MY HAIR!/";
        scr_sansface(7, 0);
        global.msg[8]= "\\\\E0* oh^1. right^1.&* good idea./";
        global.msg[9]= "\\\\E1* say^1, why don\\'t you&  look over there?/%%";
    }
    global.currentsong= caster_load("music/papyrus.ogg");
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 2;
}
if(conversation == 2 && !instance_exists(OBJ_WRITER )) {
    caster_loop(global.currentsong, 0.6, 1);
    conversation= 3;
    papyrus.sprite_index= papyrus.lsprite;
    xxblcon= instance_create(papyrus.x + 3, papyrus.y - 12, obj_cosmeticblcon );
    alarm[0]= 50;
}
if(conversation == 5) {
    global.msc= 0;
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 0;
    global.interact= 1;
    global.msg[0]= "SANS!!&OH MY GOD!!&IS THAT.../";
    global.msg[1]= "A HUMAN!?!?&!??!?!/%%";
    ini_open("undertale.ini");
    M1= ini_read_real("Papyrus", "M1", 0);
    ini_write_real("Papyrus", "M1", M1 + 1);
    ini_close();
    if(M1 > 0) {
        global.msg[0]= "SANS!!&OH MY GOD!!&IS THAT.../";
        global.msg[1]= "A HUMAN!?!?&!??!?!/";
        global.msg[2]= "AND IT LOOKS SO&FAMILIAR...!!!/%%";
    }
    if(murder == 1) {
        global.msg[0]= "\\\\E0SANS!!^1!&OH MY GOD!!!!/";
        global.msg[1]= "\\\\E3I\\'M DIZZY^1.&WHAT AM I LOOKING&AT?/";
        scr_sansface(2, 1);
        global.msg[3]= "\\\\E1* behold./%%";
    }
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 6;
}
if(conversation == 6 && !instance_exists(OBJ_WRITER )) {
    papyrus.sprite_index= papyrus.lsprite;
    sans.sprite_index= sans.lsprite;
    obj_mainchara.cutscene= 1;
    __view_set( e__VW.Object, 0, -4 );
    alarm[3]= 30;
    conversation= 7;
}
if(conversation == 8) {
    __view_set_pp( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - 1 );
    if(__view_get( e__VW.XView, 0 ) <= -40) {
        __view_set( e__VW.XView, 0, -40 );
        conversation= 9;
        alarm[3]= 30;
    }
}
if(conversation == 10) {
    global.msc= 0;
    global.typer= 17;
    global.facechoice= 3;
    global.faceemotion= 0;
    sans.sprite_index= sans.dtsprite;
    global.msg[0]= "* uhhhh.../";
    global.msg[1]= "\\\\E1* actually^1, i think that\\'s&  a rock./%%";
    if(M1 > 0) {
        global.msg[0]= "* uhhhh..^1.&* i think it looks&  familiar.../";
        global.msg[1]= "\\\\E1* because it\\'s a rock?/%%";
    }
    if(murder == 1) {
        global.facechoice= 4;
        global.faceemotion= 0;
        global.typer= 19;
        global.msg[0]= "\\\\E0OH MY GOD!!!/%%";
    }
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 11;
}
if(conversation == 11 && !instance_exists(OBJ_WRITER )) {
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (4) );
    if(__view_get( e__VW.XView, 0 ) >= 0) {
        __view_set( e__VW.XView, 0, 0 );
        conversation= 12;
    }
}
if(conversation == 12) {
    global.msc= 0;
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 3;
    papyrus.sprite_index= papyrus.utsprite;
    global.msg[0]= "OH^1./%%";
    if(murder == 1)
        global.msg[0]= "WHY ARE YOU&TELLING ME TO&LOOK AT A ROCK./%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 13;
}
if(conversation == 13 && !instance_exists(OBJ_WRITER )) {
    obj_mainchara.cutscene= 0;
    __view_set( e__VW.Object, 0, 1570 );
    global.typer= 17;
    global.facechoice= 3;
    global.faceemotion= 0;
    sans.sprite_index= sans.ltsprite;
    global.msg[0]= "* hey^1, what\\'s that in&  front of the rock?/%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 14;
}
if(conversation == 14 && !instance_exists(OBJ_WRITER )) {
    xxblcon= instance_create(papyrus.x + 3, papyrus.y - 12, obj_cosmeticblcon );
    sans.sprite_index= sans.dtsprite;
    papyrus.sprite_index= papyrus.ltsprite;
    conversation= 15;
    alarm[3]= 30;
}
if(conversation == 16) {
    global.msc= 0;
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 0;
    global.msg[0]= "OH MY GOD!!!/%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 17;
}
if(conversation == 17 && !instance_exists(OBJ_WRITER )) {
    global.msc= 0;
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 0;
    papyrus.sprite_index= papyrus.utsprite;
    global.msg[0]= "(IS... IS THAT&A HUMAN)/%%";
    if(murder == 1) global.msg[0]= "I HAVE NO IDEA&WHAT THAT IS./%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 18;
}
if(conversation == 18 && !instance_exists(OBJ_WRITER )) {
    global.msc= 0;
    global.typer= 17;
    global.facechoice= 3;
    global.faceemotion= 0;
    global.msg[0]= "(yes)/%%";
    if(murder == 1) global.msg[0]= "* well^1.&* it\\'s not a rock./%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 19;
}
if(conversation == 19 && !instance_exists(OBJ_WRITER )) {
    global.msc= 0;
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 0;
    sans.sprite_index= sans.ltsprite;
    papyrus.sprite_index= papyrus.ltsprite;
    global.msg[0]= "OH MY GOD!!!/";
    global.msg[1]= "SANS!&I FINALLY&DID IT!!/";
    global.msg[2]= "UNDYNE WILL.../";
    global.msg[3]= "I\\'M GONNA.../";
    global.msg[4]= "I\\'LL BE SO.../";
    global.msg[5]= "POPULAR!!^1!&POPULAR!!^1!&POPULAR!!^1!/";
    global.msg[6]= "\\\\E3..^1.\\'AHEM\\'/";
    global.msg[7]= "\\\\E1HUMAN^1! YOU&SHALL NOT PASS&THIS AREA!/";
    global.msg[8]= "I^1, THE GREAT&PAPYRUS^1, WILL&STOP YOU!!!/";
    global.msg[9]= "I WILL THEN&CAPTURE YOU!/";
    global.msg[10]= "YOU WILL BE&DELIVERED TO&THE CAPITAL!/";
    global.msg[11]= "THEN..^1.&THEN!!^1!/";
    global.msg[12]= "\\\\E3I\\'M NOT SURE&WHAT\\'S NEXT./";
    global.msg[13]= "\\\\E1IN ANY CASE!/";
    global.msg[14]= "CONTINUE...&ONLY IF YOU&DARE!!!/%%";
    if(murder == 1) {
        global.msg[0]= "\\\\E3NOT A ROCK...?/";
        global.msg[1]= "\\\\E0OH NO!!^1!&BY PROCESS OF&ELIMINATION!!!/";
        global.msg[2]= "\\\\E0THAT MEANS IT\\'S&A HUMAN!!!/";
        global.msg[3]= "\\\\E3AHEM!^1!&HUMAN!!/";
        global.msg[4]= "\\\\E4PREPARE YOURSELF!^1!&FOR HIGH JINKS^1!&FOR LOW JINKS!/";
        global.msg[5]= "DANGERS^1!&PUZZLES^1!&CAPERS^1! JAPERS!/";
        global.msg[6]= "BEING CAPTURED!^1!&AND OTHER SORTS OF&FUN ACTIVITIES./";
        global.msg[7]= "REFRESHMENTS WILL&BE PROVIDED.../";
        global.msg[8]= "IF YOU DARE!/%%";
    }
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 20;
}
if(conversation == 20 && !instance_exists(OBJ_WRITER )) {
    global.msc= 0;
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 0;
    sans.sprite_index= sans.dtsprite;
    papyrus.sprite_index= papyrus.rsprite;
    papyrus.hspeed= 5;
    global.msg[0]= "NYEH HEH HEH&HEH HEH HEH&HEH HEH!!!/%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 21;
}
if(conversation == 21 && !instance_exists(OBJ_WRITER )) {
    alarm[3]= 30;
    ppp= instance_create(0, 0, obj_musfadeout );
    ppp.fadespeed= 0.04;
    sans.sprite_index= sans.rsprite;
    conversation= 22;
}
if(conversation == 22) {
    sans.sprite_index= sans.ltsprite;
    global.typer= 17;
    global.facechoice= 3;
    global.faceemotion= 0;
    global.msg[0]= "* well^1, that went well./";
    global.msg[1]= "* don\\'t sweat it^1, kid./";
    global.msg[2]= "\\\\E2* i\\'ll keep an eyesocket&  out for ya./%%";
    if(scr_murderlv() >= 2)
        global.msg[0]= "* ... and you don\\'t even&  bat an eye^1, huh?/%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 23;
}
if(conversation == 23 && !instance_exists(OBJ_WRITER )) {
    alarm[3]= 30;
    sans.sprite_index= sans.rsprite;
    sans.hspeed= 3;
    conversation= 24;
}
if(conversation == 25) {
    global.currentsong= caster_load("music/snowy.ogg");
    caster_loop(global.currentsong, 1, 0.95);
    if(murder == 1) caster_set_pitch(global.currentsong, 0.4);
    global.plot= 40;
    global.interact= 0;
    scr_tempsave();
    with(sans) instance_destroy();
    with(papyrus) instance_destroy();
    instance_destroy();
}

/* */
/*  */
