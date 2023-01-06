if(global.flag[501] != 3) {
    blcon= instance_create(x + 100, y, obj_blconsm );
    gg= floor(random(3));
    mycommand= round(random(100));
    global.msg[0]= "";
    if(mycommand < 75) global.msg[0]= "";
    if(mycommand < 50) global.msg[0]= "";
    if(mycommand < 25) global.msg[0]= "";
    if(whatiheard == 1) global.msg[0]= "";
    if(whatiheard == 3) global.msg[0]= "";
    if(whatiheard == 4) global.msg[0]= "";
    global.msg[1]= "%%%";
    global.typer= 2;
    blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_NOMSCWRITER );
    with(blcon) instance_destroy();
    with(blconwd) instance_destroy();
    global.border= 17;
    obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
    obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;
}
if(global.flag[501] == 0) {
    blcon= instance_create(400, 50, obj_blconwdflowey );
    global.msc= 0;
    global.typer= 86;
    if(global.tempvalue[12] == 0 || global.tempvalue[12] == 1)
        global.msg[0]= "Urah ha ha ha...&Behold my TRUE power!/%%";
    if(global.tempvalue[12] == 2) {
        global.msg[0]= "I can feel it.../";
        global.msg[1]= "Every time you die^1,&your grip on this&world slips away./";
        global.msg[2]= "Every time you die^1,&your friends forget&you a little more./";
        global.msg[3]= "Your life will end&here^1, in a world&where no one&remembers you.../%%";
    }
    if(global.tempvalue[12] == 3) {
        global.msg[0]= "Still^1, you\\'re&hanging on...?/";
        global.msg[1]= "That\\'s fine./";
        global.msg[2]= "In a few moments^1,&you\\'ll forget&everything^1, too./";
        global.msg[3]= "That attitude will&serve you well in&your next life!/%%";
    }
    if(global.tempvalue[12] == 4) {
        global.msg[0]= "Ura ha ha.../";
        global.msg[1]= "Still!?/";
        global.msg[2]= "Come on.../";
        global.msg[3]= "Show me what good&your DETERMINATION&is now!/%%";
    }
    if(global.tempvalue[12] >= 5) global.msg[0]= "Ultimate bepis/%%";
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_NOMSCWRITER );
    blcon.depth= -2000;
    blconwd.depth= -2200;
    global.border= 17;
    obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
    obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;
}
if(global.flag[501] == 3) {
    blcon= instance_create(400, 50, obj_blconwdflowey );
    global.msc= 0;
    global.typer= 86;
    if(turns == 0) {
        global.msg[0]= "\\\\E1Wh..^1.&what did you do...?/";
        global.msg[1]= "\\\\E3What\\'s this&feeling...^1?&What\\'s happening&to me?/";
        global.msg[2]= "\\\\E2No^1! NO^1!&I don\\'t need&ANYONE!/%%";
    }
    if(turns == 1) {
        global.msg[0]= "\\\\E6STOP IT^1!&Get away from me!/";
        global.msg[1]= "Do you hear me!?/";
        global.msg[2]= "\\\\E2I\\'ll tear you&apart!/%%";
    }
    if(turns == 2) {
        global.msg[0]= "\\\\E3.../";
        global.msg[1]= "\\\\E3.../";
        global.msg[2]= global.charname + "..^1.&Do you know why&I\\'m doing this...?/";
        global.msg[3]= "Why I keep fighting&to keep you&around...?/%%";
    }
    if(turns == 3) {
        global.msg[0]= "\\\\E4I\\'m doing this.../";
        global.msg[1]= "\\\\E6Because you\\'re&special^1, " + global.charname + "./";
        global.msg[2]= "You\\'re the only one&that understands&me./";
        global.msg[3]= "You\\'re the only one&who\\'s any fun to&play with anymore./%%";
    }
    if(turns == 4) {
        global.msg[0]= "\\\\E4.../";
        global.msg[1]= "No.../";
        global.msg[2]= "\\\\E1That\\'s not JUST&it./";
        global.msg[3]= "I..^1. I.../";
        global.msg[4]= "\\\\E4I\\'m doing this&because I care&about you^1, " + global.charname + "!/";
        global.msg[5]= "\\\\E4I care about you&more than anybody&else!/%%";
    }
    if(turns == 5) {
        global.msg[0]= "\\\\E4I\\'m not ready for&this to end./";
        global.msg[1]= "I\\'m not ready for&you to leave./";
        global.msg[2]= "I\\'m not ready to&say goodbye to&someone like&you again.../%%";
    }
    if(turns == 6) {
        global.typer= 88;
        mypart1.cry= 1;
        global.msg[0]= "\\\\E7So, please..^1.&STOP doing this.../";
        global.msg[1]= "AND JUST LET ME&WIN!!!/%%";
    }
    if(turns == 7) {
        with(mypart1) bodyfader+= 0.2;
        // obj_asrielpanels
        with(566) event_user(0);
        global.typer= 87;
        global.msg[0]= "\\\\E5.../";
        global.msg[1]= global.charname + ".../%%";
    }
    if(turns == 8) {
        with(mypart1) bodyfader+= 0.2;
        // obj_asrielpanels
        with(566) event_user(0);
        global.typer= 87;
        global.msg[0]= "\\\\E5I\\'m so alone^1,&" + global.charname + ".../%%";
    }
    if(turns == 9) {
        with(mypart1) bodyfader+= 0.2;
        // obj_asrielpanels
        with(566) event_user(0);
        global.typer= 87;
        global.msg[0]= "\\\\E5I\\'m so afraid^1,&" + global.charname + ".../%%";
    }
    if(turns == 10) {
        with(mypart1) bodyfader+= 0.2;
        // obj_asrielpanels
        with(566) event_user(0);
        global.typer= 87;
        global.msg[0]= global.charname + "^1, I.../%%";
    }
    if(turns == 11) {
        with(mypart1) bodyfader+= 0.2;
        // obj_asrielpanels
        with(566) event_user(0);
        global.typer= 87;
        global.msg[0]= "I...";
        endcon= 1;
    }
    blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_NOMSCWRITER );
    blcon.depth= -2000;
    blconwd.depth= -2200;
    global.border= 17;
    if(turns == 6) global.border= 4;
    obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
    obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;
}


/*  */
