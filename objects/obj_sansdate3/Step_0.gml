if(con == 20) {
    con= 21;
    global.facing= 3;
    sans= scr_marker(obj_mainchara.x - 86, obj_mainchara.y, 1363);
    sans.depth= 800;
    sans.image_speed= 0;
    // obj_mainchara
    with(1570) {
        __view_set( e__VW.XView, 0, round(x - __view_get( e__VW.WView, 0 ) / 2 + 10) );
        __view_set( e__VW.YView, 0, round(y - __view_get( e__VW.HView, 0 ) / 2 + 10) );
    }
    obj_mainchara.cutscene= 1;
    __view_set( e__VW.Object, 0, -4 );
    idealx= __view_get( e__VW.XView, 0 );
    __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (40) );
    if(global.interact == 0) global.interact= 1;
    global.msc= 0;
    global.facechoice= 3;
    global.faceemotion= 0;
    global.typer= 17;
    caster_free(-3);
    global.currentsong= caster_load("music/sansdate.ogg");
    con= 21;
    alarm[4]= 30;
}
if(con == 22) {
    caster_loop(global.currentsong, 0.8, 1);
    con= 30;
    global.msg[0]= "* well^1, here we are./%%";
    instance_create(0, 0, obj_dialoguer );
}
if(con == 30 && !instance_exists(OBJ_WRITER )) {
    global.msg[0]= "* so./";
    global.msg[1]= "* your journey\\'s&  almost over^1, huh?/";
    global.msg[2]= "\\\\E0* you must really&  wanna go home./";
    global.msg[3]= "\\\\E1* hey^1.&* i know the feeling^1,&  buddo./";
    global.msg[4]= "\\\\E0* though.../";
    global.msg[5]= "\\\\E1* maybe sometimes it\\'s&  better to take what\\'s&  given to you./";
    global.msg[6]= "\\\\E0* down here you\\'ve&  already got food^1,&  drink^1, friends.../";
    global.msg[7]= "* is what you have&  to do.../";
    global.msg[8]= "\\\\E1* really worth it?/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 31;
}
if(con == 31 && !instance_exists(OBJ_WRITER )) {
    sans.sprite_index= spr_sans_u ;
    con= 32;
    alarm[4]= 80;
}
if(con == 33 && !instance_exists(OBJ_WRITER )) {
    sans.sprite_index= spr_sans_r ;
    global.faceemotion= 3;
    global.msg[0]= "* .../";
    global.msg[1]= "\\\\E1* ah^1, forget it./";
    global.msg[2]= "\\\\E0* i\\'m rootin\\' for&  ya^1, kid./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 34;
}
if(con == 34 && !instance_exists(OBJ_WRITER )) {
    sans.sprite_index= spr_sans_u ;
    con= 34.5;
    alarm[4]= 80;
}
if(con == 35.5 && !instance_exists(OBJ_WRITER )) {
    sans.sprite_index= spr_sans_r ;
    global.faceemotion= 0;
    global.msg[0]= "* hey./";
    global.msg[1]= "\\\\E1* let me tell you&  a story./";
    global.msg[2]= "\\\\E0* so i\\'m a sentry in&  snowdin forest^1, right?/";
    global.msg[3]= "* i sit out there&  and watch for humans^1.&* it\\'s kind of boring./";
    global.msg[4]= "\\\\E2* fortunately^1, deep in&  the forest.../";
    global.msg[5]= "\\\\E0* there\\'s this HUGE&  locked door./";
    global.msg[6]= "* and it\\'s perfect&  for practicing&  knock knock jokes./";
    global.msg[7]= "* so one day^1, i\\'m&  knocking \\'em out^1,&  like usual./";
    global.msg[8]= "* i knock on the&  door and say&  " + chr(ord("\"")) + "knock knock." + chr(ord("\"")) + "/";
    global.msg[9]= "* and suddenly^1, from&  the other side.../";
    global.msg[10]= "\\\\E1* i hear a woman\\'s&  voice./";
    global.msg[11]= "\\\\Tt*\\\\E0 " + chr(ord("\"")) + "who is there?" + chr(ord("\"")) + " /";
    global.msg[12]= "\\\\Ts*\\\\E1 so^1, naturally^1, I&  respond:/";
    global.msg[13]= "\\\\E0* " + chr(ord("\"")) + "dishes." + chr(ord("\"")) + "/";
    global.msg[14]= "\\\\Tt* " + chr(ord("\"")) + "dishes who?" + chr(ord("\"")) + "/";
    global.msg[15]= "\\\\Ts*\\\\E2 " + chr(ord("\"")) + "dishes a very&  bad joke." + chr(ord("\"")) + "/";
    global.msg[16]= "\\\\E0* then she just&  howls with laughter./";
    global.msg[17]= "\\\\E1* like it\\'s the best&  joke she\\'s heard&  in a hundred years./";
    global.msg[18]= "\\\\E0* so I keep \\'em&  coming^1, and she keeps&  laughing./";
    global.msg[19]= "\\\\E1* she\\'s the best&  audience i\\'ve ever&  had./";
    global.msg[20]= "\\\\E0* then^1, after a&  dozen of \\'em^1,&  SHE knocks and says.../";
    global.msg[21]= "\\\\Tt* " + chr(ord("\"")) + "Knock knock!" + chr(ord("\"")) + "/";
    global.msg[22]= "\\\\Ts* \\\\E1i say " + chr(ord("\"")) + "whos&  there?" + chr(ord("\"")) + "/";
    global.msg[23]= "\\\\Tt* \\\\E0" + chr(ord("\"")) + "old lady!" + chr(ord("\"")) + "/";
    global.msg[24]= "\\\\Ts*\\\\E1 " + chr(ord("\"")) + "old lady who?" + chr(ord("\"")) + "/";
    global.msg[25]= "\\\\Tt*\\\\E2 " + chr(ord("\"")) + "oh! I did not&  know you could&  yodel!" + chr(ord("\"")) + "/";
    global.msg[26]= "\\\\Ts*\\\\E1 wow./";
    global.msg[27]= "\\\\E2* needless to say^1,&  this woman was&  extremely good./";
    global.msg[28]= "\\\\E0* we kept telling&  each other jokes&  for hours./";
    global.msg[29]= "\\\\E0* eventually^1, i had&  to leave./";
    global.msg[30]= "\\\\E2* papyrus gets kind&  of cranky without&  his bedtime story./";
    global.msg[31]= "\\\\E0* but she told me&  to come by again^1,&  and so i did./";
    global.msg[32]= "\\\\E0* then i did again^1.&* and again^1.&* it\\'s a thing now./";
    global.msg[33]= "* telling bad jokes&  through the door./";
    global.msg[34]= "\\\\E1* it rules./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 36;
}
if(con == 36 && !instance_exists(OBJ_WRITER )) {
    sans.sprite_index= spr_sans_u ;
    con= 37;
    alarm[4]= 80;
}
if(con == 38 && !instance_exists(OBJ_WRITER )) {
    sans.sprite_index= spr_sans_r ;
    global.faceemotion= 1;
    global.msg[0]= "* .../";
    global.msg[1]= "\\\\E0* one day^1, though^1, i&  noticed she wasn\\'t&  laughing very much./";
    global.msg[2]= "* i asked her what&  was up./";
    global.msg[3]= "* then she told me&  something strange./";
    global.msg[4]= "* \\\\Tt" + chr(ord("\"")) + "if a human ever&  comes through this&  door.../" + chr(ord("\"")) + "";
    global.msg[5]= "* " + chr(ord("\"")) + "... could you please^1,&  please promise&  something?" + chr(ord("\"")) + "/";
    global.msg[6]= "* " + chr(ord("\"")) + "watch over them^1,&  and protect them^1,&  will you not?" + chr(ord("\"")) + "/";
    global.msg[7]= "\\\\E0*\\\\Ts now^1, i hate making&  promises./";
    global.msg[8]= "\\\\E1* and this woman^1,&  i don\\'t even know&  her name./";
    global.msg[9]= "\\\\E3* but.../";
    global.msg[10]= "\\\\E1* someone who sincerely&  likes bad jokes.../";
    global.msg[11]= "\\\\E2* has an integrity&  you can\\'t say&  " + chr(ord("\"")) + "no" + chr(ord("\"")) + " to./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 39;
}
if(con == 39 && !instance_exists(OBJ_WRITER )) {
    sans.sprite_index= spr_sans_u ;
    con= 40;
    alarm[4]= 83;
    vol= caster_get_volume(global.currentsong);
    vol2= caster_get_volume(global.currentsong);
}
if(con == 40) {
    if(vol > 0) vol-= 0.01;
    caster_set_volume(global.currentsong, vol);
}
if(con == 41 && !instance_exists(OBJ_WRITER )) {
    sans.sprite_index= spr_sans_r ;
    caster_pause(global.currentsong);
    global.faceemotion= 1;
    global.msg[0]= "\\\\E1* do you get what&  i\\'m saying?/";
    global.msg[1]= "\\\\E0* that promise i made&  to her.../";
    global.msg[2]= "\\\\E1* you know what would&  have happened if she&  hadn\\'t said anything?/";
    global.msg[3]= "\\\\E3* ... buddy./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 42;
}
if(con == 42 && !instance_exists(OBJ_WRITER )) {
    sans.sprite_index= spr_sans_u ;
    con= 43;
    alarm[4]= 60;
}
if(con == 44 && !instance_exists(OBJ_WRITER )) {
    global.faceemotion= 4;
    global.typer= 21;
    global.msg[0]= "* ... You\\'d be dead&  where you stand./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 45;
}
if(con == 45 && !instance_exists(OBJ_WRITER )) {
    caster_resume(global.currentsong);
    con= 46;
    alarm[4]= 60;
}
if(con == 46) {
    if(vol < vol2) vol+= 0.01;
    caster_set_volume(global.currentsong, vol);
}
if(con == 47 && !instance_exists(OBJ_WRITER )) {
    sans.sprite_index= spr_sans_r ;
    global.faceemotion= 1;
    global.typer= 17;
    global.msg[0]= "\\\\E3* .../";
    global.msg[1]= "\\\\E1* hey^1, lighten up^1,&  bucko!/";
    global.msg[2]= "\\\\E2* i\\'m just joking&  with you./";
    global.msg[3]= "\\\\E1* besides.../";
    global.msg[4]= "\\\\E0* haven\\'t i done a&  great job protecting&  you?/";
    global.msg[5]= "* i mean^1, look at&  your/";
    global.msg[6]= "\\\\E2* you haven\\'t died&  a single time./";
    ini_open("undertale.ini");
    ddd= ini_read_real("General", "Gameover", 0);
    global.msg[7]= "\\\\E0* that\\'s right^1, isn\\'t&  it?/";
    global.msg[8]= "\\\\E2* well^1, chalk it&  up to my great&  skills./%%";
    if(ddd > 0) {
        global.msg[7]= "\\\\E0* hey^1, what\\'s that&  look supposed to&  mean?/";
        global.msg[8]= "\\\\E1* am i wrong...?/%%";
    }
    instance_create(0, 0, obj_dialoguer );
    con= 48;
}
if(con == 48 && !instance_exists(OBJ_WRITER )) {
    sans.sprite_index= spr_sans_u ;
    con= 49;
    alarm[4]= 90;
}
if(con == 50) {
    sans.sprite_index= spr_sans_r ;
    global.faceemotion= 3;
    global.msg[0]= "* heh./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 51;
}
if(con == 51 && !instance_exists(OBJ_WRITER )) {
    sans.sprite_index= spr_sans_u ;
    con= 51.1;
    alarm[4]= 40;
}
if(con == 51.1) {
    sans.image_speed= 0.2;
    sans.y-= 2;
}
if(con == 52.1) {
    sans.image_speed= 0;
    sans.image_index= 0;
    con= 51.2;
    alarm[4]= 20;
}
if(con == 52.2) {
    sans.sprite_index= spr_sans_r ;
    con= 51.3;
    alarm[4]= 20;
}
if(con == 52.3) {
    sans.sprite_index= spr_sans_d ;
    con= 52;
    alarm[4]= 30;
}
if(con == 53) {
    global.faceemotion= 2;
    global.msg[0]= "* well^1, that\\'s all./";
    global.msg[1]= "\\\\E1* take care of&  yourself^1, kid./";
    global.msg[2]= "\\\\E0* \\'cause someone really&  cares about you./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 54;
}
if(con == 54 && !instance_exists(OBJ_WRITER )) {
    sans.sprite_index= spr_sans_l ;
    sans.image_speed= 0.2;
    sans.hspeed= -3;
    con= 55;
    alarm[4]= 80;
}
if(con == 56) {
    con= 57;
    alarm[4]= 40;
}
if(con == 57) __view_set_pp( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + 1 );
if(con == 58) {
    __view_set( e__VW.XView, 0, idealx );
    global.facing= 0;
    __view_set( e__VW.Object, 0, 1570 );
    obj_mainchara.cutscene= 0;
    global.interact= 0;
    con= 59;
    global.flag[413]= 2;
    instance_destroy();
}

/* */
/*  */
