if(con == 1) global.interact= 1;
if(con == 2) {
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 0;
    global.msc= 0;
    global.msg[0]= "HERE^1, UNDYNE./";
    global.msg[1]= "MY FRIEND BROUGHT&A GIFT FOR YOU^1,&ON THEIR OWN!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 3;
}
if(con == 3 && !instance_exists(OBJ_WRITER )) {
    papyrus.sprite_index= spr_papyrus_boneget ;
    papyrus.image_speed= 0.25;
    if(papyrus.image_index >= 4) {
        papyrus.image_speed= 0;
        papyrus.image_index= 4;
        con= 4;
    }
}
if(con == 4) {
    global.typer= 37;
    global.facechoice= 5;
    undyne.fun= 0;
    global.msg[0]= "* Uhhh..^1. thanks./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 5;
}
if(con == 5 && !instance_exists(OBJ_WRITER )) {
    undyne.vspeed= 3;
    undyne.fun= 1;
    undyne.sprite_index= undyne.dsprite;
    undyne.image_speed= 0.25;
    con= 6;
    alarm[4]= 15;
}
if(con == 7) {
    papyrus.image_index= 5;
    con= 6.1;
    undyne.sprite_index= undyne.usprite;
    undyne.vspeed= -3;
    alarm[4]= 15;
}
if(con == 7.1) {
    papyrus.sprite_index= papyrus.usprite;
    papyrus.image_index= 0;
    undyne.sprite_index= undyne.dtsprite;
    undyne.image_index= 0;
    undyne.image_speed= 0;
    undyne.vspeed= 0;
    undyne.fun= 0;
    global.msg[0]= "* I\\'ll^1, uh^1, put it&  with the others./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 10;
}
if(con == 10 && !instance_exists(OBJ_WRITER )) {
    undyne.image_speed= 0.25;
    undyne.sprite_index= undyne.usprite;
    undyne.vspeed= -3;
    alarm[4]= 15;
    con= 9.1;
    alarm[4]= 15;
}
if(con == 10.1) {
    undyne.sprite_index= undyne.lsprite;
    undyne.vspeed= 0;
    undyne.image_index= 0;
    snd_play(snd_noise );
    obj_bonedrawer.drawerdown= 1;
    con= 9.2;
    alarm[4]= 18;
}
if(con == 10.2) {
    obj_bonedrawer.image_index= 1;
    con= 9.3;
    alarm[4]= 40;
}
if(con == 10.3) {
    con= 9.4;
    snd_play(snd_noise );
    obj_bonedrawer.drawerdown= 3;
    alarm[4]= 25;
}
if(con == 10.4) {
    undyne.sprite_index= undyne.dsprite;
    undyne.vspeed= 3;
    undyne.image_speed= 0.25;
    alarm[4]= 15;
    con= 9.5;
}
if(con == 10.5) {
    undyne.sprite_index= undyne.dtsprite;
    undyne.fun= 0;
    undyne.image_speed= 0;
    undyne.vspeed= 0;
    global.typer= 37;
    global.msg[0]= "* So are we ready&  to start?/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 12;
}
if(con == 12 && !instance_exists(OBJ_WRITER )) {
    papyrus.sprite_index= papyrus.rtsprite;
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 3;
    global.msg[0]= "WHOOPSY DOOPSY^1!&I JUST REMEMBERED!/";
    global.msg[1]= "I HAVE TO GO&TO THE BATHROOM!!/";
    global.msg[2]= "\\\\E0YOU TWO HAVE&FUN!!!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 13;
    with(papyrus)
        scr_getideal(obj_undynewindow.x + 63, obj_undynewindow.y + 10);
}
if(con == 13 && !instance_exists(OBJ_WRITER )) {
    alarm[4]= 10;
    con= 14;
}
if(con == 14) {
    papyrus.sprite_index= papyrus.lsprite;
    papyrus.image_speed= 0.5;
    with(papyrus) scr_moveideal(14);
}
if(con == 15) {
    global.facing= 3;
    undyne.sprite_index= undyne.ltsprite;
    papyrus2= instance_create(papyrus.x + 10, papyrus.y + 42, obj_papyrus_window );
    with(papyrus) instance_destroy();
    papyrus= papyrus2;
    con= 16;
    alarm[4]= 90;
}
if(con == 17) {
    global.facing= 2;
    undyne.sprite_index= undyne.dtsprite;
    con= 18;
    alarm[4]= 60;
}
if(con == 19) {
    global.msc= 703;
    global.typer= 37;
    global.facechoice= 5;
    con= 20;
    instance_create(0, 0, obj_dialoguer );
}
if(con == 40 && !instance_exists(OBJ_WRITER )) {
    with(papyrus) instance_destroy();
    papyrus= instance_create(-30, 150, obj_papyrus_actor );
    papyrus.depth= 900000;
    papyrus.d= 1;
    papyrus.sprite_index= papyrus.rsprite;
    papyrus.hspeed= 4;
    con= 41;
    papyrus.image_speed= 0.25;
}
if(con == 41 && papyrus.x > 10) {
    papyrus.hspeed= 0;
    papyrus.image_speed= 0;
    con= 42;
    alarm[4]= 20;
}
if(con == 43) {
    global.facing= 3;
    undyne.sprite_index= undyne.ltsprite;
    global.facechoice= 4;
    global.faceemotion= 1;
    global.msc= 0;
    global.typer= 19;
    global.msg[0]= "DANG^1!&WHAT A SHAME.../";
    global.msg[1]= "\\\\E2I THOUGHT UNDYNE&COULD BE FRIENDS&WITH YOU./";
    global.msg[2]= "\\\\E3BUT I GUESS.../";
    global.msg[3]= "\\\\E3I OVERESTIMATED&HER./";
    global.msg[4]= "\\\\E3SHE\\'S JUST NOT&UP TO THE&CHALLENGE./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 44;
}
if(con == 44 && !instance_exists(OBJ_WRITER )) {
    con= 45;
    papyrus.hspeed= -2;
    global.typer= 37;
    global.facechoice= 5;
    global.faceemotion= 1;
    global.msg[0]= "* CHALLENGE!^1?&* What!?/";
    global.msg[1]= "\\\\E0* Papyrus^1!&* Wait a second...!/%%";
    instance_create(0, 0, obj_dialoguer );
}
if(con == 45) papyrus.image_angle-= 6;
if(con == 45 && !instance_exists(OBJ_WRITER )) {
    global.faceemotion= 1;
    global.facing= 2;
    undyne.sprite_index= undyne.dtsprite;
    global.msg[0]= "* Darnit!/";
    global.msg[1]= "* He thinks I can\\'t&  be friends with&  YOU!?/";
    global.msg[2]= "\\\\E6* Fuhuhu^1!&* What a joke!/";
    global.msg[3]= "* I could make friends&  with a wimpy loser&  like you any day!/";
    global.msg[4]= "\\\\E2* I\\'ll show him!/";
    global.msg[5]= "\\\\E3* Listen up^1, human./";
    global.msg[6]= "\\\\E2* We\\'re not just&  going to be&  friends./";
    global.msg[7]= "\\\\E3* We\\'re going to&  be.../";
    global.msg[8]= "\\\\M1* BESTIES./";
    global.msg[9]= "* I\\'ll make you&  like me so much.../";
    global.msg[10]= "\\\\E1* You won\\'t be able&  to think of anyone&  else!!!/";
    global.msg[11]= "\\\\E3* Fuhuhuhu^1!&* It\\'s the PERFECT&  REVENGE!!/";
    global.msg[12]= "* .../";
    global.msg[13]= "\\\\E9* Why don\\'t you&  have a seat?/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 50;
}
if(con == 50 && !instance_exists(OBJ_WRITER )) {
    undyne2= instance_create(undyne.x, undyne.y, obj_npc_room );
    undyne2.sprite_index= spr_undyne_polite ;
    with(undyne) instance_destroy();
    undyne= undyne2;
    global.flag[20]= 0;
    global.interact= 0;
    with(papyrus) instance_destroy();
    con= 51;
    global.currentsong= caster_load("music/date.ogg");
    caster_loop(global.currentsong, 1, 1);
}
if(con == 51 && obj_mainchara.y > 200 && global.interact == 0) {
    global.facing= 2;
    global.msc= 0;
    obj_mainchara.y= 196;
    global.interact= 1;
    global.typer= 37;
    global.facechoice= 5;
    global.faceemotion= 9;
    global.msg[0]= "* Oh^1, leaving so soon?/";
    global.msg[1]= "\\\\E3* No^1.&* No you\\'re not./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 52;
}
if(con == 52) {
    global.facing= 2;
    obj_mainchara.y= 196;
}
if(con == 52 && !instance_exists(OBJ_WRITER )) {
    con= 51;
    global.interact= 0;
}
if(con == 60 && !instance_exists(OBJ_WRITER ) && global.interact == 0) {
    global.interact= 1;
    chair= scr_marker(obj_sign_room.x, obj_sign_room.y, obj_sign_room.sprite_index);
    chair.depth= 500000;
    // obj_sign_room
    with(1352) instance_destroy();
    con= 61;
    alarm[4]= 12;
    global.facing= 2;
    obj_mainchara.chair= chair;
    global.phasing= 1;
    // obj_mainchara
    with(1570) scr_getideal(chair.x, chair.y - 20);
    obj_mainchara.image_speed= 0.25;
}
if(con == 61) {
    // obj_mainchara
    with(1570) scr_moveideal(12);
}
if(con == 62) {
    obj_mainchara.image_speed= 0;
    con= 63;
    alarm[4]= 20;
}
if(con == 64) {
    global.msc= 0;
    global.interact= 1;
    global.typer= 37;
    global.facechoice= 5;
    global.faceemotion= 9;
    global.msg[0]= "* Comfortable?/";
    global.msg[1]= "* I\\'ll get you&  something to drink./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 65;
}
if(con == 65 && !instance_exists(OBJ_WRITER )) {
    undyne2= instance_create(undyne.x, undyne.y, obj_undyne_actor );
    with(undyne) instance_destroy();
    undyne= undyne2;
    undyne.vspeed= -3;
    undyne.npcdir= 1;
    con= 66;
    alarm[4]= 13;
}
if(con == 67) {
    undyne.vspeed= 0;
    undyne.hspeed= 3;
    con= 68;
    alarm[4]= 37;
}
if(con == 69) {
    undyne.hspeed= 0;
    undyne.npcdir= 0;
    undyne.image_speed= 0;
    undyne.image_index= 0;
    undyne.sprite_index= undyne.usprite;
    con= 70;
    alarm[4]= 30;
    again= 0;
}
if(con == 71) {
    undyne.npcdir= 1;
    undyne.hspeed= -3;
    alarm[4]= 11;
    con= 72;
}
if(con == 73) {
    with(undyne) scr_npc_halt("u");
    g= scr_marker(undyne.x, undyne.y, 1286);
    g.depth= 500000;
    if(again == 0) {
        g.sprite_index= spr_teaboxes ;
        teabox= g;
    }
    if(again == 1) {
        g.sprite_index= spr_hotchocolate ;
        hotchocolate= g;
    }
    if(again == 2) {
        g.sprite_index= spr_soda ;
        soda= g;
    }
    if(again == 3) {
        g.sprite_index= spr_sugarholder ;
        sugar= g;
    }
    con= 74;
    alarm[4]= 20;
}
if(con == 75) {
    if(again < 3) con= 71;
    else  con= 76;
    again++;
}
if(con == 76) {
    undyne.npcdir= 1;
    undyne.hspeed= -3;
    con= 77;
    alarm[4]= 5;
}
if(con == 78) {
    undyne.hspeed= 0;
    undyne.vspeed= 3;
    con= 79;
    alarm[4]= 14;
}
if(con == 80) {
    global.flag[20]= 5;
    undyne.vspeed= 0;
    with(undyne) scr_npc_halt("d");
    global.msg[0]= "* All set^1!&* What would you like?/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 81;
}
if(con == 81 && !instance_exists(OBJ_WRITER )) {
    con= 82;
    mcxp= obj_mainchara.x;
    mcyp= obj_mainchara.y;
    global.interact= 0;
    global.flag[17]= 1;
}
if(con == 82 && (obj_mainchara.x != mcxp || obj_mainchara.y != mcyp)) {
    caster_pause(global.currentsong);
    global.flag[17]= 0;
    global.interact= 1;
    obj_mainchara.cutscene= 1;
    __view_set( e__VW.Object, 0, -4 );
    obj_mainchara.x= mcxp;
    obj_mainchara.y= mcyp;
    undyne.visible= 0;
    with(table) depth= 300000;
    tspear= instance_create(undyne.x, undyne.y, obj_undyne_throwspear );
    con= 83;
    alarm[4]= 60;
}
if(con == 84) {
    global.interact= 1;
    global.facing= 2;
    with(tspear) instance_destroy();
    undyne.visible= 1;
    undyne.npcdir= 0;
    undyne.sprite_index= spr_undyne_throwtalk ;
    global.faceemotion= 1;
    global.facechoice= 5;
    global.flag[390]= 1;
    global.msg[0]= "* HEY!!^1!&* DON\\'T GET UP!!!/";
    global.msg[1]= "* YOU\\'RE THE GUEST!^1!&* SIT DOWN AND ENJOY&  YOURSELF!!!/";
    global.msg[2]= "* .../%%";
    instance_create(0, 0, obj_dialoguer );
    con= 84.1;
}
if(con == 84.1 && !instance_exists(OBJ_WRITER )) {
    caster_resume(global.currentsong);
    global.msg[0]= "\\\\E9* Um^1, why not just&  point to what you&  want?/";
    global.msg[1]= "* You can use the&  spear!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 85;
}
if(con == 85 && !instance_exists(OBJ_WRITER )) {
    obj_undynespear_anim1.part= 1;
    con= 86;
}
if(con == 88 && !instance_exists(OBJ_WRITER )) {
    instance_create(0, 0, obj_musfadeout );
    con= 88.1;
    alarm[4]= 15;
}
if(con == 89.1) {
    global.flag[20]= 0;
    undyne.sprite_index= undyne.dtsprite;
    global.msg[0]= "\\\\E4* Y\\'know^1, I was a&  pretty hotheaded&  kid./";
    global.msg[1]= "* Once^1, to prove I was&  the strongest^1, I tried&  to fight ASGORE./";
    global.msg[2]= "\\\\E1* Emphasis on TRIED./";
    global.msg[3]= "\\\\E0* I couldn\\'t land&  a single blow&  on him!/";
    global.msg[4]= "\\\\E4* And worse^1, the whole&  time^1, he refused&  to fight back!/";
    global.msg[5]= "\\\\E7* I was so&  humiliated.../";
    global.msg[6]= "\\\\E0* Afterwards^1, he&  apologized and said&  something goofy.../";
    global.msg[7]= "* " + chr(ord("\"")) + "Excuse me^1, do you&  want to know how&  to beat me?" + chr(ord("\"")) + "/";
    global.msg[8]= "\\\\E0* I said yes^1, and&  from then on^1, he&  trained me./";
    global.msg[9]= "\\\\E4* One day^1, during&  practice^1, I finally&  knocked him down./";
    global.msg[10]= "\\\\E7* I felt..^1. bad./";
    global.msg[11]= "\\\\E9* But he was&  beaming.../";
    global.msg[12]= "\\\\E6* I had never seen&  someone more proud to&  get their butt kicked./";
    global.msg[13]= "\\\\E1* ... oh!/";
    global.msg[14]= "\\\\E9* I almost forgot&  about your tea!/";
    global.msg[15]= "* Just a moment!/%%";
    global.currentsong= caster_load("music/musicbox.ogg");
    caster_loop(global.currentsong, 0.8, 0.8);
    instance_create(0, 0, obj_dialoguer );
    con= 90;
}
if(con == 90 && !instance_exists(OBJ_WRITER )) {
    undyne.d= 1;
    undyne.depth= table.depth + 1;
    global.faceemotion= 0;
    undyne.sprite_index= undyne.rsprite;
    undyne.image_index= 0.25;
    undyne.hspeed= 3;
    undyne.npcdir= 1;
    con= 91;
    alarm[4]= 20;
}
if(con == 92) {
    instance_create(0, 0, obj_musfadeout );
    with(undyne) scr_npc_halt("r");
    con= 93;
    alarm[4]= 60;
}
if(con == 94) {
    undyne.d= 0;
    with(undyne) scr_npc_halt("d");
    with(undyne) npcdir= 1;
    global.faceemotion= 1;
    global.msc= 0;
    global.facechoice= 5;
    global.typer= 37;
    global.msg[0]= "* Wait a second./";
    global.msg[1]= "* Papyrus..^1.&* His cooking lesson.../";
    global.msg[2]= "\\\\M2* HE WAS SUPPOSED&  TO HAVE THAT RIGHT&  NOW!!!/";
    global.msg[3]= "\\\\E3* And if HE\\'s not&  here to have it.../";
    global.msg[4]= "\\\\E2* YOU\\'LL HAVE TO&  HAVE IT FOR HIM!!!/%%";
    ggg= instance_create(0, 0, obj_dialoguer );
    ggg.side= 1;
    con= 95;
}
if(con == 95 && !instance_exists(OBJ_WRITER )) {
    // obj_musfadeout
    with(92) instance_destroy();
    caster_free(-3);
    global.flag[20]= 0;
    global.currentsong= caster_load("music/undynetruetheme.ogg");
    caster_loop(global.currentsong, 0.9, 1);
    undyne.npcdir= 0;
    undyne.fun= 1;
    undyne.image_index= 0;
    undyne.image_speed= 0.5;
    undyne.sprite_index= spr_undyne_leap ;
    con= 96;
}
if(con == 96) {
    if(undyne.image_index >= 3) undyne.vspeed= -10;
    if(undyne.image_index >= 4) {
        undyne.image_speed= 0;
        con= 97;
        alarm[4]= 30;
    }
}
if(con == 98) {
    undyne.x= 80;
    undyne.vspeed= 10;
    con= 99;
}
if(con == 99) {
    if(undyne.y >= 5) {
        undyne.image_index= 0;
        undyne.y= 10;
        undyne.vspeed= 0;
        snd_play(snd_impact );
        scr_shake(4, 4, 1);
        undyne.vspeed= 0;
        teabox2= instance_create(teabox.x, teabox.y, obj_foodbreak );
        teabox2.sprite_index= spr_teaboxes ;
        teabox2.breaksprite= 1477;
        teabox2.myh= 1;
        teabox2.mya= 4;
        with(teabox) instance_destroy();
        sugar2= instance_create(sugar.x, sugar.y, obj_foodbreak );
        sugar2.sprite_index= spr_sugarholder ;
        sugar2.breaksprite= 1478;
        sugar2.myh= 3;
        with(sugar) instance_destroy();
        soda2= instance_create(soda.x, soda.y, obj_foodbreak );
        soda2.sprite_index= spr_soda ;
        soda2.breaksprite= 1479;
        soda2.mya= -4;
        soda2.myh= -1;
        soda2.myv= -2;
        with(soda) instance_destroy();
        hotchocolate2= instance_create(hotchocolate.x, hotchocolate.y, obj_foodbreak );
        hotchocolate2.sprite_index= spr_hotchocolate ;
        hotchocolate2.breaksprite= 1503;
        hotchocolate2.myh= -1;
        hotchocolate2.mya= 3;
        with(hotchocolate) instance_destroy();
    }
    if(undyne.image_index == 0) {
        undyne.image_speed= 0;
        con= 100;
        alarm[4]= 40;
    }
}
if(con == 101) {
    undyne.sprite_index= spr_undyne_kick ;
    undyne.image_speed= 0.25;
    undyne.hspeed= 5;
    con= 102;
}
if(con == 102) {
    if(undyne.x > 180) undyne.hspeed-= 0.5;
    if(undyne.hspeed == 0) con= 103;
}
if(con == 103) {
    with(undyne) scr_npc_halt("d");
    global.faceemotion= 0;
    global.msg[0]= "* That\\'s right!!!/";
    global.msg[1]= "\\\\E1* NOTHING has brought&  Papyrus and I&  closer than cooking!/";
    global.msg[2]= "\\\\E3* Which means that if&  I give you his&  lesson.../";
    global.msg[3]= "\\\\E2* WE\\'LL BECOME CLOSER&  THAN YOU CAN&  EVER IMAGINE!!!/";
    global.msg[4]= "\\\\E6* Fuhuhu!!^1! Afraid!^1?&* We\\'re gonna be best&  friends!!!/%%";
    de= instance_create(0, 0, obj_dialoguer );
    de.side= 1;
    con= 104;
}
if(con == 104 && !instance_exists(OBJ_WRITER )) {
    undyne.npcdir= 0;
    undyne.fun= 1;
    undyne.image_index= 0;
    undyne.image_speed= 0.5;
    undyne.sprite_index= spr_undyne_leap ;
    con= 106;
}
if(con == 106) {
    if(undyne.image_index >= 3) undyne.vspeed= -15;
    if(undyne.image_index >= 4) {
        undyne.image_speed= 0;
        con= 107;
        alarm[4]= 7;
    }
}
if(con == 108) {
    undyne.x= obj_mainchara.x - 18;
    undyne.vspeed= 15;
    con= 109;
}
if(con == 109) {
    if(undyne.y >= obj_mainchara.y - 40) {
        undyne.image_index= 0;
        undyne.y= obj_mainchara.y - 25;
        undyne.vspeed= 0;
        snd_play(snd_impact );
        scr_shake(4, 4, 1);
        undyne.vspeed= 0;
    }
    if(undyne.image_index == 0) {
        global.facing= 3;
        undyne.image_speed= 0;
        con= 110;
        alarm[4]= 15;
    }
}
if(con == 111) {
    undyne.image_index= 0;
    undyne.sprite_index= undyne.rsprite;
    con= 112;
    alarm[4]= 2;
}
if(con == 113) {
    obj_mainchara.visible= 0;
    undyne.sprite_index= spr_undyne_grableap ;
    con= 114;
    alarm[4]= 5;
}
if(con == 115) {
    undyne.image_speed= 0.5;
    if(undyne.image_index == 2) snd_play(snd_grab );
    if(undyne.image_index >= 5) {
        undyne.image_speed= 0;
        con= 116;
        alarm[4]= 6;
    }
}
if(con == 117) {
    undyne.image_index= 6;
    con= 118;
    alarm[4]= 10;
}
if(con == 119) {
    undyne.image_index= 7;
    undyne.vspeed= -17;
    undyne.gravity= 1.2;
    con= 120;
    undyne.hspeed= 1;
}
if(con == 120 && undyne.vspeed > 1 && undyne.y > 30) {
    undyne.y= 35;
    undyne.gravity= 0;
    undyne.vspeed= 0;
    undyne.hspeed= 0;
    undyne.image_index= 6;
    snd_play(snd_impact );
    scr_shake(4, 4, 1);
    con= 121;
    alarm[4]= 15;
}
if(con == 122) {
    undyne.image_speed= -0.5;
    if(undyne.image_index == 2) {
        global.facing= 2;
        snd_play(snd_noise );
        undyne.image_speed= -0.05;
    }
    if(undyne.image_index < 1) {
        undyne.x-= 2;
        obj_mainchara.x= undyne.x + 20;
        obj_mainchara.y= undyne.y + 24;
        global.facing= 2;
        obj_mainchara.visible= 1;
        undyne.sprite_index= undyne.usprite;
        undyne.image_index= 0;
        undyne.image_speed= 0;
        con= 123;
        alarm[4]= 10;
    }
}
if(con == 124) {
    undyne.sprite_index= undyne.rtsprite;
    undyne.direction= 0;
    undyne.fun= 0;
    undyne.npcdir= 1;
    global.facing= 3;
    global.faceemotion= 0;
    global.facechoice= 5;
    global.msg[0]= "* Ready!^1?&* It\\'s spaghetti time!/";
    global.msg[0]= "* Let\\'s start with the&  sauce!!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 125;
}
if(con == 125 && !instance_exists(OBJ_WRITER )) {
    undyne.hspeed= -2;
    con= 126;
    alarm[4]= 5;
}
if(con == 127) {
    with(undyne) scr_npc_halt("d");
    with(undyne) fun= 1;
    undyne.sprite_index= spr_undyne_stomp ;
    undyne.image_speed= 0.5;
    con= 128;
}
if(con == 128) {
    if(undyne.image_index == 11) {
        snd_play(snd_impact );
        scr_shake(3, 3, 1);
    }
    if(undyne.image_index >= 12) {
        undyne.image_speed= 0;
        veg= scr_marker(195, -20, 1499);
        veg.depth= 500000;
        veg.vspeed= 6;
        con= 129;
    }
}
if(con == 129 && veg.y >= 41) {
    snd_play(snd_noise );
    veg.y= 47;
    veg.vspeed= 0;
    with(undyne) scr_npc_halt("r");
    undyne.sprite_index= undyne.rtsprite;
    undyne.npcdir= 1;
    undyne.fun= 0;
    con= 130;
    alarm[4]= 15;
}
if(con == 131) {
    undyne.npcdir= 0;
    global.facing= 2;
    undyne.sprite_index= undyne.rtsprite;
    global.faceemotion= 0;
    global.msc= 710;
    instance_create(0, 0, obj_dialoguer );
    con= 132;
}
if(con == 140) {
    veg.image_index= 1;
    con= 141;
}
if(con == 141 && !instance_exists(OBJ_WRITER )) {
    global.facing= 2;
    undyne.sprite_index= undyne.utsprite;
    global.flag[20]= 0;
    con= 142;
    alarm[4]= 6;
}
if(con == 143) {
    undyne.npcdir= 0;
    undyne.fun= 1;
    undyne.sprite_index= spr_undyne_uppercut ;
    undyne.image_speed= 0.334;
    con= 144;
}
if(con == 144 && undyne.image_index >= 7) con= 147;
if(con == 148) {
    veg.image_index= 2;
    con= 149;
    alarm[4]= 70;
}
if(con == 147) {
    scr_shake(2, 2, 1);
    instance_create(0, 0, obj_flasher );
    snd_play(snd_spearrise );
    con= 148;
}
if(con == 149 && undyne.image_index >= 8)
    undyne.image_speed= 0;
if(con == 150) {
    undyne.sprite_index= spr_undyne_rt_tomato ;
    obj_mainchara.lsprite= 1032;
    global.faceemotion= 9;
    global.facing= 3;
    global.msc= 0;
    global.flag[390]= 2;
    global.msg[0]= "* Uhh^1, we\\'ll just scrape&  this into a bowl&  later./";
    global.msg[1]= "\\\\E1* But for NOW!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 151;
}
if(con == 151 && !instance_exists(OBJ_WRITER )) {
    global.flag[390]= 0;
    with(undyne) scr_npc_halt("d");
    with(undyne) fun= 1;
    undyne.image_index= 0;
    undyne.sprite_index= spr_undyne_stomp_tomato ;
    undyne.image_speed= 0.5;
    con= 152;
}
if(con == 152) {
    if(undyne.image_index == 11) {
        snd_play(snd_impact );
        scr_shake(3, 3, 1);
    }
    if(undyne.image_index >= 12) {
        undyne.image_speed= 0;
        pot= scr_marker(140, -20, 1492);
        pot.vspeed= 6;
        pot.depth= 500000;
        box= scr_marker(160, -20, 1491);
        box.vspeed= 6;
        box.depth= 500000;
        con= 154;
    }
}
if(con == 154 && pot.y >= 38) {
    snd_play(snd_noise );
    pot.y= 44;
    box.y= 40;
    pot.vspeed= 0;
    box.vspeed= 0;
    with(undyne) scr_npc_halt("d");
    undyne.npcdir= 1;
    undyne.fun= 0;
    con= 155;
    alarm[4]= 10;
}
if(con == 156 && !instance_exists(OBJ_WRITER )) {
    global.facing= 3;
    undyne.npcdir= 1;
    undyne.hspeed= -7;
    obj_mainchara.hspeed= -6;
    obj_mainchara.image_speed= 0.334;
    alarm[4]= 10;
    con= 158;
}
if(con == 159) {
    undyne.hspeed= 0;
    obj_mainchara.hspeed= 0;
    obj_mainchara.image_speed= 0;
    with(undyne) scr_npc_halt("u");
    con= 160;
    alarm[4]= 3;
}
if(con == 161) {
    undyne.sprite_index= undyne.utsprite;
    global.facing= 2;
    con= 162;
    alarm[4]= 15;
}
if(con == 163) {
    con= 164;
    global.msc= 712;
    instance_create(0, 0, obj_dialoguer );
}
if(con == 199) {
    with(box) visible= 0;
    con= 200;
}
if(con == 200 && !instance_exists(OBJ_WRITER )) {
    global.flag[20]= 0;
    global.msc= 0;
    global.faceemotion= 0;
    global.msg[0]= "* Alright^1!&* Now it\\'s time&  to stir the pasta!/";
    global.msg[1]= "* As a general rule&  of thumb^1, the more&  you stir.../";
    global.msg[2]= "\\\\E1* THE BETTER IT IS!/";
    global.msg[3]= "\\\\E0* Ready^1?&* Let\\'s do it!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 201;
    undyne.sprite_index= undyne.utsprite;
    global.facing= 2;
}
if(con == 201 && !instance_exists(OBJ_WRITER )) {
    pp= instance_create(0, 0, obj_potstir );
    pp.pot= pot;
    con= 202;
}
if(con == 210 && !instance_exists(OBJ_WRITER )) {
    con= 211;
    alarm[4]= 10;
}
if(con == 212) {
    snd_play(snd_arrow );
    spear2= scr_marker(pot.x + 10, -35, 1449);
    spear2.image_angle= 270;
    spear2.vspeed= 12;
    spear2.depth= 900000;
    ssine= 0;
    con= 213;
    stab= 0;
}
if(con == 213) {
    ssine++;
    spear2.x= spear2.xstart + sin(ssine / 3) * 4;
    if(spear2.vspeed > 0 && spear2.y > pot.y - 17) {
        spear2.vspeed= -12;
        snd_play(snd_spearrise );
        if(!instance_exists(obj_shaker )) scr_shake(2, 2, 2);
        stab++;
        if(stab >= 2) {
            pot.sprite_index= spr_spaghettipot_wrecked ;
            if(stab < 5) pot.image_index= 0;
            if(stab == 5) pot.image_index= 1;
            if(stab == 7) pot.image_index= 2;
            if(stab == 10) pot.image_index= 3;
        }
    }
    if(spear2.vspeed < 0 && spear2.y < pot.y - 50) {
        spear2.vspeed= 15;
        snd_play(snd_arrow );
    }
    if(stab > 10) con= 214;
}
if(con == 214) {
    spear2.vspeed= 0;
    spear2.image_alpha-= 0.05;
    if(spear2.image_alpha < 0.08) {
        with(spear2) instance_destroy();
        con= 215;
        alarm[4]= 20;
    }
}
if(con == 216) {
    global.facechoice= 5;
    global.msc= 0;
    global.faceemotion= 6;
    global.msg[0]= "\\\\M0* Fuhuhuhu^1!&* That\\'s the stuff!/";
    global.msg[1]= "\\\\E0* Alright^1, now for&  the final step:/";
    global.msg[2]= "\\\\E1* TURN UP THE HEAT!/";
    global.msg[3]= "\\\\E0* Let the stovetop&  symbolize your&  passion!/";
    global.msg[4]= "\\\\E1* Let your hopes and&  dreams turn into&  burning fire!/";
    global.msg[5]= "\\\\E2* READY^1?&* Don\\'t hold anything&  back!!!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 217;
}
if(con == 217 && !instance_exists(OBJ_WRITER )) {
    ph= instance_create(0, 0, obj_potheat );
    pot2= instance_create(pot.x, pot.y + 3, obj_spaghot );
    with(pot) instance_destroy();
    pot= pot2;
    ph.pot= pot;
    con= 218;
}
if(con == 250 && !instance_exists(OBJ_WRITER )) {
    caster_free(-3);
    snd_play(snd_laz );
    wht= instance_create(0, 0, obj_whitesploder );
    con= 251;
    alarm[4]= 40;
}
if(con == 252) {
    blk= instance_create(__view_get( e__VW.XView, 0 ) - 2, -2, obj_npc_marker );
    blk.depth= wht.depth - 2;
    blk.image_alpha= 0;
    blk.visible= 1;
    blk.image_speed= 0;
    blk.sprite_index= spr_pixblk ;
    blk.image_xscale= 200;
    blk.image_yscale= 200;
    con= 253;
}
if(con == 253) {
    blk.image_alpha+= 0.02;
    if(blk.image_alpha >= 1) {
        con= 254;
        alarm[4]= 60;
    }
}
if(con == 255) {
    global.currentsong= caster_load("music/deeploop2.ogg");
    caster_loop(global.currentsong, 0, 1);
    vol= 0;
    potb= scr_marker(pot.x, pot.y + 2, 1494);
    potb.image_speed= 0.5;
    potb.depth= 300000;
    with(pot) instance_destroy();
    __background_set( e__BG.Blend, 0, 128 );
    f= scr_marker(60, 140, 1138);
    f.image_speed= 0.6;
    f.depth= 400000;
    f= scr_marker(80, 40, 1138);
    f.image_speed= 0.5;
    f.depth= 400000;
    f= scr_marker(200, 40, 1138);
    f.image_speed= 0.4;
    f.depth= 400000;
    f= scr_marker(220, 100, 1138);
    f.image_speed= 0.6;
    f.depth= 400000;
    f= scr_marker(180, 160, 1138);
    f.image_speed= 0.7;
    f.depth= 400000;
    table.image_blend= 128;
    piano.image_blend= 128;
    sword.image_blend= 128;
    obj_foodbreak.image_blend= 128;
    if(instance_exists(obj_controlspear ))
        obj_controlspear.image_blend= 128;
    obj_undynewindow.image_blend= 128;
    obj_undynewindow_foreground.image_blend= 128;
    obj_glassshard.image_blend= 128;
    obj_bonedrawer.image_blend= 128;
    with(wht) instance_destroy();
    con= 256;
}
if(con == 256) {
    vol+= 0.02;
    caster_set_volume(global.currentsong, vol);
    blk.image_alpha-= 0.02;
    if(blk.image_alpha < 0.03) {
        with(blk) instance_destroy();
        con= 257;
    }
}
if(con == 257) {
    con= 258;
    alarm[4]= 30;
}
if(con == 259) {
    obj_mainchara.lsprite= 1033;
    undyne.sprite_index= spr_undyne_rt_burnt ;
    global.facing= 3;
    global.facechoice= 5;
    global.msc= 0;
    global.faceemotion= 9;
    global.msg[0]= "* Ah./";
    global.msg[1]= "* Man^1, no wonder&  Papyrus sucks at&  cooking./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 260;
}
if(con == 260 && !instance_exists(OBJ_WRITER )) {
    undyne.sprite_index= undyne.utsprite;
    global.facing= 2;
    con= 261;
    alarm[4]= 120;
}
if(con == 262) {
    undyne.sprite_index= spr_undyne_rt_burnt ;
    global.facing= 3;
    global.facechoice= 5;
    global.msc= 0;
    global.faceemotion= 9;
    global.msg[0]= "* So what\\'s next^1?&* Scrapbooking^1?&* Friendship bracelets?/";
    global.msg[1]= "* .../%%";
    instance_create(0, 0, obj_dialoguer );
    con= 263;
}
if(con == 263 && !instance_exists(OBJ_WRITER )) {
    undyne.sprite_index= spr_undyne_ut ;
    global.faceemotion= 7;
    global.msg[0]= "* ... oh^1, who am I&  kidding./";
    global.msg[1]= "* I really screwed this&  up^1, didn\\'t I?/";
    global.msg[2]= "\\\\E4* I can\\'t force you to&  like me^1, human./";
    global.msg[3]= "\\\\E4* Some people just&  don\\'t get along&  with each other./";
    global.msg[4]= "\\\\E7* I understand if&  you feel that&  way about me./";
    global.msg[5]= "\\\\E4* And if we can\\'t&  be friends.../";
    global.msg[6]= "\\\\E7* That\\'s okay./";
    global.msg[7]= "\\\\E7* Because..^1.&* If we\\'re not&  friends.../%%";
    instance_create(0, 0, obj_dialoguer );
    con= 264;
}
if(con == 264 && !instance_exists(OBJ_WRITER )) {
    caster_free(-3);
    global.msg[0]= "\\\\E2*\\\\M2 IT MEANS I CAN&  DESTROY YOU WITHOUT&  REGRET!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 265;
}
if(con == 265 && !instance_exists(OBJ_WRITER )) {
    global.mercy= 1;
    global.battlegroup= 58;
    instance_create(0, 0, obj_battler );
    con= 266;
}
if(con == 266 && !instance_exists(obj_battler )) {
    con= 267;
    room_persistent= 0;
    alarm[4]= 2;
}
if(con == 268) {
    room_persistent= 0;
    global.phasing= 0;
    global.flag[17]= 0;
    global.mercy= 0;
    snd_play(snd_bell );
    room_goto(117);
}
if(con == 300 && !instance_exists(OBJ_WRITER )) {
    global.faceemotion= 0;
    instance_create(0, 0, obj_musfadeout );
    con= 301;
    alarm[4]= 15;
}
if(con == 302) {
    undyne.npcdir= 1;
    undyne.hspeed= 0;
    undyne.fun= 0;
    undyne.vspeed= -3;
    alarm[4]= 17;
    con= 303;
}
if(con == 304) {
    undyne.hspeed= 3;
    undyne.vspeed= 0;
    con= 305;
    alarm[4]= 32;
}
if(con == 306) {
    with(undyne) scr_npc_halt("u");
    con= 307;
    alarm[4]= 20;
}
if(con == 308) {
    undyne.npcdir= 1;
    undyne.hspeed= -3;
    undyne.fun= 0;
    undyne.vspeed= 0;
    alarm[4]= 32;
    con= 309;
}
if(con == 310) {
    with(undyne) scr_npc_halt("u");
    con= 311;
    alarm[4]= 20;
}
if(con == 312) {
    snd_play(snd_splash );
    con= 313;
    alarm[4]= 30;
}
if(con == 314) {
    snd_play(snd_noise );
    con= 315;
    alarm[4]= 30;
}
if(con == 316) {
    undyne.npcdir= 1;
    undyne.fun= 0;
    undyne.hspeed= 3;
    undyne.vspeed= 0;
    con= 317;
    alarm[4]= 14;
}
if(con == 318) {
    with(undyne) scr_npc_halt("u");
    con= 319;
    alarm[4]= 15;
}
if(con == 320) {
    con= 321;
    snd_play(snd_noise );
    teapot= scr_marker(167, 49, 1483);
    teapot.image_speed= 0;
    with(teapot) depth= obj_undyne_actor.depth + 1;
    alarm[4]= 30;
}
if(con == 322) {
    snd_play(snd_noise );
    con= 323;
    alarm[4]= 30;
}
if(con == 324) {
    con= 325;
    with(undyne) scr_npc_halt("d");
    global.faceemotion= 9;
    alarm[4]= 20;
}
if(con == 326) {
    global.typer= 37;
    global.facechoice= 5;
    global.faceemotion= 9;
    global.msc= 0;
    global.msg[0]= "* It\\'ll take a moment&  for the water to&  boil./%%";
    con= 327;
    dg= instance_create(0, 0, obj_dialoguer );
    dg.side= 1;
}
if(con == 327 && !instance_exists(OBJ_WRITER )) {
    global.faceemotion= 0;
    with(undyne) scr_npc_halt("u");
    con= 328;
    alarm[4]= 180;
}
if(con == 329) {
    teapot.image_speed= 1;
    snd_play(snd_slidewhist );
    con= 330;
    alarm[4]= 60;
}
if(con == 331) {
    with(undyne) scr_npc_halt("d");
    global.typer= 37;
    global.facechoice= 5;
    global.faceemotion= 9;
    global.msc= 0;
    global.msg[0]= "* Okay^1, it\\'s all&  done!/%%";
    con= 332;
    dg= instance_create(0, 0, obj_dialoguer );
    dg.side= 1;
}
if(con == 332 && !instance_exists(OBJ_WRITER )) {
    global.faceemotion= 0;
    undyne.npcdir= 1;
    undyne.fun= 0;
    undyne.hspeed= -3;
    undyne.vspeed= 0;
    con= 334;
    alarm[4]= 14;
}
if(con == 335) {
    with(undyne) scr_npc_halt("u");
    con= 337;
    alarm[4]= 20;
}
if(con == 338) {
    teacup.visible= 0;
    undyne.npcdir= 1;
    undyne.fun= 0;
    undyne.hspeed= 3;
    undyne.vspeed= 0;
    con= 339;
    alarm[4]= 17;
}
if(con == 340) {
    with(undyne) scr_npc_halt("u");
    con= 341;
    alarm[4]= 20;
}
if(con == 342) {
    teapot.image_index= 0;
    teapot.image_speed= 0;
    snd_play(snd_splash );
    con= 343;
    alarm[4]= 50;
}
if(con == 344) {
    undyne.npcdir= 1;
    undyne.fun= 0;
    undyne.hspeed= 0;
    undyne.vspeed= 3;
    con= 345;
    alarm[4]= 28;
}
if(con == 346) {
    undyne.npcdir= 1;
    undyne.fun= 0;
    undyne.hspeed= 3;
    undyne.vspeed= 0;
    con= 347;
    alarm[4]= 10;
}
if(con == 348) {
    with(undyne) scr_npc_halt("u");
    con= 349;
    alarm[4]= 20;
}
if(con == 350) {
    teacup.x= obj_mainchara.x - 6;
    teacup.y= obj_mainchara.y + 5;
    teacup.visible= 1;
    teacup.depth= undyne.depth + 10;
    snd_play(snd_noise );
    con= 351;
    alarm[4]= 30;
}
if(con == 352) {
    with(undyne) scr_npc_halt("r");
    undyne.sprite_index= spr_undyne_rt ;
    global.typer= 37;
    global.facechoice= 5;
    global.faceemotion= 0;
    global.msc= 0;
    global.msg[0]= "* Here we are./%%";
    con= 352.5;
    instance_create(0, 0, obj_dialoguer );
}
if(con == 352.5 && !instance_exists(OBJ_WRITER )) {
    undyne.npcdir= 1;
    undyne.fun= 0;
    undyne.hspeed= -3;
    undyne.vspeed= 0;
    con= 353;
    alarm[4]= 10;
}
if(con == 354) {
    undyne.npcdir= 1;
    undyne.fun= 0;
    undyne.hspeed= 0;
    undyne.vspeed= -3;
    con= 355;
    alarm[4]= 16;
}
if(con == 356) {
    undyne.npcdir= 1;
    undyne.fun= 0;
    undyne.hspeed= 3;
    undyne.vspeed= 0;
    con= 357;
    alarm[4]= 12;
    undyne.d= 1;
    undyne.depth= table.depth + 1;
}
if(con == 358) {
    with(undyne) scr_npc_halt("d");
    con= 359;
    alarm[4]= 20;
}
if(con == 360) {
    undyne.sprite_index= spr_undyne_d_sit ;
    undyne.y+= 15;
    con= 361;
    alarm[4]= 30;
}
if(con == 362) {
    global.flag[20]= 0;
    global.typer= 37;
    global.facechoice= 5;
    global.faceemotion= 9;
    global.msc= 0;
    global.msg[0]= "* Careful^1, it\\'s hot./%%";
    con= 363;
    instance_create(0, 0, obj_dialoguer );
}
if(con == 363 && !instance_exists(OBJ_WRITER )) {
    con= 364;
    alarm[4]= 90;
}
if(con == 365) {
    global.typer= 37;
    global.facechoice= 5;
    global.faceemotion= 1;
    global.msc= 0;
    global.msg[0]= "* It\\'s not THAT hot!^1!&* Just drink it already!/";
    global.msg[1]= "\\\\TS \\\\F0 \\\\T0 %";
    global.msg[2]= "* (You take a sip of the&  tea.^1)&* (It\\'s burning...)/";
    global.msg[3]= "* (But other than that^1,&  it\\'s pretty good.)/";
    scr_undface(4, 9);
    global.msg[5]= "* It\\'s pretty good^1,&  right?/";
    global.msg[6]= "\\\\E6* Nothing but the best&  for my ABSOLUTELY&  PRECIOUS FRIEND!!/%%";
    con= 366;
    instance_create(0, 0, obj_dialoguer );
}
if(con == 366 && !instance_exists(OBJ_WRITER )) {
    con= 366.1;
    alarm[4]= 80;
}
if(con == 367.1) {
    global.typer= 37;
    global.facechoice= 5;
    global.faceemotion= 1;
    global.msc= 0;
    global.msg[0]= "\\\\E9* Hey.../";
    global.msg[1]= "\\\\E9* You know...&* It\\'s kind of strange&  you chose THAT tea./";
    global.msg[2]= "\\\\E4* Golden flower tea.../";
    global.msg[3]= "\\\\E0* That\\'s ASGORE\\'s&  favorite kind./";
    global.msg[4]= "\\\\E4* Actually^1, now that&  I think about it.../";
    global.msg[5]= "\\\\E9* You kind of remind&  me of him./";
    global.msg[6]= "\\\\E6* You\\'re both TOTAL&  weenies!!!/";
    global.msg[7]= "\\\\E7* ... sort of./%%";
    con= 367;
    instance_create(0, 0, obj_dialoguer );
}
if(con == 367 && !instance_exists(OBJ_WRITER )) {
    con= 368;
    alarm[4]= 60;
}
if(con == 369 && !instance_exists(OBJ_WRITER )) {
    global.flag[20]= 0;
    global.msg[0]= "\\\\E4* Y\\'know^1, I was a&  pretty hotheaded&  kid./";
    global.msg[1]= "* Once^1, to prove I was&  the strongest^1, I tried&  to fight ASGORE./";
    global.msg[2]= "\\\\E1* Emphasis on TRIED./";
    global.msg[3]= "\\\\E0* I couldn\\'t land&  a single blow&  on him!/";
    global.msg[4]= "\\\\E4* And worse^1, the whole&  time^1, he refused&  to fight back!/";
    global.msg[5]= "\\\\E7* I was so&  humiliated.../";
    global.msg[6]= "\\\\E0* Afterwards^1, he&  apologized and said&  something goofy.../";
    global.msg[7]= "* " + chr(ord("\"")) + "Excuse me^1, do you&  want to know how&  to beat me?" + chr(ord("\"")) + "/";
    global.msg[8]= "\\\\E0* I said yes^1, and&  from then on^1, he&  trained me./";
    global.msg[9]= "\\\\E4* One day^1, during&  practice^1, I finally&  knocked him down./";
    global.msg[10]= "\\\\E7* I felt..^1. bad./";
    global.msg[11]= "\\\\E9* But he was&  beaming.../";
    global.msg[12]= "\\\\E6* I had never seen&  someone more proud to&  get their butt kicked./";
    global.msg[13]= "\\\\E4* Anyway^1, long story&  short^1, he kept training&  me.../";
    global.msg[14]= "\\\\E0* And now I\\'m the&  head of the Royal&  Guard!/";
    global.msg[15]= "\\\\E6* So I\\'m the one&  who gets to train&  dorks to fight!/";
    global.msg[16]= "\\\\E9* ... like^1, uh^1, Papyrus./%%";
    global.currentsong= caster_load("music/musicbox.ogg");
    caster_loop(global.currentsong, 0.8, 0.8);
    instance_create(0, 0, obj_dialoguer );
    con= 370;
}
if(con == 370 && !instance_exists(OBJ_WRITER )) {
    con= 371;
    alarm[4]= 70;
}
if(con == 372) {
    global.typer= 37;
    global.facechoice= 5;
    global.faceemotion= 1;
    global.msc= 0;
    global.msg[0]= "\\\\E4* But^1, um^1, to be&  honest.../";
    global.msg[1]= "\\\\E9*... I don\\'t know if.../";
    global.msg[2]= "\\\\E7* I can ever let&  Papyrus into the&  Royal Guard./";
    global.msg[3]= "\\\\E1* Don\\'t tell him I&  said that!/";
    global.msg[4]= "\\\\E4* He\\'s just..^1.&* Well.../";
    global.msg[5]= "\\\\E9* I mean^1, it\\'s not&  that he\\'s weak./";
    global.msg[6]= "\\\\E1* He\\'s actually&  pretty freaking&  tough!/";
    global.msg[7]= "\\\\E7* It\\'s just that..^1.&* He\\'s.../";
    global.msg[8]= "\\\\E1* He\\'s too innocent&  and nice!!!/";
    global.msg[9]= "\\\\E7* I mean^1, look^1, he&  was SUPPOSED to&  capture you.../";
    global.msg[10]= "\\\\E5* And he ended up&  being FRIENDS with&  you instead!/";
    global.msg[11]= "\\\\E1* I could NEVER send&  him into battle!/";
    global.msg[12]= "\\\\E7* He\\'d get ripped&  into little smiling&  shreds./";
    global.msg[13]= "\\\\E7* That\\'s part of why.../";
    global.msg[14]= "\\\\E9* I started teaching&  him how to cook^1,&  you know?/";
    global.msg[15]= "\\\\E7* So^1, um^1, maybe he&  can do something&  else with his life./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 373;
}
if(con == 373 && !instance_exists(OBJ_WRITER )) {
    instance_create(0, 0, obj_musfadeout );
    con= 375;
    alarm[4]= 30;
}
if(con == 376) {
    bcbc= instance_create(undyne.x, undyne.y, obj_cosmeticblcon );
    con= 377;
    alarm[4]= 30;
}
if(con == 378) {
    with(bcbc) instance_destroy();
    con= 379;
    alarm[4]= 20;
}
if(con == 380) {
    global.msg[0]= "\\\\E1* Oh^1, sorry^1, I was&  talking for so&  long.../";
    global.msg[1]= "\\\\E9* You\\'re out of tea^1,&  aren\\'t you?/";
    global.msg[2]= "\\\\E0* I\\'ll get you some&  more./%%";
    con= 381;
    instance_create(0, 0, obj_dialoguer );
}
if(con == 381 && !instance_exists(OBJ_WRITER )) {
    undyne.y-= 15;
    undyne.npcdir= 1;
    undyne.fun= 0;
    undyne.hspeed= -3;
    undyne.vspeed= 0;
    con= 383;
    alarm[4]= 17;
}
if(con == 384) {
    with(undyne) scr_npc_halt("l");
    con= 385;
    alarm[4]= 90;
}
if(con == 386) con= 94;

/* */
/*  */
