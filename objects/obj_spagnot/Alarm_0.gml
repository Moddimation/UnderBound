myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* It\\'s a note from Papyrus.../";
global.msg[1]= "\\\\TP %";
global.msg[2]= "HUMAN!^1!&PLEASE ENJOY THIS&SPAGHETTI./";
global.msg[3]= "(LITTLE DO YOU KNOW^1,&THIS SPAGHETTI IS&A TRAP...)/";
global.msg[4]= "(DESIGNED TO ENTICE&YOU!!!)/";
global.msg[5]= "(YOU\\'LL BE SO BUSY&EATING IT...)/";
global.msg[6]= "(THAT YOU WON\\'T&REALIZE THAT YOU&AREN\\'T PROGRESSING!!)/";
global.msg[7]= "(THOROUGHLY JAPED&AGAIN BY THE GREAT&PAPYRUS!!!)/";
global.msg[8]= " &      NYEH-HEH-HEH^1,&         PAPYRUS/%%";
if(global.flag[7] == 1) {
    global.msg[0]= "* It\\'s a note from Papyrus.../";
    global.msg[1]= "\\\\TP %";
    global.msg[2]= "SEEING AS THIS&SPAGHETTI IS STILL&HERE SOMEHOW.../";
    global.msg[3]= "I HEREBY DONATE IT&TO THE PUBLIC./";
    global.msg[4]= "IT\\'S LIKE A&PLAYGROUND FOR&YOUR MOUTH!/";
    global.msg[5]= " &      NYEH-HEH-HEH^1,&         PAPYRUS/%%";
}
if(room == 60)
    global.msg[0]= "* It\\'s illegible chicken-&  scratch./%%";
if(room == 75) {
    if(global.flag[67] == 0)
        global.msg[0]= "WHAT!^1?&THAT\\'S IMPOSSIBLE./%%";
    if(global.flag[67] == -1) {
        global.msg[2]= "SORRY^1, I HAVE TO LOCK&YOU IN THE GUEST ROOM&UNTIL UNDYNE ARRIVES./";
        global.msg[3]= "FEEL FREE TO MAKE&YOURSELF AT HOME!!!/";
        global.msg[4]= "REFRESHMENTS AND&ACCOMODATIONS HAVE&BEEN PROVIDED./";
        global.msg[5]= " & - NYEHFULLY YOURS^1,&        PAPYRUS/%%";
    }
    if(global.flag[67] == -2) {
        global.msg[2]= "PLEASE ASK BEFORE&YOU ESCAPE!!!/";
        global.msg[3]= "WHEN YOU WENT&MISSING I GOT&WORRIED SICK!!!/";
        global.msg[4]= "  - SLIGHTLY&  BONETROUSLED^1,&  PAPYRUS/%%";
    }
    if(global.flag[67] == -3) {
        global.msg[2]= "IF YOU\\'RE JUST&LOOKING FOR A&PLACE TO STAY.../";
        global.msg[3]= "JUST ASK!!^1!&YOU DON\\'T NEED&TO FIGHT ME!!!/";
        global.msg[4]= " & - YOUR HOST^1,&   PAPYRUS/%%";
    }
}
if(room == 49) {
    global.msg[0]= "* (This note is written&  very oddly^1, as if the paper was&  moving while it was written.)/";
    global.msg[1]= "* (It says...^1)&* (Out to lunch...?)/%%";
}
if(room == 152 || room == 150)
    global.msg[0]= "* (Shoot the opposing ship!^1)&* (Move the boxes to complete&  your mission.)/%%";
if(room == 173 || room == 175)
    global.msg[0]= "* (Shoot the opposing ship!^1)&* (You have just one shot.)/%%";
if(room == 182) {
    global.msg[0]= "* (Hey^1!)/";
    global.msg[1]= "* (Go up the creepy alleyway&  on the right for some&  great deals!)/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );

/* */
/*  */
