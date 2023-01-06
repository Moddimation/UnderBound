myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* Hey^1, stop thinking about&  my hat!/";
global.msg[1]= "* ... you aren\\'t thinking about&  my hat?/";
global.msg[2]= "* ... can you^1, please?/%%";
if(global.flag[7] == 1) {
    global.msg[0]= "* Ha^1!&* After all this time^1, you\\'re&  still thinking about my hat!/";
    global.msg[1]= "* .../";
    global.msg[2]= "* ... please?/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
