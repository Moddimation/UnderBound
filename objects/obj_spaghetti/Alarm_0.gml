myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* (It\\'s a plate of frozen&  spaghetti.)/";
global.msg[1]= "* (It\\'s so cold^1, it\\'s stuck&  to the table...)/%%";
if(global.flag[7] == 1) {
    global.msg[0]= "* (It\\'s a plate of lukewarm&  spaghetti.)/";
    global.msg[1]= "* (Seems like something tried&  eating it and just..^1.)&* (Gave up.)/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );

/* */
/*  */
