myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* (It\\'s playing poker against&  it)/";
global.msg[1]= "* (It appears to be losing.)/%%";
if(global.plot > 122)
    global.msg[0]= "* (It has switched to Go Fish.)/%%";
if(global.flag[7] == 1)
    global.msg[0]= "* (It finally won a game of&  poker against it..?)/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
