myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* You better watch where you&  sit down in here^1, kid./";
global.msg[1]= "* Because that big guy WILL jump&  into your lap and give you&  lots of love and attention./%%";
if(global.flag[67] == 1)
    global.msg[0]= "* Where\\'s Sans..^1.&* He\\'s supposed to give me&  a pat on the head.../%%";
if(global.plot >= 122) {
    global.msg[0]= "* She hasn\\'t been responding&  to our letters.../";
    global.msg[1]= "* Maybe it\\'s because we let&  Doggo write them all./%%";
}
if(sansmode == 1) {
    global.msg[0]= "* I was hoping Sans came in&  to give me a pat on the&  head./";
    global.msg[1]= "* Interloper...!/%%";
}
if(global.flag[54] == 1)
    global.msg[0]= "* Where\\'s that big lug^1?&* We can\\'t start until he&  shows up./%%";
if(global.flag[52] == 1 && global.flag[54] == 1)
    global.msg[0]= "* Smells kinda..^1. quiet./%%";
if(global.flag[7] == 1) {
    global.msg[0]= "* Hmmm^1, now that our parents&  are the same entity.../";
    global.msg[1]= "* Does that mean I\\'m&  married to my sister?/";
    global.msg[2]= "* .../";
    global.msg[3]= "* Wait^1, we\\'re dogs^1.&* That stuff\\'s normal./%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
