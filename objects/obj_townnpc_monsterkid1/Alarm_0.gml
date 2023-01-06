myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Yo^1!&* You\\'re a kid too^1, right?/";
global.msg[1]= "* I can tell \\'cause you\\'re&  wearing a striped shirt./%%";
if(talkedto > 0)
    global.msg[0]= "* I wonder if that weird skeleton&  is an adult or a kid./%%";
if(global.flag[7] == 1) {
    if(global.flag[98] == 0) {
        global.msg[0]= "* Yo..^1.&* There you are!/";
        global.msg[1]= "* I\\'ve been kinda worried&  about you since you&  ran away./";
        global.msg[2]= "* ... but now I\\'m just kinda&  mad^1, ha ha./";
        global.msg[3]= "* If Undyne hadn\\'t saved me^1,&  that woulda been bad.../%%";
        if(talkedto > 0) global.msg[0]= "* .../%%";
    }
    if(global.flag[98] == 2) {
        global.msg[0]= "* Yo..^1.&* Uh.../";
        global.msg[1]= "* Don\\'t talk to me./%%";
        if(talkedto > 0) global.msg[0]= "* .../%%";
    }
    if(global.flag[98] == 1) {
        global.msg[0]= "* Yo!!^1!&* What\\'s up!?/";
        global.msg[1]= "* I\\'ve been kinda^1, doing&  some thinking.../";
        global.msg[2]= "* Maybe Undyne...&* Isn\\'t actually as cool as&  we thought./";
        global.msg[3]= "* She\\'s just kinda..^1. mean./";
        global.msg[4]= "* But YO!!^1!&* I just found out about&  someone WAYYY cooler!!!/";
        global.msg[5]= "* Nyeh heh heh!!!/%%";
        if(talkedto > 0) global.msg[0]= "* Nyeh heh heh^1, dude./%%";
    }
}
if(scr_murderlv() >= 7) {
    global.msg[0]= "* Yo^1, everyone ran away and&  hid somewhere./";
    global.msg[1]= "* Man^1, adults can be so&  dumb sometimes^1, haha.../";
    global.msg[2]= "* Don\\'t they know we\\'ve&  got Undyne to protect us!?/%%";
}
if(room == 83) {
    global.msg[0]= "* Yo^1!&* Are you sneaking out to&  see her^1, too?/";
    global.msg[1]= "* Awesome..^1.&* She\\'s the coolest^1, right!?/";
    global.msg[2]= "* I wanna be just like her&  when I grow up.../";
    global.msg[3]= "* Hey^1, don\\'t tell my parents&  I\\'m here^1.&* Ha ha./%%";
    if(talkedto > 0)
        global.msg[0]= "* OK^1, I\\'m ready when you&  are./%%";
    if(talkedto > 0 && con == 2) {
        global.msg[0]= "* Yo^1!&* Where were you going...?/";
        global.msg[1]= "* My parents didn\\'t tell you&  to come here^1, did they?/%%";
    }
    if(con == 1 && talkedto > 0) {
        global.msg[0]= "* You know where you\\'re&  going^1, right...?/";
        global.msg[1]= "* I was just gonna follow&  you..^1.&* Ha ha./%%";
    }
}
if(room == 109) {
    if(talkedto == 0) {
        global.msg[0]= "* Yo^1, this ledge is way&  too steep.../%%";
        if(instance_exists(obj_monsterkidtrigger6 ))
            obj_monsterkidtrigger6.con= 4;
    }
    if(talkedto > 0) global.msg[0]= "* Hmmm..../%%";
    if(global.plot == 112) {
        if(global.flag[85] == 0) {
            myinteract= 0;
            if(instance_exists(obj_monsterkidtrigger6 ))
                obj_monsterkidtrigger6.con= 10;
        }
        if(global.flag[85] == 1) {
            global.msg[0]= "* Yo^1, you aren\\'t going to&  be able to climb with&  an umbrella./%%";
            mydialoguer= instance_create(0, 0, obj_dialoguer );
        }
    }
}
if(global.plot != 112) mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
