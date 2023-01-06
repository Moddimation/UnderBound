myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Heh..^1. us teens live&  self-sufficiently off&  the fat of the land.../";
global.msg[1]= "* Oh^1, and the box lunches my&  parents bring us every&  day./%%";
if(talkedto > 0)
    global.msg[0]= "* Besides Snowy^1.&* We have to share ours&  with him../%%";
if(global.flag[7] == 1) {
    global.msg[0]= "* Heh..^1.&* I guess we\\'ll have to go to&  the surface./";
    global.msg[1]= "* There are woods there we can&  live in^1, right?/%%";
}
if(room == 53) {
    global.msg[0]= "* Guh huh huh huh^1./";
    global.msg[1]= "* Us teens rule these woods&  with a smaller-than-&  adult fist./%%";
    if(global.flag[7] == 1) {
        global.msg[0]= "* I\\'m worried about getting&  older..^1.&* I\\'ll stop being a teen./";
        global.msg[1]= "* No^1! I refuse^1!&* I\\'ll just invent new numbers^1,&  like twenty-teen!/%%";
    }
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
