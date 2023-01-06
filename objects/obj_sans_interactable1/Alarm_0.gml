myinteract= 3;
global.msc= 0;
global.typer= 17;
global.facechoice= 3;
global.faceemotion= 0;
global.msg[0]= "* you oughta get going^1.&* he might come back^1.&* and if he does.../";
global.msg[1]= "\\\\E2* ... you\\'ll have to&  sit through more of&  my hilarious jokes./%%";
if(talkedto > 0) {
    if(talkedto == 1) {
        global.msg[0]= "* what\\'s the holdup^1?&* look^1, there\\'s nothin&  to be afraid of./";
        global.msg[1]= "\\\\E2* it\\'s just a dark cavern&  filled with skeletons&  and horrible monsters./%%";
    }
    if(talkedto == 2) global.msg[0]= "* well?/%%";
}
if(scr_murderlv() >= 2)
    global.msg[0]= "* ... are you just gonna&  stare at me^1, or...?/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
