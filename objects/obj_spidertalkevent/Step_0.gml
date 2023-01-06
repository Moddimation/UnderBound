if(active == 1) {
    global.typer= 5;
    global.msc= 0;
    global.facechoice= 0;
    if(con == 0) {
        global.msg[0]= "* Ahuhuhuhu.../";
        global.msg[1]= "* Did you hear what they&  just said?/%%";
        if(murder == 1) global.msg[1]= "* Did you hear what she&  said?/%%";
        snd_play(snd_hurtgirl );
        instance_create(0, 0, obj_dialoguer );
        con= 90;
    }
    if(con == 1) {
        global.msg[0]= "* They said a human wearing a&  striped shirt will come&  through./%%";
        snd_play(snd_hurtgirl );
        instance_create(0, 0, obj_dialoguer );
        con= 90;
    }
    if(con == 2) {
        global.msg[0]= "* I heard that they hate&  spiders./%%";
        snd_play(snd_hurtgirl );
        instance_create(0, 0, obj_dialoguer );
        con= 90;
    }
    if(con == 3) {
        global.msg[0]= "* I heard that they love to&  stomp on them./%%";
        if(murder == 1)
            global.msg[1]= "* I heard that they hate&  everybody./%%";
        snd_play(snd_hurtgirl );
        instance_create(0, 0, obj_dialoguer );
        con= 90;
    }
    if(con == 4) {
        global.msg[0]= "* I heard that they like to&  tear their legs off./%%";
        snd_play(snd_hurtgirl );
        instance_create(0, 0, obj_dialoguer );
        con= 90;
    }
    if(con == 5) {
        if(global.flag[59] < 9000) global.msg[0]= "* I heard.../%%";
        else  {
            global.msg[0]= "* However.../%%";
            if(murder == 1)
                global.msg[0]= "* And even if they gave us&  money^1, I heard.../%%";
        }
        snd_play(snd_hurtgirl );
        instance_create(0, 0, obj_dialoguer );
        con= 90;
    }
    if(con == 90 && !instance_exists(OBJ_WRITER )) {
        global.interact= 0;
        active= 0;
        x+= 90;
        global.flag[396]++;
        con= global.flag[396];
        if(con == 6) pausewait= 1;
    }
}
if(pausewait == 1) {
    global.flag[17]= 1;
    if(obj_mainchara.image_speed == 0)
        pausewaittime+= 3;
    else  pausewaittime++;
    if(pausewaittime > 150) {
        pausewait= 0;
        con= 15;
    }
}
if(con == 15 && global.interact == 0) {
    global.interact= 1;
    global.flag[17]= 0;
    bigweb= scr_marker(582, 84, 1801);
    bigweb.depth= 99999;
    muffet= scr_marker(635, 96, 1802);
    muffet.depth= 99998;
    bigweb.image_alpha= 0;
    muffet.image_alpha= 0;
    con= 15.1;
    alarm[4]= 30;
}
if(con == 15.1) {
    bigweb.image_alpha+= 0.04;
    muffet.image_alpha+= 0.04;
}
if(con == 16.1) {
    hspider[0]= instance_create(556, -20, obj_highspider );
    hspider[0].vspeed= 3;
    hspider[0].alarm[5]= 38;
    hspider[1]= instance_create(600, -20, obj_highspider );
    hspider[1].vspeed= 3;
    hspider[1].alarm[5]= 35;
    hspider[2]= instance_create(684, -20, obj_highspider );
    hspider[2].vspeed= 3;
    hspider[2].alarm[5]= 35;
    hspider[3]= instance_create(720, -20, obj_highspider );
    hspider[3].vspeed= 3;
    hspider[3].alarm[5]= 38;
    ss1= scr_marker(428, 180, 1804);
    ss2= scr_marker(438, 170, 1804);
    ss1.image_speed= 0.25;
    ss1.hspeed= 4;
    ss2.hspeed= 3.5;
    ss2.image_speed= 0.25;
    ss3= scr_marker(854, 180, 1804);
    ss4= scr_marker(864, 170, 1804);
    ss3.hspeed= -4;
    ss3.image_speed= 0.25;
    ss4.hspeed= -3.5;
    ss4.image_speed= 0.25;
    con= 16;
    alarm[4]= 20;
}
if(con == 17) {
    ss1.speed= 0;
    ss2.speed= 0;
    ss3.speed= 0;
    ss4.speed= 0;
    ss1.image_speed= 0;
    ss2.image_speed= 0;
    ss3.image_speed= 0;
    ss4.image_speed= 0;
    conner= 0;
    global.facing= 2;
    global.typer= 5;
    global.msc= 0;
    global.facechoice= 0;
    if(global.flag[59] < 9000) {
        if(global.tempvalue[11] == 0)
            global.msg[0]= "* ... that they\\'re awfully&  stingy with their money./";
        else  global.msg[0]= "* ... a certain stingy human&  hates spiders./%%";
        global.msg[1]= "* Ahuhuhuhu.../";
        global.msg[2]= "* You think your taste&  is too refined for our&  pastries^1, don\\'t you^1, deary?/";
        global.msg[3]= "* Ahuhuhu..^1.&* I disagree with that&  notion./";
        global.msg[4]= "* I think your taste.../";
        global.msg[5]= "* Is exactly what this&  next batch needs!/%%";
        con= 18;
    } else  {
        global.msg[0]= "* ... that can\\'t be true^1,&  can it?/";
        global.msg[1]= "* Ahuhuhu.../";
        global.msg[2]= "* You donated so much money&  to us./";
        global.msg[3]= "* All the spiders want you&  to know how thankful&  they are!/";
        global.msg[4]= "* We\\'re in your debt^1, dearie~/%%";
        con= 40;
    }
    if(murder == 1) {
        global.msg[0]= "* ... that they have some awful&  taste./";
        global.msg[1]= "* What a shame^1.&* A human comes through and they&  aren\\'t even fit to be eaten~/";
        global.msg[2]= "* Oh well^1!&* Rotten ingredients can&  always be discarded~/%%";
        con= 18;
    }
    dr= instance_create(0, 0, obj_dialoguer );
    dr.side= 0;
}
if(con == 18 && !instance_exists(OBJ_WRITER ) && conner == 0 && OBJ_WRITER.stringno == 1) {
    snd_play(snd_hurtgirl );
    conner= 1;
}
if(con == 18 && !instance_exists(OBJ_WRITER )) {
    con= 19;
    alarm[4]= 50;
}
if(con == 19) {
    muffet.image_index+= 0.25;
    if(muffet.image_index >= 5.75) muffet.image_index= 4;
}
if(con == 20) {
    global.mercy= 1;
    global.battlegroup= 56;
    instance_create(0, 0, obj_battler );
    con= 21;
    alarm[4]= 33;
}
if(con == 21) global.interact= 1;
if(con == 22) {
    con= 23;
    with(ss1) instance_destroy();
    with(ss2) instance_destroy();
    with(ss3) instance_destroy();
    with(ss4) instance_destroy();
    if(global.flag[12] == 1) {
        global.flag[397]= 1;
        with(muffet) instance_destroy();
        // obj_highspider
        with(1234) instance_destroy();
        with(bigweb) instance_destroy();
    } else  {
        muffet.image_speed= 0;
        muffet.image_index= 0;
        con= 30;
    }
    // obj_slowdownwalk_x
    with(1236) instance_destroy();
    obj_mainchara.cutscene= 0;
    global.interact= 1;
    alarm[4]= 15;
}
if(con == 23 || con == 30) global.interact= 1;
if(con == 24) con= 60;
if(con == 31) {
    snd_play(snd_hurtgirl );
    global.typer= 5;
    global.facechoice= 0;
    global.msc= 0;
    global.msg[0]= "* Ahuhuhuhu.../";
    global.msg[1]= "* That was fun^1!&* See you again^1, dearie!/%%";
    con= 32;
    gr= instance_create(0, 0, obj_dialoguer );
    gr.side= 0;
}
if(con == 32 && !instance_exists(OBJ_WRITER )) {
    con= 33;
    alarm[4]= 40;
}
if(con == 33 && !instance_exists(OBJ_WRITER )) {
    muffet.image_index+= 0.25;
    if(muffet.image_index >= 5.75) muffet.image_index= 4;
}
if(con == 34) {
    con= 35;
    alarm[4]= 40;
}
if(con == 35) {
    muffet.image_alpha-= 0.04;
    bigweb.image_alpha-= 0.04;
    // obj_highspider
    with(1234) {
        vspeed= -4;
        image_speed= 0.2;
    }
}
if(con == 36) con= 60;
if(con == 40 && !instance_exists(OBJ_WRITER )) {
    ss1.image_speed= 0.25;
    ss1.hspeed= -4;
    ss2.hspeed= -3.5;
    ss2.image_speed= 0.25;
    ss3.hspeed= 4;
    ss3.image_speed= 0.25;
    ss4.hspeed= 3.5;
    ss4.image_speed= 0.25;
    // obj_slowdownwalk_x
    with(1236) instance_destroy();
    obj_mainchara.cutscene= 0;
    con= 35;
    alarm[4]= 40;
}
if(con == 60) {
    global.plot= 165;
    global.mercy= 0;
    global.border= 0;
    global.flag[17]= 0;
    global.interact= 0;
    if(murder == 1) global.plot= 185;
    instance_destroy();
}

/* */
/*  */
