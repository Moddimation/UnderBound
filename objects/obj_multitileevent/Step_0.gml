if(con == 1) {
    global.phasing= 1;
    global.flag[17]= 1;
    global.interact= 1;
    obj_mainchara.x= 140;
    obj_mainchara.y= -20;
    obj_mainchara.vspeed= 3;
    con= 2;
    turntimer= 0;
}
if(con == 2) {
    turntimer++;
    if(turntimer > 15) {
        turntimer= 0;
        global.facing++;
        if(global.facing > 3) global.facing= 0;
    }
    if(obj_mainchara.y > 100) {
        con= 3;
        obj_mainchara.vspeed= 0;
        alarm[4]= 23;
        mett= instance_create(140, -20, obj_mettaton_flightdress );
        mett.vspeed= 3;
    }
}
if(con == 4) {
    mett.vspeed= 0;
    con= 5;
    alarm[4]= 20;
}
if(con == 6) {
    global.msc= 0;
    global.typer= 27;
    global.facechoice= 0;
    global.msg[0]= "* OH NO!&* WHATEVER SHALL I DO?/";
    global.msg[1]= "* MY LOVE HAS BEEN CAST AWAY&  INTO THE DUNGEON./";
    global.msg[2]= "* A DUNGEON WITH A PUZZLE SO&  DASTARDLY^1, MY PARAMOUR WILL&  SURELY PERISH!/%%";
    dia= instance_create(0, 0, obj_dialoguer );
    dia.side= 1;
    con= 7;
}
if(con == 7 && !instance_exists(OBJ_WRITER )) {
    __view_set( e__VW.Object, 0, -4 );
    obj_mainchara.cutscene= 1;
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (5) );
    if(__view_get( e__VW.XView, 0 ) >= 96) {
        __view_set( e__VW.XView, 0, 100 );
        con= 8;
        alarm[4]= 15;
    }
}
if(con == 9) {
    global.msg[0]= "* O, HEAVENS HAVE MERCY!&* THE HORRIBLE COLORED TILE&  MAZE!/";
    global.msg[1]= "* EACH COLORED TILE HAS ITS&  OWN SADISTIC FUNCTION./";
    global.msg[2]= "* FOR EXAMPLE, A GREEN TILE&  SOUNDS A NOISE, AND THEN&  YOU MUST FIGHT A MONSTER./";
    global.msg[3]= "* RED TILES WILL...&* ACTUALLY, WAIT A SECOND./";
    global.msg[4]= "* DIDN\\'T WE SEE THIS PUZZLE&  ABOUT A HUNDRED ROOMS&  AGO?/";
    global.msg[5]= "* THAT\\'S RIGHT.&* YOU REMEMBER ALL THE&  RULES, DON\\'T YOU?/";
    global.msg[6]= "* GREAT...&* THEN I WON\\'T WASTE YOUR&  TIME REPEATING THEM!!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 10;
}
if(con == 10 && !instance_exists(OBJ_WRITER )) {
    con= 11;
    alarm[4]= 40;
}
if(con == 12) {
    global.msg[0]= "* OH, AND YOU\\'D BETTER HURRY./";
    global.msg[1]= "\\\\W* BECAUSE IF YOU DON\\'T GET&  THROUGH IN \\\\Y30 SECONDS\\\\W.../%%";
    instance_create(0, 0, obj_dialoguer );
    con= 13;
}
if(con == 13 && !instance_exists(OBJ_WRITER )) {
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (5) );
    if(__view_get( e__VW.XView, 0 ) <= 4) {
        __view_set( e__VW.XView, 0, 0 );
        con= 14;
        alarm[4]= 20;
    }
}
if(con == 15) {
    snd_play(snd_noise );
    flame1= instance_create(40, 20, obj_flamedrawer );
    flame2= instance_create(1160, 20, obj_flamedrawer );
    con= 16;
    alarm[4]= 30;
}
if(con == 17) {
    global.msg[0]= "* YOU\\'LL BE INCINERATED BY&  THESE JETS OF FIRE!!/";
    global.msg[1]= "* AHAHAHAHAHAHA!&* AHAHA... HA... HA!/";
    global.msg[2]= "* MY POOR LOVE!&* I\\'M SO FILLED WITH GRIEF,&  I CAN\\'T STOP LAUGHING!/";
    global.msg[3]= "* GOOD LUCK, DARLING!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 18;
}
if(con == 18 && !instance_exists(OBJ_WRITER )) {
    racesong= caster_load("music/operatile.ogg");
    // obj_mettaton_flightdress
    with(1206) {
        middle= 1;
        event_user(1);
    }
    caster_play(racesong, 1, 1);
    cooltimer= 900;
    instance_create(0, 0, obj_tilehud );
    flavor= 0;
    global.phasing= 0;
    obj_mainchara.cutscene= 0;
    __view_set( e__VW.Object, 0, 1570 );
    global.interact= 0;
    con= 20;
}
if(con == 20) {
    if(!instance_exists(obj_tileguy ) && obj_mainchara.x > room_width / 2) {
        global.interact= 1;
        con= 75;
    }
    cooltimer--;
    if(cooltimer == 0) con= 30;
}
if(con == 30) {
    // obj_insidiousconveyor
    with(1211) {
        collide= 0;
        active= -1;
    }
    obj_tileguytileparent.grey= 1;
    // obj_mettaton_flightdress
    with(1206) middle= 2;
    global.facing= 2;
    obj_mainchara.visible= 1;
    global.interact= 1;
    if(instance_exists(obj_tileguy )) {
        // obj_tileguy
        with(1212) instance_destroy();
    }
    if(flame1.x < __view_get( e__VW.XView, 0 ) - 20)
        flame1.x= __view_get( e__VW.XView, 0 ) - 20;
    if(flame2.x > __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ))
        flame2.x= __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 );
    con= 31;
    alarm[4]= 60;
}
if(con == 31) {
    global.interact= 1;
    global.facing= 2;
}
if(con == 32) {
    // obj_tilehud
    with(1209) finished= 1;
    global.typer= 27;
    global.facechoice= 0;
    global.msc= 0;
    global.msg[0]= "* OOOOH, I\\'M SO SORRY!&* LOOKS LIKE YOU\\'RE OUT OF&  TIME!!!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 33;
}
if(con == 33 && !instance_exists(OBJ_WRITER )) {
    con= 34;
    alarm[4]= 40;
}
if(con == 34) {
    if(flame1.x < obj_mainchara.x - 20) flame1.x+= 2;
    if(flame2.x > obj_mainchara.x + 20) flame2.x-= 2;
}
if(con == 35) {
    global.msg[0]= "* HERE COME THE FLAMES, DARLING!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 36;
}
if(con == 36 && !instance_exists(OBJ_WRITER )) {
    con= 37;
    alarm[4]= 40;
}
if(con == 37 && !instance_exists(OBJ_WRITER )) {
    if(flame1.x < obj_mainchara.x - 20) flame1.x++;
    if(flame2.x > obj_mainchara.x + 20) flame2.x--;
}
if(con == 38) {
    global.msg[0]= "* THEY\\'RE CLOSING IN!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 39;
}
if(con == 39 && !instance_exists(OBJ_WRITER )) {
    con= 40;
    alarm[4]= 40;
}
if(con == 40 && !instance_exists(OBJ_WRITER )) {
    if(flame1.x < obj_mainchara.x - 20)
        flame1.x+= 0.5;
    if(flame2.x > obj_mainchara.x + 20)
        flame2.x-= 0.5;
}
if(con == 41) {
    global.msg[0]= "* GETTING!&* CLOSER!&* OH MY!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 42;
}
if(con == 42 && !instance_exists(OBJ_WRITER )) {
    con= 43;
    alarm[4]= 40;
}
if(con == 43 && !instance_exists(OBJ_WRITER )) {
    if(flame1.x < obj_mainchara.x - 20)
        flame1.x+= 0.5;
    if(flame2.x > obj_mainchara.x + 20)
        flame2.x-= 0.5;
}
if(con == 44) {
    global.msg[0]= "* ANY MINUTE NOW!!!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 45;
}
if(con == 45 && !instance_exists(OBJ_WRITER )) {
    con= 46;
    alarm[4]= 90;
}
if(con == 46 && !instance_exists(OBJ_WRITER )) {
    if(flame1.x < obj_mainchara.x - 20)
        flame1.x+= 0.5;
    if(flame2.x > obj_mainchara.x + 20)
        flame2.x-= 0.5;
}
if(con == 47) {
    global.msg[0]= "* ...&* ...&* (ROBOTIC COUGH)/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 48;
}
if(con == 48 && !instance_exists(OBJ_WRITER )) {
    con= 49;
    alarm[4]= 20;
}
if(con == 50) {
    global.typer= 5;
    global.facechoice= 0;
    global.faceemotion= 6;
    snd_play(snd_phone );
    global.msg[0]= "* Ring.../";
    global.msg[1]= "* \\\\TS \\\\F6 \\\\TA %";
    global.msg[2]= "* Watch out!^1!&* I\\'ll save you!!/";
    global.msg[3]= "* I\\'m hacking into the&  firewall right now!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 51;
}
if(con == 51 && !instance_exists(OBJ_WRITER )) {
    snd_play(snd_noise );
    with(flame1) instance_destroy();
    with(flame2) instance_destroy();
    con= 52;
    alarm[4]= 30;
}
if(con == 53) {
    global.facechoice= 0;
    global.typer= 27;
    global.msg[0]= "* OH NO!!!&* HOW COULD THIS HAPPEN???/";
    global.msg[1]= "* FOILED AGAIN BY THE BRILLIANT&  DOCTOR ALPHYS!!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 54;
}
if(con == 54 && !instance_exists(OBJ_WRITER )) {
    con= 55;
    alarm[4]= 90;
}
if(con == 56) {
    global.faceemotion= 5;
    global.facechoice= 0;
    global.typer= 27;
    global.msg[0]= "* THA-%";
    global.msg[1]= "\\\\TS \\\\F6 \\\\TA %";
    global.msg[2]= "\\\\E6* That\\'s right!/";
    global.msg[3]= "\\\\E6* Come on^1, Mettaton^1,&  give up already!/";
    global.msg[4]= "* You\\'ll never be&  able to defeat&  us.../";
    global.msg[5]= "\\\\E0* Not as long as&  we work together!/";
    global.msg[6]= "\\\\E6* Your puzzle\\'s over..&* Now go home and&  leave us alone!/";
    global.msg[7]= "\\\\TS \\\\F0 \\\\TM %";
    global.msg[8]= "* PUZZLE^1?&* OVER?/";
    global.msg[9]= "* ALPHYS^1, DARLING^1, WHAT ARE YOU&  TALKING ABOUT...?/";
    global.msg[10]= "* DID YOU FORGET WHAT THE&  GREEN TILES DO?/";
    global.msg[11]= "* THEY MAKE A SOUND, THEN&  YOU HAVE TO FIGHT A MONSTER./";
    global.msg[12]= "* WELL, DARLING...&* THAT MONSTER.../";
    global.msg[13]= "* IS ME!!/%%";
    if(global.flag[289] == 0) {
        global.msg[12]= "* WELL, DARLING...!/";
        global.msg[13]= "* WELL, WELL, WELL./";
        global.msg[14]= "* WELLY WELL WELL./";
        global.msg[15]= "* WELL WELLY WELL WELL,&  WELL WELL WELLY./";
        global.msg[16]= "* YOU NEVER STEPPED ON A&  GREEN TILE./";
        global.msg[17]= "* .../";
        global.msg[18]= "* AND NOW YOU\\'RE GOING TO DIE./%%";
    }
    instance_create(0, 0, obj_dialoguer );
    con= 55.1;
}
if(con == 55.1 && !instance_exists(OBJ_WRITER )) {
    caster_free(racesong);
    con= 56.1;
    alarm[4]= 20;
    mett.vspeed= 3;
    snd_play(snd_break2 );
}
if(con == 57.1 && !instance_exists(OBJ_WRITER )) {
    con= 58;
    global.battlegroup= 57;
    global.mercy= 1;
    instance_create(0, 0, obj_battler );
    talkedto= 0;
    alarm[4]= 32;
}
if(con == 58 && global.interact == 0) global.interact= 1;
if(con == 59) {
    if(instance_exists(obj_mettaton_flightdress )) {
        // obj_mettaton_flightdress
        with(1206) instance_destroy();
    }
    obj_mainchara.cutscene= 0;
    __view_set( e__VW.Object, 0, 1570 );
    global.interact= 1;
    if(global.interact == 0) global.interact= 1;
    con= 60;
    alarm[4]= 15;
}
if(con == 60) global.interact= 1;
if(con == 61) {
    global.mercy= 0;
    if(global.interact == 0) global.interact= 1;
    global.typer= 5;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msc= 690;
    global.facing= 0;
    snd_play(snd_phone );
    instance_create(0, 0, obj_dialoguer );
    con= 62;
}
if(con == 62 && !instance_exists(OBJ_WRITER )) {
    if(instance_exists(obj_mainchara ) && obj_mainchara.x >= 340)
        flowey= instance_create(100, 120, obj_stalkerflowey );
    global.mercy= 0;
    global.border= 0;
    global.currentsong= caster_load("music/anothermedium.ogg");
    caster_loop(global.currentsong, 1, 1);
    global.interact= 0;
    global.flag[17]= 0;
    global.plot= 168;
    instance_destroy();
}
if(con == 75) {
    // obj_mettaton_flightdress
    with(1206) middle= 2;
    obj_mettaton_flightdress.sing= -1;
    caster_free(-3);
    obj_tileguytileparent.grey= 1;
    snd_play(snd_dumbvictory );
    global.interact= 1;
    con= 76;
    alarm[4]= 30;
}
if(con == 76) global.interact= 1;
if(con == 77) {
    // obj_tilehud
    with(1209) finished= 1;
    global.typer= 27;
    global.facechoice= 0;
    global.msc= 0;
    global.flag[278]= 1;
    global.msg[0]= "* CONGRATULATIONS!/";
    global.msg[1]= "* YOU MADE IT THROUGH THE&  PUZZLE!!!/";
    global.msg[2]= "* AND NOW, WITHOUT FURTHER ADO,&  THE FLAMES WILL BE DEACTIVATED!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 78;
}
if(con == 78 && !instance_exists(OBJ_WRITER )) {
    snd_play(snd_noise );
    with(flame1) instance_destroy();
    with(flame2) instance_destroy();
    con= 79;
    alarm[4]= 30;
}
if(con == 80) {
    global.facechoice= 0;
    global.typer= 27;
    global.msc= 0;
    global.msg[0]= "* NO!&* MORE!&* FIRE!/";
    global.msg[1]= "* ... BUT IT\\'S AS THE PHRASE&  GOES./";
    global.msg[2]= "* " + chr(ord("\"")) + "OUT OF THE FIRE, AND INTO&  THE FRYING PAN." + chr(ord("\"")) + "/";
    global.msg[3]= "* THAT\\'S RIGHT, DARLING!/";
    global.msg[4]= "* EVEN IF YOU MANAGE TO BEAT&  THE HEAT.../";
    global.msg[5]= "* YOU\\'LL NEVER BE ABLE TO&  WITHSTAND MY HOT METAL&  BODY!/";
    global.msg[6]= "* PREPARE YOURSELF FOR MY %%";
    instance_create(0, 0, obj_dialoguer );
    con= 81;
}
if(con == 81 && !instance_exists(OBJ_WRITER )) {
    global.typer= 5;
    global.facechoice= 0;
    global.faceemotion= 6;
    snd_play(snd_phone );
    global.msg[0]= "* Ring.../";
    global.msg[1]= "* \\\\TS \\\\F6 \\\\TA %";
    global.msg[2]= "* Watch out!^1!&* I\\'ll save you!!/";
    global.msg[3]= "* Flames^1, deactivate!!/";
    global.msg[4]= "* .../";
    global.msg[5]= "\\\\E3* ... huh?/";
    global.msg[6]= "\\\\TS \\\\F0 \\\\TM %";
    global.msg[7]= "* THE HUMAN FINISHED THE PUZZLE./";
    global.msg[8]= "* I ALREADY TURNED OFF THE&  FLAMES./";
    global.msg[9]= "* IN FACT, I WAS ABOUT TO&  FIGHT THE HUMAN./";
    global.msg[10]= "\\\\TS \\\\F6 \\\\TA %";
    global.msg[11]= "* Wh-wh-what?&* TH-THAT puzzle?/";
    global.msg[12]= "\\\\E5* I mean, uhh.../";
    global.msg[13]= "\\\\E6* Great job!&* We\\'ve got him on&  the ropes^1, now!/";
    global.msg[14]= "\\\\TS \\\\F0 \\\\TM %";
    global.msg[15]= "* ON THE ROPES^1?&* HA!/";
    global.msg[16]= "* I ONLY DEACTIVATED THE&  FLAMES KNOWING THAT ALPHYS&  WOULD HAVE ANYWAY./";
    global.msg[17]= "* ... NOW, WHERE WERE WE?/";
    global.msg[18]= "* OH YES./";
    global.msg[19]= "* I WAS GOING TO ERADICATE&  YOU!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 55.1;
}

/* */
/*  */
