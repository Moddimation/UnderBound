global.msc= 0;
con= 0;
global.msg[0]= " %";
global.msg[1]= " %";
global.msg[2]= " %";
global.msg[3]= " %";
global.msg[4]= "%%%";
global.typer= 76;
if(global.floss == 0)
    global.msg[0]= "* Hee hee hee^1.&* Did you really think&  you could run away?/%%";
if(global.floss == 1) {
    global.msg[0]= "* Hee hee hee./";
    global.msg[1]= "* Did you really think&  I was gonna be&  satisfied.../";
    global.msg[2]= "* ... killing you only&  ONE time?/%%";
}
if(global.floss == 2)
    global.msg[0]= "* Pathetic..^1.&* Now you\\'re REALLY&  gonna die!/%%";
if(global.floss == 3) {
    global.msg[0]= "* Hee hee hee./";
    global.msg[1]= "* Do you even realize&  what will happen if&  you defeat me...?/%%";
}
if(global.floss == 4) {
    global.msg[0]= "* Don\\'t you get it?/";
    global.msg[1]= "* There\\'s no such thing&  as happy endings./";
    global.msg[2]= "* This is all that\\'s&  left...!/%%";
}
if(global.floss == 5)
    global.msg[0]= "* Are you REALLY that&  desperate...^1?&* Hee hee hee.../%%";
if(global.floss == 6)
    global.msg[0]= "* Are you letting me&  kill you..^1.&* ... on PURPOSE^2?&* SICKO^1. Ha ha ha./%%";
if(global.floss == 7) {
    global.msg[0]= "* Honestly^1, fighting&  you IS pretty fun.../";
    global.msg[1]= "* ... So even if you&  ARE a sicko^1, I\\'ll&  take it!/%%";
}
if(global.floss == 8) {
    global.msg[0]= "* Maybe you\\'re wondering&  if I ever get tired&  of winning.../";
    global.msg[1]= "* Wanna see my answer?/%%";
}
if(global.floss >= 9)
    global.msg[0]= "* Don\\'t you have anything&  better to do?/%%";
instance_create(x, y, obj_flowey_writer );


/*  */
