sm= 0;
gg= floor(random(3));
mycommand= round(random(100));
global.msg[0]= "del";
global.msg[1]= "%%%";
yoff= 0;
if(hit_try > hit_reached) {
    if(hit_try == 1) {
        global.faceemotion= 3;
        global.flag[20]= 1;
        global.msg[0]= "what^1?&you think i\\'m just&gonna stand there&and take it?/%%";
    }
    if(hit_try == 2) {
        global.msg[0]= "our reports showed&a massive anomaly&in the timespace&continuum./";
        global.msg[1]= "timelines jumping&left and right,&stopping and&starting.../%%";
    }
    if(hit_try == 3)
        global.msg[0]= "\\\\E4until suddenly^1,&everything ends./%%";
    if(hit_try == 4) {
        global.msg[0]= "\\\\E4heh heh heh.../";
        global.msg[1]= "\\\\E5that\\'s your fault^1,&isn\\'t it?/%%";
    }
    if(hit_try == 5)
        global.msg[0]= "\\\\E1you can\\'t understand&how this feels./%%";
    if(hit_try == 6) {
        global.msg[0]= "\\\\E4knowing that one&day^1, without any&warning.../";
        global.msg[1]= "\\\\E9it\\'s all going to&be reset./%%";
    }
    if(hit_try == 7) {
        global.flag[20]= 1;
        global.msg[0]= "\\\\E9look^1.&i gave up trying&to go back a long&time ago./%%";
    }
    if(hit_try == 8) {
        global.flag[20]= 1;
        global.msg[0]= "\\\\E4and getting to the&surface doesn\\'t&really appeal&anymore^1, either./%%";
    }
    if(hit_try == 9) {
        global.flag[20]= 1;
        global.msg[0]= "\\\\E4cause even if we&do.../";
        global.msg[1]= "\\\\E5we\\'ll just end up&right back here^1,&without any memory&of it^1, right?/%%";
    }
    if(hit_try == 10) {
        global.flag[20]= 1;
        global.msg[0]= "\\\\E1to be blunt.../";
        global.msg[1]= "\\\\E4it makes it kind&of hard to give&it my all./%%";
    }
    if(hit_try == 11) {
        global.flag[20]= 1;
        global.msg[0]= "\\\\E1... or is that just&a poor excuse for&being lazy...?/";
        global.msg[1]= "\\\\E3hell if i know./%%";
    }
    if(hit_try == 12) {
        global.flag[20]= 1;
        global.msg[0]= "\\\\E4all i know is..^1.&seeing what comes&next.../";
        global.msg[1]= "\\\\E9i can\\'t afford not&to care anymore./%%";
    }
    if(hit_try == 13) {
        global.flag[20]= 0;
        with(mypart1) sweat= 2;
        caster_pause(global.batmusic);
        drama= 1;
        obj_heart.speed= 0;
        ini_open("undertale.ini");
        SS= ini_read_real("Sans", "SS", 0);
        MP= ini_read_real("Sans", "MP", 0);
        ini_write_real("Sans", "MP", MP + 1);
        ini_close();
        global.msg[0]= "\\\\E9ugh..^1.&that being said.../";
        global.msg[1]= "\\\\E1you^1, uh^1, really&like swinging that&thing around^1,&huh?/";
        global.msg[2]= "\\\\E0.../";
        global.msg[3]= "\\\\E4listen./";
        global.msg[4]= "i know you didn\\'t&answer me before^1,&but.../";
        global.msg[5]= "\\\\E4somewhere in&there^1.&i can feel it./";
        global.msg[6]= "\\\\E0there\\'s a glimmer&of a good person&inside of you./";
        global.msg[7]= "\\\\E4the memory of&someone who once&wanted to do the&right thing./";
        global.msg[8]= "\\\\E1someone who^1, in&another time^1,&might have even&been.../";
        global.msg[9]= "\\\\E4a friend?/";
        global.msg[10]= "\\\\E3c\\'mon^1, buddy./";
        global.msg[11]= "\\\\E0do you remember&me?/";
        global.msg[12]= "\\\\E4please^1, if you\\'re&listening.../";
        global.msg[13]= "\\\\E9let\\'s forget all&this^1, ok?/";
        global.msg[14]= "\\\\E3just lay down&your weapon^1, and.../";
        global.msg[15]= "\\\\E4well^1, my job&will be a lot&easier./%%";
        if(SS > 0) {
            global.msg[0]= "\\\\E9ugh..^1.&that being said.../";
            global.msg[1]= "\\\\E1you^1, uh^1, really&like swinging that&thing around^1,&huh?/";
            global.msg[2]= "\\\\E0.../";
            global.msg[3]= "\\\\E4listen./";
            global.msg[4]= "friendship.../";
            global.msg[5]= "\\\\E3it\\'s really great^1,&right?/";
            global.msg[6]= "let\\'s quit fighting./%%";
        }
        mercymod= 999999;
    }
    if(hit_try == 14) {
        ini_open("undertale.ini");
        SS= ini_read_real("Sans", "SS", 0);
        SS2= ini_read_real("Sans", "SS2", 0);
        if(SS > 0) ini_write_real("Sans", "SS2", SS2 + 1);
        ini_close();
        if(drama == 2) caster_free(d_music);
        global.flag[20]= 1;
        global.msg[0]= "\\\\E3welp^1, it was&worth a shot./";
        global.msg[1]= "\\\\E5guess you like&doing things the&hard way^1, huh?/%%";
        if(SS > 0 && SS2 == 0) {
            global.msg[0]= "\\\\E3woah^1, you look&REALLY pissed off.../";
            global.msg[1]= "\\\\E4heheheh.../";
            global.msg[2]= "\\\\E5did i getcha?/";
            global.msg[3]= "\\\\E4well^1, if you came&back anyway.../";
            global.msg[4]= "\\\\E1i guess that means&we never really&WERE friends^1, huh?/";
            global.msg[5]= "\\\\E4heh./";
            global.msg[6]= "\\\\E9don\\'t tell that&to the other&sans-es^1, ok?/%%";
        }
        mercymod= 999999;
    }
    if(hit_try == 15) {
        global.msg[0]= "\\\\E4sounds strange^1, but&before all this i&was secretly hoping&we could be friends./";
        global.msg[1]= "\\\\E1i always thought the&anomaly was doing&this cause they&were unhappy./";
        global.msg[2]= "and when they got&what they wanted^1,&they would stop&all this./%%";
    }
    if(hit_try == 16) {
        global.msg[0]= "\\\\E3and maybe all they&needed was..^1.&i dunno./";
        global.msg[1]= "\\\\M1some good food^1,&some bad laughs^1,&some nice friends./%%";
    }
    if(hit_try == 17) {
        global.msg[0]= "\\\\E4but that\\'s&ridiculous^1,&right?/";
        global.msg[1]= "\\\\E5yeah^1, you\\'re the&type of person&who won\\'t EVER&be happy./%%";
    }
    if(hit_try == 18) {
        global.msg[0]= "\\\\E5you\\'ll keep&consuming timelines&over and over^1,&until.../";
        global.msg[1]= "\\\\E4well./";
        global.msg[2]= "\\\\M1hey./";
        global.msg[3]= "\\\\E3take it from me^1,&kid./";
        global.msg[4]= "someday.../";
        global.msg[5]= "you gotta learn&when to QUIT./%%";
    }
    if(hit_try == 19) global.msg[0]= "\\\\E3and that day\\'s&TODAY./%%";
    if(hit_try == 20) {
        with(mypart1) sweat= 1;
        global.msg[0]= "\\\\E4cause..^1.&y\\'see../";
        global.msg[1]= "\\\\E1all this fighting&is really tiring&me out./%%";
    }
    if(hit_try == 21) {
        with(mypart1) sweat= 1;
        global.msg[0]= "\\\\E4and if you keep&pushing me.../";
        global.msg[1]= "\\\\Xt\\\\E3hen i\\'ll be&forced to use my\\\\R &special attack\\\\X./%%";
    }
    if(hit_try == 22) {
        with(mypart1) sweat= 2;
        global.msg[0]= "\\\\Xy\\\\E3eah^1, my \\\\Rspecial&attack\\\\X.&sound familiar?/";
        global.msg[1]= "\\\\Xw\\\\E1ell^1, get ready^1.&cause after the&next move^1, i\\'m&going to \\\\Ruse it\\\\X./";
        global.msg[2]= "\\\\E3so^1, if you don\\'t&wanna see it^1, now&would be a good&time to die./%%";
    }
    if(hit_try == 23) {
        with(mypart1) sweat= 0;
        global.msg[0]= "\\\\E4well^1, here goes&nothing.../";
        global.msg[1]= "\\\\E3are you ready?/";
        global.msg[2]= "\\\\Xs\\\\E5urvive THIS^1, and&i\\'ll show you my\\\\R &special attack\\\\X!/%%";
    }
    hit_reached= hit_try;
}
if(mercy_death == 1) {
    global.flag[272]= 1;
    caster_free(-3);
    global.flag[20]= 0;
    global.faceemotion= 4;
    global.msg[0]= ".../";
    global.msg[1]= "you\\'re sparing me?/";
    global.msg[2]= "\\\\E1finally./";
    global.msg[3]= "\\\\E3buddy^1.&pal./";
    global.msg[4]= "\\\\E4i know how hard&it must be.../";
    global.msg[5]= "to make that&choice./";
    global.msg[6]= "to go back on&everything you\\'ve&worked up to./";
    global.msg[7]= "\\\\E0i want you to&know..^1.&i won\\'t let it&go to waste./";
    global.msg[8]= "\\\\M1.../";
    global.msg[9]= "\\\\E3c\\'mere^1, pal./%%";
    ini_open("undertale.ini");
    SS= ini_read_real("Sans", "SS", 0);
    ini_write_real("Sans", "SS", SS + 1);
    ini_close();
}
global.typer= 109;
global.border= 35;
a_choose= 0;
if(hit_try < 13) {
    global.flag[271]= 1;
    a_choose= part;
    if(part >= 13) a_choose= 10;
    if(a_choose == 0) global.border= 35;
    if(a_choose == 1) global.border= 35;
    if(a_choose == 2) global.border= 35;
    if(a_choose == 3) global.border= 35;
    if(a_choose == 4) global.border= 35;
    if(a_choose == 5) global.border= 35;
    if(a_choose == 6) global.border= 39;
    if(a_choose == 7) global.border= 35;
    if(a_choose == 8) global.border= 39;
    if(a_choose == 9) global.border= 35;
    if(a_choose == 10) global.border= 35;
    if(a_choose == 11) global.border= 35;
    if(a_choose == 12) global.border= 35;
    obj_heart.movement= 2;
    obj_heart.sprite_index= spr_heartblue ;
}
if(hit_try >= 14 && hit_try < 23 && nx == 1) {
    obj_heart.movement= 1;
    obj_heart.sprite_index= spr_heart ;
    c_choose= 0;
    if(part == 0) global.border= 37;
    if(part == 1) global.border= 0;
    if(part == 2) global.border= 36;
    if(part == 3) global.border= 36;
    if(part == 4) global.border= 37;
    if(part == 5) global.border= 36;
    if(part == 6) global.border= 0;
    if(part == 7) global.border= 36;
    if(part >= 8) c_choose= choose(3, 1, 2);
    if(c_choose == 3) global.border= 37;
    if(c_choose == 1 || c_choose == 2) global.border= 36;
}
if(hit_try == 23) {
    global.border= 36;
    obj_heart.movement= 1;
    obj_heart.sprite_index= spr_heart ;
}
if(mercy_death == 1) {
    global.border= 38;
    SCR_BORDERSETUP();
    obj_heart.speed= 0;
}
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2);
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;
if(obj_heart.movement == 2) {
    // obj_heart
    with(743) {
        y= global.idealborder[3] - 15;
        speed= 0;
        jumpstage= 1;
    }
}
if(global.border == 39) obj_heart.y= global.idealborder[3] - 70;
if(mercy_death == 1) {
    obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
    obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;
    obj_heart.sprite_index= spr_heart ;
    obj_heart.movement= 1;
}
// obj_menubone
with(505) terminate= 1;
// obj_menubone_bottom
with(504) terminate= 1;
// obj_menubone_maker
with(510) instance_destroy();
SCR_BORDERSETUP();
yoff= 250 - global.idealborder[2];
if(yoff < 0) yoff= 0;
if(sm == 1)
    blcon= instance_create(x + 120, y - yoff, obj_blconsm );
else  blcon= instance_create(x + 120, y - yoff, obj_blconwdflowey );
blconwd= instance_create(blcon.x + 30, blcon.y + 10, OBJ_NOMSCWRITER );
if(global.msg[0] == "del") {
    with(blconwd) instance_destroy();
    with(blcon) instance_destroy();
}

/* */
/*  */
