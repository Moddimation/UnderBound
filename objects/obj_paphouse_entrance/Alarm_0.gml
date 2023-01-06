myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
if(global.flag[88] == 0) global.msg[0]= "* (It\\'s locked.)/%%";
if(global.flag[88] == 1) {
    scr_papface(0, 0);
    if(global.flag[66] == 1)
        global.msg[1]= "WOW^1, YOU\\'RE SO&EAGER TO DATE&ME.../";
    if(global.flag[66] == 0)
        global.msg[1]= "WOW^1, YOU\\'RE SO&EAGER TO HANG&OUT.../";
    global.msg[2]= "YOU\\'RE TRYING TO&GO INTO MY HOUSE&WITHOUT ME!/";
    global.msg[3]= "THAT\\'S REALLY&WEIRD!!!/%%";
}
if(global.flag[88] > 1) global.msg[0]= "* (It\\'s unlocked.)/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );

/* */
/*  */
