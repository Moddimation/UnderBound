if(cn == -1) {
    global.typer= 1;
    global.msc= 0;
    global.msg[0]= "        DATING^1  STAR^5T^2.^2.^2.^3?%%";
    instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
    cn= 0;
}
if(cn == 0 && !instance_exists(OBJ_WRITER )) {
    // OBJ_WRITER
    with(782) instance_destroy();
    al= 176;
    xx= obj_adate_body.x;
    yy= obj_adate_body.y;
    global.faceemotion= 0;
    global.facechoice= 0;
    global.msc= 0;
    global.typer= 74;
    global.msg[0]= "Uhhh^1, sorry^2!&I\\'m still getting&dressed!/%%";
    scr_blcon(xx - 250, yy, 1);
    cn= 2;
}
if(cn == 2 && !instance_exists(OBJ_WRITER )) {
    cn= 3;
    alarm[4]= 60;
}
if(cn == 4) {
    al.x-= 8;
    if(al.x < 350) cn= 5;
}
if(cn == 5) {
    xx= obj_adate_body.x;
    yy= obj_adate_body.y;
    global.faceemotion= 5;
    global.flag[20]= 3;
    global.msc= 0;
    global.typer= 74;
    global.msg[0]= "H-how do I look?/";
    global.msg[1]= "My friend helped me&pick out this&dress./";
    global.msg[2]= "\\\\E1S\\\\M0he\\'s got a great&sense of.../";
    global.msg[3]= "\\\\E0Um^1, anyway^1!&Let\\'s do this thing!/%%";
    scr_blcon(xx - 260, yy, 1);
    cn= 6;
}
if(cn == 6 && !instance_exists(OBJ_WRITER )) {
    cn= 6.1;
    alarm[4]= 55;
    global.currentsong= caster_play(datemusic, 1, 1);
    global.typer= 1;
    global.msc= 0;
    global.msg[0]= "        DATING^3  START^3.%%";
    instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
}
if(cn == 7.1) {
    mfo= instance_create(0, 0, obj_musfadeout );
    // OBJ_WRITER
    with(782) instance_destroy();
    global.typer= 74;
    global.faceemotion= 9;
    global.flag[20]= 4;
    global.msg[0]= "H-h-hey^1, w-w-wait!/";
    global.msg[1]= "Actually^1, we still&can\\'t start the&date yet!!!/%%";
    scr_blcon(xx - 260, yy, 1);
    cn= 8;
}
if(cn == 8 && !instance_exists(OBJ_WRITER )) {
    global.typer= 1;
    global.msc= 0;
    global.msg[0]= "        DATING..^1.  STOP^4?%%";
    instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
    cn= 9;
}
if(cn == 9 && !instance_exists(OBJ_WRITER )) {
    with(mfo) instance_destroy();
    global.typer= 74;
    global.currentsong= caster_loop(lab, 1, 1);
    global.faceemotion= 9;
    global.flag[20]= 0;
    global.msg[0]= "Umm^1, I\\'ve gotta give&you items to raise&your affection&statistic^1, first!/";
    global.msg[1]= "That\\'ll increase the&chance of a successful&outcome to the&date!/";
    global.msg[2]= "\\\\E6Right...?/";
    global.msg[3]= "\\\\E0Anyway^1, d-don\\'t worry^1!&I\\'m prepared!/";
    global.msg[4]= "\\\\E5I-I\\'ve been&stockpiling gifts&in anticipation&for a date like this!/";
    global.msg[5]= "\\\\E7F\\\\M6-first^1, I\\'ve got.../";
    global.msg[6]= "\\\\E5Some metal armor&polish!/";
    global.msg[7]= "\\\\E3.../";
    global.msg[8]= "\\\\E6Um^1, maybe you can\\'t&use that./";
    global.msg[9]= "\\\\E5But!!!/";
    global.msg[10]= "I also brought some&waterproof cream for&your scales!/";
    global.msg[11]= "\\\\E3Your^1, uh..^1.&Scales.../";
    global.msg[12]= "\\\\E6Uh^1, well^1, how about.../";
    global.msg[13]= "This magical spear&repair kit^1, that I.../";
    global.msg[14]= "\\\\E7Um.../";
    global.msg[15]= "\\\\E5Hey^1, let\\'s forget&about the items!/";
    global.msg[16]= "\\\\E0L\\\\M0et\\'s just start&the date!/%%";
    scr_blcon(xx - 260, yy, 1);
    cn= 10;
}
if(cn == 10) {
    if(instance_exists(OBJ_WRITER )) {
        if(OBJ_WRITER.stringno == 6) {
            global.flag[20]= 5;
            al.item= 1;
            al.aa= 0;
        }
        if(OBJ_WRITER.stringno == 8) {
            global.flag[20]= 6;
            al.item= 0;
            al.aa= 0;
        }
        if(OBJ_WRITER.stringno == 10) {
            global.flag[20]= 5;
            al.item= 1;
            al.aa= 1;
        }
        if(OBJ_WRITER.stringno == 12) {
            global.flag[20]= 6;
            al.item= 0;
            al.aa= 1;
        }
        if(OBJ_WRITER.stringno == 13) {
            global.flag[20]= 5;
            al.item= 1;
            al.aa= 2;
        }
        if(OBJ_WRITER.stringno == 15) {
            global.flag[20]= 6;
            al.item= 0;
            al.aa= 2;
        }
    } else  {
        cn= 11;
        mfo= instance_create(0, 0, obj_musfadeout );
        mfo.fadespeed= 0.02;
        global.typer= 1;
        global.msc= 0;
        global.msg[0]= "        DATING!^1!  START!^3!%%";
        instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
    }
}
if(cn == 11 && !instance_exists(OBJ_WRITER )) {
    global.typer= 74;
    global.faceemotion= 0;
    global.flag[20]= 0;
    global.msg[0]= "Yeah!!^1!&Let\\'s^1, uh^1, date!/%%";
    scr_blcon(xx - 260, yy, 1);
    cn= 12;
}
if(cn == 12 && !instance_exists(OBJ_WRITER )) {
    cn= 13;
    alarm[4]= 90;
}
if(cn == 14) {
    global.faceemotion= 1;
    cn= 15;
    alarm[4]= 60;
}
if(cn == 16) {
    global.faceemotion= 2;
    cn= 17;
    alarm[4]= 60;
}
if(cn == 18) {
    global.faceemotion= 3;
    cn= 19;
    alarm[4]= 60;
}
if(cn == 20 && !instance_exists(OBJ_WRITER )) {
    with(mfo) instance_destroy();
    global.typer= 74;
    global.faceemotion= 3;
    global.flag[20]= 0;
    global.msg[0]= "... uh.../";
    global.msg[1]= "\\\\E4Do you..^3. like..^3.&Anime...^2?/*";
    scr_blcon(xx - 260, yy, 1);
    cn= 21;
}
if(cn == 21 && !instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 1 && OBJ_WRITER.halt != 0) {
    choice= 0;
    choicer= 1;
    global.typer= 1;
    global.msg[0]= "                              &   Yes             No       &                            ";
    iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER );
    with(iii) halt= 0;
    cn= 22;
}
if(cn == 22 && choicer == 2) {
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) instance_destroy();
    }
    cn= 23;
    choicer= 0;
    alarm[4]= 10;
}
if(cn == 24) {
    global.typer= 74;
    if(choice == 0) {
        global.faceemotion= 6;
        global.msg[0]= "H-hey^1!&Me too!!/%%";
    } else  {
        global.faceemotion= 6;
        global.msg[0]= "Oh./%%";
    }
    scr_blcon(xx - 260, yy, 1);
    cn= 25;
}
if(cn == 25 && !instance_exists(OBJ_WRITER )) {
    global.faceemotion= 3;
    alarm[4]= 100;
    cn= 26;
}
if(cn == 27) {
    global.typer= 74;
    global.faceemotion= 6;
    global.flag[20]= 0;
    global.msg[0]= "Hey^1!&Let\\'s!^1!&Go somewhere!!!/";
    global.msg[1]= "\\\\E7But where\\'s a good&place to go on&a date...?/";
    global.msg[2]= "\\\\E2.../";
    global.msg[3]= "\\\\E0I\\'ve got it!!!/";
    global.msg[4]= "\\\\E5Let\\'s go to the&garbage dump!!!/%%";
    scr_blcon(xx - 260, yy, 1);
    cn= 28;
}
if(cn == 28 && !instance_exists(OBJ_WRITER )) {
    al.hspeed= -8;
    snd_play(snd_escaped );
    cn= 28.1;
    alarm[4]= 20;
}
if(cn == 29.1) {
    fadeouter= 1;
    cn= 29;
    alarm[4]= 30;
}
if(cn == 30) {
    instance_create(0, 0, obj_garbagebg );
    watersfx= caster_load("music/ambientwater.ogg");
    global.currentsong= caster_loop(watersfx, 0, 0.9);
    mfi= instance_create(0, 0, obj_musfadein );
    fadeouter= 2;
    // obj_adate_body
    with(176) instance_destroy();
    global.faceemotion= 0;
    global.flag[20]= 0;
    al= instance_create(room_width + 160, 180, obj_adate_body );
    trashcan= instance_create(500, al.y + al.sprite_height * 2 - 20, obj_adate_trashcan );
    al.hspeed= -8;
    cn= 31;
}
if(cn == 31 && al.x < 350) {
    al.hspeed= 0;
    al.x= 350;
    cn= 32;
    if(skip == 1) cn= 110;
}
if(cn == 32) {
    xx= al.x;
    yy= al.y;
    global.msc= 0;
    global.typer= 74;
    global.faceemotion= 0;
    global.flag[20]= 0;
    global.msg[0]= "Here we are!/";
    global.msg[1]= "This is where Undyne&and I come all&the time.../";
    global.msg[2]= "\\\\E1We find all sorts&of great stuff&here./";
    global.msg[3]= "\\\\E5Heh^1, she\\'s&really.../";
    global.msg[4]= "\\\\E6Uh.../%%";
    scr_blcon(xx - 260, yy, 1);
    cn= 33;
}
if(cn == 33 && !instance_exists(OBJ_WRITER )) {
    mfo= instance_create(0, 0, obj_musfadeout );
    mfo.fadespeed= 0.04;
    global.faceemotion= 3;
    cn= 34;
    alarm[4]= 50;
}
if(cn == 35) {
    with(mfo) instance_destroy();
    datetense= caster_load("music/date_tense.ogg");
    global.currentsong= caster_loop(datetense, 1, 1);
    global.typer= 74;
    global.faceemotion= 3;
    global.flag[20]= 2;
    global.msg[0]= "Oh no./";
    global.msg[1]= "\\\\E9That\\'s her over&there./";
    global.msg[2]= "\\\\M4I c-can\\'t let her&see me on a date&with you!/";
    global.msg[3]= "\\\\E6Why...?/";
    global.msg[4]= "\\\\M0Because^1, uh..^1.&Well.../";
    global.msg[5]= "\\\\E9Oh no^1, here she&comes!!/%%";
    scr_blcon(xx - 260, yy, 1);
    cn= 36;
    nowy= al.y;
}
if(cn == 36 && !instance_exists(OBJ_WRITER )) {
    al.x-= 10;
    if(al.y > nowy - 22) al.y--;
    if(al.x < trashcan.x - 240) cn= 37;
}
if(cn == 37) {
    if(al.y > nowy - 22) al.y--;
    al.depth= 2;
    al.x+= 10;
    if(al.x > trashcan.x - 70) cn= 38;
}
if(cn == 38) {
    global.facechoice= 1;
    und= instance_create(-100, trashcan.y + 10, obj_adate_ubody );
    und.y-= und.sprite_height * 2 + 66;
    und.hspeed= 16;
    cn= 39;
}
if(cn == 39 && und.x > 80) {
    und.x= 80;
    und.hspeed= 0;
    cn= 40;
    alarm[4]= 15;
}
if(cn == 41) {
    global.typer= 39;
    xxx= und.x;
    yyy= und.y;
    global.msg[0]= " Hey!^1!& There you are!!/";
    global.msg[1]= "\\\\F2 I^1, uh^1, realized^1,& if you deliver that&  thing.../";
    global.msg[2]= "\\\\F3 It might be a bad& idea./";
    global.msg[3]= "\\\\F4 So I\\'m gonna do& it!!^1!& Give it to me!!!/";
    global.msg[4]= "\\\\F3 Huh!^1?& You don\\'t have it!?/";
    global.msg[5]= "\\\\F4 Ngggaaahhh!!/";
    global.msg[6]= " Have you at least& seen her!?/*";
    scr_blcon(xxx + 100, yyy + 20, 0);
    cn= 42;
}
if(cn == 42 && !instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 6 && OBJ_WRITER.halt != 0) {
    al.shake= 2;
    choice= 0;
    choicer= 1;
    global.typer= 1;
    global.msg[0]= "                              &   Yeah            Nope     &                            ";
    iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER );
    with(iii) halt= 0;
    cn= 43;
}
if(cn == 43 && choicer == 2) {
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) instance_destroy();
    }
    cn= 44;
    choicer= 0;
    alarm[4]= 10;
}
if(cn == 45) {
    al.shake= 0;
    global.typer= 39;
    if(choice == 0) {
        global.facechoice= 0;
        global.msg[0]= " Yes?/";
        global.msg[1]= "\\\\F6 So she\\'s somewhere& around here.../";
        global.msg[2]= "\\\\F0 Thanks^1.& I\\'ll keep looking./%%";
    } else  {
        global.facechoice= 1;
        global.msg[0]= " No???/";
        global.msg[1]= " But she wasn\\'t& at home.../";
        global.msg[2]= "\\\\F3 Where the heck& could she be!?/%%";
    }
    scr_blcon(xxx + 100, yyy + 20, 0);
    cn= 46;
}
if(cn == 46 && !instance_exists(OBJ_WRITER )) {
    mfo= instance_create(0, 0, obj_musfadeout );
    und.hspeed= 20;
    cn= 47;
    alarm[4]= 40;
}
if(cn == 48) {
    // obj_musfadeout
    with(92) instance_destroy();
    cn= 49;
    global.flag[20]= 0;
    global.faceemotion= 3;
}
if(cn == 49) {
    al.depth= 2;
    al.x-= 10;
    if(al.x < trashcan.x - 240) cn= 50;
}
if(cn == 50 && !instance_exists(OBJ_WRITER )) {
    al.depth= 0;
    al.x+= 10;
    if(al.y < nowy) al.y+= 4;
    if(al.x > xx) {
        al.y= nowy;
        cn= 51;
        al.x= xx;
    }
}
if(cn == 51) {
    cn= 52;
    lab= caster_load("music/lab.ogg");
    alarm[4]= 20;
}
if(cn == 53) {
    global.currentsong= caster_loop(lab, 1, 0.75);
    global.typer= 74;
    global.faceemotion= 3;
    global.flag[20]= 0;
    global.msg[0]= "\\\\E2Oh my god.../";
    global.msg[1]= "\\\\E6W... well^1, I guess&it\\'s obvious^1, huh?/";
    global.msg[2]= "\\\\E7I...^1 uh..^1.&I really like her./";
    global.msg[3]= "\\\\E9I mean^1, more than&I like other people!/";
    global.msg[4]= "\\\\E7I\\'m sorry./";
    global.msg[5]= "\\\\E6I j-just figured^1,&y-you know.../";
    global.msg[6]= "\\\\E7It\\'d be f-fun to&go on like^1, a cute^1,&kind of.../";
    global.msg[7]= "\\\\E6P\\\\M3retend date with you^1?&T-to make you feel&better?/";
    global.msg[8]= "\\\\E7.../";
    global.msg[9]= "\\\\E6Well^1, it sounds even&worse when I put it&like that./";
    global.msg[10]= "\\\\E8I\\\\M0\\'m sorry^1.&I messed up again./";
    global.msg[11]= "\\\\E7Undyne\\'s the person I..^1.&Um..^1. really want to&go on a date with./";
    global.msg[12]= "But, I mean..^1.&She\\'s way out of&my league./";
    global.msg[13]= "\\\\E9N-not that you&aren\\'t^1, um^1, cool!/";
    global.msg[14]= "\\\\E7B-but..^1. Undyne.../";
    global.msg[15]= "She\\'s so confident..^1.&And strong..^1.&And funny.../";
    global.msg[16]= "\\\\E8And I\\'m just a&nobody./";
    global.msg[17]= "\\\\M3A fraud./";
    global.msg[18]= "I\\'m the royal&scientist^1, but.../";
    global.msg[19]= "\\\\M0All I\\'ve ever done&is hurt people./";
    global.msg[20]= "\\\\E7I\\'ve told her so&many lies^1, she thinks&I\\'m.../";
    global.msg[21]= "\\\\E6She thinks I\\'m a&lot cooler than I&actually am./";
    global.msg[22]= "\\\\E7If she gets close&to me^1, she\\'ll.../";
    global.msg[23]= "\\\\E8She\\'ll find out the&truth about me./";
    global.msg[24]= "\\\\E7.../";
    global.msg[25]= "\\\\E7What should I do?/*";
    scr_blcon(xx - 260, yy, 1);
    cn= 54;
}
if(cn == 54 && !instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 25 && OBJ_WRITER.halt != 0) {
    choice= 0;
    choicer= 1;
    global.typer= 1;
    global.msg[0]= "                              &   Tell her        Keep     &   the truth       lying    ";
    iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER );
    with(iii) halt= 0;
    cn= 55;
}
if(cn == 55 && choicer == 2) {
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) instance_destroy();
    }
    cn= 56;
    choicer= 0;
    alarm[4]= 10;
}
if(cn == 57) {
    global.typer= 74;
    if(choice == 0) {
        global.faceemotion= 9;
        global.msg[0]= "\\\\E9The truth...?/";
        global.msg[1]= "\\\\M4But if I tell her&that^1, she\\'ll hate&me./";
        global.msg[2]= "\\\\E6I\\\\M0sn\\'t it better&this way?/";
        global.msg[3]= "To live a lie where&both people are&happy.../";
        global.msg[4]= "\\\\E7Or a truth where&neither of us&are?/";
        global.msg[5]= "They say " + chr(ord("\"")) + "be&your" + chr(ord("\"")) + "/";
        global.msg[6]= "\\\\E8But I don\\'t&really like who&" + chr(ord("\"")) + "myself" + chr(ord("\"")) + " is./";
        global.msg[7]= "\\\\E7I\\'d rather just&be whatever makes&people like me./";
        global.msg[8]= "\\\\E6Eheheh.../";
        global.msg[9]= "\\\\E7.../";
        global.msg[10]= "\\\\E8.../";
        global.msg[11]= "No, you\\'re right./";
        global.msg[12]= "Every day I\\'m&scared.../";
        global.msg[13]= "\\\\E7Scared what will&happen if people&learn the truth&on their own./";
        global.msg[14]= "\\\\M3They\\'ll all get&hurt because of&me.../";
        global.msg[15]= "\\\\E9B\\\\M4ut how can I&tell UNDYNE the&tr..^1. truth?/";
        global.msg[16]= "\\\\E8I d-don\\'t have the&confidence.../";
        global.msg[17]= "\\\\E9I\\'m going to mess&it up^1!&How can I&practice!?/%%";
    } else  {
        global.faceemotion= 7;
        global.flag[20]= 4;
        global.msg[0]= "Yeah..^1. yeah^1, you\\'re&right!/";
        global.msg[1]= "\\\\E6I\\\\M0\\'ve come this far^1,&I c-can\\'t tell&her now!/";
        global.msg[2]= "\\\\E7Sh-she\\'d be really&hurt if she found&out^1, right?/";
        global.msg[3]= "\\\\E5S-so it\\'ll just&be^1, uh^1, a little&secret!/";
        global.msg[4]= "\\\\M1What people don\\'t&know can\\'t hurt&them!!/";
        global.msg[5]= "\\\\M0Th-thank God I\\'ve&got an honest&friend like you!!/";
        global.msg[6]= ".../";
        global.msg[7]= "\\\\E3.../";
        global.msg[8]= "\\\\M1B..^1. but what if she&finds out on her&own^1, somehow?/";
        global.msg[9]= "\\\\E7O\\\\M0r if I ever&m-mess up.../";
        global.msg[10]= "\\\\M4Sh-she\\'d find out&the truth^1, and.../";
        global.msg[11]= "\\\\E8Pr-probably be even&more hurt than if&I told her my/";
        global.msg[12]= "\\\\E6N\\\\M0-not to mention^1,&l-lying so far..^1.&h..^1. has.../";
        global.msg[13]= "\\\\E8Been really&stressful^1, and scary./";
        global.msg[14]= "\\\\E3.../";
        global.msg[15]= "\\\\E4I think I\\'m going&to have to tell&her the truth./";
        global.msg[16]= "\\\\E9B-but how!?/";
        global.msg[17]= "\\\\E8I..^1. I don\\'t have&the confidence.../";
        global.msg[18]= "\\\\E7How am I supposed&to practice&something like that!?/%%";
    }
    scr_blcon(xx - 260, yy, 1);
    cn= 58;
}
if(cn == 58 && !instance_exists(OBJ_WRITER )) {
    cn= 59;
    alarm[4]= 10;
}
if(cn == 60) {
    choice= 0;
    choicer= 1;
    global.typer= 1;
    global.msg[0]= "   Let\\'s           Obviously&   Roleplay        Let\\'s    &   It              Roleplay";
    iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER );
    with(iii) halt= 0;
    cn= 61;
}
if(cn == 61 && choicer == 2) {
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) instance_destroy();
    }
    cn= 62;
    choicer= 0;
    alarm[4]= 10;
}
if(cn == 63) {
    global.msc= 0;
    xx= al.x;
    yy= al.y;
    if(skip == 1) {
        caster_stop(-3);
        global.currentsong= caster_loop(lab, 1, 0.75);
    }
    global.typer= 74;
    global.faceemotion= 4;
    global.flag[20]= 0;
    global.msg[0]= "\\\\E4R..^1. roleplay?/";
    global.msg[1]= "\\\\E3.../";
    global.msg[2]= "\\\\E5.\\\\M1.. That actually&sounds kind of&fun!/";
    global.msg[3]= "\\\\M0OK^1, which one of&us will be Undyne?/*";
    scr_blcon(xx - 260, yy, 1);
    cn= 64;
}
if(cn == 64 && !instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 3 && OBJ_WRITER.halt != 0) {
    choice= 0;
    choicer= 1;
    global.typer= 1;
    global.msg[0]= "                              &   I\\'ll be         You\\'ll be&   Undyne          Undyne   ";
    iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER );
    with(iii) halt= 0;
    cn= 65;
}
if(cn == 65 && choicer == 2) {
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) instance_destroy();
    }
    if(choice == 0) cn= 69;
    else  cn= 89;
    choicer= 0;
    alarm[4]= 10;
}
if(cn == 70) {
    global.typer= 74;
    global.faceemotion= 6;
    global.flag[20]= 0;
    global.msg[0]= "Oh^1. Right^1.&Obviously^1.&Ehehe./";
    global.msg[1]= "\\\\E2A\\\\M1hem./";
    global.msg[2]= "\\\\E0H-hi\\\\M3 Undyne..^1.&H-how are you doing&today?/*";
    scr_blcon(xx - 260, yy, 1);
    cn= 71;
}
if(cn == 71 && !instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 2 && OBJ_WRITER.halt != 0) {
    choice= 0;
    choicer= 1;
    global.typer= 1;
    global.msg[0]= "                              &   I\\'m fine.       YOur &                      cute, ";
    iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER );
    with(iii) halt= 0;
    cn= 72;
}
if(cn == 72 && choicer == 2) {
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) instance_destroy();
    }
    cn= 73;
    choicer= 0;
    alarm[4]= 10;
}
if(cn == 74) {
    global.typer= 74;
    global.flag[20]= 0;
    if(choice == 0) {
        global.msg[0]= "\\\\E5Ha^1! Ha^1!&Glad to hear it!!/";
        global.msg[1]= "\\\\E3.../";
        global.msg[2]= "\\\\E4Uhhh^1, so I\\'d like&to^1, um^1, talk to&you about&something./%%";
    } else  {
        global.msg[0]= "\\\\E5Th..^1. thanks!/";
        global.msg[1]= "\\\\E6You say that to me&a lot^1, and I&never know what&to say!!/";
        global.msg[2]= "\\\\E6But I know^1, you just^1,&mean it platonically^1,&because we\\'re just&friends!/";
        global.msg[3]= "\\\\M1Eheheh!!!/";
        global.msg[4]= "\\\\E3.../";
        global.msg[5]= "\\\\E4Uhhh^1, so I\\'d like&to^1, um^1, talk to&you about&something./%%";
    }
    scr_blcon(xx - 260, yy, 1);
    cn= 74.1;
}
if(cn == 74.1 && !instance_exists(OBJ_WRITER )) {
    cn= 74.2;
    alarm[4]= 20;
}
if(cn == 75.2) cn= 75;
if(cn == 75 && !instance_exists(OBJ_WRITER )) {
    choice= 0;
    choicer= 1;
    global.typer= 1;
    global.msg[0]= "                              &   What is it,     THEN SHe&   Alphys.         Kisses YOu";
    iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER );
    with(iii) halt= 0;
    cn= 76;
}
if(cn == 76 && choicer == 2) {
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) instance_destroy();
    }
    cn= 77;
    choicer= 0;
    alarm[4]= 10;
}
if(cn == 78) {
    global.typer= 74;
    global.flag[20]= 0;
    if(choice == 0) {
        global.msg[0]= "\\\\E3Umm, you see..^1.&I..^1. I.../";
        global.msg[1]= "\\\\M3I..^1. I h-haven\\'t been&exactly truthful&w-w-with you.../";
        global.msg[2]= "\\\\E4Y\\\\M4..^1. you see^1, I..^1. I.../";
        global.msg[3]= "\\\\E9Oh^1, forget it!/";
        global.msg[4]= "\\\\M0Undyne!!!/";
        global.msg[5]= "I..^1. I want to&tell you how I&feel!/";
        global.msg[6]= "\\\\M4Y-you\\'re so brave^1,&a-and s-strong..^1.&A-and nice.../";
        global.msg[7]= "Y-you always listen&t-to me when I talk&about n-n-nerdy&stuff.../";
        global.msg[8]= "\\\\E0Y-you always d-d-do&your best to m-make&me f-f-feel&special.../";
        global.msg[9]= "\\\\E3L-like t-telling me&that y-you\\'ll b-beat&up anyone that&g-gets in my way.../%%";
    } else  {
        global.msg[0]= "\\\\E9WH-WHAT!?/";
        global.msg[1]= "\\\\M1UNDYNE WOULD NEVER^1,&UH..../";
        global.msg[2]= "\\\\E3.../";
        global.msg[3]= "\\\\M0.../";
        global.msg[4]= "\\\\E4I kiss her back..^1.&S..^1. softly.../";
        global.msg[5]= "\\\\M4I..^1. l-look gently&into her eyes.../%%";
    }
    scr_blcon(xx - 260, yy, 1);
    cn= 79;
}
if(cn == 79 && !instance_exists(OBJ_WRITER )) {
    pitch= 0.75;
    al.shake= 2;
    global.typer= 75;
    if(choice == 0) {
        global.flag[20]= 7;
        global.faceemotion= 11;
        global.msg[0]= "UNDYNE!!!/";
        global.msg[1]= "I CAN\\'T TAKE THIS&ANY LONGER!!!/";
        global.msg[2]= "I\\'M MADLY IN LOVE&WITH YOU!!!/";
        global.msg[3]= "HOLD ME^1, UNDYNE!^1!&HOLD ME!!!/%%";
    } else  {
        global.flag[20]= 7;
        global.faceemotion= 11;
        global.msg[0]= "I START HOLLERING!!/";
        global.msg[1]= "UNDYNE!!!^1!&I LOVE YOU!!!/";
        global.msg[2]= "UNDYNE!!^1!&KISS ME AGAIN^1,&UNDYNE!!!/%%";
    }
    scr_blcon(xx - 260, yy, 1);
    cn= 110;
}
if(cn == 90) {
    global.typer= 74;
    global.faceemotion= 9;
    global.flag[20]= 0;
    global.msg[0]= "\\\\E9M\\\\M0-m-me^1?&Undyne???/";
    global.msg[1]= "\\\\E7Uh^1, uh^1, uh^1, uh^1,&ok!/";
    global.msg[2]= "\\\\E6I\\'ll say what I&think she\\'d say^1,&and you..^1. ummm..../";
    global.msg[3]= "\\\\E5You show me what&I\\'m supposed to do!/";
    global.msg[4]= "\\\\E2*\\\\M1ahem*/";
    global.msg[5]= "\\\\E0N\\\\M2gahhhh!!^1!&Hey^1, Alphys!&You look cute&today!/";
    global.msg[6]= "\\\\E5Which I say often^1!&But platonically&because I would&NEVER like you./*";
    scr_blcon(xx - 260, yy, 1);
    cn= 91;
}
if(cn == 91 && !instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 6 && OBJ_WRITER.halt != 0) {
    choice= 0;
    choicer= 1;
    global.typer= 1;
    global.msg[0]= "   Hi Undyne!      Yo your&   Can we          one hot&   talk?           hotbaby";
    iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER );
    with(iii) halt= 0;
    cn= 92;
}
if(cn == 92 && choicer == 2) {
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) instance_destroy();
    }
    cn= 93;
    choicer= 0;
    alarm[4]= 10;
}
if(cn == 94) {
    global.typer= 74;
    global.flag[20]= 0;
    if(choice == 0) {
        global.flag[20]= 3;
        global.faceemotion= 2;
        global.msg[0]= "Talk^1, to you^1?&Hmmm..^1.&I guess so./";
        global.msg[1]= "I often seem&excited to listen&to you for some&reason./";
        global.msg[2]= "\\\\E4I will make intent&eye contact with you&so you sweat while&you talk./";
        global.msg[3]= "\\\\E0So^1, what is it?/%%";
    } else  {
        global.flag[20]= 1;
        global.faceemotion= 9;
        global.msg[0]= "What!^1?&A... alphys!?/";
        global.msg[1]= "What\\'s gotten into&you!?/";
        global.msg[2]= "\\\\E9H\\\\M2-hotbaby!^1?&How dare you call&me that!?/";
        global.msg[3]= "\\\\E5First off^1, I\\'m a&baby KNIGHT!/";
        global.msg[4]= "Captain of the&babies!!!/";
        global.msg[5]= "Treat my position&with respect^1, or I&will strike you&down!/";
        global.msg[6]= "\\\\M3Uh^1, now pretend&I\\'m suplexing a&boulder for no&reason./";
        global.msg[7]= "\\\\E9U\\\\M0m^1! Anyway^1!&What do you&want to say^1,&Alphys!?/%%";
    }
    scr_blcon(xx - 260, yy, 1);
    cn= 94.1;
}
if(cn == 94.1 && !instance_exists(OBJ_WRITER )) {
    cn= 94.2;
    alarm[4]= 20;
}
if(cn == 95.2) cn= 95;
if(cn == 95 && !instance_exists(OBJ_WRITER )) {
    choice= 0;
    choicer= 1;
    global.typer= 1;
    global.msg[0]= "   Let\\'s tell      Alphys&   Undyne the      gives u&   truth           a kiss,";
    iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER );
    with(iii) halt= 0;
    cn= 96;
}
if(cn == 96 && choicer == 2) {
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) instance_destroy();
    }
    cn= 97;
    choicer= 0;
    alarm[4]= 10;
}
if(cn == 98) {
    global.typer= 74;
    global.flag[20]= 0;
    if(choice == 0) {
        global.flag[20]= 4;
        global.faceemotion= 9;
        global.msg[0]= "What!?/";
        global.msg[1]= "So you\\'ve been&lying to me the&whole time.../";
        global.msg[2]= "\\\\E7Alphys!!^1!&I can\\'t believe you!/";
        global.msg[3]= "\\\\E8You w-worthless&slime!/";
        global.msg[4]= "\\\\E9How could you&betray our&friendship!!/";
        global.msg[5]= "\\\\E8After how much I&trusted you!!!/%%";
    } else  {
        global.flag[20]= 1;
        global.faceemotion= 9;
        global.msg[0]= "WH-WHAT!^1?&I WOULD NEVER.../";
        global.msg[1]= "\\\\M0Alphys^1!&What are you&d-doing!/";
        global.msg[2]= "I s-say^1, pushing&you away from&me.../";
        global.msg[3]= "\\\\E3You sh-shouldn\\'t&k-kiss me...!!/";
        global.msg[4]= "\\\\E3.../";
        global.msg[5]= "\\\\E4.../";
        global.msg[6]= "\\\\E3B-but^1, y-you\\'re so&good at it.../";
        global.msg[7]= "\\\\E5B-b-b-because of what&you learned from&th-those d-d-dating&video games.../";
        global.msg[8]= "I...^1.&I c-c-can\\'t help but&k-k-kiss you back.../%%";
    }
    scr_blcon(xx - 260, yy, 1);
    cn= 99;
}
if(cn == 99 && !instance_exists(OBJ_WRITER )) {
    pitch= 0.75;
    al.shake= 2;
    global.typer= 75;
    if(choice == 0) {
        global.flag[20]= 7;
        global.faceemotion= 11;
        global.msg[0]= "ALPHYS^1!&I\\'LL NEVER LOVE YOU!/";
        global.msg[1]= "NEVER WILL YOU FEEL&MY PASSIONATE&EMBRACE!!!/";
        global.msg[2]= "I^1, UNDYNE^1, WILL&NEVER KISS YOU&WITH MY BEAUTIFUL&LIPS!!!/%%";
    } else  {
        global.flag[20]= 7;
        global.faceemotion= 11;
        global.msg[0]= "NGAHHHH!!^1!&NGAHHH!!!!/";
        global.msg[1]= "I\\'M UNDYNE AND I\\'M&PILING ON THE&SMOOCHES!!!/%%";
    }
    scr_blcon(xx - 260, yy, 1);
    cn= 110;
}
if(cn == 110 && instance_exists(OBJ_WRITER )) {
    if(pitch < 2) pitch+= 0.01;
    caster_set_pitch(global.currentsong, pitch);
}
if(cn == 110 && !instance_exists(OBJ_WRITER )) {
    global.facechoice= 5;
    // obj_adate_ubody
    with(177) instance_destroy();
    und= instance_create(-100, trashcan.y + 10, obj_adate_ubody );
    und.y-= und.sprite_height * 2 + 66;
    und.hspeed= 20;
    cn= 111;
}
if(cn == 111 && und.x > 60) {
    obj_adate_body.set= 1;
    obj_adate_body.shake= 0;
    global.faceemotion= 8;
    und.x= 60;
    und.hspeed= 0;
    cn= 112;
    alarm[4]= 15;
}
if((cn == 111 || cn == 112) && caster_is_playing(global.currentsong)) {
    if(pitch > 0) pitch-= 0.04;
    else  caster_stop(global.currentsong);
    caster_set_pitch(global.currentsong, pitch);
    caster_set_volume(global.currentsong, pitch / 2);
}
if(cn == 113) {
    caster_stop(global.currentsong);
    global.typer= 39;
    xxx= und.x;
    yyy= und.y;
    global.msg[0]= "WHAT did you just&say?/%%";
    scr_blcon(xxx + 90, yyy + 20, 0);
    cn= 113.1;
}
if(cn == 113.1 && !instance_exists(OBJ_WRITER )) {
    cn= 113.2;
    alarm[4]= 5;
    al.hspeed= 10;
}
if(cn == 114.2) cn= 114;
if(cn == 114 && !instance_exists(OBJ_WRITER )) {
    xx= al.x;
    yy= al.y;
    al.hspeed= 0;
    global.typer= 74;
    global.faceemotion= 1;
    global.flag[20]= 0;
    global.msg[0]= "\\\\E1U..^1. Undyne^1!&I..^1. was..^1. just.../%%";
    scr_blcon(xx - 250, yy, 1);
    cn= 115;
}
if(cn == 115 && !instance_exists(OBJ_WRITER )) {
    global.typer= 39;
    xxx= und.x;
    yyy= und.y;
    global.msg[0]= "\\\\F6Hey^1, woah^1, wait&a second!/";
    global.msg[1]= "Your outfit\\'s really&cute^1!&What\\'s the occasion?/";
    global.msg[2]= "\\\\F0.\\\\E0../";
    global.msg[3]= "\\\\F2W\\\\E1ait a second./";
    global.msg[4]= "\\\\F1Are you two.../";
    global.msg[5]= "\\\\F3On a date?/%%";
    scr_blcon(xxx + 90, yyy + 20, 0);
    cn= 116;
}
if(cn == 116 && !instance_exists(OBJ_WRITER )) {
    global.typer= 74;
    global.faceemotion= 1;
    global.flag[20]= 0;
    global.msg[0]= "\\\\E1UHHH^1, \\\\F4YES!/";
    global.msg[1]= "\\\\E7I mean^1, \\\\F5UHHH NO!/";
    global.msg[2]= "\\\\E3I mean^1, \\\\F7we were^1,& bu^1t%";
    global.msg[3]= "\\\\E1I mean^1, actually we&were \\\\F3only romantically&roleplaying as you!/%%";
    scr_blcon(xx - 250, yy, 1);
    cn= 117;
}
if(cn == 117 && !instance_exists(OBJ_WRITER )) {
    global.typer= 39;
    xxx= und.x;
    yyy= und.y;
    global.msg[0]= "\\\\F3WHAT???/%%";
    scr_blcon(xxx + 90, yyy + 20, 0);
    cn= 118;
}
if(cn == 118 && !instance_exists(OBJ_WRITER )) {
    global.typer= 74;
    global.faceemotion= 8;
    global.flag[20]= 0;
    global.msg[0]= "\\\\E8I MEAN!!!/";
    global.msg[1]= "\\\\E3I mean.../";
    global.msg[2]= "Undyne..^1.&I.../%%";
    scr_blcon(xx - 250, yy, 1);
    cn= 119;
}
if(cn == 119 && !instance_exists(OBJ_WRITER )) {
    confession= caster_load("music/confession.ogg");
    global.currentsong= caster_loop(confession, 1, 1);
    global.typer= 74;
    global.faceemotion= 7;
    global.flag[20]= 0;
    global.msg[0]= "\\\\F4I\\'ve been lying to&you!/%%";
    scr_blcon(xx - 250, yy, 1);
    cn= 120;
}
if(cn == 120 && !instance_exists(OBJ_WRITER )) {
    global.typer= 39;
    xxx= und.x;
    yyy= und.y;
    global.msg[0]= "\\\\F3WHAT??^1?&ABOUT WHAT???/%%";
    scr_blcon(xxx + 90, yyy + 20, 0);
    cn= 121;
}
if(cn == 121 && !instance_exists(OBJ_WRITER )) {
    trashcan.depth= 90;
    al.depth= -1;
    und.depth= 0;
    global.typer= 74;
    global.faceemotion= 3;
    global.flag[20]= 0;
    global.msg[0]= "About... well.../";
    global.msg[1]= "\\\\E2Everything!/%%";
    scr_blcon(xx - 250, yy, 1);
    cn= 122;
}
if(cn == 122 && !instance_exists(OBJ_WRITER )) {
    al.hspeed= -10;
    cn= 121.1;
    alarm[4]= 15;
}
if(cn == 122.1) {
    xx= al.x;
    al.hspeed= 0;
    global.msg[0]= "\\\\E7I told you that& seaweed was like...&scientifically&important...%";
    global.msg[1]= "\\\\F5Really, I just...&I just use it to&make ice cream^1!%%";
    scr_blcon(xx + 110, yy, 0);
    cn= 122.3;
}
if(cn == 122.3 && !instance_exists(OBJ_WRITER )) {
    al.hspeed= -10;
    cn= 121.4;
    alarm[4]= 5;
}
if(cn == 122.4) {
    xx= al.x;
    al.hspeed= 0;
    global.msg[0]= "And those human&history books I&keep reading...%";
    global.msg[1]= "\\\\F7Those are just&dorky comic books^1!%%";
    scr_blcon(xx + 110, yy, 0);
    cn= 122.5;
}
if(cn == 122.5 && !instance_exists(OBJ_WRITER )) {
    al.hspeed= -10;
    cn= 121.6;
    alarm[4]= 5;
}
if(cn == 122.6) {
    xx= al.x;
    al.hspeed= 0;
    global.msg[0]= "And the history&movies..^1.&those..^2.%";
    global.msg[1]= "\\\\F2Those are just^1, uh^1,&anime^2!&They aren\\'t real^2!%%";
    scr_blcon(xx + 110, yy, 0);
    cn= 122.8;
}
if(cn == 122.8 && !instance_exists(OBJ_WRITER )) {
    al.hspeed= -9;
    cn= 121.9;
    alarm[4]= 5;
}
if(cn == 122.9) {
    xx= al.x;
    al.hspeed= 0;
    global.msg[0]= "And that time I&told you I was&busy with work on&the phone..^1. I...%";
    global.msg[1]= "\\\\F9Was just eating&frozen yogurt in&my pajamas!%";
    global.msg[2]= "\\\\E3That time I...%%";
    scr_blcon(xx + 110, yy, 0);
    cn= 125;
}
if(cn == 125 && !instance_exists(OBJ_WRITER )) {
    global.typer= 39;
    xxx= und.x;
    yyy= und.y;
    global.msg[0]= "Alphys./%%";
    scr_blcon(xxx + 90, yyy - 10, 0);
    cn= 127;
}
if(cn == 127 && !instance_exists(OBJ_WRITER )) {
    global.typer= 74;
    global.faceemotion= 5;
    global.flag[20]= 0;
    global.msg[0]= "\\\\E5I..^1. I just wanted to&impress you!/";
    global.msg[1]= "I just wanted you&to think I was&smart and cool./";
    global.msg[2]= "That I wasn\\'t&some..^1.&nerdy loser./%%";
    scr_blcon(xx + 110, yy, 0);
    cn= 130;
}
if(cn == 130 && !instance_exists(OBJ_WRITER )) {
    global.typer= 39;
    xxx= und.x;
    yyy= und.y;
    und.visible= 0;
    al.visible= 0;
    thrower= instance_create(und.x - 34, und.y - 56, obj_ua_throwtest );
    global.msg[0]= "Alphys./%%";
    scr_blcon(xxx + 90, yyy - 10, 0);
    cn= 131;
}
if(cn == 131 && !instance_exists(OBJ_WRITER )) {
    global.typer= 74;
    global.faceemotion= 5;
    global.flag[20]= 0;
    global.msg[0]= "\\\\E5Undyne^1, I..^1.&I really think you\\'re&neat^1, OK.../%%";
    scr_blcon(xx + 110, yy, 0);
    cn= 132;
}
if(cn == 132 && !instance_exists(OBJ_WRITER )) {
    thrower.con= 1;
    global.typer= 39;
    xxx= und.x;
    yyy= und.y;
    global.msg[0]= "Alphys./";
    global.msg[1]= "Shhhh./";
    global.msg[2]= "Shhhhhh./%%";
    scr_blcon(xxx + 140, yyy + 40, 0);
    cn= 133;
}
if(cn == 133 && !instance_exists(OBJ_WRITER )) {
    cn= 134;
    alarm[4]= 30;
}
if(cn == 135) {
    caster_stop(global.currentsong);
    thrower.con= 3;
    cn= 136;
    alarm[4]= 100;
}
if(cn == 137) {
    with(thrower) instance_destroy();
    global.facechoice= 0;
    und.set= 1;
    und.visible= 1;
    with(trashcan) {
        fadein= 1;
        con= 1;
    }
    cn= 138;
    alarm[4]= 90;
}
if(cn == 139) {
    utheme= caster_load("music/undynetruetheme.ogg");
    global.currentsong= caster_loop(utheme, 0.9, 1);
    global.msg[0]= "\\\\F0Alphys!/";
    global.msg[1]= "I..^1. think you\\'re&neat^1, too, I guess./";
    global.msg[2]= "\\\\F1But, you\\'ve gotta&realize.../";
    global.msg[3]= "\\\\F2Most of what you&said really doesn\\'t&matter to me./";
    global.msg[4]= "I don\\'t care if&you\\'re watching kid&cartoons or reading&history books./";
    global.msg[5]= "\\\\F3To me^1, ALL of&that stuff is&just NERDY CRAP!/";
    global.msg[6]= "What I like about&you is that you\\'re&PASSIONATE^1!&You\\'re ANALYTICAL!!/";
    global.msg[7]= "It doesn\\'t matter&what it is^1!&YOU CARE ABOUT IT!!/";
    global.msg[8]= "\\\\F4100-PERCENT!^1!&AT MAXIMUM POWER!!!/";
    global.msg[9]= "\\\\F5... so^1, you don\\'t&have to lie to me./";
    global.msg[10]= "\\\\F0I don\\'t want you&to have to lie to&anyone anymore./";
    global.msg[11]= "\\\\F6Alphys..^1. I want to&help you become&happy with who&you are!/";
    global.msg[12]= "\\\\F5And I know just&the training you&need to do that!/%%";
    global.typer= 39;
    xxx= und.x;
    yyy= und.y;
    scr_blcon(xxx + 90, yyy - 10, 0);
    cn= 140;
}
if(cn == 140 && !instance_exists(OBJ_WRITER )) {
    trashcan.shake= 3;
    cn= 141;
    alarm[4]= 30;
}
if(cn == 142) {
    trashcan.shake= 0;
    global.faceemotion= 0;
    trashcan.aturn= 1;
    cn= 143;
    alarm[4]= 30;
}
if(cn == 144) {
    xx= trashcan.x;
    yy= trashcan.y - trashcan.sprite_height * 2 + 20;
    global.typer= 74;
    global.faceemotion= 0;
    global.msg[0]= "Undyne..^1.&You.../";
    global.msg[1]= "\\\\E4Y-you\\'re gonna train&me...?/%%";
    scr_blcon(xx - 320, yy, 1);
    cn= 145;
}
if(cn == 145 && !instance_exists(OBJ_WRITER )) {
    global.msg[0]= "\\\\F2Pffft^1, what^1?&ME?/%%";
    global.typer= 39;
    xxx= und.x;
    yyy= und.y;
    scr_blcon(xxx + 90, yyy - 10, 0);
    cn= 146;
}
if(cn == 146 && !instance_exists(OBJ_WRITER )) {
    global.faceemotion= 0;
    caster_stop(global.currentsong);
    pap= instance_create(400, 400, obj_adate_papyrus );
    cn= 147;
    alarm[4]= 110;
}
if(cn == 148) {
    global.faceemotion= 3;
    global.msg[0]= "\\\\F6Nah^1, I\\'m gonna&get Papyrus to&do it./%%";
    global.typer= 39;
    scr_blcon(xxx + 90, yyy + 120, 0);
    cn= 149;
}
if(cn == 149 && !instance_exists(OBJ_WRITER )) {
    pap.con= 2;
    cn= 150;
    alarm[4]= 60;
}
if(cn == 151) {
    global.faceemotion= 2;
    global.typer= 22;
    global.msg[0]= "GET THOSE BONES&SHAKIN\\'!!!/";
    global.msg[1]= "IT\\'S TIME TO JOG&100 LAPS^1, HOOTING&ABOUT HOW GREAT&WE ARE!!!/%%";
    scr_blcon(pap.x - 150, pap.y - 80, 1);
    cn= 153;
}
if(cn == 153 && !instance_exists(OBJ_WRITER )) {
    global.faceemotion= 2;
    global.msg[0]= "Ready^1?&I\\'m about to start&the timer!/%%";
    global.typer= 39;
    scr_blcon(xxx + 90, yyy + 20, 0);
    cn= 155;
}
if(cn == 155 && !instance_exists(OBJ_WRITER )) {
    xx= trashcan.x;
    yy= trashcan.y - trashcan.sprite_height * 2 + 20;
    global.typer= 74;
    global.faceemotion= 0;
    global.msg[0]= "\\\\E5 & &    U-Undyne.../";
    global.msg[1]= "\\\\E1 & &    I\\'ll do my&    best...!/%%";
    scr_blcon(xx - 80, yy - 140, 2);
    cn= 156;
}
if(cn == 156 && !instance_exists(OBJ_WRITER )) {
    // obj_musfadeout
    with(92) instance_destroy();
    pap.hspeed= 10;
    trashcan.hspeed= 10;
    cn= 157;
    alarm[4]= 80;
}
if(cn == 158) {
    und.set= 0;
    global.facechoice= 1;
    caster_free(-3);
    global.currentsong= caster_load("music/undynetruetheme.ogg");
    caster_loop(global.currentsong, 0.65, 2);
    global.msg[0]= "\\\\F3OH MY GOD!!!/";
    global.msg[1]= "\\\\F5She was kidding^1,&right!? /";
    global.msg[2]= "Those cartoons..^1.&those comics.../";
    global.msg[3]= "\\\\F7Those are still&REAL^1, right!?/";
    global.msg[4]= "\\\\F8ANIME\\'S REAL^1,&RIGHT?!?!/%%";
    global.typer= 39;
    scr_blcon(xxx + 90, yyy - 20, 0);
    cn= 158.1;
}
if(cn == 158.1 && !instance_exists(OBJ_WRITER )) {
    alarm[4]= 15;
    cn= 158.2;
}
if(cn == 159.2) cn= 159;
if(cn == 159 && !instance_exists(OBJ_WRITER )) {
    choice= 0;
    choicer= 1;
    global.typer= 1;
    global.msg[0]= "   Anime is        Anime &   Real            is not &                   real";
    iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER );
    with(iii) halt= 0;
    cn= 160;
}
if(cn == 160 && choicer == 2) {
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) instance_destroy();
    }
    cn= 161;
    choicer= 0;
    alarm[4]= 10;
}
if(cn == 162) {
    if(choice == 0) {
        global.msg[0]= "HA HA HA!!!/";
        global.msg[1]= "I KNEW IT!!!/";
        global.msg[2]= "GIGANTIC SWORDS!!^1!&MAGICAL PRINCESSES^1!&HERE I COME!!!/%%";
    } else  {
        global.msg[0]= "\\\\F3No..^1. NO!!!!/";
        global.msg[1]= "I CAN FEEL MY&HEART BREAKING&INTO PIECES!!!/%%";
    }
    global.typer= 39;
    scr_blcon(xxx + 90, yyy - 20, 0);
    cn= 163;
}
if(cn == 163 && !instance_exists(OBJ_WRITER )) {
    mfo= instance_create(0, 0, obj_musfadeout );
    cn= 164;
    alarm[4]= 20;
}
if(cn == 165 && !instance_exists(OBJ_WRITER )) {
    if(choice == 0) {
        global.msg[0]= "\\\\F6.../";
        global.msg[1]= "Uhh^1, thanks for&taking care of&Alphys./";
        global.msg[2]= "\\\\F9I didn\\'t get to&say what I wanted&to^1, but.../";
        global.msg[3]= "\\\\F0Things seem like&they\\'re going to get&better for her./";
        global.msg[4]= "\\\\F6Well^1, I gotta go&catch up with&them!/";
        global.msg[5]= "Later!/%%";
    } else  {
        global.msg[0]= "\\\\F3.../";
        global.msg[1]= "\\\\F5... no^1, I can&survive this.../";
        global.msg[2]= "\\\\F3I have to be strong./";
        global.msg[3]= "\\\\F9For Alphys./";
        global.msg[4]= "\\\\F0Thank you^1, human^1,&for telling me&the truth./";
        global.msg[5]= "\\\\F9I\\'ll try my best to&live in this&world.../";
        global.msg[6]= "\\\\F0See you later!/%%";
    }
    global.typer= 39;
    scr_blcon(xxx + 90, yyy - 20, 0);
    cn= 166;
}
if(cn == 166 && !instance_exists(OBJ_WRITER )) {
    und.hspeed= 20;
    cn= 167;
    alarm[4]= 30;
}
if(cn == 168) {
    instance_create(0, 0, obj_unfader );
    cn= 169;
    alarm[4]= 12;
}
if(cn == 170) {
    ini_open("undertale.ini");
    adhd= ini_read_real("Alphys", "AD", 0);
    ini_write_real("Alphys", "AD", adhd + 1);
    ini_close();
    instance_create(0, 0, obj_persistentfader );
    global.flag[492]= 0;
    global.flag[493]= 10;
    room_goto(113);
}
if(instance_exists(obj_blconwideslave )) scr_textskip();
if(cn == 999 && !instance_exists(OBJ_WRITER )) {
    if(instance_exists(blcon)) {
        with(blcon) instance_destroy();
    }
    blcon= instance_create(x + 145, y + 22, obj_blconwdflowey );
    global.typer= 22;
    if(joke == 1)
        global.msg[0]= "\\\\E0WOWIE!!^1!&I FEEL SO&INFORMED!!!/";
    else  global.msg[0]= " %";
    global.msg[1]= "I THINK WE\\'RE&READY FOR STEP&TWO!!!/";
    global.msg[2]= "\\\\F4 \\\\E8 %";
    global.msg[3]= "" + chr(ord("\"")) + "STEP TWO..^1.&ASK THEM&";
    if(global.flag[66] == 1) global.msg[3]+= "ON A DATE." + chr(ord("\"")) + "/";
    else  global.msg[3]+= "TO HANG OUT." + chr(ord("\"")) + "/";
    global.msg[4]= "\\\\E0A\\\\F0HEM!/";
    global.msg[5]= "\\\\E1HUMAN^1!&I^1, THE GREAT&PAPYRUS.../";
    if(global.flag[66] == 1)
        global.msg[6]= "WILL GO ON&A DATE WITH&YOU!!!/*";
    else  global.msg[6]= "WILL HANG OUT&WITH YOU!!!/*";
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
    cn= 100;
}
if(cn == 100 && !instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 6 && OBJ_WRITER.halt != 0) {
    choice= 0;
    choicer= 1;
    global.typer= 1;
    global.msg[0]= "                              &   Yes             No       &                            ";
    iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_INSTAWRITER );
    with(iii) halt= 0;
    cn= 101;
}
if(cn == 102 && choicer == 2) {
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) instance_destroy();
    }
    cn= 103;
    choicer= 0;
    alarm[4]= 10;
}
if(cn == 104) {
    blcon= instance_create(x + 145, y + 22, obj_blconwdflowey );
    global.typer= 22;
    if(choice == 0) {
        global.faceemotion= 9;
        global.facechoice= 3;
        global.msg[0]= "R-REALLY??^1?&WOWIE!!!/";
    } else  {
        global.faceemotion= 0;
        global.facechoice= 4;
        global.msg[0]= "FORTUNATELY^1, IT&ONLY SAYS TO&ASK!!!/";
    }
    global.msg[1]= "\\\\E0I GUESS THAT&MEANS IT\\'S&TIME FOR PART&THREE!!!/";
    global.msg[2]= "\\\\F4 \\\\E8 %";
    global.msg[3]= "" + chr(ord("\"")) + "STEP THREE..^1.&PUT ON NICE&CLOTHES TO&SHOW YOU CARE!" + chr(ord("\"")) + "/";
    global.msg[4]= "\\\\E3.../%%";
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_WRITER );
    cn= 105;
}


/*  */
