myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Oh..^1.&* When you hug me^1, I feel..^1.&* So spicey./%%";
if(talkedto > 0) global.msg[0]= "* So spicey./%%";
if(global.flag[7] == 1) {
    global.msg[0]= "* Oh..^1.&* Freedoms./";
    global.msg[1]= "* Feels..^1. so spicey./%%";
}
if(room == 180) {
    global.msg[0]= "* Oh..^1.&* When you encourage me^1, I&  feel..^1. so nicey./%%";
    if(talkedto > 0) global.msg[0]= "* So spicey./%%";
    if(global.flag[7] == 1) {
        global.msg[0]= "* Hooray!/";
        global.msg[1]= "* Surface world will have &  so many new friends to&  help!!!/%%";
    }
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
