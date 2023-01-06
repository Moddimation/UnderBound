if(conversation == 0 && x >= obj_mainchara.x - 23) {
    x= obj_mainchara.x - 23;
    hspeed= 0;
    image_speed= 0;
    conversation= 1;
    global.typer= 21;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msc= 0;
    image_index= 0;
    if(instance_exists(obj_walknoise )) {
        // obj_walknoise
        with(89) instance_destroy();
    }
    global.msg[0]= "* Human./";
    global.msg[1]= "* Don\\'t you know how&  to greet a new pal?/";
    global.msg[2]= "* Turn around and shake&  my hand./%%";
    ini_open("undertale.ini");
    M1= ini_read_real("Sans", "M1", 0);
    ini_write_real("Sans", "M1", M1 + 1);
    ini_close();
    if(M1 > 0) {
        global.msg[0]= "* Human./";
        global.msg[1]= " %";
        global.msg[2]= " %%";
    }
    instance_create(0, 0, obj_dialoguer );
}
if(conversation == 1 && !instance_exists(OBJ_WRITER )) {
    global.interact= 1;
    obj_mainchara.sprite_index= spr_maincharad ;
    obj_mainchara.facing= 0;
    global.facing= 0;
    alarm[2]= 50;
    conversation= 2;
}
if(sprite_index == 1364 && conversation == 4 && image_index == 2) {
    caster_play(fsound, 1, 1);
    alarm[4]= 180;
    image_speed= 0;
    conversation= 5;
}
if(conversation == 6 && !instance_exists(OBJ_WRITER )) {
    obj_mainchara.visible= 0;
    mainact= instance_create(obj_mainchara.x, obj_mainchara.y, obj_mainchara_actor );
    mainact.hspeed= 4;
    obj_mainchara.hspeed= 4;
    hspeed= 4;
    image_speed= 0.25;
    conversation= 7;
}
if(conversation == 7 && x >= 2440) {
    hspeed= 0;
    image_index= 0;
    image_speed= 0;
    obj_mainchara_actor.hspeed= 0;
    obj_mainchara_actor.image_speed= 0;
    obj_mainchara_actor.image_index= 0;
    obj_mainchara.hspeed= 0;
    global.msg[0]= "* quick^1, behind that&  conveniently-shaped&  lamp./%%";
    instance_create(0, 0, obj_dialoguer );
    conversation= 8;
    if(murder == 1) conversation= 50;
}
if(conversation == 8 && !instance_exists(OBJ_WRITER )) {
    obj_mainchara_actor.vspeed= -1;
    obj_mainchara.vspeed= -1;
    conversation= 9;
}
if(conversation == 9 && obj_mainchara.y <= obj_convenientlamp.y) {
    obj_mainchara_actor.vspeed= 0;
    obj_mainchara.vspeed= 0;
    obj_mainchara.y= obj_convenientlamp.y;
    obj_mainchara_actor.y= obj_convenientlamp.y;
    obj_mainchara.hspeed= 1;
    obj_mainchara_actor.hspeed= 1;
    hh= instance_create(0, 0, obj_musfadeout );
    hh.fadespeed= 0.01;
    conversation= 10;
}
if(conversation == 10 && obj_mainchara.x >= obj_convenientlamp.x) {
    obj_mainchara.hspeed= 0;
    obj_mainchara_actor.hspeed= 0;
    obj_mainchara_actor.image_speed= 0;
    obj_mainchara_actor.image_index= 0;
    obj_mainchara.x= obj_convenientlamp.x;
    obj_mainchara_actor.x= obj_convenientlamp.x;
    obj_mainchara.y+= 60;
    pap= instance_create(room_width, y - 12, obj_papyrus_actor_mad );
    pap.sprite_index= spr_papyrus_l_mad ;
    pap.direction= 180;
    pap.speed= 4;
    conversation= 11;
}
if(conversation == 11 && obj_papyrus_actor_mad.x <= obj_papyrus_actor_mad.xstart - 140) {
    global.currentsong= global.currentsong2;
    caster_loop(global.currentsong, 0.5, 1);
    obj_papyrus_actor_mad.speed= 0;
    obj_papyrus_actor_mad.image_speed= 0;
    obj_papyrus_actor_mad.sprite_index= spr_papyrus_lt_mad ;
    global.msg[0]= "* sup^1, bro?/";
    scr_papface(1, 1);
    global.msg[2]= "YOU KNOW WHAT&" + chr(ord("\"")) + "SUP,^1" + chr(ord("\"")) + " BROTHER!/";
    global.msg[3]= "IT\\'S BEEN EIGHT&DAYS AND YOU&STILL HAVEN\\'T.../";
    global.msg[4]= "RECALIBRATED^1.&YOUR^1.&PUZZLES^1!/";
    global.msg[5]= "YOU JUST HANG&AROUND OUTSIDE&YOUR STATION!/";
    global.msg[6]= "WHAT ARE YOU&EVEN DOING?!?/";
    scr_sansface(7, 0);
    global.msg[8]= "* staring at this lamp^1.&* it\\'s really cool^1.&* do you wanna look?/%%";
    instance_create(0, 0, obj_dialoguer );
    conversation= 12;
}
if(conversation == 12 && !instance_exists(OBJ_WRITER )) {
    obj_papyrus_actor_mad.fun= 1;
    obj_papyrus_actor_mad.sprite_index= spr_papyrus_mad1 ;
    obj_papyrus_actor_mad.image_speed= 0.2;
    conversation= 13;
    global.typer= 18;
    global.faceemotion= 1;
    global.facechoice= 4;
    global.msg[0]= "NO!^1!&I DON\\'T HAVE&TIME FOR THAT!!/";
    global.msg[1]= "WHAT IF A HUMAN&COMES THROUGH&HERE!?!/";
    global.msg[2]= "I WANT TO BE&READY!!!/";
    global.msg[3]= "I WILL BE THE ONE!&I MUST BE THE ONE!/";
    global.msg[4]= "I WILL CAPTURE A&HUMAN!/%%";
    instance_create(0, 0, obj_dialoguer );
}
if(conversation == 13 && !instance_exists(OBJ_WRITER )) {
    obj_papyrus_actor_mad.fun= 1;
    obj_papyrus_actor_mad.sprite_index= spr_papyrus_cape ;
    obj_papyrus_actor_mad.image_speed= 0.25;
    conversation= 14;
    global.faceemotion= 0;
    global.facechoice= 4;
    global.msg[0]= "THEN^1, I^1, THE&GREAT PAPYRUS.../";
    global.msg[1]= "WILL GET&ALL THE THINGS I&UTTERLY DESERVE!/";
    global.msg[2]= "RESPECT..^1.&RECOGNITION.../";
    global.msg[3]= "I WILL FINALLY&BE ABLE TO JOIN&THE ROYAL GUARD!/";
    global.msg[4]= "PEOPLE WILL ASK^1,&TO^1, BE MY^1,&" + chr(ord("\"")) + "FRIEND?" + chr(ord("\"")) + "/";
    global.msg[5]= "\\\\E2I WILL BATHE IN A&SHOWER OF KISSES&EVERY MORNING./%%";
    instance_create(0, 0, obj_dialoguer );
}
if(conversation == 14 && !instance_exists(OBJ_WRITER )) {
    obj_papyrus_actor_mad.fun= 0;
    obj_papyrus_actor_mad.sprite_index= spr_papyrus_lt ;
    obj_papyrus_actor_mad.image_speed= 0;
    conversation= 15;
    global.faceemotion= 0;
    global.facechoice= 3;
    global.typer= 17;
    global.msg[0]= "* hmm.../";
    global.msg[1]= "\\\\E1* maybe this lamp will&  help you./%%";
    instance_create(0, 0, obj_dialoguer );
}
if(conversation == 15 && !instance_exists(OBJ_WRITER )) {
    obj_papyrus_actor_mad.fun= 1;
    obj_papyrus_actor_mad.sprite_index= spr_papyrus_mad2 ;
    obj_papyrus_actor_mad.image_speed= 0.4;
    conversation= 16;
    global.faceemotion= 1;
    global.facechoice= 4;
    global.typer= 18;
    global.msg[0]= "SANS!^1! YOU ARE&NOT HELPING!^1!&YOU LAZYBONES!!/";
    global.msg[1]= "ALL YOU DO IS SIT&AND BOONDOGGLE!/";
    global.msg[2]= "YOU GET LAZIER&AND LAZIER&EVERY DAY!!!/";
    scr_sansface(3, 0);
    global.msg[4]= "\\\\W* hey^1, take it easy^1.&* i\\'ve gotten a \\\\Yton\\\\W &  of work done today./";
    global.msg[5]= "\\\\W*\\\\E2 a skele-\\\\Yton\\\\W./%%";
    instance_create(0, 0, obj_dialoguer );
}
if(conversation == 16 && !instance_exists(OBJ_WRITER )) {
    conversation= 18;
    alarm[6]= 10;
    rememberxview= __view_get( e__VW.XView, view_current );
    rememberyview= __view_get( e__VW.YView, view_current );
    __view_set( e__VW.Object, view_current, -4 );
    obj_mainchara.cutscene= 1;
}
if(conversation == 17) {
}
if(conversation == 18) {
    if(x + sprite_width / 2 > __view_get( e__VW.XView, view_current ) + __view_get( e__VW.WView, view_current ) / 2)
        __view_set( e__VW.XView, view_current, __view_get( e__VW.XView, view_current ) + (3) );
    if(y + sprite_height / 2 > __view_get( e__VW.YView, view_current ) + __view_get( e__VW.HView, view_current ) / 2)
        __view_set( e__VW.YView, view_current, __view_get( e__VW.YView, view_current ) + (9) );
    __view_set( e__VW.HView, view_current, __view_get( e__VW.HView, view_current ) - (12) );
    __view_set( e__VW.WView, view_current, __view_get( e__VW.WView, view_current ) - (16) );
    alarm[7]= 30;
}
if(conversation == 20) {
    if(__view_get( e__VW.XView, view_current ) > rememberxview)
        __view_set( e__VW.XView, view_current, __view_get( e__VW.XView, view_current ) - (3) );
    if(__view_get( e__VW.YView, view_current ) > rememberyview)
        __view_set( e__VW.YView, view_current, __view_get( e__VW.YView, view_current ) - (9) );
    __view_set( e__VW.HView, view_current, __view_get( e__VW.HView, view_current ) + (12) );
    __view_set( e__VW.WView, view_current, __view_get( e__VW.WView, view_current ) + (16) );
}
if(conversation == 21) {
    obj_papyrus_actor_mad.fun= 0;
    obj_papyrus_actor_mad.sprite_index= spr_papyrus_lt_mad ;
    conversation= 16;
    sprite_index= spr_sans_r ;
    global.faceemotion= 1;
    global.facechoice= 4;
    global.typer= 18;
    global.msg[0]= "SANS!!!/";
    scr_sansface(1, 1);
    global.msg[2]= "\\\\E1* come on^1.&* you\\'re smiling./";
    scr_papface(3, 4);
    global.msg[4]= "I AM AND I HATE IT!/";
    global.msg[5]= "\\\\E3SIGH.../";
    global.msg[6]= "\\\\E2WHY DOES SOMEONE&AS GREAT AS ME.../";
    global.msg[7]= "\\\\E3HAVE TO DO SO MUCH&JUST TO GET SOME&RECOGNITION.../";
    scr_sansface(8, 1);
    global.msg[9]= "* wow^1, sounds like&  you\\'re really working&  your../";
    global.msg[10]= "\\\\E2* down to the bone./%%";
    instance_create(0, 0, obj_dialoguer );
}
if(conversation == 23) {
    sprite_index= spr_sans_r ;
    obj_papyrus_actor_mad.fun= 0;
    obj_papyrus_actor_mad.sprite_index= spr_papyrus_lt_mad ;
    global.faceemotion= 1;
    global.facechoice= 4;
    global.typer= 18;
    global.msg[0]= "UGH!!!/";
    global.msg[1]= "I WILL ATTEND TO&MY PUZZLES.../";
    global.msg[2]= "\\\\E3AS FOR YOUR WORK?/";
    global.msg[3]= "PUT A LITTLE MORE,/";
    global.msg[4]= "\\\\E4" + chr(ord("\"")) + "BACKBONE" + chr(ord("\"")) + " INTO&IT!!!!/";
    global.msg[5]= "\\\\E2NYEHEHEHEHEHE&HEHEHEHEHEHE!!!/%%";
    conversation= 24;
    instance_create(0, 0, obj_dialoguer );
}
if(conversation == 24 && !instance_exists(OBJ_WRITER )) {
    obj_papyrus_actor_mad.image_speed= 0.5;
    obj_papyrus_actor_mad.sprite_index= obj_papyrus_actor_mad.rsprite;
    obj_papyrus_actor_mad.hspeed= 4;
    conversation= 25;
}
if(conversation == 25 && obj_papyrus_actor_mad.x > obj_papyrus_actor_mad.xstart + 5) {
    obj_papyrus_actor_mad.sprite_index= spr_papyrus_l ;
    obj_papyrus_actor_mad.hspeed= -1;
    obj_papyrus_actor_mad.image_speed= 0;
    conversation= 26;
}
if(conversation == 26 && obj_papyrus_actor_mad.x < obj_papyrus_actor_mad.xstart - 50) {
    obj_papyrus_actor_mad.hspeed= 0;
    obj_papyrus_actor_mad.sprite_index= spr_papyrus_lt ;
    obj_papyrus_actor_mad.image_index= 0;
    global.faceemotion= 2;
    global.facechoice= 4;
    global.typer= 18;
    global.msg[0]= "HEH!/%%";
    instance_create(0, 0, obj_dialoguer );
    conversation= 27;
}
if(conversation == 27 && !instance_exists(OBJ_WRITER )) {
    obj_papyrus_actor_mad.hspeed= 1;
    obj_papyrus_actor_mad.sprite_index= spr_papyrus_r ;
    conversation= 28;
    hh= instance_create(0, 0, obj_musfadeout );
    hh.fadespeed= 0.01;
}
if(conversation == 28 && obj_papyrus_actor_mad.x > obj_papyrus_actor_mad.xstart) {
    global.faceemotion= 0;
    global.facechoice= 3;
    global.typer= 17;
    global.msg[0]= "* ok^1, you can come out&  now./%%";
    __view_set( e__VW.Object, view_current, 1570 );
    obj_mainchara.cutscene= 0;
    instance_create(0, 0, obj_dialoguer );
    conversation= 29;
}
if(conversation == 29 && !instance_exists(OBJ_WRITER )) {
    obj_mainchara.y-= 60;
    rememberx= obj_mainchara.x;
    obj_mainchara.hspeed= -2;
    obj_mainchara_actor.hspeed= -2;
    conversation= 30;
}
if(conversation == 30 && instance_exists(obj_mainchara ) && obj_mainchara.x < rememberx - 30) {
    obj_mainchara.facing= 0;
    global.facing= 0;
    obj_mainchara.hspeed= 0;
    // obj_mainchara_actor
    with(1355) instance_destroy();
    obj_mainchara.visible= 1;
    global.plot= 36;
    global.interact= 0;
    instance_create(80, 160, obj_stalkerflowey );
    instance_create(x, y, obj_sans_interactable1 );
    instance_create(2380, 0, obj_sansbyetrigger );
    instance_create(2680, 0, obj_sansbyetrigger );
    conversation= 32;
    instance_destroy();
}
if(conversation == 50 && !instance_exists(OBJ_WRITER )) {
    hh= instance_create(0, 0, obj_musfadeout );
    hh.fadespeed= 0.01;
    global.interact= 1;
    conversation= 51;
    alarm[9]= 90;
}
if(conversation == 52) {
    sprite_index= spr_sans_r ;
    global.faceemotion= 0;
    global.facechoice= 3;
    global.typer= 17;
    global.msc= 0;
    global.msg[0]= "* .../";
    global.msg[1]= "\\\\E1* uh^1, ok^1, i guess you&  don\\'t have to./%%";
    instance_create(0, 0, obj_dialoguer );
    conversation= 53;
}
if(conversation == 53 && !instance_exists(OBJ_WRITER )) {
    sprite_index= spr_sans_r ;
    pap= instance_create(room_width, y - 12, obj_papyrus_actor_mad );
    pap.sprite_index= spr_papyrus_l_mad ;
    pap.direction= 180;
    pap.speed= 4;
    conversation= 54;
}
if(conversation == 54 && obj_papyrus_actor_mad.x <= obj_papyrus_actor_mad.xstart - 180) {
    global.currentsong= global.currentsong2;
    caster_loop(global.currentsong, 0.5, 1);
    obj_papyrus_actor_mad.speed= 0;
    obj_papyrus_actor_mad.image_speed= 0;
    obj_papyrus_actor_mad.sprite_index= spr_papyrus_lt_mad ;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.typer= 5;
    global.msc= 0;
    scr_papface(0, 1);
    global.msg[1]= "SANS!!^1!&HAVE YOU FOUND A&HUMAN YET!??!/";
    scr_sansface(2, 2);
    global.msg[3]= "* yeah./";
    scr_papface(4, 0);
    global.msg[5]= "REALLY!?!^1?&WOWIE!!!/";
    global.msg[6]= "GUESS THAT\\'S&SETTLED!!/%%";
    instance_create(0, 0, obj_dialoguer );
    conversation= 55;
}
if(conversation == 55 && !instance_exists(OBJ_WRITER )) {
    obj_papyrus_actor_mad.image_speed= 0.5;
    obj_papyrus_actor_mad.sprite_index= spr_papyrus_r ;
    obj_papyrus_actor_mad.hspeed= 4;
    hh= instance_create(0, 0, obj_musfadeout );
    hh.fadespeed= 0.02;
    conversation= 56;
}
if(conversation == 56 && obj_papyrus_actor_mad.x > obj_papyrus_actor_mad.xstart) {
    global.faceemotion= 0;
    global.facechoice= 3;
    global.typer= 17;
    global.msg[0]= "* that worked out^1, huh?/%%";
    __view_set( e__VW.Object, view_current, 1570 );
    obj_mainchara.cutscene= 0;
    instance_create(0, 0, obj_dialoguer );
    conversation= 58;
}
if(conversation == 58 && !instance_exists(OBJ_WRITER )) {
    obj_mainchara.facing= 0;
    global.facing= 0;
    obj_mainchara.hspeed= 0;
    // obj_mainchara_actor
    with(1355) instance_destroy();
    obj_mainchara.visible= 1;
    global.plot= 36;
    global.interact= 0;
    instance_create(80, 160, obj_stalkerflowey );
    instance_create(x, y, obj_sans_interactable1 );
    instance_create(2380, 0, obj_sansbyetrigger );
    instance_create(2680, 0, obj_sansbyetrigger );
    conversation= 59;
    instance_destroy();
}


/*  */
