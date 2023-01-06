if(con == 1) {
    caster_pause(global.currentsong);
    con= 2;
    curview= __view_get( e__VW.YView, 0 );
    alarm[4]= 30;
}
if(con == 3) {
    global.facing= 0;
    __view_set_pp( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + 1 );
    if(__view_get( e__VW.YView, 0 ) > curview + 60) con= 4;
}
if(con == 4) {
    con= 4.1;
    alarm[4]= 20;
}
if(con == 5.1) {
    con= 4.2;
    rememberxview= __view_get( e__VW.XView, view_current );
    rememberyview= __view_get( e__VW.YView, view_current );
    xdiff= 130;
    ydiff= 192 - __view_get( e__VW.YView, view_current );
    __view_set( e__VW.Object, view_current, -4 );
    alarm[4]= 12;
}
if(con == 4.2) {
    if(__view_get( e__VW.XView, 0 ) < 130)
        __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (xdiff / 10) );
    if(__view_get( e__VW.XView, 0 ) > 130) __view_set( e__VW.XView, 0, 130 );
    if(__view_get( e__VW.YView, 0 ) < 192)
        __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (ydiff / 10) );
    if(__view_get( e__VW.YView, 0 ) > 192) __view_set( e__VW.YView, 0, 192 );
    if(__view_get( e__VW.HView, 0 ) > 120) __view_set( e__VW.HView, 0, __view_get( e__VW.HView, 0 ) - (12) );
    if(__view_get( e__VW.HView, 0 ) < 120) __view_set( e__VW.HView, 0, 120 );
    if(__view_get( e__VW.WView, 0 ) > 160) __view_set( e__VW.WView, 0, __view_get( e__VW.WView, 0 ) - (16) );
    if(__view_get( e__VW.WView, 0 ) < 160) __view_set( e__VW.WView, 0, 160 );
}
if(con == 5.2) {
    con= 5;
    alarm[4]= 10;
}
if(con == 6) {
    dummy.sprite_index= spr_dummymad ;
    caster_play(shock, 1, 0.8);
    con= 6.3;
    remx= dummy.x;
    remy= dummy.y;
    alarm[4]= 60;
}
if(con == 6.2) {
    dummy.x= remx - 2 + random(4);
    dummy.y= remy - 2 + random(4);
}
if(con == 7.1) {
    alarm[4]= 30;
    con= 6.2;
}
if(con == 7.2) {
    with(dummy) event_user(1);
    con= 7;
    alarm[4]= 10;
}
if(con == 7.3) {
    con= 6.4;
    alarm[4]= 14;
}
if(con == 6.4) {
    if(__view_get( e__VW.XView, view_current ) > 0)
        __view_set( e__VW.XView, view_current, __view_get( e__VW.XView, view_current ) - (xdiff / 10) );
    if(__view_get( e__VW.XView, 0 ) < 0) __view_set( e__VW.XView, 0, 0 );
    if(__view_get( e__VW.YView, view_current ) > rememberyview)
        __view_set( e__VW.YView, view_current, __view_get( e__VW.YView, view_current ) - (ydiff / 10) );
    if(__view_get( e__VW.YView, 0 ) < rememberyview)
        __view_set( e__VW.YView, 0, rememberyview );
    if(__view_get( e__VW.HView, view_current ) < 240)
        __view_set( e__VW.HView, view_current, __view_get( e__VW.HView, view_current ) + (12) );
    if(__view_get( e__VW.HView, 0 ) > 240) __view_set( e__VW.HView, 0, 240 );
    if(__view_get( e__VW.WView, view_current ) < 320)
        __view_set( e__VW.WView, view_current, __view_get( e__VW.WView, view_current ) + (16) );
    if(__view_get( e__VW.WView, 0 ) > 320) __view_set( e__VW.WView, 0, 320 );
}
if(con == 7.4) {
    __view_set( e__VW.Object, view_current, 1570 );
    con= 6.2;
    alarm[4]= 25;
}
if(con == 8) {
    __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (6) );
    if(__view_get( e__VW.YView, 0 ) <= curview - 20) {
        con= 7.5;
        alarm[4]= 10;
    }
}
if(con == 8.5) {
    global.facing= 2;
    dummy.x= 180;
    dummy.y= 80;
    with(dummy) {
        event_user(0);
        event_user(1);
    }
    con= 7.6;
    alarm[4]= 16;
}
if(con == 8.6) con= 9;
if(con == 9) {
    global.facing= 2;
    dummy.vspeed= 0;
    con= 10;
    caster_loop(predummy, 0.8, 1);
    if(global.flag[355] == 0)
        global.msg[0]= "* Hahaha..^1.&* It\\'s just like you to&  run away./";
    if(global.flag[355] == 1)
        global.msg[0]= "* FOOL^1!&* You think you can hurt&  ME???/";
    if(global.flag[355] == 2)
        global.msg[0]= "* Hahaha..^1.&* Too intimidated to fight&  me^1, huh!?/";
    global.msg[1]= "* I am a ghost that lives&  inside a DUMMY./";
    global.msg[2]= "* My cousin used to live&  inside a DUMMY^1, too^1.&* Until.../";
    if(global.flag[14] == 0) {
        global.msg[3]= "* YOU CAME ALONG!/";
        global.msg[4]= "* They were a shy sort^1.&* Living a lonely life in&  the RUINS.../";
        global.msg[5]= "* They saw you and hoped you&  might TALK to them./";
        global.msg[6]= "* Perhaps strike up a&  friendly conversation./";
        global.msg[7]= "* But NO!!!/";
        global.msg[8]= "* You ran away..^1.&* And broke their little&  ethereal heart./";
        global.msg[9]= "* Despicable^1.&* Despicable^1!&* DESPICABLE!/";
        global.msg[10]= "* HUMAN^1!&* I\\'ll show you what REAL&  heartbreak is!/%%";
    }
    if(global.flag[14] == 1) {
        global.msg[3]= "* YOU DESTROYED THEIR HOME!/";
        global.msg[4]= "* Us ghosts spend our whole&  lives looking for a&  proper vessel./";
        global.msg[5]= "* Slowly^1, slowly^1, we grow&  closer to our new&  bodies.../";
        global.msg[6]= "* Until one day^1, we too&  may become corporeal&  beings./";
        global.msg[7]= "* Beings able to laugh^1,&  love^1, and dance like&  any other.../";
        global.msg[8]= "* But YOU!!!^1!&* My cousin\\'s future...^1!&* You took it all away!/";
        global.msg[9]= "* Despicable^1.&* Despicable^1!&* DESPICABLE!/";
        global.msg[10]= "* HUMAN^1!&* I hope you\\'re not too&  attached to YOUR body.../";
        global.msg[11]= "* Because your SOUL\\'s about&  to get EVICTED!!!/%%";
    }
    if(global.flag[14] == 2) {
        global.msg[3]= "* YOU CAME ALONG!/";
        global.msg[4]= "* When you talked to them^1,&  they thought they were&  in for a nice chat.../";
        global.msg[5]= "* But the things you&  SAID...!/";
        global.msg[6]= "* Horrible^1.&* Shocking^1!&* UNBELIEVABLE!/";
        global.msg[7]= "* It spooked them right&  out of their dummy!/";
        global.msg[8]= "* HUMAN^1!&* I\\'ll scare your SOUL&  out of your body!/%%";
    }
    if(global.flag[14] == 3) {
        global.msg[3]= "* YOU...!/";
        global.msg[4]= "* You.../";
        global.msg[5]= "* Shucks^1!&* You were really boring!/";
        global.msg[6]= "* They got annoyed and flew&  away like any self-&  respecting spectre./";
        global.msg[7]= "* Well then^1.&* Well then!&* WELL THEN!/";
        global.msg[8]= "* Boring people are crumbs&  sticking to the face&  of this world./";
        global.msg[9]= "* Human!/";
        global.msg[10]= "* I\\'ll wipe you away with&  the dainty handkerchief&  of vengeance!/%%";
    }
    if(murder == 1) {
        if(global.flag[355] == 0)
            global.msg[0]= "* Hahaha..^1.&* It\\'s just like you to&  run away./";
        if(global.flag[355] == 1)
            global.msg[0]= "* FOOL^1!&* You think you can hurt&  ME???/";
        if(global.flag[355] == 2)
            global.msg[0]= "* Hahaha..^1.&* Too intimidated to fight&  me^1, huh!?/";
        global.msg[1]= "* I am a ghost that lives&  inside a DUMMY./";
        global.msg[2]= "* My cousin used to live&  inside a DUMMY^1, too^1.&* Until.../";
        global.msg[3]= "* YOU CAME ALONG!/";
        global.msg[4]= "* Not only did YOUR actions&  cause them to leave their&  home.../";
        global.msg[5]= "* But now all of their neighbors&  are gone^1, too!/";
        global.msg[6]= "* Despicable^1.&* Despicable^1!&* DESPICABLE!!!/";
        global.msg[7]= "* You\\'re the worst person I\\'ve&  ever met^1!&* I\\'ve NEVER been more mad!!!/";
        global.msg[8]= "* Guooooohhhh!!!^1!&* My mannequin levels are&  going OFF THE CHARTS!!!/%%";
        con= 30;
    }
    scr_regulartext();
    if(instance_exists(obj_dialoguer )) obj_dialoguer.side= 1;
}
if(con == 10 && !instance_exists(OBJ_WRITER )) {
    caster_free(shock);
    caster_free(predummy);
    snd_play(snd_break2 );
    dummy.sprite_index= spr_dummymad_toot ;
    dummy.image_index= 0;
    dummy.image_speed= 0.45;
    con= 11;
    alarm[4]= 30;
}
if(con == 12) {
    con= 13;
    global.battlegroup= 45;
    global.mercy= 1;
    instance_create(0, 0, obj_battler );
    talkedto= 0;
    alarm[4]= 32;
}
if(con == 14) {
    obj_mainchara.cutscene= 0;
    __view_set( e__VW.Object, 0, 1570 );
    global.interact= 1;
    if(global.interact == 0) global.interact= 1;
    dummy.sprite_index= spr_napstablook_d ;
    con= 15;
    alarm[4]= 15;
}
if(con == 15) {
    global.mercy= 0;
    if(global.interact == 0) global.interact= 1;
}
if(con == 16) {
    global.border= 0;
    global.msg[0]= "* well..^1.&* i\\'m going to head home&  now.../";
    global.msg[1]= "* oh..^1. umm..^1.&* feel free to " + chr(ord("\"")) + "come&  with" + chr(ord("\"")) + " if you want.../";
    global.msg[2]= "* but no pressure.../";
    global.msg[3]= "* i understand if you\\'re&  busy.../";
    global.msg[4]= "* it\\'s fine.../";
    global.msg[5]= "* no worries.../";
    global.msg[6]= "* just thought i\\'d&  offer.../%%";
    if(global.flag[36] == 0) {
        global.msg[0]= "* well..^1.&* i\\'m going to head home&  now.../";
        global.msg[1]= "* just warning you.../";
        global.msg[2]= "* so you don\\'t accidentally&  follow me to my&  house.../";
        global.msg[3]= "* you probably wouldn\\'t&  like that.../%%";
    }
    scr_regulartext();
    if(instance_exists(obj_dialoguer )) obj_dialoguer.side= 1;
    global.plot= 116;
    greg= 1;
    con= 17;
}
if(con == 17 && !instance_exists(OBJ_WRITER )) {
    global.interact= 0;
    dummy.vspeed= -3;
    if(greg > 0) greg-= 0.04;
    if(dummy.image_alpha == greg) solid= 0;
    con= 18;
    alarm[4]= 30;
}
if(con == 19) {
    with(dummy) instance_destroy();
    instance_destroy();
}
if(con == 30) {
    if(instance_exists(OBJ_WRITER )) {
        if(OBJ_WRITER.stringno == 7) {
            dummy.sprite_index= spr_dummymad_toot ;
            dummy.image_index= 0;
            dummy.image_speed= 0.45;
        }
    } else  {
        caster_free(-3);
        snd_play(snd_break2 );
        instance_create(0, 0, obj_flasher );
        con= 31;
        alarm[4]= 2;
    }
}
if(con == 32) {
    with(dummy) sprite_index= spr_dummysurprise ;
    con= 33;
    alarm[4]= 45;
}
if(con == 34) {
    global.msc= 0;
    global.msg[0]= "* ...?/";
    global.msg[1]= "* This..^1.&* This feeling...?/%%";
    d= instance_create(0, 0, obj_dialoguer );
    d.side= 1;
    con= 35;
}
if(con == 35 && !instance_exists(OBJ_WRITER )) {
    with(dummy) sprite_index= spr_dummyglad ;
    global.msg[0]= "* Eureka^1.&* Eureka^1!&* EUREKA!/";
    global.msg[1]= "* Human^1.&* That moment of unbridled&  emotion./";
    global.msg[2]= "* It allowed me to finally&  fuse with my body!/";
    global.msg[3]= "* I\\'m fully corporeal now^1!&* My lifelong dream^1, realized!/";
    global.msg[4]= "* In return^1, I guess I&  won\\'t stomp you./";
    global.msg[5]= "* How\\'s that sound?/%%";
    d= instance_create(0, 0, obj_dialoguer );
    d.side= 1;
    con= 36;
}
if(con == 36 && !instance_exists(OBJ_WRITER )) {
    con= 37;
    global.battlegroup= 93;
    global.flag[200]= 204;
    global.mercy= 1;
    instance_create(0, 0, obj_battler );
    talkedto= 0;
    alarm[4]= 32;
}
if(con == 38) {
    with(dummy) instance_destroy();
    obj_mainchara.cutscene= 0;
    __view_set( e__VW.Object, 0, 1570 );
    global.interact= 1;
    if(global.interact == 0) global.interact= 1;
    con= 39;
    alarm[4]= 4;
}
if(con == 40) {
    global.mercy= 0;
    global.plot= 117;
    global.interact= 0;
    instance_destroy();
    con= 41;
}


/*  */
