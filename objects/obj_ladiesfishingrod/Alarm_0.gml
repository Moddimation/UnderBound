myinteract= 3;
global.msc= 224;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
if(reeled == 1) {
    image_index= 0;
    reeled= 0;
    global.msc= 0;
    global.msg[0]= "* You send the line back out./%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );


/*  */
