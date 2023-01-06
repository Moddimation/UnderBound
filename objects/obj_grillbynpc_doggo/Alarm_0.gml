myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* I\\'m thinking of getting a&  spiked collar to show off&  my personality./";
global.msg[1]= "* It makes a statement like..^1.&* " + chr(ord("\"")) + "Attach a leash to me and&  take me for a walk please." + chr(ord("\"")) + "/%%";
if(global.plot >= 122) {
    global.msg[0]= "* He may not look like it^1,&  but this big guy writes&  the most eloquent letters./";
    global.msg[1]= "* Here^1, take a look!/";
    global.msg[2]= "* (It\\'s just the word " + chr(ord("\"")) + "Bark" + chr(ord("\"")) + "&  but in flowery cursive.)/%%";
}
if(global.flag[67] == 1)
    global.msg[0]= "* Papyrus^1?&* Is that you^1?& Come on.../%%";
if(global.flag[350] == 1)
    global.msg[0]= "* Undyne!^1?&* Did you come all the way&  out here...?/%%";
if(sansmode == 1) {
    global.msg[0]= "* Huh^1?&* Since when did you and&  Sans become friends...?/";
    global.msg[1]= "* I don\\'t like him..^1.&* He loves to appear without&  moving./%%";
}
if(global.flag[53] == 1) {
    global.msg[0]= "* Where\\'re the other two^1?&* I can\\'t play with this&  big dumb guy alone.../";
    global.msg[1]= "* He\\'ll just win!!!/%%";
}
if(global.flag[53] == 1 && global.flag[54] == 1) {
    global.msg[0]= "* Sometimes the others like to&  prank me^1. They sit still&  so I can\\'t see them./";
    global.msg[1]= "* They must be here^1, playing a&  joke on me./";
    global.msg[2]= "* I\\'ll just wait until one of&  them admits it.../%%";
}
if(global.flag[7] == 1) {
    global.msg[0]= "* Having an amorphous^1,&  shambling family member&  is great./";
    global.msg[1]= "* They\\'re always moving^1, so I&  can see them 100-percent&  of the time!/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
