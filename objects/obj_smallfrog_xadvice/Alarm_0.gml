myinteract= 3;
global.msc= 0;
global.msg[0]= "* Ribbit^1, ribbit^1.&* (Sigh...)/";
global.msg[1]= "* (My friend never listens to&  me.)/";
global.msg[2]= "* (Whenever I talk^1, they skip&  through my words by pressing&  [X].)/";
global.msg[3]= "* (That\\'s right.......^1)&* (Pressing [X]............^1)&* (................)/";
global.msg[4]= "* (Well^1, at least you listen&  to me.)/%%";
if(global.flag[7] == 1) {
    global.msg[0]= "* Ribbit^1, ribbit^1.&* (Say...)/";
    global.msg[1]= "* (Now that your journey\\'s&  over^1, maybe you\\'ll have&  time to listen to me.)/";
    global.msg[2]= "* (Since most people just&  press [X] to skip through&  my dialogue.)/";
    global.msg[3]= "* (That\\'s right.......^1)&* (Pressing [X]............^1)&* (................)/";
    global.msg[4]= "* (You\\'ve really matured^1,&  haven\\'t you?)/%%";
}
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
mydialoguer= instance_create(0, 0, obj_dialoguer );

/* */
/*  */
