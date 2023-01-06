myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
if(global.flag[490] == 1) {
    global.msg[0]= "* (It\\'s a refrigerator.^1)&* (It\\'s empty.)/%%";
    con= 1;
} else 
    global.msg[0]= "* (It\\'s some sort of cold^1,&  rectangular object.)/%%";
if(global.flag[482] == 1) {
    global.msg[0]= "* (You found a blue key on&  the ground.^1)&* (You put it on your keychain.)/%%";
    con= 10;
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
