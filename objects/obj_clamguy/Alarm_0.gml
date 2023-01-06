myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* O, k, k, k, k.../";
global.msg[1]= "* I was thirsty^1, so I came&  over from Waterfall to get&  a drink!/%%";
if(global.flag[353] > 7) {
    global.msg[0]= "* O, k, k.../";
    global.msg[1]= "* What are you doing with&  all of that water?/%%";
}
if(global.flag[353] > 15) {
    global.msg[0]= "* O, k, k, k, k.../";
    global.msg[1]= "* So now we have a private pool^1?&* Worse things have happened./%%";
}
if(global.flag[366] == 1) {
    global.msg[0]= "* O, k, k, k, k.../";
    global.msg[1]= "* Are you just carrying that&  around to look sophisticated?/";
    global.msg[2]= "* Cause it\\'s not working./%%";
}
if(global.flag[7] == 1) {
    global.msg[0]= "* O, k, k, k, k.../";
    global.msg[1]= "* I\\'ll be able to have a nice&  drink on the surface./%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
