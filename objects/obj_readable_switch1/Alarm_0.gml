myinteract= 3;
if(global.plot < 5) {
    if(instance_exists(obj_torinteractable2 )) {
        obj_torinteractable2.lsprite= 1110;
        global.msc= 0;
        global.typer= 4;
        global.facechoice= 1;
        global.faceemotion= 1;
        global.msg[0]= "* No no no^1!/";
        global.msg[1]= "\\\\E0* You want to press the&  other switch./";
        global.msg[2]= "\\\\E1* I even labelled it for&  you.../%%";
        if(global.flag[6] == 1)
            global.msg[0]= "* It seems that is not&  the correct switch./%%";
    } else  {
        global.msc= 0;
        global.typer= 5;
        global.facechoice= 0;
        global.faceemotion= 0;
        snd_play(snd_wrongvictory );
        global.msg[0]= "* (Wow!^1)&* (You are superfast at being&  wrong.)/%%";
    }
}
if(global.plot >= 5) {
    global.msc= 0;
    global.typer= 5;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msg[0]= "* This switch doesn\\'t even&  work.../%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );

/* */
/*  */
