myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* ..^1.&* ..^1.&* ..^1./";
global.msg[1]= "* Grillbz said that he\\'d offer&  you a glass of water^1, but he&  doesn\\'t touch the stuff./%%";
if(global.flag[7] == 1)
    global.msg[0]= "* .............^1.&* ..............^1.&* ... good job./%%";
if(sansmode == 1) {
    global.msg[0]= "* ..^1.&* ..^1.&* ..^1./";
    global.msg[1]= "* Grillbz said that your&  food is probably cold&  by now./%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
