if(obj_mainchara.y < 840 && global.interact == 0 && con == 0) {
    global.interact= 1;
    global.facing= 2;
    obj_mainchara.image_speed= 0.334;
    obj_mainchara.vspeed= -3;
    con= 1;
    alarm[4]= 15;
}
if(con == 2) {
    obj_mainchara.vspeed= 0;
    __view_set( e__VW.Object, 0, -4 );
    obj_mainchara.cutscene= 1;
    con= 3;
}
if(con == 3) {
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (3) );
    if(__view_get( e__VW.YView, 0 ) <= 622) {
        __view_set( e__VW.YView, 0, 620 );
        con= 4;
    }
}
if(con == 4) {
    ini_open("undertale.ini");
    already= ini_read_real("Mettaton", "BossMet", 0);
    ini_close();
    con= 5;
    alarm[4]= 15;
    if(murder == 1) already= 0;
    if(already >= 1) {
        con= 3.1;
        alarm[4]= 15;
    }
}
if(con == 4.1) {
    global.typer= 5;
    global.facechoice= 0;
    global.msc= 833;
    instance_create(0, 0, obj_dialoguer );
    con= 4.2;
}
if(con == 4.5 && !instance_exists(OBJ_WRITER )) {
    con= 4.4;
    alarm[4]= 20;
}
if(con == 5.4) {
    mett.sprite_index= spr_mettaton_silent_behind ;
    global.flag[20]= 7;
    mett.image_speed= 0;
    mett.image_index= 0;
    global.typer= 27;
    global.msc= 0;
    global.msg[0]= "* REALLY^1?&* WHERE?/%%";
    instance_create(0, 0, obj_dialoguer );
    skip= 1;
    con= 5.5;
}
if(con == 5.5 && !instance_exists(OBJ_WRITER )) {
    caster_stop(-3);
    snd_play(snd_item );
    mett.image_index= 1;
    con= 4.6;
    alarm[4]= 80;
}
if(con == 5.6 && !instance_exists(OBJ_WRITER )) {
    global.msg[0]= "* CLEVER..^1.&* VERY CLEVER./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 5.7;
    babytimer= 500;
}
if(con == 5.7 && !instance_exists(OBJ_WRITER )) con= 19;
if(con == 6 && !instance_exists(OBJ_WRITER )) {
    global.typer= 27;
    global.msc= 0;
    global.facechoice= 0;
    global.msg[0]= "* OH YES.&* THERE YOU ARE, DARLING./";
    global.msg[1]= "* IT\\'S TIME TO HAVE OUR&  LITTLE SHOWDOWN./";
    global.msg[2]= "* IT\\'S TIME TO FINALLY STOP&  THE " + chr(ord("\"")) + "MALFUNCTIONING" + chr(ord("\"")) + " ROBOT./";
    global.msg[3]= "* ... NOT!!!/";
    global.msg[4]= "* MALFUNCTION?&* REPROGRAMMING?&* PLEASE./";
    global.msg[5]= "* THIS WAS ALL JUST A BIG&  SHOW./";
    global.msg[6]= "* AN ACT./";
    global.msg[7]= "* MY " + chr(ord("\"")) + "MALFUNCTION" + chr(ord("\"")) + " WAS ALL&  MADE UP BY DR. ALPHYS./";
    global.msg[8]= "* AS SHE WATCHED YOU ON THE&  SCREEN^1, SHE GREW ATTACHED&  TO YOUR ADVENTURE./";
    global.msg[9]= "* SHE DESPERATELY WANTED TO&  BE A PART OF IT./";
    global.msg[10]= "* SO SHE DECIDED TO INSERT&  HERSELF INTO YOUR STORY./";
    global.msg[11]= "* THIS SCENARIO, WHERE SHE&  " + chr(ord("\"")) + "SAVES" + chr(ord("\"")) + " YOU FROM ME, WAS&  HER CREATION./";
    global.msg[12]= "* EVEN NOW, SHE IS WAITING&  OUTSIDE THIS ROOM./";
    global.msg[13]= "* DURING OUR " + chr(ord("\"")) + "BATTLE," + chr(ord("\"")) + " SHE&  WILL INTERRUPT./";
    global.msg[14]= "* THEN SHE WILL PRETEND TO&  " + chr(ord("\"")) + "DEACTIVATE" + chr(ord("\"")) + " ME, " + chr(ord("\"")) + "SAVING" + chr(ord("\"")) + " YOU&  ONE FINAL TIME./";
    global.msg[15]= "* FINALLY.&* SHE\\'LL BE THE HEROINE OF&  YOUR ADVENTURE./";
    global.msg[16]= "* FINALLY.&* SHE\\'LL BE SOMEONE SOMEBODY&  ACTUALLY LIKES./";
    global.msg[17]= "* YOU\\'LL REGARD HER SO HIGHLY&  SHE\\'LL EVEN BE ABLE TO&  CONVINCE YOU NOT TO LEAVE./";
    global.msg[18]= "* ... OR NOT./";
    global.msg[19]= "* YOU SEE, I\\'VE HAD ENOUGH OF&  THIS PREDICTABLE CHARADE./";
    global.msg[20]= "* I HAVE NO DESIRE TO HARM&  HUMANS.&* FAR FROM IT, ACTUALLY./";
    global.msg[21]= "* AS METTATON, MY ONLY DESIRE&  IS TO ENTERTAIN./";
    global.msg[22]= "* AFTER ALL, THE AUDIENCE&  DESERVES A GOOD SHOW,&  DON\\'T THEY?/";
    global.msg[23]= "* AND WHAT\\'S A GOOD SHOW.../";
    global.msg[24]= "* WITHOUT A PLOT TWIST?/%%";
    global.msg[0]= "* OH YES.&* THERE YOU ARE, DARLING./";
    global.msg[1]= "* IT\\'S TIME TO HAVE OUR&  LITTLE SHOWDOWN./";
    global.msg[2]= "* IT\\'S TIME TO FINALLY STOP&  THE " + chr(ord("\"")) + "MALFUNCTIONING" + chr(ord("\"")) + " ROBOT./";
    global.msg[3]= "* ... NOT!!!/";
    global.msg[4]= "* MALFUNCTION?&* REPROGRAMMING?&* GET REAL./";
    global.msg[5]= "* THIS WAS ALL JUST A BIG&  SHOW./";
    global.msg[6]= "* AN ACT./";
    global.msg[7]= "* ALPHYS HAS BEEN PLAYING&  YOU FOR A FOOL THE&  WHOLE TIME./";
    global.msg[8]= "* AS SHE WATCHED YOU ON THE&  SCREEN^1, SHE GREW ATTACHED&  TO YOUR ADVENTURE./";
    global.msg[9]= "* SHE DESPERATELY WANTED TO&  BE A PART OF IT./";
    global.msg[10]= "* SO SHE DECIDED TO INSERT&  HERSELF INTO YOUR STORY./";
    global.msg[11]= "* SHE REACTIVATED PUZZLES^1.&* SHE DISABLED ELEVATORS^1.&* SHE ENLISTED ME TO TORMENT YOU./";
    global.msg[12]= "* ALL SO SHE COULD SAVE&  YOU FROM DANGERS THAT&  DIDN\\'T EXIST./";
    global.msg[13]= "* ALL SO YOU WOULD THINK&  SHE\\'S THE GREAT PERSON.../";
    global.msg[14]= "* THAT SHE\\'S NOT./";
    global.msg[15]= "* AND NOW^1, IT\\'S TIME FOR&  HER FINEST HOUR./";
    global.msg[16]= "* AT THIS VERY MOMENT,&  ALPHYS IS WAITING OUTSIDE&  THE ROOM./";
    global.msg[17]= "* DURING OUR " + chr(ord("\"")) + "BATTLE," + chr(ord("\"")) + " SHE&  WILL INTERRUPT./";
    global.msg[18]= "* SHE WILL PRETEND TO&  " + chr(ord("\"")) + "DEACTIVATE" + chr(ord("\"")) + " ME, " + chr(ord("\"")) + "SAVING" + chr(ord("\"")) + " YOU&  ONE FINAL TIME./";
    global.msg[19]= "* FINALLY.&* SHE\\'LL BE THE HEROINE OF&  YOUR ADVENTURE./";
    global.msg[20]= "* YOU\\'LL REGARD HER SO HIGHLY&  SHE\\'LL EVEN BE ABLE TO&  CONVINCE YOU NOT TO LEAVE./";
    global.msg[21]= "* ... OR NOT./";
    global.msg[22]= "* YOU SEE, I\\'VE HAD ENOUGH OF&  THIS PREDICTABLE CHARADE./";
    global.msg[23]= "* I HAVE NO DESIRE TO HARM&  HUMANS.&* FAR FROM IT, ACTUALLY./";
    global.msg[24]= "* MY ONLY DESIRE IS TO&  ENTERTAIN./";
    global.msg[25]= "* AFTER ALL, THE AUDIENCE&  DESERVES A GOOD SHOW,&  DON\\'T THEY?/";
    global.msg[26]= "* AND WHAT\\'S A GOOD SHOW.../";
    global.msg[27]= "* WITHOUT A PLOT TWIST?/%%";
    if(murder == 1) {
        global.msg[0]= "* MY^1, MY^1.&* SO YOU\\'VE FINALLY ARRIVED./";
        global.msg[1]= "* AFTER OUR FIRST MEETING^1, I&  REALIZED..^1.&* SOMETHING GHASTLY./";
        global.msg[2]= "* YOU\\'RE NOT JUST A THREAT&  TO MONSTERS..^1.&* BUT HUMANITY^1, AS WELL./";
        global.msg[3]= "* OH MY^1.&* THAT\\'S AN ISSUE./";
        global.msg[4]= "* YOU SEE^1, I CAN\\'T BE A&  STAR WITHOUT AN AUDIENCE./";
        global.msg[5]= "* AND BESIDES.../";
        global.msg[6]= "* THERE ARE SOME PEOPLE..^1.&* I WANT TO PROTECT./%%";
    }
    instance_create(0, 0, obj_dialoguer );
    con= 7;
    if(murder == 1) con= 30;
}
if(con == 7 && !instance_exists(OBJ_WRITER )) {
    caster_free(-3);
    mtsong2= caster_load("music/mettafly.ogg");
    drawblack= 1;
    snd_play(snd_impact );
    con= 8;
    alarm[4]= 40;
}
if(con == 9) {
    snd_play(snd_knock );
    con= 10;
    alarm[4]= 20;
}
if(con == 11) {
    global.typer= 47;
    global.msc= 0;
    global.facechoice= 6;
    global.faceemotion= 3;
    global.msg[0]= "* H-hey!!^1!&* Wh-wh-what\\'s going on!?/";
    global.msg[1]= "* Th-th-the door just&  locked itself!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 13;
}
if(con == 13 && !instance_exists(OBJ_WRITER )) {
    snd_play(snd_spearappear );
    sixtyon= 1;
    sixtyflash= 1;
    global.typer= 27;
    global.msc= 0;
    global.facechoice= 0;
    global.faceemotion= 3;
    mett.image_speed= 0.25;
    global.msg[0]= "\\\\M1* SORRY^1, FOLKS^1!&* THE OLD PROGRAM\\'S BEEN&  CANCELLED!!!/";
    global.msg[1]= "* BUT WE\\'VE GOT A FINALE&  THAT WILL DRIVE YOU WILD!!/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 14;
}
if(con == 14 && !instance_exists(OBJ_WRITER )) {
    babytimer= 0;
    scr= instance_create(0, 0, obj_scrollaway_event );
    scr.sixty= sixty;
    con= 15;
    alarm[4]= 90;
}
if(con == 16 && !instance_exists(OBJ_WRITER )) {
    caster_play(mtsong2, 0.7, 1);
    global.msc= 0;
    global.typer= 27;
    global.msg[0]= "\\\\M5* REAL DRAMA!!&* REAL ACTION!!&* REAL BLOODSHED!!/";
    global.msg[1]= "* ON OUR NEW SHOW.../";
    global.msg[2]= "* " + chr(ord("\"")) + "ATTACK OF THE KILLER&  ROBOT!" + chr(ord("\"")) + "/%%";
    ss= instance_create(0, 0, obj_dialoguer );
    ss.side= 0;
    con= 17;
}
if(con > 14 && murder == 0) babytimer++;
if(con == 17 && !instance_exists(OBJ_WRITER ) && babytimer > 300) {
    snd_play(snd_break2 );
    con= 18;
    alarm[4]= 30;
}
if(con == 19) {
    global.mercy= 1;
    global.battlegroup= 80;
    if(skip == 1) global.battlegroup= 81;
    global.flag[15]= 0;
    instance_create(0, 0, obj_battler );
    con= 20;
    alarm[4]= 33;
}
if(con == 21) {
    global.mercy= 0;
    global.border= 0;
    SCR_BORDERSETUP();
    // obj_scrollaway_event
    with(1251) con= 6;
    with(mett) instance_destroy();
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (60) );
    instance_create(0, 0, obj_mettdestroyed_event );
    instance_destroy();
}
if(con == 30 && !instance_exists(OBJ_WRITER )) {
    obj_mainchara.visible= 0;
    mc= scr_marker(obj_mainchara.x, obj_mainchara.y, 1044);
    with(mc) image_index= 1;
    with(mc) vspeed= -0.5;
    con= 31;
    alarm[4]= 10;
}
if(con == 32) {
    with(mc) image_index= 0;
    with(mc) vspeed= 0;
    con= 33;
    alarm[4]= 30;
}
if(con == 34) {
    global.msg[0]= "* AH HA HA^1.&* EAGER, AS ALWAYS, EH?/";
    global.msg[1]= "* BUT DON\\'T TOUCH THAT DIAL.&* THERE\\'S SOMETHING YOU&  HAVEN\\'T ACCOUNTED FOR./";
    global.msg[2]= "* AS ANY TRUE FAN WOULD KNOW,&  I WAS FIRST CREATED AS&  A HUMAN ERADICATION ROBOT./";
    global.msg[3]= "* IT WAS ONLY AFTER BECOMING A&  STAR THAT I WAS GIVEN A&  MORE... PHOTOGENIC BODY./";
    global.msg[4]= "* HOWEVER./";
    global.msg[5]= "* THOSE ORIGINAL FUNCTIONS&  HAVE NEVER BEEN FULLY&  REMOVED.../";
    global.msg[6]= "* COME ANY CLOSER, AND&  I\\'LL BE FORCED TO SHOW&  YOU.../";
    global.msg[7]= "\\\\M5* MY TRUE FORM!/%%";
    con= 35;
    instance_create(0, 0, obj_dialoguer );
}
if(con == 35 && !instance_exists(OBJ_WRITER )) {
    with(mc) image_index= 1;
    with(mc) vspeed= -0.5;
    con= 36;
    alarm[4]= 10;
}
if(con == 37) {
    with(mc) image_index= 0;
    with(mc) vspeed= 0;
    con= 38;
    alarm[4]= 30;
}
if(con == 39) {
    global.msg[0]= "\\\\M0* FINE THEN!/";
    global.msg[1]= "\\\\M5* RRRRREADY^1?&* IIIIIIIT\\'S SHOWTIME!!!/%%";
    con= 40;
    instance_create(0, 0, obj_dialoguer );
}
if(con == 40 && !instance_exists(OBJ_WRITER )) {
    caster_free(-3);
    shkwv= caster_load("music/f_destroyed2.ogg");
    pt= 0;
    vl= 0.5;
    caster_loop(shkwv, vl, pt);
    con= 49;
    alarm[4]= 110;
    brt= scr_marker(-10, -10, 999);
    brt.image_xscale= 800;
    brt.image_yscale= 800;
    brt.image_alpha= 0;
    br= 0;
}
if(con == 49) {
    br+= 0.02;
    brt.image_alpha= br;
    pt+= 0.02;
    vl+= 0.01;
    vol= vl;
    if(vl > 1) vol= 2 - vl;
    caster_set_pitch(shkwv, pt);
    caster_set_volume(shkwv, vol);
}
if(con == 50 && !instance_exists(OBJ_WRITER )) {
    with(brt) instance_destroy();
    caster_free(shkwv);
    global.mercy= 1;
    global.battlegroup= 94;
    global.flag[15]= 0;
    instance_create(0, 0, obj_battler );
    con= 51;
    alarm[4]= 33;
}
if(con == 52) {
    with(mett) visible= 0;
    obj_mainchara.cutscene= 0;
    __view_set( e__VW.Object, 0, 1570 );
    obj_mainchara.visible= 1;
    with(sixty) instance_destroy();
    with(mc) instance_destroy();
    // obj_npc_marker
    with(1363) instance_destroy();
    global.interact= 0;
    con= 43;
    global.plot= 199;
    caster_free(-3);
    instance_destroy();
    exit;
} else  {
    if(instance_exists(sixty)) {
        if(sixtyon == 1 && sixty.image_alpha < 1)
            sixty.image_alpha+= 0.05;
        if(sixtyflash == 1) {
            s_siner++;
            sixty.image_blend= merge_color(16777215, 8421504, abs(sin(s_siner / 6) / 2));
        }
    }
    exit;
}

/* */
/*  */
