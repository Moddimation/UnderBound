if(con == 1) {
    global.facing= 2;
    global.interact= 1;
    image_speed= 0.08;
}
if(con == 2) {
    con= 3;
    global.msc= 0;
    global.faceemotion= 3;
    global.facechoice= 9;
    global.typer= 89;
    global.msg[0]= "* I\\'m so sorry./%%";
    instance_create(0, 0, obj_dialoguer );
}
if(con == 3 && !instance_exists(OBJ_WRITER )) {
    con= 4;
    alarm[4]= 90;
}
if(con == 4) {
    image_speed= 0.1;
    sprite_index= spr_asriel_rubtears ;
}
if(con == 5) {
    con= 6;
    alarm[4]= 90;
    image_speed= 0;
    image_index= 0;
    y-= 2;
    sprite_index= spr_asriel_tearsdry ;
}
if(con == 6) {
    if(image_index < 2)
        image_index+= 0.0333333333333333;
    else  image_index= 2;
}
if(con == 7) {
    caster_loop(musicbox, 1, 0.8);
    sprite_index= spr_asriel_d ;
    global.msc= 800;
    global.faceemotion= 7;
    global.facechoice= 9;
    global.typer= 89;
    instance_create(0, 0, obj_dialoguer );
    con= 7.1;
    mvol= caster_get_volume(musicbox);
}
if(con == 7.1 && !instance_exists(OBJ_WRITER )) {
    mvol-= 0.02;
    caster_set_volume(musicbox, mvol);
    if(mvol < -0.5) con= 8;
}
if(con == 8 && !instance_exists(OBJ_WRITER )) {
    alarm[3]= 60;
    con= 9;
    image_index= 0;
    siner= 0;
    thisy= y;
    upy= 0;
    times= 0;
}
if(con == 9) {
    con= 10;
    alarm[4]= 420;
    whited= 0;
    shaked= -3;
    powered= 1;
}
if(con == 10 || con == 11) {
    shaked+= 0.01;
    if(shaked > 0) {
        if(shaked < 1) shaked= 1;
        __view_set( e__VW.XView, 0, 0 + random(shaked) - random(shaked) );
        __view_set( e__VW.YView, 0, 0 + random(shaked) - random(shaked) );
    }
}
if(powered == 1) {
    sprite_index= spr_asriel_power ;
    if(image_index < 7) image_index+= 0.03;
    if(image_index >= 7) {
        image_index+= 0.2;
        if(image_index >= 8.8) {
            times++;
            image_index= 7;
        }
        if(times > 6 && emerge == 0) emerge= 1;
    }
    if(image_index >= 5) {
        if(upy < 10) upy+= 0.25;
        siner++;
        y= thisy - upy - sin(siner / 8) * 1;
    }
}
if(emerge == 1) {
    m= instance_create(x + 3, y + 10, obj_mhd );
    m.spec= 1;
    m.rno[0]= 6;
    alarm[5]= 10;
    emerge= 2;
}
if(con == 20) {
    mc.sprite_index= spr_maincharal ;
    mc.x= x + 60;
    mc.y= thisy - 2;
    sprite_index= spr_asriel_powerdown ;
    image_index= 0;
    image_speed= 0;
    con= 21;
    alarm[4]= 50;
}
if(con == 22) con= 23;
if(con == 23) {
    image_index+= 0.05;
    if(y < thisy) y+= 0.2;
    else  y= thisy;
    if(image_index >= 10) {
        con= 24;
        alarm[4]= 70;
    }
}
if(con == 25) {
    sprite_index= spr_asriel_rsad ;
    con= 26;
    alarm[4]= 70;
}
if(con == 27) {
    sprite_index= spr_asriel_lookdown ;
    con= 27.1;
    global.msc= 803;
    global.faceemotion= 7;
    global.facechoice= 9;
    global.typer= 89;
    dl= instance_create(0, 0, obj_dialoguer );
    dl.side= 0;
}
if(con == 28 && !instance_exists(OBJ_WRITER )) {
    sprite_index= spr_asriel_lookdown ;
    mc.x= x + 60;
    mc.y= thisy - 2;
    mc.depth= depth - 1;
    con= 29;
}
if(con == 29) {
    mc.x--;
    mc.image_index+= 0.1;
    if(mc.x <= x + 2) {
        mc.x= x + 2;
        con= 30;
        alarm[4]= 20;
    }
}
if(con == 31) {
    mc.image_index= 0;
    mc.visible= 0;
    image_index= 0;
    sprite_index= spr_asriel_hug ;
    con= 32;
}
if(con == 32) {
    image_index+= 0.2;
    if(image_index >= 4) {
        con= 33;
        alarm[4]= 40;
    }
}
if(con == 34) {
    image_index+= 0.2;
    if(image_index >= 8) {
        con= 35;
        alarm[4]= 40;
    }
}
if(con == 36) {
    pattimer= 0;
    image_index+= 0.2;
    if(image_index >= 11) {
        con= 37;
        alarm[4]= 80;
    }
}
if(con == 38 || con == 38.1) {
    image_index+= 0.05;
    if(image_index >= 11.8) image_index= 10.2;
    pattimer++;
    if(pattimer == 90) {
        con= 38.1;
        global.msc= 0;
        global.faceemotion= 0;
        global.facechoice= 0;
        global.typer= 90;
        global.msg[0]= "* Ha..^1. ha.../";
        global.msg[1]= "* I don\\'t want to let&  go.../%%";
        dl= instance_create(0, 0, obj_dialoguer );
        dl.side= 0;
    }
}
if(con == 38.1 && !instance_exists(OBJ_WRITER )) {
    con= 38.2;
    alarm[4]= 60;
}
if(con == 39.2) {
    con= 39;
    hug_rev= 11;
    image_index= 11;
}
if(con == 39) {
    if(hug_rev > 0.3) {
        hug_rev-= 0.1;
        image_index-= 0.1;
    } else  {
        image_index= 0;
        con= 40;
        alarm[4]= 30;
        mcx= mc.x;
        mc.visible= 1;
        sprite_index= spr_asriel_lookdown ;
    }
}
if(con == 41) {
    mc.image_index+= 0.1;
    mc.x++;
    if(mc.x > mcx + 30) {
        mc.image_index= 0;
        con= 49;
        alarm[4]= 50;
    }
}
if(con == 50 && !instance_exists(OBJ_WRITER )) {
    sprite_index= spr_asriel_r ;
    global.msg[0]= "\\\\E7* Frisk.../";
    global.msg[1]= "* You\\'re.../";
    global.msg[2]= "\\\\E0* You\\'re going to do&  a great job^1, OK?/";
    global.msg[3]= "* No matter what you&  do./";
    global.msg[4]= "* Everyone will be&  there for you^1,&  okay?/%%";
    global.msc= 0;
    global.faceemotion= 7;
    global.facechoice= 9;
    global.typer= 89;
    dl= instance_create(0, 0, obj_dialoguer );
    dl.side= 1;
    con= 50.1;
}
if(con == 50.1 && !instance_exists(OBJ_WRITER )) {
    con= 49.2;
    alarm[4]= 40;
}
if(con == 50.2) {
    sprite_index= spr_asriel_u ;
    con= 49.3;
    alarm[4]= 50;
}
if(con == 50.3) {
    global.msc= 0;
    global.faceemotion= 7;
    global.facechoice= 9;
    global.typer= 89;
    global.msg[0]= "\\\\E7* Well..^1.&* My time\\'s running out./";
    global.msg[1]= "* Goodbye./%%";
    dl= instance_create(0, 0, obj_dialoguer );
    dl.side= 1;
    con= 52;
}
if(con == 52 && !instance_exists(OBJ_WRITER )) {
    vspeed= -0.25;
    image_speed= 0.1;
    con= 54;
    alarm[4]= 80;
}
if(con == 55) {
    y= round(y);
    vspeed= 0;
    image_speed= 0;
    image_index= 0;
    con= 56;
    alarm[4]= 80;
}
if(con == 57) {
    sprite_index= spr_asriel_d ;
    con= 58;
    alarm[4]= 60;
}
if(con == 59) {
    global.msc= 0;
    global.faceemotion= 0;
    global.facechoice= 9;
    global.typer= 89;
    global.msg[0]= "* By the way.../";
    global.msg[1]= "* Frisk./";
    global.msg[2]= "\\\\E6* ... take care of Mom&  and Dad for me^1, OK?/%%";
    dl= instance_create(0, 0, obj_dialoguer );
    dl.side= 1;
    con= 60;
}
if(con == 60 && !instance_exists(OBJ_WRITER )) {
    con= 61;
    alarm[4]= 40;
}
if(con == 62) {
    con= 63;
    alarm[4]= 40;
    sprite_index= spr_asriel_u ;
    ttimer= 0;
}
if(con == 64) {
    mc.sprite_index= spr_maincharau ;
    sprite_index= spr_asriel_u ;
    vspeed= -0.25;
    image_speed= 0.05;
    ttimer++;
    if(ttimer == 40) {
        sw= instance_create(0, 0, obj_screenwhiter );
        sw.ex= 1;
    }
    if(ttimer == 104) {
        global.flag[510]= 1;
        global.plot= 999;
        global.flag[7]= 1;
        ini_open("undertale.ini");
        ini_write_real("F7", "F7", 1);
        ini_close();
        room_goto(236);
    }
}


/*  */
