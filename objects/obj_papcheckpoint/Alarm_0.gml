myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* There\\'s some narration on this&  cardboard box./";
global.msg[1]= "\\\\TP %";
global.msg[2]= "YOU OBSERVE THE&WELL-CRAFTED&SENTRY STATION./";
global.msg[3]= "WHO COULD HAVE&BUILT THIS^1, YOU&PONDER.../";
global.msg[4]= "I BET IT WAS&THAT VERY FAMOUS&ROYAL GUARDSMAN!/";
global.msg[5]= "(NOTE: NOT YET A&VERY FAMOUS&ROYAL GUARDSMAN^1.)/%%";
if(global.flag[7] == 1) {
    global.msg[5]= "(NOTE: NOT YET A&VERY FAMOUS&ROYAL GUARDSMAN^1.)/";
    global.msg[6]= "(UPDATE: AM I A&ROYAL GUARDSMAN&YET???)/%%";
}
if(room == 60)
    global.msg[0]= "* These instructions&  are written in&  chicken scratch./%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );

/* */
/*  */
