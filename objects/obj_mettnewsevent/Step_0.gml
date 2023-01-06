if(con == 1) {
    obj_mainchara.cutscene= 1;
    global.flag[17]= 1;
    global.msc= 0;
    global.typer= 5;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msg[0]= "* Ring.../";
    global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
    global.msg[2]= "* Okay^1, I\\'m back!/";
    global.msg[3]= "\\\\E0* A-another dark room^1,&  huh?/";
    global.msg[4]= "\\\\E6* Don\\'t worry!/";
    global.msg[5]= "\\\\E0* M-my hacking skills&  have got things&  covered!/%%";
    scr_regulartext();
    con= 3;
    snd_play(snd_phone );
    if(quickskip == 1) con= 130;
}
if(con == 3 && !instance_exists(OBJ_WRITER )) {
    global.flag[20]= 1;
    snd_play(snd_noise );
    con= 4;
    news= caster_load("music/news.ogg");
    if(quickskip == 0) event_user(0);
    nitem[0]= 0;
    dog= instance_create(380, 250, obj_mettnews_artifact );
    dog.type= 1;
    nitem[1]= dog;
    water= instance_create(276, 336, obj_mettnews_artifact );
    water.type= 2;
    nitem[2]= water;
    script= instance_create(380, 342, obj_mettnews_artifact );
    script.type= 3;
    nitem[3]= script;
    basketball= instance_create(278, 252, obj_mettnews_artifact );
    basketball.type= 4;
    nitem[4]= basketball;
    present= instance_create(494, 246, obj_mettnews_artifact );
    present.type= 5;
    nitem[5]= present;
    game= instance_create(494, 342, obj_mettnews_artifact );
    game.type= 6;
    nitem[6]= game;
    if(quickskip == 0) {
        ff1= instance_create(140, 300, obj_kitchenforcefield );
        ff1.image_xscale= 1;
        ff1.image_yscale= 2;
        ff2= instance_create(560, 300, obj_kitchenforcefield );
        ff2.image_xscale= 1;
        ff2.image_yscale= 2;
        ff3= instance_create(340, 200, obj_kitchenforcefield );
        ff3.image_xscale= 2;
        ff3.image_yscale= 1;
        ff4= instance_create(420, 400, obj_kitchenforcefield );
        ff4.image_xscale= 2;
        ff4.image_yscale= 1;
        ff5= instance_create(720, 300, obj_kitchenforcefield );
        ff5.image_xscale= 1;
        ff5.image_yscale= 2;
        alarm[4]= 60;
    } else  con= 129;
}
if(con == 5) {
    global.msg[0]= "\\\\E3* Are you serious?/%%";
    d= instance_create(0, 0, obj_dialoguer );
    d.side= 0;
    con= 6;
}
if(con == 6 && !instance_exists(OBJ_WRITER )) {
    caster_loop(news, 0.9, 1);
    con= 7;
    global.typer= 27;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msc= 0;
    global.msg[0]= "* OHHHHHH YESSS!!!/";
    global.msg[1]= "* GOOD EVENING^1, BEAUTIES AND&  GENTLEBEAUTIES!/";
    global.msg[2]= "* THIS IS METTATON^1, REPORTING&  LIVE FROM MTT NEWS!/";
    global.msg[3]= "\\\\M2* AN INTERESTING SITUATION HAS&  ARISEN IN EASTERN HOTLAND!/";
    global.msg[4]= "\\\\M3* FORTUNATELY^1, OUR CORRESPONDENT&  IS OUT THERE^1, REPORTING LIVE!/";
    global.msg[5]= "\\\\M6* BRAVE CORRESPONDENT^1!&* PLEASE FIND SOMETHING&  NEWSWORTHY TO REPORT!/";
    global.msg[6]= "\\\\M4* OUR TEN WONDERFUL VIEWERS&  ARE WAITING FOR YOU!!/%%";
    dg= instance_create(0, 0, obj_dialoguer );
    dg.side= 0;
}
if(con == 7 && !instance_exists(OBJ_WRITER )) {
    global.flag[20]= 2;
    global.interact= 0;
    con= 8;
}
if(con == 50) {
    nitem[eventchoice].con= 2;
    global.interact= 1;
    con= 51;
    alarm[4]= 20;
}
if(con == 51) global.interact= 1;
if(con == 52) con= 60 + (eventchoice - 1) * 5;
if(con == 60) {
    connor= 0;
    global.typer= 27;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msc= 0;
    global.facing= 0;
    global.msg[0]= "\\\\M3* ATTENTION^1, VIEWERS^1!&* OUR CORRESPONDENT HAS&  FOUND..^1. A DOG!/";
    global.msg[1]= "\\\\M4* (CUE AUDIENCE AWWS)/";
    global.msg[2]= "\\\\M3* THAT\\'S RIGHT^1, FOLKS^1!&* IT\\'S THE FEEL-GOOD&  STORY OF THE YEAR!/";
    global.msg[3]= "\\\\M4* LOOK AT ITS LITTLE&  EARS^1, TINY PAWS^1, FLUFFY&  TAIL.../";
    global.msg[4]= "* .../";
    global.msg[5]= "* WAIT A SECOND./";
    global.msg[6]= "\\\\M5* THAT\\'S NOT A TAIL!/";
    global.msg[7]= "\\\\M3* THAT\\'S.../";
    global.msg[8]= "\\\\M5* A FUSE!!!/%%";
    gr= instance_create(0, 0, obj_dialoguer );
    gr.side= 0;
    con= 61;
}
if(con == 61 && instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 4 && connor == 0) {
    connor= 1;
    caster_pause(news);
}
if(con == 61 && !instance_exists(OBJ_WRITER )) {
    snd_play(snd_noise );
    with(dog) sprite_index= bombsprite;
    con= 62;
    alarm[4]= 30;
}
if(con == 63) {
    global.msg[0]= "\\\\M4* THAT\\'S RIGHT..^1.&* THAT DOG.../";
    global.msg[1]= "\\\\M5* IS A BOMB!!!/";
    global.msg[2]= "\\\\M5* BUT DON\\'T PANIC!/";
    global.msg[3]= "\\\\M4* YOU HAVEN\\'T EVEN SEEN&  THE REST OF THE ROOM&  YET!!!/%%";
    gr= instance_create(0, 0, obj_dialoguer );
    gr.side= 0;
    con= 100;
}
if(con == 65) {
    connor= 0;
    global.typer= 27;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msc= 0;
    global.facing= 0;
    global.msg[0]= "\\\\M3* ATTENTION^1, VIEWERS^1!&* OUR CORRESPONDENT HAS&  FOUND..^1. A GLASS OF WATER!/";
    global.msg[1]= "\\\\M4* BUT WHAT\\'S ASTONISHING&  ABOUT THIS GLASS OF&  WATER.../";
    global.msg[2]= "\\\\M3* IS HOW UNINTERESTING IT IS!/";
    global.msg[3]= "\\\\M4* LIKE ALL GLASSES OF WATER^1,&  IT\\'S COMPRISED OF WATER^1,&  GLASS^1, NITROGLYCERIN.../";
    global.msg[4]= "* .../";
    global.msg[5]= "* WAIT A SECOND./";
    global.msg[6]= "\\\\M5* THAT\\'S NOT A GLASS OF&  WATER!!!/";
    global.msg[7]= "\\\\M3* THAT\\'S.../";
    global.msg[8]= "\\\\M5* A BOMB!!!/%%";
    gr= instance_create(0, 0, obj_dialoguer );
    gr.side= 0;
    con= 66;
}
if(con == 66 && instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 4 && connor == 0) {
    connor= 1;
    caster_pause(news);
}
if(con == 66 && !instance_exists(OBJ_WRITER )) {
    snd_play(snd_noise );
    with(water) sprite_index= bombsprite;
    con= 67;
    alarm[4]= 30;
}
if(con == 68) {
    global.msg[0]= "\\\\M5* OH NO!!^1!&* THIS NEWS REPORT.../";
    global.msg[1]= "\\\\M5* IS TURNING INTO A DISASTER&  REPORT!!!/";
    global.msg[2]= "\\\\M3* BUT DON\\'T PANIC!/";
    global.msg[3]= "\\\\M4* YOU HAVEN\\'T EVEN SEEN&  THE REST OF THE ROOM&  YET!/%%";
    gr= instance_create(0, 0, obj_dialoguer );
    gr.side= 0;
    con= 100;
}
if(con == 70) {
    connor= 0;
    global.typer= 27;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msc= 0;
    global.facing= 0;
    global.msg[0]= "\\\\M3* ATTENTION^1, VIEWERS^1!&* OUR CORRESPONDENT HAS&  FOUND..^1. A MOVIE SCRIPT!/";
    global.msg[1]= "\\\\M5* OH MY^1!&* AND IT LOOKS LIKE IT\\'S&  FOR MY LATEST FILM!/";
    global.msg[2]= "\\\\M3* LET\\'S NOT KEEP THEM WAITING^1!&* LET\\'S OPEN IT UP AND GET&  THE SCOOP!/%%";
    gr= instance_create(0, 0, obj_dialoguer );
    gr.side= 0;
    con= 71;
}
if(con == 71 && !instance_exists(OBJ_WRITER )) {
    caster_pause(news);
    snd_play(snd_noise );
    with(script) sprite_index= bombsprite;
    con= 72;
    alarm[4]= 30;
}
if(con == 73) {
    global.msg[0]= "\\\\M4* ... OH??^1?&* WHAT\\'S THAT INSIDE THE&  SCRIPT?/";
    global.msg[1]= "\\\\M4* THAT TICKING SOUND..^1.&* THAT LIT FUSE.../";
    global.msg[2]= "\\\\M5* OH MY!!^1!&* LOOKS LIKE I WAS WRONG&  ABOUT THE MOVIE!/";
    global.msg[3]= "* WE DEFINITELY HAVE A BOX&  OFFICE BOMB ON OUR HANDS!/";
    global.msg[4]= "* AND IT\\'S ABOUT TO BLAST&  YOU TO BITS!/";
    global.msg[5]= "\\\\M3* BUT DON\\'T GET TOO EXCITED!/";
    global.msg[6]= "\\\\M4* YOU HAVEN\\'T EVEN SEEN&  THE REST OF THE ROOM&  YET!/%%";
    gr= instance_create(0, 0, obj_dialoguer );
    gr.side= 0;
    con= 100;
}
if(con == 75) {
    connor= 0;
    global.typer= 27;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msc= 0;
    global.facing= 0;
    global.msg[0]= "\\\\M3* ATTENTION^1, VIEWERS^1!&* OUR CORRESPONDENT HAS&  FOUND..^1. A BASKETBALL!/";
    global.msg[1]= "\\\\M4* AH^1.&* BASKETBALLS./";
    global.msg[2]= "\\\\M3* CIRCLES OF FUN^1.&* ORBS OF JOY^1.&* SPHERES OF AMUSEMENT./";
    global.msg[3]= "\\\\M4* BUT YOU SHOULDN\\'T PLAY&  WITH THIS ONE^1.&* IT\\'S AN MTT-BRAND FASHIONBALL./";
    global.msg[4]= "\\\\M3* PROPER MAINTENANCE IS&  REQUIRED TO KEEP IT LOOKING&  GOOD./";
    global.msg[5]= "\\\\M3* AS YOU CAN SEE^1, EVEN EXPOSURE&  TO HUMAN BODY HEAT CAUSES&  THE PAINT TO SLOUGH OFF./";
    global.msg[6]= "* .../";
    global.msg[7]= "* WAIT A SECOND./";
    global.msg[8]= "* THAT\\'S NOT A BASKETBALL./%%";
    gr= instance_create(0, 0, obj_dialoguer );
    gr.side= 0;
    con= 76;
}
if(con == 76 && instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 6 && connor == 0) {
    connor= 1;
    caster_pause(news);
}
if(con == 76 && !instance_exists(OBJ_WRITER )) {
    snd_play(snd_noise );
    with(basketball) sprite_index= bombsprite;
    con= 77;
    alarm[4]= 30;
}
if(con == 78) {
    global.msg[0]= "\\\\M5* THAT\\'S A BOMB!!!/";
    global.msg[1]= "* OH NO!!^1!&* THIS SPORT REVIEW.../";
    global.msg[2]= "* IS TURNING INTO A SHORT&  REVIEW!/";
    global.msg[3]= "* BECAUSE IT\\'LL BE OVER^1.&* AFTER YOU BLOW UP./";
    global.msg[4]= "\\\\M3* BUT DON\\'T GET TOO EXCITED!/";
    global.msg[5]= "\\\\M4* YOU HAVEN\\'T EVEN SEEN&  THE REST OF THE ROOM&  YET!/%%";
    gr= instance_create(0, 0, obj_dialoguer );
    gr.side= 0;
    con= 100;
}
if(con == 80) {
    connor= 0;
    global.typer= 27;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msc= 0;
    global.facing= 0;
    global.msg[0]= "\\\\M3* ATTENTION^1, VIEWERS^1!&* OUR CORRESPONDENT HAS&  FOUND..^1. A PRESENT!/";
    global.msg[1]= "\\\\M4* AND IT\\'S TIME FOR THE&  UNBOXING VIDEO!!!/";
    global.msg[2]= "\\\\M5* LET\\'S FIND OUT WHAT\\'S&  INSIDE!!/%%";
    gr= instance_create(0, 0, obj_dialoguer );
    gr.side= 0;
    con= 81;
}
if(con == 81 && !instance_exists(OBJ_WRITER )) {
    caster_pause(news);
    snd_play(snd_noise );
    with(present) sprite_index= bombsprite;
    con= 82;
    alarm[4]= 30;
}
if(con == 83) {
    global.msg[0]= "\\\\M2* THAT ROUND^1, BLACK SHAPE..^1.&* COULD IT BE???/";
    global.msg[1]= "\\\\M4* LOOKS LIKE CHRISTMAS CAME&  EARLY THIS YEAR./";
    global.msg[2]= "\\\\M5* IF SANTA GAVE PEOPLE BOMBS&  INSTEAD OF PRESENTS!!/";
    global.msg[3]= "\\\\M2* REALLY THOUGH^1.&* A BOMB^1.&* WHAT A THOUGHTFUL GIFT./";
    global.msg[4]= "\\\\M4* THEY EVEN DECIDED TO&  LIGHT IT FOR YOU!/";
    global.msg[5]= "\\\\M3* BUT DON\\'T GET TOO EXCITED!/";
    global.msg[6]= "\\\\M4* YOU HAVEN\\'T EVEN SEEN&  THE REST OF THE ROOM&  YET!/%%";
    gr= instance_create(0, 0, obj_dialoguer );
    gr.side= 0;
    con= 100;
}
if(con == 85) {
    connor= 0;
    global.typer= 27;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msc= 0;
    global.facing= 0;
    global.msg[0]= "\\\\M3* ATTENTION^1, VIEWERS^1!&* OUR CORRESPONDENT HAS&  FOUND..^1. A VIDEO GAME!/";
    global.msg[1]= "\\\\M4* THIS ACTION-PACKED GAME&  IS GUARANTEED TO BLOW YOU&  AWAY!/";
    global.msg[2]= "\\\\M3* STRANGE ENEMIES^1!&* STRANGE ALLIES^1!&* ATTRACTIVE ROBOTS!/";
    global.msg[3]= "\\\\M4* FEATURING UP TO SIX&  ARBITRARY DIALOGUE CHOICES&  AT ONCE!/";
    global.msg[4]= "\\\\M5* CORRESPONDENT^1!&* LET\\'S LOOK INSIDE THE CASE!/%%";
    gr= instance_create(0, 0, obj_dialoguer );
    gr.side= 0;
    con= 86;
}
if(con == 86 && !instance_exists(OBJ_WRITER )) {
    caster_pause(news);
    snd_play(snd_noise );
    with(game) sprite_index= bombsprite;
    con= 87;
    alarm[4]= 30;
}
if(con == 88) {
    global.msg[0]= "\\\\M4* ..^1.&* THOSE RED CYLINDERS WITH&  BURNING FUSES.../";
    global.msg[1]= "\\\\M5* OH NO^1!&* THIS GAME LITERALLY IS&  DYNAMITE!/";
    global.msg[2]= "\\\\M5* I GUESS THEY WERE RIGHT&  ALL ALONG!!!/";
    global.msg[3]= "\\\\M5* VIDEO-GAMES DO CAUSE&  VIOLENCE!/";
    global.msg[4]= "\\\\M4* OR AT LEAST THIS ONE\\'S&  ABOUT TO./";
    global.msg[5]= "\\\\M3* BUT DON\\'T GET TOO EXCITED!/";
    global.msg[6]= "\\\\M4* YOU HAVEN\\'T EVEN SEEN&  THE REST OF THE ROOM&  YET!/%%";
    gr= instance_create(0, 0, obj_dialoguer );
    gr.side= 0;
    con= 100;
}
if(con == 100 && !instance_exists(OBJ_WRITER )) {
    water.sprite_index= water.bombsprite;
    script.sprite_index= script.bombsprite;
    game.sprite_index= game.bombsprite;
    if(eventchoice != 1 && eventchoice != 4)
        present.sprite_index= present.bombsprite;
    global.flag[20]= 8;
    with(ff2) instance_destroy();
    with(ff3) instance_destroy();
    with(ff4) instance_destroy();
    con= 103;
    alarm[4]= 50;
    obj_mainchara.cutscene= 1;
    event_user(1);
}
if(con == 105) {
    if(__view_get( e__VW.XView, 0 ) > 240) __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (3) );
    if(__view_get( e__VW.XView, 0 ) < 210) __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (3) );
    if(__view_get( e__VW.YView, 0 ) < 140) __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (3) );
    if(__view_get( e__VW.YView, 0 ) > 150) __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (3) );
}
if(con == 104) {
    con= 105;
    alarm[4]= 30;
}
if(con == 106) con= 107;
if(con == 107) {
    global.typer= 27;
    global.msc= 0;
    global.faceemotion= 0;
    global.facechoice= 0;
    global.msg[0]= "* OH MY!/";
    global.msg[1]= "* IT SEEMS EVERYTHING IN THIS&  AREA IS ACTUALLY A BOMB!/";
    if(eventchoice != 1) {
        global.msg[2]= "* THAT DOG\\'S A BOMB!/%%";
        con= 108;
    } else  {
        global.msg[2]= "* THAT PRESENT\\'S A BOMB!/%%";
        con= 112;
    }
    dg= instance_create(0, 0, obj_dialoguer );
    dg.side= 0;
}
if(con == 108 && !instance_exists(OBJ_WRITER )) {
    snd_play(snd_noise );
    dog.sprite_index= dog.bombsprite;
    con= 109;
    alarm[4]= 30;
}
if(con == 110) con= 116;
if(con == 112 && !instance_exists(OBJ_WRITER )) {
    snd_play(snd_noise );
    present.sprite_index= present.bombsprite;
    con= 109;
    alarm[4]= 30;
}
if(con == 116) {
    if(eventchoice != 4) {
        global.msg[0]= "* THAT BASKETBALL\\'S A BOMB!/%%";
        con= 118;
    } else  {
        global.msg[0]= "* THAT PRESENT\\'S A BOMB!/%%";
        con= 122;
    }
    dg= instance_create(0, 0, obj_dialoguer );
    dg.side= 0;
}
if(con == 118 && !instance_exists(OBJ_WRITER )) {
    snd_play(snd_noise );
    basketball.sprite_index= basketball.bombsprite;
    con= 119;
    alarm[4]= 20;
}
if(con == 122 && !instance_exists(OBJ_WRITER )) {
    snd_play(snd_noise );
    present.sprite_index= present.bombsprite;
    con= 119;
    alarm[4]= 20;
}
if(con == 120) con= 125;
if(con == 125) {
    global.msg[0]= "* EVEN MY WORDS ARE...!/%%";
    dg= instance_create(0, 0, obj_dialoguer );
    dg.side= 0;
    con= 125.1;
}
if(con == 125.1 && !instance_exists(OBJ_WRITER )) {
    wordfall= instance_create(__view_get( e__VW.XView, 0 ) + 20, __view_get( e__VW.YView, 0 ) + 20, obj_wordfall );
    global.typer= 5;
    global.msg[0]= "\\\\TS ^7  %";
    global.msg[1]= " %%";
    dg= instance_create(0, 0, obj_dialoguer );
    dg.side= 0;
    con= 126;
}
if(con == 126 && !instance_exists(OBJ_WRITER )) {
    bigbomb= scr_marker(340, 80, 1767);
    bigbomb.depth= 500000;
    bigbombsolid= instance_create(340, 100, obj_solidwide );
    global.typer= 27;
    global.msg[0]= "\\\\W* BRAVE CORRESPONDENT..^1.&* IF YOU DON\\'T DEFUSE ALL OF&  THE BOMBS.../%%";
    dg= instance_create(0, 0, obj_dialoguer );
    dg.side= 0;
    con= 127;
}
if(con == 127 && !instance_exists(OBJ_WRITER )) {
    global.facing= 2;
    __view_set( e__VW.Object, 0, -4 );
    if(__view_get( e__VW.YView, 0 ) > 40) {
        obj_mettanchor.y-= 15;
        __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (10) );
    } else  con= 128;
}
if(con == 128) {
    global.msg[0]= "\\\\W*\\\\M9 THIS BIG BOMB WILL BLOW&  YOU TO SMITHEREENS IN&  \\\\YTWO MINUTES\\\\W!/";
    global.msg[1]= "\\\\M8* THEN YOU WON\\'T BE REPORTING&  " + chr(ord("\"")) + "LIVE" + chr(ord("\"")) + " ANY LONGER!/";
    global.msg[2]= "* HOW TERRIBLE^1!&* HOW DISTURBING!/";
    global.msg[3]= "\\\\M9* OUR NINE VIEWERS ARE GOING&  TO LOVE WATCHING THIS!/";
    global.msg[4]= "* GOOD LUCK^1, DARLING!!/%%";
    dg= instance_create(0, 0, obj_dialoguer );
    dg.side= 1;
    con= 129;
    // obj_mettnews_artifact
    with(1222) vspeed= 5;
    // obj_mettnews_artifact
    with(1222) gtfo= 1;
    with(dog) vspeed= 0;
    with(dog) gtfo= 0;
}
if(con == 129 && !instance_exists(OBJ_WRITER )) {
    if(instance_exists(game)) {
        with(game) instance_destroy();
    }
    if(instance_exists(present)) {
        with(present) instance_destroy();
    }
    if(instance_exists(script)) {
        with(script) instance_destroy();
    }
    if(instance_exists(water)) {
        with(water) instance_destroy();
    }
    if(instance_exists(basketball)) {
        with(basketball) instance_destroy();
    }
    obj_mettanchor.hspeed= 6;
    global.facing= 0;
    go= 0;
    xx= obj_mainchara.x;
    yy= obj_mainchara.y;
    if(__view_get( e__VW.XView, 0 ) < round(xx - __view_get( e__VW.WView, 0 ) / 2 + 10))
        __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (5) );
    if(__view_get( e__VW.XView, 0 ) > round(xx - __view_get( e__VW.WView, 0 ) / 2 + 10))
        __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (5) );
    if(abs(__view_get( e__VW.XView, 0 ) - round(xx - __view_get( e__VW.WView, 0 ) / 2 + 10)) < 6) {
        __view_set( e__VW.XView, 0, round(xx - __view_get( e__VW.WView, 0 ) / 2 + 10) );
        go++;
    }
    if(__view_get( e__VW.YView, 0 ) < round(yy - __view_get( e__VW.HView, 0 ) / 2 + 10))
        __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (5) );
    if(__view_get( e__VW.YView, 0 ) > round(yy - __view_get( e__VW.HView, 0 ) / 2 + 10))
        __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - (5) );
    if(abs(__view_get( e__VW.YView, 0 ) - round(yy - __view_get( e__VW.HView, 0 ) / 2 + 10)) < 6) {
        __view_set( e__VW.YView, 0, round(yy - __view_get( e__VW.HView, 0 ) / 2 + 10) );
        go++;
    }
    if(go == 2) con= 130;
}
if(con > 129 && quickskip == 0 && instance_exists(dog)) {
    clumber= 0;
    if(obj_mainchara.x > dog.x && dog.x > 300) clumber= 1;
    if(obj_mainchara.x < dog.x && dog.x < 400) clumber= 2;
    if(clumber != 0) {
        if(clumber == 1) dog.hspeed= -0.5;
        if(clumber == 2) dog.hspeed= 0.5;
        dog.sprite_index= spr_tobdogl_fire ;
    } else  {
        dog.hspeed= 0;
        dog.image_speed= 0.1;
        dog.sprite_index= spr_tobdog_sleep_fire ;
    }
}
if(con == 130 && !instance_exists(OBJ_WRITER )) {
    caster_free(-3);
    global.mercy= 1;
    global.msc= 0;
    global.typer= 5;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msg[0]= "* Ring.../";
    global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
    global.msg[2]= "* D-don\\'t worry!/";
    global.msg[3]= "\\\\E6* I installed a&  bomb-defusing program&  on your phone!/";
    global.msg[4]= "\\\\W* Use the \\'defuse\\' option&  when the bomb is in the&  \\\\GDEFUSE ZONE\\\\W!/";
    global.msg[5]= "\\\\E0* N-now^1, go get \\'em!/%%";
    scr_regulartext();
    con= 131;
    snd_play(snd_phone );
}
if(con == 131 && !instance_exists(OBJ_WRITER )) {
    if(quickskip == 0) {
        // obj_mettanchor
        with(1223) instance_destroy();
        newdog= instance_create(dog.x, dog.y, obj_mettnews_battleobj );
        // obj_mettnews_artifact
        with(1222) instance_destroy();
    } else  newdog= instance_create(400, 300, obj_mettnews_battleobj );
    newwater= instance_create(430, 400, obj_mettnews_battleobj );
    newwater.bombtype= 2;
    newscript= instance_create(680, 420, obj_mettnews_battleobj );
    newscript.bombtype= 3;
    newbasketball= instance_create(340, 100, obj_mettnews_battleobj );
    newbasketball.bombtype= 4;
    newpresent= instance_create(650, 100, obj_mettnews_battleobj );
    newpresent.bombtype= 5;
    newgame= instance_create(210, 500, obj_mettnews_battleobj );
    newgame.bombtype= 6;
    newticker= instance_create(__view_get( e__VW.XView, 0 ), __view_get( e__VW.YView, 0 ) + 200, obj_mettnews_ticker );
    newticker.on= 1;
    newticker.doom= 1;
    newticker.voff= 40;
    doomtimer= instance_create(0, 0, obj_doomtimer );
    obj_mainchara.cutscene= 0;
    __view_set( e__VW.Object, 0, 1570 );
    global.interact= 0;
    global.currentsong= caster_load("music/news_battle.ogg");
    caster_loop(global.currentsong, 1, 1);
    con= 132;
}
if(con == 160) {
    with(doomtimer) instance_destroy();
    newticker.on= 0;
    newticker.vspeed= 3;
    global.interact= 1;
    con= 161;
    instance_create(0, 0, obj_musfadeout );
    alarm[4]= 15;
}
if(con == 161) global.interact= 1;
if(con == 162) {
    if(global.flag[288] == 1) failure= 1;
    if(failure == 1) {
        instance_create(0, 0, obj_flasher );
        snd_play(snd_break2 );
        // obj_mettnews_battleobj
        with(1225) instance_destroy();
    }
    with(newticker) instance_destroy();
    mett= instance_create(__view_get( e__VW.XView, 0 ) + 340, __view_get( e__VW.YView, 0 ) + 70, obj_mettanchor );
    global.flag[20]= 8;
    mett.on= 2;
    if(instance_exists(obj_musfadeout )) {
        // obj_musfadeout
        with(92) instance_destroy();
        caster_free(-3);
    }
    global.currentsong= caster_load("music/mtgameshow.ogg");
    caster_loop(global.currentsong, 1, 1);
    con= 163;
    alarm[4]= 20;
}
if(con == 164) {
    conner= 0;
    global.typer= 27;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msc= 0;
    if(failure == 0) {
        global.msg[0]= "* WELL DONE^1, DARLING!/";
        global.msg[1]= "* YOU\\'VE DEACTIVATED ALL OF&  THE BOMBS!/";
        global.msg[2]= "\\\\W* IF YOU DIDN\\'T DEACTIVATE&  THEM^1, THE BIG BOMB WOULD&  HAVE EXPLODED IN \\\\YTWO MINUTES\\\\W./";
        global.msg[3]= "\\\\W* NOW IT WON\\'T EXPLODE&  IN \\\\YTWO MINUTES\\\\W!/";
        global.msg[4]= "\\\\W*\\\\M9 INSTEAD IT\\'LL EXPLODE&  IN \\\\YTWO SECONDS\\\\W!/";
        global.msg[5]= "* GOODBYE^1, DARLING!/%%";
    }
    if(failure == 1) {
        global.msg[0]= "* TOO BAD^1, DARLING!/";
        global.msg[1]= "\\\\W* YOU FAILED TO DEFUSE ALL&  OF THE BOMBS WITHIN \\\\YTHREE&  MINUTES\\\\W!/";
        global.msg[2]= "* NOW THE BIG BOMB IS&  GOING TO BLOW YOU TO&  SMITHEREENS!/";
        global.msg[3]= "* READY^1, VIEWERS^1?&* HERE COMES THE MOMENT&  YOU\\'VE ALL BEEN WAITING FOR!/";
        global.msg[4]= "* AHAHAH!/";
        global.msg[5]= "* GOODBYE^1, DARLING!/%%";
    }
    d= instance_create(0, 0, obj_dialoguer );
    d.side= 1;
    con= 165;
}
if(con == 165 && instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.stringno == 4 && conner == 0) {
        conner= 1;
        caster_pause(global.currentsong);
    }
    if(OBJ_WRITER.stringno == 5 && conner < 2) {
        mypitch= 1;
        ohno= caster_load("music/bad.ogg");
        caster_loop(ohno, 1, 1);
        conner= 2;
    }
}
if(con == 165 && !instance_exists(OBJ_WRITER )) {
    con= 166;
    alarm[4]= 80;
}
if(con == 167) {
    mypitch-= 0.015;
    caster_set_volume(ohno, mypitch);
    caster_set_pitch(ohno, mypitch);
    if(mypitch < 0.06) {
        con= 168;
        alarm[4]= 30;
        caster_free(ohno);
    }
}
if(con == 169) {
    conner= 0;
    global.msg[0]= "\\\\M8* AH./";
    global.msg[1]= "* IT SEEMS THE BOMB ISN\\'T&  GOING OFF./";
    global.msg[2]= "\\\\T0* Ring.../";
    scr_alface(3, 6);
    global.msg[4]= "* That\\'s b-because!!!/";
    global.msg[5]= "* While you were&  monologuing... I...!!!/";
    global.msg[6]= "\\\\E4* I f..^1. fix..^1.&* Um..^1. I ch-change.../";
    global.msg[7]= "\\\\TS \\\\F0 \\\\E0 \\\\TM %";
    global.msg[8]= "* OH NO^1.&* YOU DEACTIVATED THE BOMB&  WITH YOUR HACKING SKILLS./";
    scr_alface(9, 5);
    global.msg[10]= "* Yeah^1!&* That\\'s what I did!/";
    global.msg[11]= "\\\\TS \\\\F0 \\\\E0 \\\\TM %";
    global.msg[12]= "\\\\M9* CURSES^1!&* IT SEEMS I\\'VE BEEN FOILED&  AGAIN!/";
    global.msg[13]= "* CURSE YOU^1, HUMAN^1!&* CURSE YOU^1, DR. ALPHYS^1,&  FOR HELPING SO MUCH!/";
    global.msg[14]= "\\\\M8* BUT I DON\\'T CURSE MY&  EIGHT WONDERFUL VIEWERS&  FOR TUNING IN!!!/";
    global.msg[15]= "* UNTIL NEXT TIME^1, DARLING!/%%";
    dg= instance_create(0, 0, obj_dialoguer );
    dg.side= 1;
    con= 170;
}
if(con == 170 && !instance_exists(OBJ_WRITER )) {
    global.typer= 47;
    mett.hspeed= 4;
    mett.on= 99;
    global.facechoice= 6;
    global.faceemotion= 0;
    if(failure == 0) {
        global.msg[0]= "* W-wow..^1.&* W-we really showed&  him^1, huh?/";
        global.msg[1]= "\\\\E2* .../";
        global.msg[2]= "\\\\E4* H-hey^1, I know I was&  kind of weird at&  first.../";
        global.msg[3]= "\\\\E0* But I really think&  I\\'m getting more.../";
        global.msg[4]= "\\\\E4* Uh^1, more.../";
        global.msg[5]= "\\\\E6* M-more confident about&  guiding you!/";
        global.msg[6]= "\\\\E0* S-so don\\'t worry&  about that b-big&  d-dumb robot.../";
        global.msg[7]= "\\\\E6* I-I\\'ll protect you&  from him!/";
        global.msg[8]= "\\\\E3* A-and if it really&  c-came down to it^1,&  we could just t-turn.../";
        global.msg[9]= "\\\\E5* Um^1, nevermind./";
        global.msg[10]= "\\\\E0* Later!/";
        global.msg[11]= "\\\\TS \\\\F0 \\\\E0 \\\\T0 %";
        global.msg[12]= "* (Click...)/%%";
    }
    if(failure == 1) {
        global.faceemotion= 4;
        global.msg[0]= "* B-boy..^1.&* That was close^1, huh?/";
        global.msg[1]= "\\\\E8* I guess a little&  closer than I would&  have liked./";
        global.msg[2]= "\\\\E9* I should have given&  you better directions.../";
        global.msg[3]= "\\\\E8* A-and there j-just&  w-wasn\\'t enough&  time.../";
        global.msg[4]= "\\\\E6* W-well^1!&* That\\'s Mettaton\\'s fault^1,&  not mine!/";
        global.msg[5]= "\\\\E9* I c-can\\'t second&  guess myself now./";
        global.msg[6]= "\\\\E4* I\\'m f-finally starting&  to f-feel confident&  about g-guiding you./";
        global.msg[7]= "\\\\E6* I\\'ll protect you from&  that mean old robot^1,&  n-no matter what!/";
        global.msg[8]= "\\\\E3* If I have to^1,&  I\\'ll even t-turn.../";
        global.msg[9]= "\\\\E5* Um^1, nevermind./";
        global.msg[10]= "\\\\E0* We\\'re over halfway&  to the core!/";
        global.msg[11]= "* Let\\'s go!/";
        global.msg[12]= "\\\\TS \\\\F0 \\\\E0 \\\\T0 %";
        global.msg[13]= "* (Click...)/%%";
    }
    instance_create(0, 0, obj_dialoguer );
    con= 171;
}
if(con == 171 && !instance_exists(OBJ_WRITER )) {
    flowey= instance_create(40, 300, obj_stalkerflowey );
    obj_mainchara.cutscene= 0;
    __view_set( e__VW.Object, 0, 1570 );
    // obj_mettnews_ticker
    with(1231) instance_destroy();
    // obj_mettanchor
    with(1223) instance_destroy();
    // obj_kitchenforcefield
    with(1183) instance_destroy();
    global.plot= 161;
    con= 172;
    caster_free(-3);
    // obj_bluelaser_o
    with(1281) active= 2;
    global.interact= 0;
    global.flag[17]= 0;
    global.mercy= 0;
    scr_tempsave();
    instance_destroy();
}
if(__view_get( e__VW.YView, 0 ) <= 0) __view_set( e__VW.YView, 0, 0 );

/* */
/*  */
