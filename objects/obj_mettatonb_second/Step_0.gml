if(global.mnfight == 3) {
    attacked= 0;
    talked= 0;
}
if(alarm[5] > 0) {
    if(global.monster[0] == 1 && global.monsterinstance[0].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[0].alarm[5];
    if(global.monster[1] == 1 && global.monsterinstance[1].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[1].alarm[5];
    if(global.monster[2] == 1 && global.monsterinstance[2].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[2].alarm[5];
}
if(global.mnfight == 1) {
    if(talked == 1 && !instance_exists(OBJ_WRITER )) {
        alarm[5]= 1;
        talked= 2;
    }
    if(talked == 0) {
        attacked= 0;
        alarm[6]= 1;
        talked= 1;
        global.heard= 0;
    }
}
if(global.hurtanim[myself] == 1) {
    shudder= 8;
    alarm[3]= global.damagetimer;
    global.hurtanim[myself]= 3;
}
if(global.hurtanim[myself] == 2) {
    with(dmgwriter) alarm[2]= 15;
    if(global.monsterhp[myself] >= 1) {
        global.hurtanim[myself]= 0;
        hurta= 0;
        global.myfight= 0;
        global.mnfight= 1;
    } else  {
        global.myfight= 0;
        global.mnfight= 1;
        killed= 1;
        instance_destroy();
    }
}
if(global.hurtanim[myself] == 5) {
    global.damage= 0;
    instance_create(x + sprite_width / 2 - 48, y - 24, obj_dmgwriter );
    // obj_dmgwriter
    with(189) alarm[2]= 30;
    global.myfight= 0;
    global.mnfight= 1;
    global.hurtanim[myself]= 0;
}
if(global.mnfight == 2 && attacked == 0) {
    if(con == 0) con= 1;
    if(turns > 1 && global.flag[385] == 1) {
        global.firingrate= 6;
        g= instance_create(100, 100, obj_blackbulletgen1 );
        g.hspeed= 4;
        global.turntimer= 90;
    }
    with(mypart1) event_user(0);
    global.msg[0]= "* Mettaton.";
    if(mycommand >= 0) global.msg[0]= "* Mettaton.";
    if(mycommand >= 25)
        global.msg[0]= "* Aaron is sweating bullets^3.&* Literally.";
    if(mycommand >= 50)
        global.msg[0]= "* Aaron is admiring his own&  muscles.";
    if(mycommand >= 75)
        global.msg[0]= "* Smells like an underwater&  barnyard.";
    if(mycommand >= 90) global.msg[0]= "* Smells like a mussel farm.";
    global.msg[0]= "* Mettaton.";
    if(global.monsterhp[myself] < 30) global.msg[0]= "* No on e cares.";
    attacked= 1;
    alarm[7]= 20;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* METTATON - ATK 30 DEF 255&* His metal body STILL renders&  him invulnerable to attack./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        global.msg[0]= "* You yell..^1.&* Nothing happened./^";
        if(global.flag[385] == 1) {
            global.flag[385]= 2;
            global.msg[0]= "* You press the yellow button^1.&* The phone is resonating with&  Mettaton\\'s presence...!/^";
            con= 10;
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    global.heard= 1;
}
if(whatiheard == 3 && flex == 3 && instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 1) {
    vspeed= -4;
    mypart1.vspeed= -4;
}
if(global.myfight == 4 && global.mercyuse == 0) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}
if(mercymod == 222 && !instance_exists(OBJ_WRITER )) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}
if(con == 1) {
    phone= instance_create(500, 260, obj_npc_marker );
    phone.sprite_index= spr_fakephone ;
    phone.image_speed= 0;
    phone.visible= 1;
    phone.depth= 20;
    snd_play(snd_phone );
    phone.vspeed= -2;
    con= 2;
    alarm[4]= 30;
}
if(con == 3) {
    phone.vspeed= 0;
    snd_play(snd_phone );
    con= 4;
    alarm[4]= 30;
}
if(con == 5) {
    global.msc= 0;
    global.msg[0]= "IS THAT YOUR PHONE?&YOU\\'D BETTER ANSWER&IT!/%%";
    global.typer= 51;
    scr_blcon(mypart1.x - 320, mypart1.y - 120, 1);
    con= 6;
}
if(con == 6 && !instance_exists(OBJ_WRITER )) {
    shblcon= instance_create(phone.x + 10, phone.y, obj_blconsm );
    shblcon.sprite_index= spr_shockblcon2 ;
    shake= 1;
    global.typer= 49;
    global.msg[0]= "H-hey!!&Th-this seems bad,&but don\\'t worry!!/";
    global.msg[1]= "Th-there\\'s one last&thing I installed&on your phone...!/";
    global.msg[2]= "\\\\WYou see that\\\\Y &yellow button\\\\W...?/";
    global.msg[3]= "Go to this phone\\'s&[[ACT]] menu and&press it!!!/%%";
    instance_create(phone.x - 100, phone.y - 140, OBJ_WRITER );
    con= 7;
}
if(con == 7 && !instance_exists(OBJ_WRITER )) {
    global.msg[0]= "* Your phone\\'s [[ACT]] menu is&  glowing.";
    global.flag[385]= 1;
    with(shblcon) instance_destroy();
    con= 8;
    shake= 0;
    global.turntimer= -1;
    global.mnfight= 3;
    global.myfight= -1;
}
if(con > 6 && shake == 1 && instance_exists(shblcon)) {
    shblcon.x= shblcon.xstart + random(2);
    shblcon.y= shblcon.ystart + random(2);
}
if(con == 11) {
    obj_heart.movement= -1;
    con= 12;
    alarm[4]= 40;
}
if(con == 13) {
    caster_stop(global.batmusic);
    ctheart= instance_create(obj_heart.x + 8, obj_heart.y + 8, obj_cutsceneheart );
    obj_heart.x= -999;
    obj_heart.movement= -1;
    con= 14;
}
if(con == 15) {
    shblcon= instance_create(phone.x + 10, phone.y, obj_blconsm );
    shblcon.sprite_index= spr_shockblcon2 ;
    shake= 1;
    global.typer= 49;
    global.msg[0]= "Now press [Z]!!!";
    instance_create(phone.x - 100, phone.y - 140, OBJ_WRITER );
    con= 16;
    alarm[4]= 15;
}
if(con == 17) {
    if(global.hp > 999) {
        global.turntimer= 300;
        instance_create(obj_heart.x, obj_heart.y - 180, obj_blackboxtest );
        instance_create(obj_heart.x - 20, obj_heart.y - 180, obj_blackboxtest );
        instance_create(obj_heart.x - 40, obj_heart.y - 180, obj_blackboxtest );
        instance_create(obj_heart.x - 60, obj_heart.y - 180, obj_blackboxtest );
        instance_create(obj_heart.x + 20, obj_heart.y - 180, obj_blackboxtest );
        instance_create(obj_heart.x + 40, obj_heart.y - 180, obj_blackboxtest );
        instance_create(obj_heart.x + 60, obj_heart.y - 180, obj_blackboxtest );
        instance_create(obj_heart.x, obj_heart.y - 220, obj_blackboxtest );
        instance_create(obj_heart.x, obj_heart.y - 260, obj_blackboxtest );
        instance_create(obj_heart.x - 20, obj_heart.y - 220, obj_blackboxtest );
        instance_create(obj_heart.x + 20, obj_heart.y - 220, obj_blackboxtest );
        obj_blackboxtest.vspeed= 3;
        obj_blackboxtest.friction= -0.1;
        obj_blackboxtest.dmg= 1;
    }
    con= 18;
    alarm[4]= 120;
}
if(con == 25) {
    // OBJ_WRITER
    with(782) instance_destroy();
    with(shblcon) instance_destroy();
    // obj_heartshot
    with(739) instance_destroy();
    con= 24.5;
    alarm[4]= 30;
}
if(con == 25.5) {
    global.msc= 0;
    global.msg[0]= "OOOH!/";
    global.msg[1]= "OOOOOOOH!/";
    global.msg[2]= "YOU\\'VE DEFEATED ME!!/";
    global.msg[3]= "HOW CAN THIS BE,&YOU WERE STRONGER&THAN I THOUGHT, ETC./%%";
    global.typer= 51;
    scr_blcon(mypart1.x - 320, mypart1.y - 120, 1);
    con= 26;
}
if(con == 26 && !instance_exists(OBJ_WRITER )) {
    global.msg[0]= "WHATEVER.";
    scr_blcon(mypart1.x - 320, mypart1.y - 120, 1);
    con= 27;
    mypart1.hspeed= -7;
    mypart1.hurta= 1;
    alarm[4]= 60;
}
if(con >= 27 && instance_exists(obj_blconwideslave )) {
    obj_blconwideslave.x= mypart1.x - 320;
    OBJ_WRITER.writingx= mypart1.x - 280;
}
if(con == 28) {
    instance_create(0, 0, obj_unfader );
    con= 29;
    alarm[4]= 13;
}
if(con == 30) {
    caster_free(-3);
    room_goto(global.currentroom);
}

/* */
/*  */
