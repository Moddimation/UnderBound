myinteract= 3;
global.msc= 0;
global.typer= 27;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Capital wenisberry./%%";
if(room == 154) {
    global.msg[0]= "\\\\W* \\\\YMILK^1, SUGAR^1, \\\\WAND\\\\Y EGGS\\\\W!&* YOU SHOULD BE ABLE TO FIND&  THEM ON THE BACK COUNTER!/%%";
    if(milk == 1 && eggs == 1 && sugar == 1)
        global.msg[0]= "* GREAT JOB^1!&* JUST PUT THEM IN THE MIDDLE&  OF THIS COUNTER!/%%";
    if(global.plot == 134) {
        global.msg[0]= "* WHAT\\'S THE MATTER?&* NOT A CAN FAN?&* THAT\\'S TOO BAD!/";
        global.msg[1]= "* MTT-BRAND USES ONLY THE&  FRESHEST ARTIFICIAL INGREDIENTS&  AND CHEMICALS!/%%";
    }
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
