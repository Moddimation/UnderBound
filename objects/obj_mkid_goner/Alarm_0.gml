myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Yo^1!&* You\\'re a ??? too^1, right?/%%";
if(type == 1) {
    global.msg[0]= "* Have you ever thought about&  a world where everything is&  exactly the same.../";
    global.msg[1]= "* Except you don\\'t exist?/";
    global.msg[2]= "* Everything functions&  perfectly without you.../";
    global.msg[3]= "* Ha^1, ha..^1.&* The thought terrifies me./%%";
    if(talkedto >= 1) global.msg[0]= "* .../%%";
    if(global.flag[85] == 1) {
        global.msg[0]= "* An umbrella...^1?&* But it\\'s not raining./";
        global.msg[1]= "* Ha^1, ha.../";
        global.msg[2]= "* You know^1, that does make&  me feel a little better&  about this./";
        global.msg[3]= "* Thank you./";
        global.msg[4]= "* Please forget about me./%%";
        if(talkedto >= 1)
            global.msg[0]= "* Please don\\'t think about&  this anymore./%%";
        if(global.flag[5] >= 90) global.flag[5]= 0;
    }
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
