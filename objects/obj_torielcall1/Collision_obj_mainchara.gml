if(global.interact == 0) {
    snd_play(snd_phone );
    global.typer= 5;
    global.facechoice= 0;
    global.faceemotion= 0;
    if(global.flag[37] == 0) {
        global.msg[0]= "* Ring..\\\\E0.\\\\TT /";
        global.msg[1]= "\\\\F1 %";
        global.msg[2]= "* Hello?&* This is TORIEL./";
        global.msg[3]= "\\\\E1* You have not left&  the room^1, have you?/";
        global.msg[4]= "* There are a few puzzles&  ahead that I have&  yet to explain./";
        global.msg[5]= "* It would be dangerous&  to try to solve them&  your/";
        global.msg[6]= "* Be good^1, alright?/";
        global.msg[7]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[8]= "* Click.../%%";
    } else  {
        global.msg[0]= "* Ring..\\\\E1.\\\\TT /";
        global.msg[1]= "\\\\F1 %";
        global.msg[2]= "* Hello^1? Hello^1?&* This is TORIEL./";
        global.msg[3]= "* My apologies^1.&* A strange dog&  kidnapped my phone./";
        global.msg[4]= "* So if you called^1, I&  could not have helped&  you./";
        global.msg[5]= "\\\\E0* However^1, I have&  recovered it./";
        global.msg[6]= "* And you are still in&  that room^1, are you not?/";
        global.msg[7]= "* What a good child you&  are./";
        global.msg[8]= "\\\\E1* There are a few puzzles&  ahead that I have&  yet to explain./";
        global.msg[9]= "* It would be dangerous&  to try to solve them&  your/";
        global.msg[10]= "\\\\E1* Be good^1, alright?/";
        global.msg[11]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[12]= "* Click.../%%";
        global.flag[37]= 2;
    }
    script_execute(scr_writetext , 0, "x", 0, 0);
    global.interact= 1;
}

/* */
/*  */
