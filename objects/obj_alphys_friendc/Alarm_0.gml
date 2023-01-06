myinteract= 3;
global.msc= 0;
global.typer= 47;
global.facechoice= 6;
global.faceemotion= 0;
if(global.flag[196] == 0) global.msc= 808;
if(global.flag[196] == 1) {
    global.msg[0]= "\\\\E0* On second thought^1,&  maybe I WON\\'T write&  fanfic of real people./";
    global.msg[1]= "\\\\E7* I mean^1, isn\\'t real life&  already the greatest&  fanfiction of all?/";
    global.msg[2]= "\\\\E8* .../";
    global.msg[3]= "\\\\E3* Uh^1, don\\'t tell&  anyone I said that./";
    global.msg[4]= "\\\\E1* Cause I\\'m gonna&  post it online!/%%";
}
if(global.flag[196] == 2) {
    global.msg[0]= "\\\\E0* I sure am excited&  to finally use the&  human internet./";
    global.msg[1]= "\\\\E7* I bet they have all&  sorts of things Undyne&  and I can watch!/";
    scr_undface(2, 6);
    global.msg[3]= "\\\\E6* Oh man!!!/";
    global.msg[4]= "* We\\'re gonna be&  able to watch&  anime online!?/";
    scr_alface(5, 7);
    global.msg[6]= "\\\\E7* Of course^1, Undyne!/";
    global.msg[7]= "\\\\E2* What do you think&  we\\'ve been fighting&  for all along?/";
    scr_sansface(8, 2);
    global.msg[9]= "\\\\E2* yeah^1, what do you.../";
    global.msg[10]= "\\\\E1* whoops./";
    scr_alface(11, 1);
    global.msg[12]= "\\\\E1* Jinx^1!&* I knew you were&  gonna make that joke!/";
    scr_papface(13, 3);
    global.msg[14]= "\\\\E3WAIT^1, ALPHYS, I&DIDN\\'T KNOW YOU&KNEW SANS./";
    scr_alface(15, 5);
    global.msg[16]= "\\\\E5* Well..^1.&* I.../";
    scr_sansface(17, 2);
    global.msg[18]= "\\\\E2* doesn\\'t everybody?/";
    scr_torface(19, 0);
    global.msg[20]= "\\\\E0* Who the hell is Sans?/";
    global.msg[21]= "\\\\E8* .../";
    global.msg[22]= "\\\\E0* Who the HECK is Sans?/";
    scr_alface(23, 1);
    global.msg[24]= "\\\\E1* TORIEL!?!?!/%%";
}
if(global.flag[196] >= 3) {
    global.msg[0]= "\\\\E0* Hey Frisk^1, why&  don\\'t you go look&  for Mettaton?/";
    global.msg[1]= "\\\\E8* He was here for&  a while^1, too.../";
    global.msg[2]= "\\\\E0* But he said he&  had to go somewhere./%%";
}
global.flag[196]++;
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
