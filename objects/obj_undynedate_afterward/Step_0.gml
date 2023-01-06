if(con == 1) {
    global.facing= 1;
    if(instance_exists(obj_mainchara )) {
        obj_mainchara.x= 120;
        obj_mainchara.y= 160;
        global.interact= 1;
    }
}
if(con == 2) {
    global.facechoice= 5;
    global.faceemotion= 9;
    global.msc= 0;
    global.typer= 37;
    global.msg[0]= "* Well^1, that was&  fun^1, huh?/";
    global.msg[1]= "\\\\E6* We\\'ll have to hang&  out again another&  time...!/";
    global.msg[2]= "\\\\E9* But^1, uh^1, somewhere&  else I guess./";
    global.msg[3]= "\\\\E0* In the meantime^1,&  I guess I\\'ll go&  hang with Papyrus./";
    global.msg[4]= "* So if you need&  me^1, drop by Snowdin^1,&  OK!?/";
    global.msg[5]= "\\\\E1* OH^1!&* And if you ever&  need help.../";
    global.msg[6]= "\\\\E9* Just give Papyrus a&  ring^1, ok?/";
    global.msg[7]= "\\\\E0* Since we\\'re in the&  same spot^1, I\\'ll be&  able to talk too!/";
    global.msg[8]= "\\\\E6* Well^1, see ya&  later^1, punk!!/%%";
    con= 3;
    ini_open("undertale.ini");
    won= ini_read_real("General", "Won", 0);
    ini_close();
    d= 0;
    if(won < 1) d= 1;
    if(global.flag[389] < 3) d= 1;
    if(global.kills > 0) d= 1;
    if(global.plot <= 198) d= 1;
    if(global.flag[493] >= 8) d= 1;
    if(d == 0) {
        scr_itemget(56);
        if(noroom == 0) {
            global.msg[0]= "* Well^1, that was&  fun^1, huh?/";
            global.msg[1]= "\\\\E6* We\\'ll have to hang&  out again another&  time...!/";
            global.msg[2]= "\\\\E9* But^1, uh^1, somewhere&  else I guess./";
            global.msg[3]= "\\\\E0* In the meantime^1,&  I guess I\\'ll go&  hang with Papyrus./";
            global.msg[4]= "* So if you need&  me^1, drop by Snowdin^1,&  OK!?/";
            global.msg[5]= "\\\\E1* OH^1!&* And if you ever&  need help.../";
            global.msg[6]= "\\\\E9* Just give Papyrus a&  ring^1, ok?/";
            global.msg[7]= "\\\\E0* Since we\\'re in the&  same spot^1, I\\'ll be&  able to talk too!/";
            global.msg[8]= "\\\\E6* Well^1, see ya&  later^1, punk.../";
            global.msg[9]= "\\\\E1* OH!!^1!&* WAIT!!/";
            global.msg[10]= "\\\\E0* This is sudden^1, but.../";
            global.msg[11]= "\\\\E9* Can you deliver&  something for me?/";
            global.msg[12]= "\\\\E0* Papyrus suggested&  that I ask you./";
            global.msg[13]= "\\\\E3* But he told me when&  I still hated you^1,&  so.../";
            global.msg[14]= "\\\\E1* Uh^1! Anyway!!^1!&* Here^1! Just take it!/";
            global.msg[15]= "\\\\TS \\\\F0 \\\\T0 %";
            global.msg[16]= "* (You got the Undyne\\'s&  Letter.)/";
            scr_undface(17, 2);
            global.msg[18]= "* Well^1, what are you&  waiting for!?/";
            global.msg[19]= "\\\\E1* Go deliver it!!!/";
            global.msg[20]= "* .../";
            global.msg[21]= "\\\\E9* Uhhhh..^1.&* Oh^1, yeah.../";
            global.msg[22]= "* It\\'s addressed to&  Dr. Alphys./";
            global.msg[23]= "\\\\E6* OK^1, see you!!/%%";
            global.flag[8]= 1;
            global.flag[493]= 9;
        } else  {
            global.msg[0]= "* Well^1, that was&  fun^1, huh?/";
            global.msg[1]= "\\\\E6* We\\'ll have to hang&  out again another&  time...!/";
            global.msg[2]= "\\\\E9* But^1, uh^1, somewhere&  else I guess./";
            global.msg[3]= "\\\\E0* In the meantime^1,&  I guess I\\'ll go&  hang with Papyrus./";
            global.msg[4]= "* So if you need&  me^1, drop by Snowdin^1,&  OK!?/";
            global.msg[5]= "\\\\E1* OH^1!&* And if you ever&  need help.../";
            global.msg[6]= "\\\\E9* Just give Papyrus a&  ring^1, ok?/";
            global.msg[7]= "\\\\E0* Since we\\'re in the&  same spot^1, I\\'ll be&  able to talk too!/";
            global.msg[8]= "\\\\E6* Well^1, see ya&  later^1, punk.../";
            global.msg[9]= "\\\\E1* OH!!^1!&* WAIT!!/";
            global.msg[10]= "\\\\E0* This is sudden^1, but.../";
            global.msg[11]= "* Can you.../";
            global.msg[12]= "\\\\E1* Hey^1, wait^1!&* Your inventory\\'s&  full./";
            global.msg[13]= "\\\\E9* Uh^1, well^1, I\\'ll be&  at Papyrus\\'s./";
            global.msg[14]= "\\\\E6* Come see me when&  you have less&  stuff!/%%";
            global.flag[493]= 8;
            global.flag[8]= 1;
        }
    }
    instance_create(0, 0, obj_dialoguer );
}
if(con == 3 && !instance_exists(OBJ_WRITER )) {
    global.flag[20]= 2;
    undyne.vspeed= 6;
    undyne.image_speed= 0.5;
    undyne.sprite_index= spr_undyne_d ;
    con= 4;
    global.facing= 0;
    alarm[4]= 60;
}
if(con == 5) {
    con= 6;
    global.facing= 1;
    global.interact= 0;
    global.flag[389]= 4;
    global.flag[465]= 1;
    instance_destroy();
}

/* */
/*  */
