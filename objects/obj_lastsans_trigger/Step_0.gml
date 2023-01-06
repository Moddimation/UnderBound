if(con == 1) {
    m= instance_create(0, 0, obj_musfadeout );
    m.fadespeed= 0.03;
    remx= __view_get( e__VW.XView, 0 );
    obj_mainchara.cutscene= 1;
    __view_set( e__VW.Object, 0, -4 );
    obj_mainchara.x= 800;
    con= 0.5;
    ss= 0;
    alarm[4]= 60;
    ini_open("undertale.ini");
    sf2= ini_read_real("Sans", "F", 0);
    ini_close();
    if(sf2 >= 3 && murder == 1) {
        with(m) fadespeed= 0.1;
        alarm[4]= 5;
    }
}
if(con == 1.5) con= 2;
if(con == 2) {
    __view_set_pp( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + 1 );
    if(__view_get( e__VW.XView, 0 ) >= 680 && ss == 0) {
        ss= 1;
        sans= scr_marker(920, obj_mainchara.y, 1366);
        sans.depth= 1500;
    }
    if(sf2 >= 3 && murder == 1)
        __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (3) );
    if(__view_get( e__VW.XView, 0 ) >= 750) {
        con= 3;
        __view_set( e__VW.XView, 0, 750 );
    }
}
if(con == 3) {
    with(m) instance_destroy();
    con= 3.1;
    alarm[4]= 40;
    if(sf2 >= 3 && murder == 1) alarm[4]= 10;
}
if(con == 4.1) {
    if(murder == 0) {
        ini_open("undertale.ini");
        endmet= ini_read_real("Sans", "EndMet", 0);
        ini_close();
        if(endmet == 0) {
            ch= caster_load("music/churchbell.ogg");
            caster_play(ch, 0.8, 1);
            con= 4;
            alarm[4]= 310;
        }
        if(endmet == 1) {
            ch= caster_load("music/churchbell.ogg");
            caster_play(ch, 0.8, 1.5);
            con= 4;
            alarm[4]= 206.666666666667;
        }
    } else  con= 100;
}
if(con == 5) {
    ini_open("undertale.ini");
    endmet= ini_read_real("Sans", "EndMet", 0);
    ini_write_real("Sans", "EndMet", 1);
    ml1= ini_read_real("Sans", "MeetLv1", 0);
    pass= ini_read_real("Sans", "Pass", 0);
    ini_close();
    global.typer= 10;
    if(endmet == 1) global.typer= 100;
    global.msc= 0;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msg[0]= "* So you finally made it./";
    global.msg[1]= "* The end of your journey&  is at hand./";
    global.msg[2]= "* In a few moments^1, you&  will meet the king./";
    global.msg[3]= "* Together.../";
    global.msg[4]= "* You will determine the&  future of this world./";
    global.msg[5]= "* That\\'s then./";
    global.msg[6]= "* Now./";
    global.msg[7]= "* You will be judged./";
    global.msg[8]= "* You will be judged for&  your every action./";
    global.msg[9]= "* You will be judged for&  every EXP you\\'ve earned./";
    global.msg[10]= "* What\\'s EXP?/";
    global.msg[11]= "* It\\'s an acronym./";
    global.msg[12]= "\\\\W* It stands for " + chr(ord("\"")) + "\\\\Rexecution&  points\\\\W." + chr(ord("\"")) + "/";
    global.msg[13]= "* A way of quantifying the&  pain you have inflicted on&  others./";
    global.msg[14]= "* When you kill someone^1,&  your EXP increases./";
    global.msg[15]= "* When you have enough EXP^1,&  your LOVE increases./";
    global.msg[16]= "* LOVE^1, too^1, is an&  acronym./";
    global.msg[17]= "\\\\W* It stands for " + chr(ord("\"")) + "\\\\RLevel of&  Violence\\\\W." + chr(ord("\"")) + "/";
    global.msg[18]= "* A way of measuring someone\\'s&  capacity to hurt./";
    global.msg[19]= "* The more you kill^1, the&  easier it becomes to&  distance your/";
    global.msg[20]= "* The more you distance&  yourself^1, the less you&  will hurt./";
    global.msg[21]= "* The more easily you&  can bring yourself to&  hurt others./%%";
    con= 6;
    if(pass > 0 && global.lv == 1 && global.kills == 0) {
        global.msg[0]= "* So you finally made it.../%%";
        con= 26;
    }
    instance_create(0, 0, obj_dialoguer );
    if(global.kills > 0) con= 5.1;
}
if(con == 5.1 && !instance_exists(OBJ_WRITER )) {
    con= 4.2;
    alarm[4]= 30;
}
if(con == 5.2 && !instance_exists(OBJ_WRITER )) {
    global.currentsong= caster_load("music/chokedup.ogg");
    caster_loop(global.currentsong, 1, 1);
    global.typer= 10;
    if(endmet == 1) global.typer= 100;
    global.msc= 0;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msg[0]= "* Now^1, you understand./";
    global.msg[1]= "* It\\'s time to begin your&  judgment./";
    global.msg[2]= "* Look inside your/";
    global.msg[3]= "* Have you really done the&  right thing?/";
    global.msg[4]= "* And^1, considering what&  you\\'ve done.../";
    global.msg[5]= "* What will you do now?/";
    global.msg[6]= "* Take a moment to think&  about this./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 10;
}
if(con == 6 && !instance_exists(OBJ_WRITER )) {
    ini_open("undertale.ini");
    ml1= ini_read_real("Sans", "MeetLv1", 0);
    ini_write_real("Sans", "MeetLv1", ml1 + 1);
    ini_close();
    global.currentsong= caster_load("music/chokedup.ogg");
    caster_loop(global.currentsong, 1, 1);
    global.facechoice= 3;
    global.faceemotion= 3;
    global.typer= 10;
    global.msg[0]= "\\\\TS* .../";
    global.msg[1]= "\\\\Ts*\\\\E0 ... but you^1.&* you never gained&  any LOVE./";
    global.msg[2]= "\\\\E1* \\'course^1, that doesn\\'t&  mean you\\'re completely&  innocent or naive./";
    global.msg[3]= "\\\\E0* just that you kept&  a certain tenderness&  in your heart./";
    global.msg[4]= "* no matter the struggles&  or hardships you&  faced.../";
    global.msg[5]= "* you strived to do the&  right thing./";
    global.msg[6]= "* you refused to hurt&  anyone./";
    global.msg[7]= "* even when you ran&  away^1, you did it&  with a smile./";
    global.msg[8]= "* you never gained LOVE^1,&  but you gained love./";
    global.msg[9]= "* does that make sense?/";
    global.msg[10]= "* maybe not./";
    global.msg[11]= "\\\\E3* ..^1.&* now./";
    global.msg[12]= "\\\\E0* you\\'re about to face&  the greatest challenge&  of your entire journey./";
    global.msg[13]= "* your actions here.../";
    global.msg[14]= "* will determine the&  fate of the entire&  world./";
    global.msg[15]= "* if you refuse to&  fight.../";
    global.msg[16]= "* asgore will take&  your soul and&  destroy humanity./";
    global.msg[17]= "* but if you kill&  asgore and go&  home.../";
    global.msg[18]= "* monsters will remain&  trapped underground./";
    global.msg[19]= "* what will you do?/";
    global.msg[20]= "\\\\E3* .../";
    global.msg[21]= "* well^1, if i were you^1,&  i would have thrown&  in the towel by now./";
    global.msg[22]= "\\\\E1* but you didn\\'t get&  this far by giving&  up^1, did you?/";
    global.msg[23]= "\\\\E0* that\\'s right./";
    global.msg[24]= "* you have something&  called " + chr(ord("\"")) + "determination." + chr(ord("\"")) + "/";
    global.msg[25]= "* so as long as you&  hold on.../";
    global.msg[26]= "* so as long as you&  do what\\'s in your&  heart.../";
    global.msg[27]= "* i believe you can do&  the right thing./";
    global.msg[28]= "\\\\E3* alright./";
    global.msg[29]= "\\\\E0* we\\'re all counting&  on you, kid./";
    global.msg[30]= "\\\\E2* good luck./%%";
    con= 7;
    if(ml1 > 0) con= 26;
    instance_create(0, 0, obj_dialoguer );
}
if(con == 7 && !instance_exists(OBJ_WRITER )) {
    __view_set_pp( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - 1 );
    if(__view_get( e__VW.XView, 0 ) < 681) {
        with(sans) instance_destroy();
    }
    if(__view_get( e__VW.XView, 0 ) <= remx) con= 8;
}
if(con == 8) {
    __view_set( e__VW.Object, 0, 1570 );
    obj_mainchara.cutscene= 0;
    con= 9;
    global.plot= 201;
    global.interact= 0;
    instance_destroy();
}
if(con == 10 && !instance_exists(OBJ_WRITER )) {
    ini_open("undertale.ini");
    ml2= ini_read_real("Sans", "MeetLv2", 0);
    ini_write_real("Sans", "MeetLv2", ml2 + 1);
    ini_close();
    global.interact= 1;
    if(global.flag[67] == 1 || ml2 == 0) {
        con= 11;
        alarm[4]= 300;
    } else  {
        con= 22;
        alarm[4]= 60;
    }
}
if(con == 12 && !instance_exists(OBJ_WRITER )) {
    global.facechoice= 3;
    global.faceemotion= 3;
    global.typer= 10;
    global.msc= 0;
    global.msg[0]= "\\\\TS* .../";
    global.msg[1]= "\\\\Ts*\\\\E0 truthfully^1, it doesn\\'t&  really matter what you&  said./";
    global.msg[2]= "\\\\E0* all that\\'s important is&  that you were honest&  with your/";
    global.msg[3]= "* what happens now.../";
    global.msg[4]= "* we leave up to you./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 7;
    if(global.flag[67] == 1) con= 15;
}
if(con == 15 && !instance_exists(OBJ_WRITER )) {
    global.facechoice= 3;
    global.faceemotion= 3;
    global.typer= 17;
    global.msc= 835;
    global.msg[0]= "pepis/%%";
    instance_create(0, 0, obj_dialoguer );
    con= 16;
}
if(con == 20 && !instance_exists(OBJ_WRITER )) {
    global.msc= 0;
    global.faceemotion= 4;
    global.facechoice= 3;
    global.typer= 21;
    global.msg[0]= "* Then why\\'d you&  kill my&  brother?/%%";
    instance_create(0, 0, obj_dialoguer );
    caster_free(-3);
    con= 7;
}
if(con == 21 && !instance_exists(OBJ_WRITER )) {
    global.msc= 0;
    global.faceemotion= 4;
    global.facechoice= 3;
    global.typer= 21;
    global.msg[0]= "* You dirty brother&  killer./%%";
    instance_create(0, 0, obj_dialoguer );
    caster_free(-3);
    con= 7;
}
if(con == 23 && !instance_exists(OBJ_WRITER )) {
    ini_open("undertale.ini");
    ml= ini_read_real("Sans", "MeetLv", 0);
    ini_write_real("Sans", "MeetLv", global.lv);
    ini_close();
    global.facechoice= 3;
    global.faceemotion= 1;
    global.typer= 17;
    global.msg[0]= "* huh^1?&* you look bored./";
    global.msg[1]= "\\\\E1* i get the feeling&  you aren\\'t gonna learn&  anything from this./";
    global.msg[2]= "\\\\E0* well^1, guess I gotta&  judge you then./";
    global.msg[3]= "* come on^1.&* really?/%%";
    if(global.lv == 2) {
        global.msg[3]= "* lv2..^1.&* seems like you messed&  up the slightest amount./";
        global.msg[4]= "\\\\E1* welp^1.&* that\\'s pretty sad./";
        global.msg[5]= "\\\\E3* you probably weren\\'t&  even aware of what you&  were doing.../";
        global.msg[6]= "* and when you learned^1,&  it was too late./";
        global.msg[7]= "\\\\E2* nah^1, just kidding./";
        global.msg[8]= "\\\\E1* who gets to lv2 on&  accident^1?&* get outta here./%%";
    }
    if(global.lv == 3) {
        global.msg[3]= "\\\\E3* lv3.../";
        global.msg[4]= "\\\\E1* 3\\'s just an ok number^1,&  i guess./";
        global.msg[5]= "\\\\E2* i\\'ll give you a C+./";
        global.msg[6]= "\\\\E1* you can do better^1,&  right?/%%";
    }
    if(global.lv >= 4) {
        global.msg[3]= "\\\\E3* hmmm..^1.&* over lv3^1, huh./";
        global.msg[4]= "\\\\E0* you killed some people&  on purpose^1, didn\\'t you?/";
        global.msg[5]= "\\\\E1* that\\'s probably bad./";
        global.msg[6]= "\\\\E3* though^1, maybe some&  of it was in self-&  defense.../";
        global.msg[7]= "\\\\E1* i don\\'t know^1.&* help me out here./";
        global.msg[8]= "* i wasn\\'t watching./";
        global.msg[9]= "\\\\E2* anyways^1, don\\'t do that./%%";
    }
    if(global.lv >= 10) {
        global.msg[3]= "\\\\E3* hmmm..^1.&* over lv9^1, huh./";
        global.msg[4]= "\\\\E0* that\\'s over halfway to&  lv20^1, the maximum./";
        global.msg[5]= "\\\\E1* but don\\'t think that&  means you\\'re still 50-&  percent good./";
        global.msg[6]= "\\\\E3* 50-percent^1, 20-percent./";
        global.msg[7]= "\\\\E4* those are both still&  failing grades./";
        global.msg[8]= "\\\\E1* besides^1.&* chances are.../";
        global.msg[9]= "* i\\'ve already tried to&  steer you in the right&  direction./";
        global.msg[10]= "\\\\E0* so what can i say?/";
        global.msg[11]= "\\\\E3* what can i say that&  will change the mind of&  a being like you...?/%%";
    }
    if(global.lv >= 15) {
        global.msg[3]= "\\\\E3* hmmm..^1.&* over lv14^1, huh./";
        global.msg[4]= "\\\\E1* well^1, hmmm..^1.&* judgment-wise.../";
        global.msg[5]= "\\\\E4* you\\'re a pretty bad&  person./";
        global.msg[6]= "* you wander around^1,&  looking for people.../";
        global.msg[7]= "* killing them to take&  their money./";
        global.msg[8]= "\\\\E3* that\\'s just plain&  messed up./";
        global.msg[9]= "\\\\E1* and what\\'s worse^1, is&  that as bad as you&  are.../";
        global.msg[10]= "\\\\E2* you aren\\'t anywhere near&  as bad as you could&  be./";
        global.msg[11]= "\\\\E1* you pretty much suck&  at being evil./";
        global.msg[12]= "\\\\E1* honestly^1, it\\'s super&  embarrassing./";
        global.msg[13]= "\\\\E2* but maybe you\\'d be&  better.../";
        global.msg[14]= "\\\\E1* at not killing anyone?/";
        global.msg[15]= "\\\\E2* crazy idea^1, huh?/";
        global.msg[16]= "\\\\E0* let me know how that&  one goes./%%";
    }
    if(global.lv == ml + 1) {
        global.faceemotion= 1;
        global.msg[3]= "* ... huh?/";
        global.msg[4]= "\\\\E0* what\\'s with that look&  in your eye?/";
        global.msg[5]= "\\\\E3* did you go through and&  kill someone.../";
        global.msg[6]= "\\\\E3* just to see what i\\'d&  say about it?/";
        global.msg[7]= "\\\\E1* wow^1./";
        global.msg[8]= "\\\\E2* you\\'re a pretty gross&  person^1, huh?/%%";
    }
    if(global.lv == ml) {
        global.msg[3]= "\\\\E1* huh^1?&* you STILL look bored./";
        global.msg[4]= "\\\\E2* okay then^1, consider&  our session over./%%";
    }
    instance_create(0, 0, obj_dialoguer );
    caster_free(-3);
    con= 7;
}
if(con == 26 && !instance_exists(OBJ_WRITER )) {
    ini_open("undertale.ini");
    ml1= ini_read_real("Sans", "MeetLv1", 0);
    ini_write_real("Sans", "MeetLv1", ml1 + 1);
    pass= ini_read_real("Sans", "Pass", 0);
    ini_close();
    global.facechoice= 3;
    global.faceemotion= 1;
    global.typer= 17;
    global.msg[0]= "\\\\E3* .../";
    global.msg[1]= "\\\\E1* wait a second./";
    global.msg[2]= "\\\\E1* that look on your&  face while i was&  talking.../";
    global.msg[3]= "\\\\E2* you\\'ve already heard&  my spiel^1, haven\\'t you?/";
    global.msg[4]= "\\\\E3* i suspected something&  like this./";
    global.msg[5]= "\\\\E3* you\\'re always acting&  like you know what\\'s&  going to happen./";
    global.msg[6]= "\\\\E1* like you\\'ve seen it&  all before./";
    global.msg[7]= "\\\\E3* so..^1.&* i have a request for&  you./";
    global.msg[8]= "\\\\W*\\\\E1 i kind of have a&  \\\\Ysecret codeword\\\\W &  that only i know./";
    global.msg[9]= "\\\\E0* so i know if someone&  tells it to me.../";
    global.msg[10]= "\\\\E1* they\\'ll have to be a&  time traveller./";
    global.msg[11]= "\\\\E2* crazy^1, right?/";
    global.msg[12]= "\\\\E1* anyway^1, here it is.../";
    global.msg[13]= "\\\\E3* (whisper^1, whisper)/";
    global.msg[14]= "\\\\E2* i\\'m counting on you to&  come back here and&  tell me that./";
    global.msg[15]= "\\\\E1* see you later./%%";
    if(pass == 1) {
        global.msg[0]= "\\\\E0* .../";
        global.msg[1]= "\\\\E1* huh^1?&* do you have something&  to say to me?/";
        global.msg[2]= "\\\\E2* what^1? a codeword^1?&* can you speak a&  little louder?/";
        global.msg[3]= "\\\\E3* .../";
        global.msg[4]= "* did you.../";
        global.msg[5]= "\\\\E2* ... just say " + chr(ord("\"")) + "i\\'m a&  stupid doodoo butt?" + chr(ord("\"")) + "/";
        global.msg[6]= "\\\\E1* wow^1.&* i can\\'t believe you&  would say that./";
        global.msg[7]= "\\\\E3* not only is that&  completely infantile.../";
        global.msg[8]= "\\\\E2* but it\\'s also my&  secret codeword./";
        global.msg[9]= "\\\\E3* that^1, however^1, isn\\'t&  good enough./";
        global.msg[10]= "\\\\W*\\\\E1 what you need is the&  \\\\Ysecret\\\\W secret codeword./";
        global.msg[11]= "\\\\E2* it\\'s only for people&  that know the secret&  codeword./";
        global.msg[12]= "\\\\E0* anyway^1, here it is.../";
        global.msg[13]= "\\\\E4* (whimsper^1, whimsper).../";
        global.msg[14]= "\\\\E2* i\\'m counting on you to&  come back here and&  tell me that./";
        global.msg[15]= "\\\\E1* see you later./%%";
    }
    if(pass == 2) {
        global.msg[0]= "\\\\E0* .../";
        global.msg[1]= "\\\\E1* huh^1?&* do you have something&  to say to me?/";
        global.msg[2]= "\\\\E2* what^1? a codeword^1?&* can you speak a&  little louder?/";
        global.msg[3]= "\\\\E3* .../";
        global.msg[4]= "* did you.../";
        global.msg[5]= "\\\\E2* ... just say " + chr(ord("\"")) + "i\\'m the&  legendary fartmaster?" + chr(ord("\"")) + "/";
        global.msg[6]= "\\\\E1* wow./";
        global.msg[7]= "\\\\E1* that\\'s..^1. uh..^1.&* really childish./";
        global.msg[8]= "\\\\E2* why would you think&  that was a secret&  secret codeword?/";
        global.msg[9]= "\\\\E1* whoever told you that&  is a dirty liar./";
        global.msg[10]= "\\\\E2* i don\\'t have a secret&  secret codeword./";
        global.msg[11]= "\\\\E3* however./";
        global.msg[12]= "\\\\E2* i do have a secret&  secret triple-secret&  codeword./";
        global.msg[13]= "\\\\E1* which you just said./";
        global.msg[14]= "\\\\E2* so^1, i guess you\\'re&  qualified./";
        global.msg[15]= "\\\\E2* here\\'s the key to my&  room./";
        global.msg[16]= "\\\\E3* it\\'s time.../";
        global.msg[17]= "* you learned the truth./";
        global.msg[18]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[19]= "* (When you looked^1, the key was&  already on your keychain.)/%%";
        global.flag[497]= 1;
    }
    if(pass == 3) {
        global.msg[0]= "\\\\E0* .../";
        global.msg[1]= "\\\\E1* huh^1?&* triple secret codeword?/";
        global.msg[2]= "\\\\E2* nah^1, i\\'m out of&  material./";
        global.msg[3]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[4]= "* (You felt something on your&  keychain.)/%%";
        global.flag[497]= 1;
    }
    instance_create(0, 0, obj_dialoguer );
    con= 30;
}
if(con == 30 && !instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.stringno == 13 && pass == 0) {
        ini_open("undertale.ini");
        ini_write_real("Sans", "Pass", 1);
        ini_close();
    }
    if(OBJ_WRITER.stringno == 13 && pass == 1) {
        ini_open("undertale.ini");
        ini_write_real("Sans", "Pass", 2);
        ini_close();
    }
    if(OBJ_WRITER.stringno == 19 && pass == 2) {
        ini_open("undertale.ini");
        ini_write_real("Sans", "Pass", 3);
        ini_close();
    }
}
if(con == 30 && !instance_exists(OBJ_WRITER )) con= 7;
if(con == 100) {
    obj_mainchara.visible= 0;
    mc= scr_marker(obj_mainchara.x, obj_mainchara.y, 1045);
    mc.depth= obj_mainchara.depth;
    mc.image_blend= 0;
    global.msc= 0;
    global.facechoice= 3;
    global.faceemotion= 0;
    global.typer= 17;
    ini_open("undertale.ini");
    sansf= ini_read_real("Sans", "F", 0);
    sansk= ini_read_real("Sans", "SK", 0);
    ini_close();
    global.msg[0]= "\\\\E0* heya./";
    global.msg[1]= "\\\\E1* you\\'ve been busy^1,&  huh?/";
    global.msg[2]= "* .../";
    global.msg[3]= "\\\\E0* so^1, i\\'ve got a&  question for ya./";
    global.msg[4]= "\\\\E3* do you think even&  the worst person can&  change...?/";
    global.msg[5]= "\\\\E3* that everybody can be&  a good person^1, if&  they just try?/%%";
    con= 101;
    if(sansf == 1) {
        global.msg[0]= "\\\\E0* heya./";
        global.msg[1]= "\\\\E1* you look frustrated&  about something./";
        global.msg[2]= "\\\\E4* guess i\\'m pretty good&  at my job^1, huh?/%%";
        con= 111;
    }
    if(sansf == 2) {
        global.msg[0]= "\\\\E0* hmm^1.&* that expression.../";
        global.msg[1]= "\\\\E1* that\\'s the expression&  of someone who\\'s died&  twice in a row./";
        global.msg[2]= "\\\\E2* suffice to say^1, you&  look really..^1.&* unsatisfied./";
        global.msg[3]= "\\\\E3* all right./";
        global.msg[4]= "\\\\E4* how \\'bout we make it&  a third?/%%";
        con= 111;
    }
    if(sansf == 3) {
        global.msg[0]= "\\\\E0* hmm^1.&* that expression.../";
        global.msg[1]= "\\\\E1* that\\'s the expression&  of someone who\\'s died&  thrice in a row./";
        global.msg[2]= "\\\\E3* .../";
        global.msg[3]= "\\\\E1* hey^1, what comes after&  " + chr(ord("\"")) + "thrice^1," + chr(ord("\"")) + " anyway?/";
        global.msg[4]= "\\\\E4* wanna help me find out?/%%";
        con= 111;
    }
    if(sansf == 4) {
        global.msg[0]= "\\\\E0* hmm^1.&* that expression.../";
        global.msg[1]= "\\\\E1* that\\'s the expression&  of someone who\\'s died&  quice in a row./";
        global.msg[2]= "\\\\E1* quice^1?&* frice?/";
        global.msg[3]= "\\\\E4* welp^1, won\\'t have to&  use it again anyways./%%";
        con= 111;
    }
    if(sansf == 5) {
        global.msg[0]= "\\\\E0* hmm^1.&* that expression.../";
        global.msg[1]= "\\\\E1* that\\'s the expression&  of someone who\\'s died&  five times in a row./";
        global.msg[2]= "\\\\E2* convenient^1, huh^1?&* that\\'s one for each&  finger./";
        global.msg[3]= "\\\\E3* but soon.../%%";
        global.msg[4]= "\\\\E4* you\\'ll need a cool&  mutant hand to count&  all of your deaths./%%";
        con= 111;
    }
    if(sansf == 6) {
        global.msg[0]= "\\\\E0* hmm^1.&* that expression.../";
        global.msg[1]= "\\\\E1* that\\'s the expression&  of someone who\\'s died&  six times in a row./";
        global.msg[2]= "\\\\E2* that\\'s the number of&  fingers on a mutant&  hand./";
        global.msg[3]= "\\\\E3* but soon.../%%";
        global.msg[4]= "\\\\E4* you\\'ll need to find&  a mutant hand with&  even more fingers./%%";
        con= 111;
    }
    if(sansf == 7) {
        global.msg[0]= "\\\\E0* hmm^1.&* that expression.../";
        global.msg[1]= "\\\\E1* that\\'s the expression&  of someone who\\'s died&  seven times in a row./";
        global.msg[2]= "\\\\E0* hey^1, that\\'s good^1.&* seven\\'s supposed to be&  a lucky number./";
        global.msg[3]= "\\\\E2* who knows^1, maybe&  you\\'ll hit the&  jackpot.../%%";
        global.msg[4]= "\\\\E4* and that number will&  multiply tenfold./%%";
        con= 111;
    }
    if(sansf == 8) {
        global.msg[0]= "\\\\E0* hmm^1.&* that expression.../";
        global.msg[1]= "\\\\E1* that\\'s the expression&  of someone who\\'s died&  eight times in a row./";
        global.msg[2]= "\\\\E2* that\\'s the number of&  fingers on a spider./";
        global.msg[3]= "\\\\E3* but soon.../%%";
        global.msg[4]= "\\\\E1* wait^1, don\\'t spiders&  have legs?/%%";
        con= 111;
    }
    if(sansf == 9) {
        global.msg[0]= "\\\\E0* hmm^1.&* that expression.../";
        global.msg[1]= "\\\\E1* that\\'s the expression&  of someone who\\'s died&  seven times in a row./";
        global.msg[2]= "\\\\E1* .../";
        global.msg[3]= "\\\\E2* nope^1, wait^1, that\\'s&  definitely nine^1, sorry./";
        global.msg[4]= "\\\\E4* or was it ten?/%%";
        con= 111;
    }
    if(sansf == 10) {
        global.msg[0]= "\\\\E0* hmm^1.&* that expression.../";
        global.msg[1]= "\\\\E1* that\\'s the expression&  of someone who\\'s died&  ten times in a row./";
        global.msg[2]= "\\\\E2* hey^1, congrats^1!&* the big one-oh!/";
        global.msg[3]= "\\\\E1* let\\'s invite all your&  friends over for a&  big shindig./";
        global.msg[4]= "\\\\E2* we can have pie^1, and&  hot dogs^1, and.../";
        global.msg[5]= "\\\\E3* hmmm..^1. wait^1.&* something\\'s not right./";
        global.msg[6]= "\\\\E4* you don\\'t have any&  friends./%%";
        con= 111;
    }
    if(sansf == 11) {
        global.msg[0]= "\\\\E0* hmm^1.&* that expression.../";
        global.msg[1]= "\\\\E1* that\\'s the expression&  of someone who\\'s died&  eleven times in a row./";
        global.msg[2]= "\\\\E2* well^1, give or take./";
        global.msg[3]= "\\\\E1* there\\'s nuance to&  this stuff./";
        global.msg[4]= "\\\\E2* don\\'t think i\\'ll be&  able to count very&  well from here./";
        global.msg[5]= "\\\\E1* count for me^1, ok?/";
        global.msg[6]= "\\\\E4* we\\'ll start from 12./%%";
        con= 111;
    }
    if(sansf >= 12) {
        global.msg[0]= "\\\\E0* let\\'s just get to&  the point./%%";
        con= 111;
    }
    if(sansk > 0) {
        global.msg[0]= "\\\\E0* .../";
        global.msg[1]= "\\\\E1* that expression that&  you\\'re wearing.../";
        global.msg[2]= "\\\\E3* .../";
        global.msg[3]= "\\\\E4* well^1, i won\\'t grace&  it with a description./%%";
    }
    if(sansk > 1) {
        global.msg[0]= "\\\\E0* .../";
        global.msg[1]= "\\\\E1* that expression that&  you\\'re wearing.../";
        global.msg[2]= "\\\\E3* .../";
        global.msg[3]= "\\\\E4* you\\'re really kind&  of a freak^1, huh?/%%";
    }
    instance_create(0, 0, obj_dialoguer );
}
if(con == 101 && !instance_exists(OBJ_WRITER )) {
    mc.image_index= 1;
    mc.hspeed= 0.5;
    con= 102;
    alarm[4]= 10;
}
if(con == 103) {
    mc.hspeed= 0;
    mc.image_index= 0;
    con= 104;
    alarm[4]= 30;
}
if(con == 105) {
    global.msg[0]= "\\\\E3* heh heh heh heh.../";
    global.msg[1]= "\\\\E1* all right./";
    global.msg[2]= "\\\\E3* well^1, here\\'s a better&  question./";
    global.msg[3]= "\\\\E4* do you wanna have&  a bad time?/";
    global.msg[4]= "\\\\E3* \\'cause if you take&  another step&  forward.../";
    global.msg[5]= "\\\\E4* you are REALLY not&  going to like what&  happens next./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 106;
}
if(con == 106 && !instance_exists(OBJ_WRITER )) {
    mc.image_index= 1;
    mc.hspeed= 0.5;
    con= 107;
    alarm[4]= 10;
}
if(con == 108) {
    mc.hspeed= 0;
    mc.image_index= 0;
    con= 109;
    alarm[4]= 30;
}
if(con == 110) {
    global.msg[0]= "\\\\E3* welp./";
    global.msg[1]= "\\\\E3* sorry^1, old lady./";
    global.msg[2]= "* this is why i never&  make promises./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 111;
}
if(con == 111 && !instance_exists(OBJ_WRITER )) {
    global.battlegroup= 95;
    global.mercy= 1;
    instance_create(0, 0, obj_battler );
    con= 112;
    alarm[4]= 32;
}
if(con == 113) {
    with(sans) instance_destroy();
    global.interact= 0;
    // obj_mainchara
    with(1570) cutscene= 0;
    __view_set( e__VW.Object, 0, 1570 );
    with(mc) instance_destroy();
    obj_mainchara.visible= 1;
    instance_destroy();
    exit;
} else  exit;


/*  */
