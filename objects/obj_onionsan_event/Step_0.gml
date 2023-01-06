if(instance_exists(obj_mainchara )) {
    if(global.flag[496] == 0) {
        if(obj_mainchara.x > 100 && tents == 0) {
            tent1= instance_create(obj_mainchara.x, 70, obj_oniont );
            tent1.follow= 1;
            tent1.type= 0;
            tents= 1;
            tent1.on= 2;
            snd_play(snd_splash );
        }
        if(obj_mainchara.x > 210 && tents == 1) {
            tent2= instance_create(obj_mainchara.x, 220, obj_oniont );
            tent2.follow= 1;
            tent2.type= 1;
            tent2.on= 2;
            tents= 2;
            snd_play(snd_splash );
        }
        if(obj_mainchara.x > 420 && tents == 2 && global.interact == 0) {
            global.facing= 0;
            tents= 3;
            con= 1;
            alarm[4]= 90;
            global.interact= 1;
            with(tent1) on= 4;
            with(tent2) on= 4;
            global.flag[496]= 1;
            snd_play(snd_splash );
        }
    }
    if(con == 2) {
        // obj_oniont
        with(1078) instance_destroy();
        global.flag[20]= 0;
        with(onion) {
            x= obj_mainchara.x + 10;
            follow= 0;
            hspeed= 0;
        }
        with(onion) on= 1;
        con= 3;
        alarm[4]= 50;
    }
    if(con == 4) {
        global.facing= 2;
        with(onion) on= 2;
        // obj_oniont
        with(1078) on= 2;
        con= 5;
        alarm[4]= 150;
    }
    if(con == 6) {
        global.msc= 0;
        global.typer= 5;
        global.facechoice= 0;
        global.msg[0]= "* Hey..^1. there..^1.&* Noticed you were..^1.&* Here.../";
        global.msg[1]= "\\\\M1* I\\'m Onionsan^1!&* Onionsan^1, y\\'hear!/%%";
        instance_create(0, 0, obj_dialoguer );
        con= 7;
    }
    if(con == 7 && instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 1) {
        // obj_oniont
        with(1078) on= 4;
    }
    if(con == 7 && !instance_exists(OBJ_WRITER )) {
        global.interact= 0;
        onion.follow= 1;
        onion.on= 2;
        con= 8;
    }
    if(global.flag[496] == 1 && obj_mainchara.x > 550 && global.interact == 0) {
        global.flag[496]= 2;
        global.interact= 1;
        con= 11;
        global.msc= 0;
        global.typer= 5;
        global.facechoice= 0;
        global.msg[0]= "\\\\M1* You\\'re visiting Waterfall^1, huh^1!* It\\'s great here^1, huh^1!&* You love it^1, huh!/";
        global.msg[1]= "\\\\M0* Yeah^1!&* Me too^1!&* It\\'s my Big Favorite./%%";
        instance_create(0, 0, obj_dialoguer );
    }
    if(global.flag[496] == 2 && obj_mainchara.x > 700 && global.interact == 0) {
        global.flag[496]= 3;
        global.interact= 1;
        con= 11;
        global.msc= 0;
        global.typer= 5;
        global.facechoice= 0;
        global.msg[0]= "\\\\M3* Even though^1, the water\\'s&  getting so shallow here..^1./";
        global.msg[1]= "* I^1, have to sit down all&  the time^1, but.../";
        global.msg[2]= "\\\\M1* He^1-hey^1! That\\'s OK^1!&* It beats moving to the city!/";
        global.msg[3]= "* And living in a crowded&  aquarium!/";
        global.msg[4]= "\\\\M2* Like all my friends did!/%%";
        instance_create(0, 0, obj_dialoguer );
    }
    if(global.flag[496] == 3 && obj_mainchara.x > 850 && global.interact == 0) {
        global.flag[496]= 4;
        global.interact= 1;
        con= 11;
        global.msc= 0;
        global.typer= 5;
        global.facechoice= 0;
        global.msg[0]= "\\\\M3* And the aquarium\\'s full^1,&  a-anyway^1, so^1, even if I&  wanted to^1, I.../";
        global.msg[1]= "\\\\M1* That\\'s okay though^1, y\\'hear!&* Undyne\\'s gonna fix&  everything^1, y\\'hear!/";
        global.msg[2]= "* I\\'m gonna get out of here&  and live in the ocean^1!&* Y\\'hear!/%%";
        instance_create(0, 0, obj_dialoguer );
    }
    if(global.flag[496] == 4 && obj_mainchara.x > 1000 && global.interact == 0) {
        global.flag[496]= 5;
        global.interact= 1;
        con= 15;
        global.msc= 0;
        global.typer= 5;
        global.facechoice= 0;
        global.msg[0]= "\\\\M2* Hey..^1. there..^1.&* That\\'s the end of this room./";
        global.msg[1]= "* I\\'ll see you around^1!&* Have a good time!/";
        global.msg[2]= "* In Waterfalllllllllllllllll&  lllllllllllll/%%";
        with(onion) event_user(2);
        instance_create(0, 0, obj_dialoguer );
    }
    if(con == 11 && !instance_exists(OBJ_WRITER )) {
        global.interact= 0;
        con= 10;
    }
    if(con == 15 && instance_exists(OBJ_WRITER ) && con == 15 && OBJ_WRITER.stringno == 2) {
        // obj_oniont
        with(1078) on= 4;
        with(onion) on= 4;
        with(onion) follow= 0;
    }
    if(con == 15 && !instance_exists(OBJ_WRITER )) {
        con= 16;
        global.interact= 0;
    }
    if(global.flag[496] == 5 && obj_mainchara.x > 600 && obj_mainchara.x < 640 && global.interact == 0 && onion.on != 4 && onion.on != 0) {
        global.flag[496]= 6;
        global.interact= 1;
        con= 11;
        global.facechoice= 0;
        global.msc= 0;
        global.typer= 5;
        global.msc= 839;
        once= 1;
        instance_create(0, 0, obj_dialoguer );
    }
    if(global.flag[496] == 6 && obj_mainchara.x > 600 && obj_mainchara.x < 640 && global.interact == 0 && once == 0 && onion.on != 4 && onion.on != 0) {
        once= 1;
        global.interact= 1;
        con= 11;
        global.msc= 0;
        global.typer= 5;
        global.facechoice= 0;
        global.msg[0]= "\\\\M1* Oh^1!&* Did y\\'hear!!!/";
        global.msg[1]= "\\\\M1* .../";
        global.msg[2]= "\\\\M1* I got nothing else..^1.&* To talk about.../%%";
        if(global.flag[7] == 1) {
            global.msg[0]= "\\\\M2* I\\'ve been wondering when&  we\\'re all gonna go free./";
            global.msg[1]= "\\\\M3* S-since..^1. if we did..^1.&* How would I ever know?/";
            global.msg[2]= "\\\\M1* Well^1, I\\'ll keep my&  tentacles out for you^1!&* Y\\'hear!/";
            global.msg[3]= "* As soon as I know I\\'ll be&  the first to tell you^1!&* Y\\'hear!!/%%";
            global.flag[496]= 7;
            once= 1;
        }
        instance_create(0, 0, obj_dialoguer );
    }
    if(global.flag[496] == 7 && obj_mainchara.x > 600 && obj_mainchara.x < 640 && global.interact == 0 && once == 0 && onion.on != 4 && onion.on != 0) {
        once= 1;
        global.facechoice= 0;
        global.interact= 1;
        con= 11;
        global.msc= 0;
        global.typer= 5;
        global.msg[0]= "\\\\M0* It\\'s gotta be any day now!/%%";
        instance_create(0, 0, obj_dialoguer );
    }
    if(con == 25) {
        global.facing= 2;
        con= 26;
        global.interact= 1;
        alarm[4]= 60;
    }
    if(con == 27) {
        con= 28;
        alarm[4]= 120;
        onion.on= 4;
    }
    if(con == 29) {
        global.interact= 0;
        con= 30;
        global.facing= 0;
    }
}

/* */
/*  */
