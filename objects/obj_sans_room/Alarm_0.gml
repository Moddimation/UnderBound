myinteract= 3;
global.msc= 0;
global.typer= 17;
global.facechoice= 3;
global.faceemotion= 0;
if(room == 50) {
    global.msg[0]= "* hey^1, here\\'s something&  important to remember./";
    global.msg[1]= "\\\\W* my brother has a very&  \\\\Bspecial attack\\\\W./";
    global.msg[2]= "\\\\W* if you see a \\\\Lblue&  attack\\\\W,^1 don\\'t move and&  it won\\'t hurt you./";
    global.msg[3]= "* here\\'s an easy way to&  keep it in mind./";
    global.msg[4]= "\\\\W* imagine a stop sign^1.&* when you see a stop&  sign^1, you \\\\Rstop^1,\\\\W right?/";
    global.msg[5]= "\\\\W* stop signs are \\\\Rred\\\\W.&* so imagine a \\\\Lblue\\\\W stop&  sign instead./";
    global.msg[6]= "\\\\W* simple^1, right^1?&* when fighting^1, think&  about \\\\Yblue stop signs\\\\W./%%";
    if(talkedto > 0)
        global.msg[0]= "* remember..^1.&* blue stop signs./%%";
}
if(room == 52) {
    global.msg[0]= "* hey^1, thanks..^1.&* my brother seems like&  he\\'s having fun./";
    global.msg[1]= "* by the way^1, did you&  see that weird outfit&  he\\'s wearing?/";
    global.msg[2]= "* we made that a few&  weeks ago for a costume&  party./";
    global.msg[3]= "* he hasn\\'t worn anything&  else since.../";
    global.msg[4]= "* keeps calling it his&  " + chr(ord("\"")) + "battle body." + chr(ord("\"")) + "/";
    global.msg[5]= "* man./";
    global.msg[6]= "\\\\E1* isn\\'t my brother cool?/%%";
    if(scr_murderlv() >= 3 && global.flag[27] == 0)
        global.msg[0]= "* it would make my&  brother happy if you&  played along./%%";
}
if(room == 53) global.msc= 235;
if(room == 55) {
    if(global.flag[58] == 0) {
        global.msg[0]= "* thanks for saying&  " + chr(ord("\"")) + "junior jumble" + chr(ord("\"")) + " just&  to appease my brother./";
        global.msg[1]= "\\\\E1* yesterday he got&  stumped trying to&  " + chr(ord("\"")) + "solve" + chr(ord("\"")) + " the horoscope./%%";
    } else  {
        global.msg[0]= "* papyrus..^1.&* ... finds difficulty in&  interesting places./";
        global.msg[1]= "\\\\E1* yesterday he got&  stumped trying to&  " + chr(ord("\"")) + "solve" + chr(ord("\"")) + " the horoscope./%%";
    }
    if(scr_murderlv() >= 3) {
        if(global.flag[254] == 0) {
            global.msg[0]= "* guess you don\\'t like&  word searches^1, huh?/";
            global.msg[1]= "\\\\E2* me neither^1.&* i\\'m more of a funny&  pages kind of guy./";
            global.msg[2]= "\\\\E0* .../";
            global.msg[3]= "\\\\E1* .../%%";
        } else  {
            global.msg[0]= "\\\\E1* i guess despite all&  that^1, you still like&  word searches^1, huh...?/";
            global.msg[1]= "\\\\E0* that means you can\\'t&  be all bad./%%";
        }
    }
}
if(room == 60) {
    global.msg[0]= "* actually^1, that spaghetti&  from earlier..^1./";
    global.msg[1]= "* it wasn\\'t too bad for&  my brother./";
    global.msg[2]= "* since he started cooking&  lessons^1, he\\'s been&  improving a lot./";
    global.msg[3]= "\\\\E1* i bet if he keeps it&  up^1, next year he\\'ll even&  make something edible./%%";
    if(scr_murderlv() >= 4)
        global.msg[0]= "* hey..^1.&* puzzles might be fun^1.&* if you tried them./%%";
}
if(room == 59) {
    ini_open("undertale.ini");
    M1= ini_read_real("Sans", "M1", 0);
    ini_close();
    if(global.flag[63] >= 0) {
        global.msg[0]= "* good job on solving it&  so quickly^1./";
        global.msg[1]= "* you didn\\'t even need&  my help./";
        global.msg[2]= "* which is great^1, \\'cause&  i love doing absolutely&  nothing./%%";
    }
    if(global.flag[63] == 0 && M1 > 1) {
        global.msg[0]= "* ... you must be really&  good at puzzles^1,&  huh?/";
        global.msg[1]= "* i mean./";
        global.msg[2]= "* it\\'s impossible for&  you to have seen&  this one before./%%";
    }
    if(global.flag[63] > 5) {
        global.msg[0]= "* hey^1, why didn\\'t you&  ask for help?/";
        global.msg[1]= "\\\\E1* i was right here./%%";
    }
}
if(room == 64) {
    global.msg[0]= "* what\\'s up?/%%";
    if(obj_doublesans.talkedto > 0)
        global.msg[0]= "* you sure do like to&  exercise./%%";
}
if(room == 67) {
    ini_open("undertale.ini");
    PK= ini_read_real("Papyrus", "PK", 0);
    ini_close();
    global.msg[0]= "* i don\\'t know what my&  brother\\'s going to do&  now./";
    global.msg[1]= "\\\\W* if i were you^1, i would&  make sure i understand&  \\\\Bblue attacks\\\\W./%%";
    if(PK > 0) {
        global.msg[0]= "* here^1, i\\'ll give you some&  advice about fighting&  my brother./";
        global.msg[1]= "\\\\E1* don\\'t^1.&* capiche?/%%";
    }
    if(scr_murderlv() >= 5 && global.flag[27] == 0) {
        global.msg[0]= "\\\\E1* hmmm.../";
        global.msg[1]= "\\\\E2* guess we didn\\'t need&  your help to have a&  good time after all./";
        global.msg[2]= "\\\\E3* .../";
        global.msg[3]= "\\\\E2* say^1, i\\'ve been&  thinking./";
        global.msg[4]= "\\\\E1* seems like you\\'re&  gonna fight my brother&  pretty soon./";
        global.msg[5]= "\\\\E2* here\\'s some friendly&  advice./";
        global.msg[6]= "\\\\E3* if you keep going the&  way you are now.../";
        global.msg[7]= "* .../";
        global.msg[8]= "\\\\E4* you\\'re gonna have a&  bad time./%%";
        s_click= 1;
        // obj_mainchara
        with(1570) uncan= 1;
    }
}
if(room == 95) {
    if(global.flag[85] == 0) global.msc= 551;
    if(global.flag[85] == 1) {
        global.msc= 0;
        global.msg[0]= "\\\\E0* dang^1, i wish i brought&  a parasol./";
        global.msg[1]= "\\\\E1* i\\'m getting a nasty burn&  from all this sun./%%";
    }
}
if(room == 158) {
    instance_create(0, 0, obj_golddisplay );
    global.msc= 685;
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
obj_sans_room.talkedto++;

/* */
/*  */
