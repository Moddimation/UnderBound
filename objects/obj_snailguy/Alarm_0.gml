myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* I\\'ve been long overdue for&  a second house.../%%";
if(global.flag[7] == 1) {
    global.msg[0]= "* The housing market will&  probably crash now./";
    global.msg[1]= "* But you know^1, home&  is where the heart is./%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
