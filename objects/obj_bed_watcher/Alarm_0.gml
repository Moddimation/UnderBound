myinteract= 3;
global.msc= 782;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
if(obj_mainchara.x > x) {
    global.msg[0]= "* (Seems like a comfy bed.)/";
    global.msg[1]= "* (You could probably climb&  into it if you were to&  the left of it.)/%%";
    global.msc= 0;
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;


/*  */
