if(conversation == 1) {
    obj_mainchara.x+= 4;
    global.facing= 1;
    global.msc= 0;
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 1;
    global.interact= 1;
    global.msg[0]= "SANS!!!^1!&THE HUMAN IS&ESCAPING!!!/";
    global.msg[1]= "YOU MADE THE&PUZZLE TOO&HARD!!/";
    global.msg[2]= "HEY YOU!!^1!&GET BACK HERE!/%%";
    talkedto++;
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 2;
}
if(conversation == 2) global.facing= 1;
if(conversation == 2 && !instance_exists(OBJ_WRITER )) {
    global.interact= 0;
    conversation= 0;
}

/* */
/*  */
