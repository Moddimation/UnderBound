if(room == 25 || room == 26) {
    global.interact= 4;
    global.phasing= 1;
    alarm[1]= 30;
    alarm[2]= 30;
    instance_create(obj_mainchara.x, obj_mainchara.y + 20, obj_cosmetichole );
} else  {
    myinteract= 3;
    if(room == 23) global.msc= 519;
    if(room == 24) global.msc= 521;
    global.typer= 5;
    global.facechoice= 0;
    global.faceemotion= 0;
    mydialoguer= instance_create(0, 0, obj_dialoguer );
}


/*  */
