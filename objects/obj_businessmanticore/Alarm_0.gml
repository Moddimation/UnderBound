myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* This elevator goes straight&  to the capital^1.&* But it stopped working./";
global.msg[1]= "* The hotel\\'s doing its best to&  accomodate everybody&  stuck here./%%";
if(talkedto > 0)
    global.msg[0]= "* Me^1?&* I just like explaining things&  to passersby./%%";
if(global.flag[7] == 1) {
    global.msg[0]= "* Good news^1!&* The elevator started working&  again./";
    global.msg[1]= "* But now it\\'s been so busy^1,&  we still haven\\'t gotten the&  chance to ride it./%%";
}
if(global.flag[425] == 1) {
    global.msg[0]= "* Mettaton hasn\\'t made a&  performance for more&  than five minutes.../";
    global.msg[1]= "* What\\'s happening...^1?&* Can you explain it?/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
