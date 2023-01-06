myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* No matter where I go^1,&  it\\'s the same menu^1, the&  same people.../";
global.msg[1]= "* Help^1!&* I want new drinks an\\'&  ^1h-^1h-^1h-hot guys!!!!/%%";
if(talkedto > 0)
    global.msg[0]= "* I guess the bartender\\'s kind&  of ^1h-^1h-^1h-hot.../%%";
if(global.plot >= 122) {
    global.msg[0]= "* C\\'mon everybody!!^1!&* ^1L-^1l-^1l-let\\'s party!!!/";
    global.msg[1]= "* ... anyone?/%%";
}
if(sansmode == 1) {
    global.msg[0]= "* Sansyyyy..^1.&* Come back and sit with me.../";
    global.msg[1]= "* Everything\\'s so fun when&  you\\'re around!!!/%%";
}
if(scr_deaddog()) {
    global.msg[0]= "* It\\'s s-s-so quiet in here./";
    global.msg[1]= "* L-lighten up everybody^1!&* This is why I hate&  th-this place./%%";
}
if(global.flag[7] == 1) {
    global.msg[0]= "* I w-wonder if the&  o-overworld h-has h-hot&  guys.../";
    global.msg[1]= "*  A-and neat d-drinks.../";
    global.msg[2]= "* Ooooooo^1, I\\'m ready!/%%";
}
if(global.flag[67] == 1) {
    global.msg[0]= "* H-hey^1, isn\\'t Sansy s\\'posed&  to come swinging in right&  about now???/";
    global.msg[1]= "* C\\'mon Sansy^1!&* You\\'re the life of the&  party.../%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
