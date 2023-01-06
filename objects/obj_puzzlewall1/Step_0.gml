if(conversation == 1) {
    obj_mainchara.x+= 4;
    global.facing= 1;
    global.msc= 0;
    global.typer= 19;
    global.facechoice= 4;
    global.faceemotion= 0;
    global.interact= 1;
    global.msg[0]= "COME ON!&DON\\'T BE SO&RUDE!!!/";
    global.msg[1]= "I SET UP&THIS PUZZLE&JUST FOR YOU!/%%";
    if(talkedto == 1) {
        global.msg[0]= "\\\\E3DO YOU TREAT&YOUR MOTHER&THIS WAY.../";
        global.msg[1]= "WHEN SHE MAKES&YOU A PUZZLE&?!?!?/%%";
    }
    if(talkedto > 1) global.msg[0]= "\\\\E3HUMANS.../%%";
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
