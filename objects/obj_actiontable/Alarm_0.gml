myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
if(instance_exists(obj_papyrusparent )) {
    scr_papface(0, 0);
    global.msg[1]= "AH^1, YES^1, ACTION&FIGURES./";
    global.msg[2]= "A GREAT REFERENCE&FOR THEORETICAL&BATTLE SCENARIOS./";
    global.msg[3]= "\\\\E3HOW DO I HAVE&SO MANY?/";
    global.msg[4]= "\\\\E2WELL^1, LET\\'S JUST&SAY THEY\\'RE&FROM.../";
    global.msg[5]= "\\\\E0A CHUBBY^1, SMILING&MAN WHO LOVES TO&SURPRISE PEOPLE./";
    global.msg[6]= "YEAH^1!!&THAT\\'S RIGHT!/";
    global.msg[7]= "SANTA!!!!/%%";
    if(read > 0)
        global.msg[0]= "* (Action figures of many&  sexy robots.)/%%";
} else  global.msg[0]= "* (Action figures of many&  sexy robots.)/%%";
read++;
mydialoguer= instance_create(0, 0, obj_dialoguer );


/*  */
