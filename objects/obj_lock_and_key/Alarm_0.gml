myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* (The way is blocked by two&  padlocks.^1)&* (There\\'s a note attached.)/";
global.msg[1]= "* (Howdy^1! I\\'m in the garden.)/";
global.msg[2]= "* (If you have anything you&  need to get off your chest^1,&  please don\\'t hesitate to come.)/";
global.msg[3]= "* (The keys are in the kitchen&  and the hallway.)/%%";
if(scr_murderlv() >= 16)
    global.msg[0]= "\\\\R* (He leaves them in the&  kitchen and the hallway.)/%%";
if(global.flag[454] == 0.5) {
    global.msg[0]= "* (You\\'ll need both keys to&  get through.)/%%";
    if(scr_murderlv() >= 16) global.msg[0]= "\\\\R* (There are two keys.)/%%";
}
if(global.flag[452] == 1 && global.flag[453] == 1) {
    global.flag[454]= 1;
    global.msg[0]= "* (You unlocked the chain.)/%%";
    if(scr_murderlv() >= 16)
        global.msg[0]= "\\\\R* (I unlocked the chain.)/%%";
    con= 2;
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
if(global.flag[454] == 0) global.flag[454]= 0.5;


/*  */
