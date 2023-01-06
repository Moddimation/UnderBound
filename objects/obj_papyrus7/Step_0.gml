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
    obj_mainchara.cutscene= 1;
    camera= __view_get( e__VW.XView, 0 );
    conversation= 1.5;
}
if(conversation == 1.5) {
    if(__view_get( e__VW.XView, 0 ) < camera + 119)
        __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (3) );
    else  conversation= 2;
}
if(conversation == 2 && !instance_exists(OBJ_WRITER )) {
    conversation= 3;
    xxblcon= instance_create(papyrus.x + 3, papyrus.y - 12, obj_cosmeticblcon );
    alarm[0]= 30;
    alarm[4]= 40;
}
if(conversation == 4) {
    global.msc= 0;
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 4;
    global.interact= 1;
    global.msg[0]= "HUMAN!/";
    global.msg[1]= "THIS IS YOUR FINAL&AND MOST DANGEROUS&CHALLENGE!/";
    global.msg[2]= "BEHOLD^1!&THE GAUNTLET OF&DEADLY TERROR!/%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 6;
}
if(conversation == 6 && !instance_exists(OBJ_WRITER )) {
    dtrapa= instance_create(x + 20, y, obj_dtrapfire );
    dcannon= scr_marker(x + 170, 240, 1196);
    dcannon.vspeed= -0.7;
    with(dcannon) depth= 4000;
    dspear1= scr_marker(x + 100, 310, 1194);
    dspear1.image_yscale= -1;
    dspear1.vspeed= -0.9;
    with(dspear1) depth= 4000;
    dspear2= scr_marker(x + 100, -60, 1194);
    dspear2.vspeed= 0.9;
    dspike= scr_marker(x + 20, -100, 1197);
    dspike.vspeed= 1.2;
    ddog= scr_marker(x + 170, -90, 1195);
    ddog.vspeed= 1.2;
    ddog.image_speed= 0.1;
    conversation= 6.1;
    alarm[4]= 60;
}
if(conversation == 7.1) {
    obj_npc_marker.vspeed= 0;
    conversation= 7;
    alarm[4]= 30;
}
if(conversation == 8) {
    global.msg[0]= "WHEN I SAY THE&WORD^1, IT WILL&FULLY ACTIVATE!!!/";
    global.msg[1]= "CANNONS WILL FIRE^1!&SPIKES WILL SWING^1!&BLADES WILL SLICE^1!/";
    global.msg[2]= "EACH PART WILL&SWING VIOLENTLY&UP AND DOWN!/";
    global.msg[3]= "ONLY THE TINIEST&CHANCE OF VICTORY&WILL REMAIN!!!/";
    global.msg[4]= "ARE YOU READY!?/";
    global.msg[5]= "BECAUSE!/";
    global.msg[6]= "I!/";
    global.msg[7]= "AM!/";
    global.msg[8]= "ABOUT!/";
    global.msg[9]= "TO DO IT!/%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 9;
}
if(conversation == 9 && !instance_exists(OBJ_WRITER )) {
    alarm[4]= 120;
    conversation= 10;
}
if(conversation == 11) {
    papyrus.sprite_index= papyrus.rtsprite;
    sans.sprite_index= sans.dtsprite;
    global.typer= 17;
    global.facechoice= 3;
    global.faceemotion= 1;
    global.msg[0]= " %";
    global.msg[1]= "* well^1?&* what\\'s the holdup?/";
    scr_papface(2, 1);
    global.msg[3]= "HOLDUP!^1?&WHAT HOLDUP!?/";
    global.msg[4]= "I\\'M..^1.&I\\'M ABOUT TO&ACTIVATE IT NOW!/%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 12;
}
if(conversation == 12 && !instance_exists(OBJ_WRITER )) {
    papyrus.sprite_index= papyrus.ltsprite;
    sans.sprite_index= sans.ltsprite;
    conversation= 13;
    alarm[4]= 120;
}
if(conversation == 14) {
    global.typer= 17;
    global.facechoice= 3;
    global.faceemotion= 1;
    global.msg[0]= " %";
    global.msg[1]= "* that^1, uh^1, doesn\\'t look&  very activated./";
    scr_papface(2, 1);
    global.msg[3]= "WELL!!!/";
    global.msg[4]= "THIS CHALLENGE!!!/";
    global.msg[5]= "\\\\E3IT SEEMS.../";
    global.msg[6]= "MAYBE..^1. TOO EASY&TO DEFEAT THE&HUMAN WITH./";
    global.msg[7]= "\\\\E1YEAH^1!&WE CAN\\'T USE&THIS ONE!!!/";
    global.msg[8]= "I AM A SKELETON&WITH STANDARDS!!!/";
    global.msg[9]= "MY PUZZLES ARE&VERY FAIR!/";
    global.msg[10]= "AND MY TRAPS ARE&EXPERTLY COOKED!/";
    global.msg[11]= "BUT THIS METHOD&IS TOO DIRECT^1!&NO CLASS AT ALL!/";
    global.msg[12]= "\\\\E0AWAY IT GOES!/%%";
    if(murder == 1) {
        global.msg[3]= "WELL!!!/";
        global.msg[4]= "\\\\E3... THEY\\'RE PROBABLY&GOING TO WALK&THROUGH IT./";
        global.msg[5]= "AND IT WON\\'T BE&ANY FUN AT ALL./";
        scr_sansface(6, 0);
        global.msg[7]= "* hmmm...&* so this human thing&  was a bust^1, huh?/";
        scr_papface(8, 3);
        global.msg[9]= "WELL^1. I MEAN^1.&I\\'M EXCITED TO&CAPTURE THEM./";
        global.msg[10]= "\\\\E0SO I\\'LL BECOME&A FAMOUS ROYAL&GUARDSMAN!!!/";
        global.msg[11]= "\\\\E3BUT ALL THE TIME&I PUT INTO THESE&PUZZLES.../";
        global.msg[12]= "IT\\'S KIND OF LIKE&THROWING A&BIRTHDAY PARTY.../";
        scr_sansface(13, 2);
        global.msg[14]= "* without traps and fire?/";
        scr_papface(15, 4);
        global.msg[16]= "EXACTLY!^1!&IT\\'S POINTLESS!!!/";
        global.msg[17]= "\\\\E3MAYBE YOU WERE&RIGHT TO BE LAZY&ABOUT PUZZLES./";
        scr_sansface(18, 1);
        global.msg[19]= "* me^1?&* right about something^1?&* really?/";
        scr_papface(20, 3);
        global.msg[21]= ".../";
        global.msg[22]= "\\\\E0YEAH!^1!&WHAT AM I SAYING!/";
        global.msg[23]= "YOU\\'RE STILL&COMPLETELY WRONG!/";
        global.msg[24]= "I JUST HAVE THE&WRONG AUDIENCE!/";
        global.msg[25]= "THINK ABOUT HOW&MUCH FUN UNDYNE&WOULD HAVE HERE!/";
        global.msg[26]= "FLAMES^1, VIOLENCE^1.&IT\\'S RIGHT UP HER&ALLEY!/";
        global.msg[27]= "SO I WON\\'T WASTE&THIS PUZZLE ON&YOU./";
        global.msg[28]= "I JUST HAVE TO&APPRECIATE.../";
        global.msg[29]= "THE FRIEND I&ALREADY HAVE!!!/%%";
    }
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 15;
}
if(conversation == 15 && !instance_exists(OBJ_WRITER )) {
    dtrapa.alarm[1]= 1;
    alarm[4]= 60;
    conversation= 15.5;
    dcannon.vspeed= 2;
    dspear1.vspeed= 2;
    dspear2.vspeed= -2;
    dspike.vspeed= -2;
    ddog.vspeed= -2;
}
if(conversation == 16.5) {
    with(dcannon) instance_destroy();
    with(dspear1) instance_destroy();
    with(dspear2) instance_destroy();
    with(dspike) instance_destroy();
    with(ddog) instance_destroy();
    global.faceemotion= 3;
    papyrus.sprite_index= papyrus.rtsprite;
    global.msg[0]= "PHEW!/%%";
    conversation= 15.7;
    mydialoguer= instance_create(0, 0, obj_dialoguer );
}
if(conversation == 15.7 && !instance_exists(OBJ_WRITER )) {
    xxblcon= instance_create(papyrus.x + 3, papyrus.y - 12, obj_cosmeticblcon );
    alarm[0]= 30;
    conversation= 16;
    alarm[4]= 40;
}
if(conversation == 17) {
    papyrus.sprite_index= papyrus.ltsprite;
    global.faceemotion= 1;
    global.msg[0]= "WHAT ARE YOU&LOOKING AT!?/";
    global.msg[1]= "THIS WAS ANOTHER&DECISIVE VICTORY&FOR PAPYRUS!!/";
    global.msg[2]= "NYEH!!/";
    global.msg[3]= "HEH!!/";
    global.msg[4]= ".../";
    global.msg[5]= "\\\\E3HEH???/%%";
    if(murder == 1) {
        global.msg[0]= "A VALUABLE LIFE&LESSON!!!/";
        global.msg[1]= "NYEH HEH HEH!!!/%%";
    }
    instance_create(0, 0, obj_dialoguer );
    conversation= 18;
}
if(conversation == 18 && !instance_exists(OBJ_WRITER )) {
    conversation= 19;
    instance_create(0, 0, obj_musfadeout );
    papyrus.npcdir= 1;
    papyrus.hspeed= 4;
    alarm[4]= 30;
}
if(conversation == 20) {
    if(__view_get( e__VW.XView, 0 ) > camera)
        __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (3) );
    else  conversation= 21;
}
if(conversation == 21) {
    flowey= instance_create(80, 120, obj_stalkerflowey );
    obj_mainchara.cutscene= 0;
    global.currentsong= caster_load("music/snowy.ogg");
    caster_loop(global.currentsong, 1, 0.95);
    global.plot= 67;
    global.interact= 0;
    instance_create(sans.x, sans.y, obj_sans_room );
    with(sans) instance_destroy();
    with(papyrus) instance_destroy();
    instance_destroy();
}

/* */
/*  */
