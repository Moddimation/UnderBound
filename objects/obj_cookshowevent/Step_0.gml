if(con == 1) {
    global.flag[17]= 1;
    global.msc= 0;
    global.msg[0]= "* Ring.../";
    global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
    global.msg[2]= "* H-hey^1, it\\'s kind of&  dark \\\\M9in there^1, isn\\'t&  it?/";
    global.msg[3]= "\\\\E6* Don\\'t worry!/";
    global.msg[4]= "\\\\E0* I\\'ll hack into the&  light system and&  brighten it up!/%%";
    scr_regulartext();
    con= 2;
    snd_play(snd_phone );
}
if(con == 2 && !instance_exists(OBJ_WRITER )) {
    bossa= caster_load("music/hotel.ogg");
    con= 3;
    ff1= instance_create(20, 320, obj_kitchenforcefield );
    ff1.image_yscale= 5;
    ff1.depth= 500000;
    ff2= instance_create(300, 320, obj_kitchenforcefield );
    ff2.image_yscale= 6;
    ff2.depth= 500000;
    eggs= instance_create(104, 60 + yoffset1, obj_metteggs );
    eggs.sprite_index= spr_eggcarton ;
    milk= instance_create(136, 74 + yoffset1, obj_mettmilk );
    milk.sprite_index= spr_milkcarton ;
    sugar= instance_create(172, 60 + yoffset1, obj_mettsugar );
    mett= instance_create(192, 158 + yoffset1, obj_mettaton_actor );
    mett.d= 1;
    mett.depth= 999900;
    mett.image_speed= 0;
    mett.sprite_index= spr_mettaton_armsdown ;
    chefhat= instance_create(0, 0, obj_chefhat );
    alarm[4]= 30;
}
if(con == 4) {
    global.facing= 0;
    snd_play(snd_noise );
    con= 5;
    alarm[4]= 60;
}
if(con == 6) {
    global.faceemotion= 3;
    global.msg[0]= "* Oh no./%%";
    g= instance_create(0, 0, obj_dialoguer );
    g.side= 0;
    con= 7;
}
if(con == 7 && !instance_exists(OBJ_WRITER )) {
    caster_loop(bossa, 1, 1);
    con= 8;
    mett.vspeed= -1;
    alarm[4]= 45;
}
if(con == 9) {
    mett.vspeed= 0;
    global.typer= 27;
    mett.sprite_index= spr_mettaton_talk ;
    mett.image_speed= 0.2;
    global.facechoice= 0;
    global.msg[0]= "* OHHHH YES!!!/";
    global.msg[1]= "* WELCOME^1, BEAUTIES, TO THE&  UNDERGROUND\\'S PREMIER COOKING&  SHOW!!!/%%";
    g= instance_create(0, 0, obj_dialoguer );
    g.side= 1;
    con= 10;
}
if(con == 10 && !instance_exists(OBJ_WRITER )) {
    g= instance_create(40, 180 + yoffset1, obj_killervisage );
    with(g) event_user(0);
    con= 11;
    alarm[4]= 160;
}
if(con == 12) {
    con= 13;
    global.msg[0]= "* PRE-HEAT YOUR OVENS^1, BECAUSE&  WE\\'VE GOT A VERY SPECIAL&  RECIPE FOR YOU TODAY!/";
    global.msg[1]= "* WE\\'RE GOING TO BE MAKING.../";
    global.msg[2]= "* A CAKE!/";
    global.msg[3]= "* MY LOVELY ASSISTANT HERE&  WILL GATHER THE INGREDIENTS./";
    global.msg[4]= "* EVERYONE GIVE THEM A BIG&  HAND!!!/%%";
    g= instance_create(0, 0, obj_dialoguer );
    applause= caster_load("music/mett_applause.ogg");
}
if(con == 13 && !instance_exists(OBJ_WRITER )) {
    mett.sprite_index= spr_mettaton_clap ;
    mett.image_speed= 0.5;
    caster_play(applause, 1, 1);
    con= 14;
    alarm[4]= 90;
}
if(con == 14) {
    conf= instance_create(obj_mainchara.x - 5 + random(20), __view_get( e__VW.YView, 0 ) - 2, obj_confetti );
    conf.hspeed= -1 + random(2);
}
if(con == 15) {
    mett.image_speed= 0.25;
    mett.sprite_index= spr_mettaton_talk ;
    global.msg[0]= "\\\\W* WE\\'LL NEED \\\\YSUGAR^1,&  MILK^1, \\\\WAND\\\\Y EGGS.\\\\W /";
    global.msg[1]= "* GO FOR IT^1, SWEETHEART!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 16;
}
if(con == 16 && !instance_exists(obj_dialoguer )) {
    mett2= instance_create(mett.x, mett.y, obj_mettaton_npc );
    with(mett) instance_destroy();
    mett= mett2;
    mett.image_speed= 0;
    mett.depth= 900000;
    con= 17;
    y= 300;
    global.interact= 0;
}
if(con == 20) {
    mett.image_speed= 0;
    mett.sprite_index= spr_mettaton_armsdown ;
    con= 21;
    alarm[4]= 20;
}
if(con == 22) {
    global.facing= 1;
    con= 23;
    chainsaw= instance_create(mett.x - 8, 140 + yoffset1, obj_npc_marker );
    chainsaw.visible= 1;
    chainsaw.depth= mett.depth - 1;
    chainsaw.sprite_index= spr_mettchainsaw ;
    alarm[4]= 40;
}
if(con == 23) chainsaw.y-= 0.5;
if(con == 24) {
    con= 25;
    bad= caster_load("music/bad.ogg");
    alarm[4]= 20;
}
if(con == 26) {
    global.msg[0]= "\\\\W* A \\\\YHUMAN SOUL\\\\W!!!!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 27;
}
if(con == 27 && !instance_exists(OBJ_WRITER )) {
    snd_play(snd_shock );
    caster_loop(bad, 1, 1);
    mett.image_speed= 0.5;
    mett.hspeed= -0.2;
    chainsaw.hspeed= -0.2;
    con= 28;
    siner= 0;
    alarm[4]= 100;
}
if(con == 28) {
    siner++;
    chainsaw.x+= sin(siner * 1.5);
    chainsaw.y+= cos(siner * 1.5);
}
if(con == 29) {
    mett.hspeed= 0;
    chainsaw.hspeed= 0;
    mett.image_speed= 0;
    caster_free(bad);
    caster_free(-3);
    mettsong= caster_load("music/mtgameshow.ogg");
    snd_play(snd_phone );
    con= 30;
    alarm[4]= 60;
}
if(con == 31) {
    snd_play(snd_phone );
    global.typer= 5;
    global.msg[0]= "* Ring.../";
    global.msg[1]= "\\\\TS \\\\E3 \\\\F0 \\\\TM %";
    global.msg[2]= "* HELLO...?&* I\\'M KIND OF IN THE&  MIDDLE OF SOMETHING HERE./";
    global.msg[3]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
    global.msg[4]= "* W-wait a second!!!/";
    global.msg[5]= "* Couldn\\'t you make&  a.../";
    global.msg[6]= "\\\\E6* Couldn\\'t you use&  a.../";
    global.msg[7]= "\\\\E4* Couldn\\'t you make&  a substitution in&  the recipe?!/";
    global.msg[8]= "\\\\TS \\\\E3 \\\\F0 \\\\TM %";
    global.msg[9]= "* ... A SUBSTITUTION?&* YOU MEAN, USE A DIFFERENT,&  NON-HUMAN INGREDIENT?/";
    global.msg[10]= "* ... WHY?/";
    global.msg[11]= "\\\\TS \\\\E6 \\\\F6 \\\\TA %";
    global.msg[12]= "* Uhh^1, what if&  someone\\'s.../";
    global.msg[13]= "\\\\E2* .../";
    global.msg[14]= "\\\\E4* Vegan?/";
    global.msg[15]= "\\\\TS \\\\E3 \\\\F0 \\\\TM %";
    global.msg[16]= "* ... VEGAN./";
    global.msg[17]= "\\\\TS \\\\E5 \\\\F6 \\\\TA %";
    global.msg[18]= "* Uh well I mean%%";
    instance_create(0, 0, obj_dialoguer );
    con= 32;
}
if(con == 32 && !instance_exists(OBJ_WRITER )) {
    mett.sprite_index= spr_mettaton_talk ;
    mett.image_speed= 0.25;
    caster_loop(mettsong, 1, 1);
    __view_set( e__VW.Object, 0, -4 );
    global.typer= 27;
    global.facechoice= 0;
    global.msg[0]= "* THAT\\'S A BRILLIANT IDEA,&  ALPHYS!!/";
    global.msg[1]= "* ACTUALLY, I HAPPEN TO&  HAVE AN OPTION RIGHT HERE!!!/";
    global.msg[2]= "* MTT-BRAND ALWAYS-CONVENIENT&  HUMAN-SOUL-FLAVOR-SUBSTITUTE!/";
    global.msg[3]= "* A CAN OF WHICH...&* IS JUST OVER ON THAT&  COUNTER!!!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 33;
}
if(con == 33 && instance_exists(chainsaw)) {
    chainsaw.vspeed= 4;
    if(chainsaw.y >= chainsaw.ystart) {
        with(chainsaw) instance_destroy();
    }
}
if(con == 33 && !instance_exists(OBJ_WRITER )) {
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (4) );
    if(__view_get( e__VW.XView, 0 ) > 318) con= 34;
}
if(con == 34) {
    __view_set( e__VW.XView, 0, 320 );
    with(ff2) instance_destroy();
    con= 37;
    alarm[4]= 60;
}
if(con == 38) {
    con= 39;
    alarm[4]= 30;
}
if(con == 39 && __view_get( e__VW.XView, 0 ) > 0)
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (16) );
if(con == 40) {
    global.msg[0]= "* WELL, DARLING?&* WHY DON\\'T YOU GO GET IT?/%%";
    mett.image_speed= 0.25;
    instance_create(0, 0, obj_dialoguer );
    __view_set( e__VW.Object, 0, 1570 );
    obj_mainchara.cutscene= 0;
    con= 41;
}
if(con == 41 && !instance_exists(OBJ_WRITER )) {
    global.plot= 134;
    mett.image_speed= 0;
    con= 42;
    global.interact= 0;
}
if(con == 50) {
    global.interact= 1;
    obj_mainchara.cutscene= 1;
    __view_set( e__VW.Object, 0, -4 );
    con= 51;
}
if(con == 51) {
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (3) );
    if(__view_get( e__VW.XView, 0 ) >= 320) {
        __view_set( e__VW.XView, 0, 320 );
        con= 52;
    }
}
if(con == 52) {
    // obj_counterscroller
    with(1196) event_user(0);
    con= 53;
    alarm[4]= 150;
}
if(con == 54) {
    // obj_mettaton_npc
    with(1173) instance_destroy();
    // obj_mettaton_actor
    with(1172) instance_destroy();
    mett= instance_create(280, 340, obj_mettaton_npc );
    mett.x= 280;
    mett.hspeed= 1;
    con= 55;
    alarm[4]= 50;
}
if(con == 56) {
    global.msc= 0;
    global.facechoice= 0;
    global.typer= 27;
    mett.hspeed= 0;
    mett.image_speed= 0.25;
    global.msg[0]= "* BY THE WAY^1, OUR SHOW RUNS ON&  A STRICT SCHEDULE./";
    global.msg[1]= "\\\\W* IF YOU CAN\\'T GET THE&  CAN IN THE NEXT&  \\\\YONE MINUTE...\\\\W /";
    global.msg[2]= "\\\\W* WE\\'LL JUST HAVE TO GO&  BACK TO THE \\\\RORIGINAL PLAN\\\\W!!!/";
    global.msg[3]= "* SO...&* BETTER START CLIMBING,&  BEAUTIFUL!!!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 57;
}
if(con == 57 && !instance_exists(OBJ_WRITER )) {
    global.plot= 134;
    mett2= instance_create(mett.x, mett.y, obj_mettaton_actor );
    mett2.depth= mett.depth;
    mett2.sprite_index= mett.sprite_index;
    mett2.image_speed= 0.25;
    mett2.visible= 1;
    // obj_mettaton_npc
    with(1173) instance_destroy();
    mett= mett2;
    con= 58;
    alarm[4]= 20;
}
if(con == 59) {
    mett.vspeed= -6;
    con= 60;
    alarm[4]= 30;
}
if(con == 61) {
    caster_free(-3);
    global.msc= 0;
    global.typer= 5;
    global.msg[0]= "* Ring.../";
    global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
    global.msg[2]= "* Oh no!!^1!&* There\\'s not enough&  time to climb up!/";
    global.msg[3]= "\\\\E2* .../";
    global.msg[4]= "\\\\E6* F-f-fortunately, I&  might have a plan!/";
    global.msg[5]= "\\\\E0* When I was upgrading&  your phone, I added&  a few... features./";
    global.msg[6]= "\\\\E6* You see that huge&  button that says..^1.&* " + chr(ord("\"")) + "JETPACK" + chr(ord("\"")) + "?/";
    global.msg[7]= "\\\\E3* Watch this!/%%";
    scr_regulartext();
    con= 61.1;
    snd_play(snd_phone );
}
if(con == 61.1 && !instance_exists(OBJ_WRITER )) {
    global.facing= 0;
    jetpack= instance_create(obj_mainchara.x, obj_mainchara.y + 10, obj_phonetojetpack );
    jetpack.clip= 1570;
    con= 60.2;
    alarm[4]= 150;
}
if(con == 61.2) con= 62;
if(con == 62 && !instance_exists(OBJ_WRITER )) {
    __view_set( e__VW.Object, 0, -4 );
    obj_mainchara.cutscene= 1;
    obj_mainchara.visible= 0;
    chara= instance_create(obj_mainchara.x, obj_mainchara.y, obj_npc_marker );
    chara.depth= 9000;
    jetpack.clip= chara;
    chara.sprite_index= spr_maincharau ;
    chara.visible= 1;
    chara.image_speed= 0;
    con= 63;
    alarm[4]= 30;
}
if(con == 64) {
    global.faceemotion= 6;
    global.msg[0]= "* There!/";
    global.msg[1]= "* You should have&  just enough fuel to&  reach the top!/";
    global.msg[2]= "\\\\E3* Now^1, get up&  there!!!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 65;
}
if(con == 65 && !instance_exists(OBJ_WRITER )) {
    race= caster_load("music/hotel_battle.ogg");
    global.currentsong= caster_loop(race, 1, 1);
    con= 66;
}
if(con == 66) {
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (5) );
    if(chara.y >= __view_get( e__VW.YView, 0 ) + 205)
        chara.y= __view_get( e__VW.YView, 0 ) + 205;
    if(__view_get( e__VW.YView, 0 ) <= 90) {
        __view_set( e__VW.YView, 0, 90 );
        chara.y= __view_get( e__VW.YView, 0 ) + 205;
        con= 67;
        obj_counterscroller.fakev= 3;
        obj_counterscroller.mode= 1;
        chara2= instance_create(chara.x, chara.y, obj_jetpackchara );
        jetpack.clip= chara2;
        with(chara) instance_destroy();
        chara= chara2;
    }
}
if(con == 70) {
    obj_mainchara.x= chara.x;
    obj_mainchara.y= chara.y;
    with(jetpack) instance_destroy();
    with(chara) instance_destroy();
    obj_mainchara.visible= 1;
    global.facing= 0;
    con= 71;
    alarm[4]= 20;
}
if(con == 72) {
    global.msg[0]= "* Ring.../";
    global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
    global.msg[2]= "* Wow^1!&* We..^1. we did it!!/";
    global.msg[3]= "\\\\E0* We..^1. we really did&  it!!!/";
    global.msg[4]= "\\\\E0* Great job out&  there^1, team!/";
    global.msg[5]= "\\\\E3* W-well^1, uh^1, anyway^1,&  let\\'s keep heading&  forward!!!/";
    global.msg[6]= "\\\\TS \\\\F0 \\\\T0 %";
    global.msg[7]= "* Click.../%%";
    if(global.flag[377] == 1) {
        global.msg[0]= "* Ring.../";
        global.msg[1]= "\\\\TS \\\\E1 \\\\F6 \\\\TA %";
        global.msg[2]= "* .../";
        global.msg[3]= "\\\\E4* U-um..^1.&* I guess we..^1.&* ... did it?/";
        global.msg[4]= "\\\\E3* W-well^1, uh^1, anyway^1,&  let\\'s keep heading&  forward!!!/";
        global.msg[5]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[6]= "* Click.../%%";
    }
    global.typer= 5;
    global.facechoice= 0;
    global.msc= 0;
    instance_create(0, 0, obj_dialoguer );
    snd_play(snd_phone );
    con= 73;
}
if(con == 73 && !instance_exists(OBJ_WRITER )) {
    dn= 1;
    con= 74;
    __view_set( e__VW.Object, 0, 1570 );
    __view_set( e__VW.HBorder, 0, 140 );
}
if(con == 74) {
    flowey= instance_create(40, 360, obj_stalkerflowey );
    caster_free(-3);
    global.flag[17]= 0;
    global.interact= 0;
    global.plot= 135;
    // obj_kitchenforcefield
    with(1183) instance_destroy();
    con= 75;
    scr_tempsave();
    instance_destroy();
}


/*  */
