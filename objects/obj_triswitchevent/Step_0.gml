if(con == 0 && switches == 2 && obj_mainchara.x < 390 && obj_mainchara.x > 380 && obj_mainchara.y < 90 && global.interact == 0) {
    global.facechoice= 0;
    global.typer= 5;
    global.msc= 0;
    global.interact= 1;
    snd_play(snd_phone );
    global.msg[0]= "* Ring.../";
    global.msg[1]= "\\\\TS \\\\E3 \\\\F6 \\\\TA %";
    global.msg[2]= "\\\\E6* OK^1!&* Now press the third&  one!!!/%%";
    global.msg[3]= "\\\\TS \\\\F0 \\\\E0 \\\\T0 %";
    global.msg[4]= "* (Click...)/%%";
    global.plot= 140;
    instance_create(0, 0, obj_dialoguer );
    con= 0.1;
    alarm[4]= 28;
}
if(con == 1.1 && !instance_exists(OBJ_WRITER )) {
    con= 2;
    global.interact= 0;
}
if(con == 2 && obj_mainchara.x < 280 && global.interact == 0 && switches < 3 && won == 0 && !instance_exists(OBJ_WRITER )) {
    global.interact= 1;
    global.facechoice= 6;
    global.faceemotion= 3;
    global.typer= 47;
    global.msc= 0;
    global.msg[0]= "\\\\E1* ............./";
    global.msg[1]= "\\\\E2* ............./";
    global.msg[2]= "\\\\E0* H-h-hey!/";
    global.msg[3]= "\\\\E5* Looks like you!!!^1 &* Only needed to press^1!&* Two of them!!!/%%";
    global.msg[4]= "\\\\TS \\\\F0 \\\\E0 \\\\T0 %";
    global.msg[5]= "* (Click...)/%%";
    global.plot= 140;
    instance_create(0, 0, obj_dialoguer );
    con= 3;
}
if((con == 3 || con == 1 || con == 0.1 || con == 1.1) && instance_exists(OBJ_WRITER )) {
    if(donkeykongismyfavoritemarvelsuperhero == 0) {
        wrx= OBJ_WRITER.writingx - __view_get( e__VW.XView, 0 );
        dgx= obj_dialoguer.x - __view_get( e__VW.XView, 0 );
        donkeykongismyfavoritemarvelsuperhero= 1;
    }
    if(donkeykongismyfavoritemarvelsuperhero == 1) {
        OBJ_WRITER.myx= __view_get( e__VW.XView, 0 ) + wrx;
        OBJ_WRITER.writingx= __view_get( e__VW.XView, 0 ) + wrx;
        if(instance_exists(obj_face )) {
            obj_face.x= __view_get( e__VW.XView, 0 ) + 24;
            OBJ_WRITER.myx= __view_get( e__VW.XView, 0 ) + wrx + 58;
            OBJ_WRITER.writingx= __view_get( e__VW.XView, 0 ) + wrx + 58;
        }
        obj_dialoguer.xx= __view_get( e__VW.XView, 0 );
        obj_dialoguer.x= __view_get( e__VW.XView, 0 ) + dgx;
    }
    if(con == 3 && OBJ_WRITER.stringno == 2 && deltaco == 0)
        deltaco= 1;
}
if(con == 3 && !instance_exists(OBJ_WRITER )) {
    con= 4;
    global.interact= 0;
}
if(switches == 3 && con < 4) {
    won= 1;
    deltaco= 1;
}
if(won == 1 && obj_mainchara.x < 280 && global.interact == 0) {
    global.interact= 1;
    snd_play(snd_phone );
    global.facechoice= 6;
    global.faceemotion= 6;
    global.typer= 5;
    global.msc= 0;
    global.msg[0]= "* Ring.../";
    global.msg[1]= "\\\\TS \\\\E4 \\\\F6 \\\\TA %";
    global.msg[2]= "\\\\E3* H-h-hey^1!&* You did it!/";
    global.msg[2]= "\\\\E4* I was worried I&  messed it up&  there.../";
    global.msg[3]= "\\\\E0* But I guess we&  make a pretty good&  team!/%%";
    global.msg[4]= "\\\\TS \\\\F0 \\\\E0 \\\\T0 %";
    global.msg[5]= "* (Click...)/%%";
    global.plot= 140;
    instance_create(0, 0, obj_dialoguer );
    con= 8;
    global.flag[404]= 1;
    global.plot= 140;
}
if(con == 8) {
    global.interact= 0;
    con= 9;
}
if(deltaco == 1) {
    with(ff) image_alpha-= 0.05;
    if(ff.image_alpha < 0.06) {
        with(ff) instance_destroy();
        deltaco= 2;
    }
}

/* */
/*  */
