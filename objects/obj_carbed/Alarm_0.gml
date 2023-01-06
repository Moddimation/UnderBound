myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
if(instance_exists(obj_papyrusparent )) {
    scr_papface(0, 0);
    global.msg[1]= "THAT\\'S MY BED!/";
    global.msg[2]= "IF I EVER GET&TO THE SURFACE.../";
    global.msg[3]= "I\\'D LIKE TO&DRIVE DOWN A&LONG HIGHWAY./";
    global.msg[4]= "WIND IN MY&HAIR.../";
    global.msg[5]= "SUN ON MY&SKIN.../";
    global.msg[6]= "\\\\E3OF COURSE^1, THAT\\'S&JUST A DREAM./";
    global.msg[7]= "\\\\E0SO INSTEAD I&CRUISE WHILE I&SNOOZE./%%";
    if(read > 0) {
        global.msg[1]= "WHY ARE YOU SO&INTERESTED IN MY&BED?/";
        global.msg[2]= "\\\\E3ARE YOU TIRED?/%%";
    }
} else  global.msg[0]= "* (It\\'s a racecar bed^1, neatly&  made.)/%%";
read++;
mydialoguer= instance_create(0, 0, obj_dialoguer );


/*  */
