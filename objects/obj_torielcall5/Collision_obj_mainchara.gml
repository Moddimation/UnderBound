if(global.interact == 0) {
    touch= 1;
    snd_play(snd_phone );
    global.typer= 5;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msg[0]= "* Ring..\\\\E0.\\\\TT /";
    global.msg[1]= "\\\\F1 %";
    global.msg[2]= "* Hello?/";
    global.msg[3]= "\\\\E1* I just realized that it&  has been a while since&  I have cleaned up./";
    global.msg[4]= "\\\\E0* I was not expecting to&  have company so soon./";
    global.msg[5]= "* There are probably a lot&  of things lying about&  here and there./";
    global.msg[6]= "* You can pick them up^1,&  but do not carry more&  than you need./";
    global.msg[7]= "* Someday you might see&  something you really&  like./";
    global.msg[8]= "* You will want to leave&  room in your pockets&  for that./";
    global.msg[9]= "\\\\TS \\\\F0 \\\\T0 %";
    global.msg[10]= "* Click.../%%";
    if(global.flag[6] == 1) {
        global.msg[0]= "* Ring..\\\\E0.\\\\TT /";
        global.msg[1]= "\\\\F1 %";
        global.msg[2]= "* Hello?/";
        global.msg[3]= "\\\\E1* I have a question./";
        global.msg[4]= "* You like things other&  than butterscotch or&  cinnamon^1, too.../";
        global.msg[5]= "* Do you not?/";
        global.msg[6]= "\\\\E0* ..^1. oh^1, what am I&  asking./";
        global.msg[7]= "* I will keep looking./%%";
        global.msg[8]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[9]= "* Click.../%%";
    }
    instance_create(140, 200, obj_stalkerflowey );
    script_execute(scr_writetext , 0, "x", 0, 0);
    global.interact= 1;
}

/* */
/*  */
