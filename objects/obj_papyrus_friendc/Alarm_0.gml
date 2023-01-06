myinteract= 3;
global.msc= 0;
global.typer= 18;
global.facechoice= 4;
global.faceemotion= 3;
if(global.flag[195] == 0) {
    global.msg[0]= "\\\\E3SO^1, ASGORE.../";
    global.msg[1]= "\\\\E0HOW ABOUT MAKING&ME A MEMBER OF&THE ROYAL GUARD?/";
    scr_asgface(2, 2);
    global.msg[3]= "\\\\E2* Well^1, Papyrus^1, now&  that the war is&  over.../";
    global.msg[4]= "\\\\E0* We might not need&  the Royal Guard&  anymore./";
    scr_papface(5, 7);
    global.msg[6]= "\\\\E7WHAT!?/";
    global.msg[7]= "\\\\E1THEN WHAT WAS&THE POINT OF THE&HUMAN\\'S QUEST!?/";
    global.msg[8]= "\\\\E3THEY JOURNEYED&ALL THAT WAY.../";
    global.msg[9]= "\\\\E4AND I\\'M STILL&NOT A MEMBER OF&THE ROYAL GUARD!?/";
    global.msg[10]= "\\\\E0TRULY^1, THIS IS&THE WORST&POSSIBLE ENDING./%%";
}
if(global.flag[195] == 1) {
    global.msg[0]= "\\\\E3IT SEEMS LIKE YOU&REALLY BOTCHED&YOUR QUEST^1, FRISK./";
    global.msg[1]= "\\\\E0BUT^1, I^1, THE&GREAT PAPYRUS.../";
    global.msg[2]= "WILL ALWAYS BE&YOUR FRIEND!!!/";
    scr_sansface(3, 1);
    global.msg[4]= "\\\\E1* no matter how hard&  you try to get&  rid of him./";
    scr_papface(5, 1);
    global.msg[6]= "\\\\E1HEY!/";
    global.msg[7]= "\\\\E0THAT\\'S TRUE./%%";
}
if(global.flag[195] == 2) {
    global.msg[0]= "\\\\E3FRISK^1, WHY DON\\'T&YOU TAKE A WALK&AROUND?/";
    scr_sansface(1, 1);
    global.msg[2]= "\\\\E1* frisk^1, why don\\'t you&  fly^1?&* it\\'s faster./";
    scr_papface(3, 0);
    global.msg[4]= "\\\\E0YEAH^1, FRISK^1, WHY&DON\\'T YOU FLY?/";
    scr_torface(5, 1);
    global.msg[6]= "\\\\E1* Hmmm..^1. Flying sounds&  a little dangerous./";
    scr_alface(7, 3);
    global.msg[8]= "\\\\E3* But they CAN\\'T fly./";
    scr_undface(9, 2);
    global.msg[10]= "\\\\E2* Not with THAT&  attitude!/%%";
}
if(global.flag[195] >= 3) {
    global.msg[0]= "\\\\E3FRISK..^1.&TAKE A HIKE./";
    global.msg[1]= "\\\\E0HIKING IS GOOD&FOR YOUR BONES./%%";
}
global.flag[195]++;
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
