myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* I " + chr(ord("\"")) + "put out a line" + chr(ord("\"")) + " for some&  girls today./";
global.msg[1]= "* Someone told me that there&  are plenty of fish in the&  sea.../";
global.msg[2]= "* Well^1, I\\'m taking that&  seriously./";
global.msg[3]= "* I\\'m literally going to make&  out with a fish./%%";
if(talkedto > 0)
    global.msg[0]= "* I guess I could ask out Undyne^1.&* But I think she likes someone&  already./%%";
if(global.plot >= 122)
    global.msg[0]= "* Did I catch anyone yet^1?&* I can\\'t bear to look.../%%";
if(sansmode == 1) {
    global.msg[0]= "* Sans is the most regular&  regular of all./";
    global.msg[1]= "* He hasn\\'t been showing up&  as much recently though./%%";
}
if(global.flag[67] == 1) {
    global.msg[0]= "* Where the heck is Sans?/";
    global.msg[1]= "* He told me he had some&  bait I could use./";
    global.msg[2]= "* Though it was probably&  some kind of prank./";
    global.msg[3]= "* But I wanted to know what&  the prank was!/%%";
}
if(global.flag[7] == 1) {
    global.msg[0]= "* In the end^1, I never caught&  any girls on my fishing&  line./";
    global.msg[1]= "* So kid^1, take it from me.../";
    global.msg[2]= "* Don\\'t try to catch hot&  people with a fishing rod./";
    global.msg[3]= "* (Somewhere^1, you hear a whinny&  of dismay.)/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
