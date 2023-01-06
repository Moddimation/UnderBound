myinteract= 3;
global.msc= 0;
global.typer= 5;
global.msg[0]= "error/%%";
if(global.flag[92] == 0) {
    global.msc= 593;
    global.typer= 5;
}
if(global.flag[92] > 0) {
    global.msc= 595;
    if(global.flag[92] == 2) global.msc= 596;
    if(global.flag[92] == 3) global.msc= 597;
    global.typer= 34;
}
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* test/%%";
if(global.flag[92] != 4) {
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    talkedto++;
} else  bibblybeebly= 349382;

/* */
/*  */
