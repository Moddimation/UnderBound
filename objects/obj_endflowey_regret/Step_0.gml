if(con == 1) {
    global.msc= 0;
    global.typer= 68;
    global.msg[0]= "Hi./%%";
    instance_create(60, 60, OBJ_WRITER );
    con= 1.1;
}
if(con == 1.1 && !instance_exists(OBJ_WRITER )) {
    con= 0.9;
    alarm[4]= 60;
}
if(con == 1.9) {
    global.msc= 0;
    global.typer= 68;
    global.msg[0]= "Seems as if everyone&is perfectly happy./";
    global.msg[1]= "Monsters have returned&to the surface./";
    global.msg[2]= "Peace and prosperity&will rule across the land./";
    global.msg[3]= "\\\\E6Take a deep breath./";
    global.msg[4]= "\\\\E5There\\'s nothing left&to worry about./%%";
    instance_create(60, 60, OBJ_WRITER );
    con= 0.2;
}
if(con == 0.2 && !instance_exists(OBJ_WRITER )) {
    con= 1.2;
    alarm[4]= 70;
}
if(con == 2.2) {
    global.msc= 0;
    global.typer= 68;
    global.msg[0]= "\\\\E7.../";
    global.msg[1]= "\\\\E6Well./";
    global.msg[2]= "\\\\E1There is one thing./";
    global.msg[3]= "\\\\E3One last threat./";
    global.msg[4]= "One being with the&power to erase&EVERYTHING.../";
    global.msg[5]= "\\\\E1Everything everyone\\'s&worked so hard for./";
    global.msg[6]= "\\\\E7.../";
    global.msg[7]= "\\\\E6You know who I\\'m&talking about^1, don\\'t&you?/";
    global.msg[8]= "\\\\E1That\\'s right./";
    global.msg[9]= "\\\\E4I\\'m talking about YOU./";
    global.msg[10]= "\\\\E7YOU still have the&power to reset&everything./";
    global.msg[11]= "\\\\E0Toriel^1, Sans^1, Asgore^1,&Alphys, Papyrus, Undyne.../";
    global.msg[12]= "If you so choose.../";
    global.msg[13]= "Everyone will be&ripped from this&timeline.../";
    global.msg[14]= "... and sent back before&all of this&ever happened./";
    global.msg[15]= "\\\\E6Nobody will&remember anything./";
    global.msg[16]= "\\\\E5You\\'ll be able to&do whatever you&want./";
    global.msg[17]= "\\\\E0.../";
    global.msg[18]= "\\\\E7That power./";
    global.msg[19]= "\\\\E3I know that power./";
    global.msg[20]= "\\\\E6That\\'s the power&you were fighting to&stop^1, wasn\\'t it?/";
    global.msg[21]= "\\\\E7The power that I&wanted to use./";
    global.msg[22]= "\\\\E6But now^1, the idea&of resetting&everything.../";
    global.msg[23]= "\\\\E7I.../";
    global.msg[24]= "\\\\E1I don\\'t think I&could do it all&again./";
    global.msg[25]= "Not after that./";
    global.msg[26]= "\\\\E7.../";
    global.msg[27]= "\\\\E1So, please./";
    global.msg[28]= "\\\\E3Just let them go./";
    global.msg[29]= "Let Frisk be happy./";
    global.msg[30]= "Let Frisk live&their life./%%";
    instance_create(60, 60, OBJ_WRITER );
    con= 0.3;
}
if(con == 0.3 && !instance_exists(OBJ_WRITER )) {
    con= 1.3;
    alarm[4]= 70;
}
if(con == 2.3) {
    global.msc= 0;
    global.typer= 68;
    global.msg[0]= "\\\\E1.../";
    global.msg[1]= "\\\\E3But./";
    global.msg[2]= "If I can\\'t change&your mind./";
    global.msg[3]= "If you DO end up&erasing everything.../";
    global.msg[4]= "\\\\E7.../";
    global.msg[5]= "\\\\E6You have to erase&my memories^1, too./";
    global.msg[6]= "\\\\E7.../";
    global.msg[7]= "\\\\E6I\\'m sorry./";
    global.msg[8]= "\\\\E5You\\'ve probably heard&this a hundred times&already^1, haven\\'t you...?/";
    global.msg[9]= ".../";
    global.msg[10]= "\\\\E0Well^1, that\\'s all./";
    global.msg[11]= "\\\\E6See you later.../";
    global.msg[12]= "\\\\E4" + chara + "./%%";
    instance_create(60, 60, OBJ_WRITER );
    con= 2;
}
if(con == 2 && !instance_exists(OBJ_WRITER )) {
    flowey= 3;
    con= 3;
    alarm[4]= 200;
}
if(con == 4) {
    ini_open("undertale.ini");
    ini_write_real("EndF", "EndF", 2);
    ini_close();
    room_goto(323);
}


/*  */
