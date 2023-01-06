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
    if(keyboard_multicheck_pressed(1) && instance_exists(782))
        OBJ_WRITER.stringpos= string_length(OBJ_WRITER.originalstring);
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
    if(turns >= 5 && con == 0) con= 1;
    if(con != 1) {
        if(turns == 1) global.attacktype= 100;
        else  mypart1.tang= 0;
        if(turns == 2) global.attacktype= 26;
        if(turns == 3) global.attacktype= 27;
        if(turns == 4) global.attacktype= 28;
        if(turns > 4) global.attacktype= 29;
        gen= instance_create(0, 0, obj_mettattackgen );
        if(turns == 1) gen.dark= 0;
    }
    with(mypart1) event_user(0);
    global.msg[0]= "* MEttaton Rules the school.";
    if(mycommand >= 0) global.msg[0]= "* Mettaton Is A- OK .";
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
        global.msg[0]= "* METTATON - ATK 30 DEF 255&* Seriously^1, his metal body&  is invulnerable!/^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        global.msg[0]= "* This is probably what you\\'ll&  do if things continue in&  this manner./^";
        if(global.flag[424] == 1) {
            global.flag[424]= 2;
            global.msg[0]= "* You tell Mettaton that there\\'s&  a mirror behind him./%%";
            con= 40;
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
    obj_heart.shot= 0;
    global.border= 0;
    snd_play(snd_phone );
    SCR_BORDERSETUP();
    con= 1.1;
    alarm[4]= 20;
}
if(con == 2.1) {
    phone= instance_create(520, 260, obj_npc_marker );
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
    con= 5;
    alarm[4]= 30;
}
if(con == 6 && !instance_exists(OBJ_WRITER )) {
    shblcon= instance_create(phone.x + 10, phone.y, obj_blconsm );
    shblcon.sprite_index= spr_shockblcon2 ;
    shake= 1;
    global.typer= 49;
    global.msg[0]= "U..uh... I can\\'t see&what\\'s going on in&there, but.../";
    global.msg[1]= "D-d-don\\'t give up,&okay!?/";
    global.msg[2]= "Th... there\\'s o-one&l-l-last way to beat&Mettaton.../";
    global.msg[3]= "It\\'s... um... it\\'s.../";
    global.msg[4]= "This is a work in-&progress, so don\\'t&judge it too hard.../";
    global.msg[5]= "But, you know how&Mettaton always faces&f-f-forward?/";
    global.msg[6]= "That\\'s because&there\\'s a switch&on his backside./";
    global.msg[7]= "S-s-so if y-y-you&c-c-can turn him&around... um.../";
    global.msg[8]= "And, umm... press&th-th-th-the&switch.../";
    global.msg[9]= "He\\'ll be... um...&He\\'ll be.../";
    global.msg[10]= "Vulnerable./";
    global.msg[11]= "Well, g-g-gotta go!/%%";
    instance_create(phone.x - 100, phone.y - 140, OBJ_WRITER );
    con= 6.1;
}
if(con == 6.1 && instance_exists(OBJ_WRITER ) && keyboard_multicheck_pressed(1) && instance_exists(782))
    OBJ_WRITER.stringpos= string_length(OBJ_WRITER.originalstring);
if(con == 6.1 && !instance_exists(OBJ_WRITER )) {
    con= 5.2;
    alarm[4]= 20;
    phone.vspeed= 5;
}
if(con == 6.2) {
    con= 7;
    with(phone) instance_destroy();
    obj_heart.shot= 1;
}
if(con == 7 && !instance_exists(OBJ_WRITER )) {
    global.msg[0]= "* Seems like a good time to&  turn Mettaton around.";
    global.flag[424]= 1;
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
if(con >= 27 && con < 53 && instance_exists(obj_blconwideslave )) {
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
if(con == 40 && !instance_exists(OBJ_WRITER )) {
    global.mnfight= -1;
    global.myfight= -1;
    global.msc= 0;
    global.msg[0]= "OH???&A MIRROR???/";
    global.msg[1]= "RIGHT, I HAVE TO&LOOK PERFECT FOR&OUR GRAND FINALE!/%%";
    global.typer= 51;
    scr_blcon(mypart1.x - 320, mypart1.y - 120, 1);
    con= 41;
}
if(con == 41 && !instance_exists(OBJ_WRITER )) {
    mypart1.behind= 1;
    global.msg[0]= "HMMM...&I DON\\'T SEE IT...&WHERE IS IT...?/%%";
    global.typer= 51;
    scr_blcon(mypart1.x - 320, mypart1.y - 120, 1);
    con= 42;
}
if(con == 42 && !instance_exists(OBJ_WRITER )) {
    caster_free(-3);
    mypart1.behind= 2;
    snd_play(snd_item );
    con= 43;
    alarm[4]= 60;
}
if(con == 44) {
    global.msg[0]= "DID YOU./";
    global.msg[1]= "JUST FLIP./";
    global.msg[2]= "MY SWITCH?/%%";
    global.typer= 51;
    scr_blcon(mypart1.x - 320, mypart1.y - 120, 1);
    con= 46;
    cc= caster_load("music/computer.ogg");
    pit= 0.8;
}
if(con == 46 && !instance_exists(OBJ_WRITER )) {
    mypart1.behind= 3;
    mypart1.trueanim= 0.1;
    cc= caster_loop(cc, 0.6, pit);
    con= 47;
}
if(con == 47) {
    pit+= 0.013;
    mypart1.trueanim+= 0.04;
    caster_set_pitch(cc, pit);
    if(pit > 2.8) con= 48;
}
if(con == 48) {
    caster_free(-3);
    snd_play(snd_laz );
    wht= scr_marker(0, 0, 999);
    wht.image_xscale= 700;
    wht.image_yscale= 700;
    wht.image_alpha= 0.2;
    wht.depth= -9000;
    con= 49;
}
if(con == 49) {
    wht.image_alpha+= 0.05;
    if(wht.image_alpha > 0.98) {
        wht.image_alpha= 1;
        con= 49.1;
        alarm[4]= 30;
    }
}
if(con == 50.1) {
    oyea= caster_load("music/ohyes.ogg");
    caster_play(oyea, 1, 1);
    con= 50;
    alarm[4]= 60;
}
if(con == 51) {
    with(mypart1) visible= 0;
    instance_create(0, 0, obj_mett_bossintro );
    con= 52;
}
if(con == 52) {
    wht.image_alpha-= 0.05;
    if(wht.image_alpha < 0.06) {
        with(wht) instance_destroy();
        con= 53;
    }
}
if(con_2 > 0) global.turntimer= 11;
if(con_2 == 1) {
    // OBJ_WRITER
    with(782) instance_destroy();
    global.msc= 0;
    global.msg[0]= "THAT WORTHLESS PEA-&SHOOTER WON\\'T WORK&ON ME, DARLING. ^3 %";
    global.msg[1]= "DON\\'T YOU UNDERSTAND&WHAT ACTING IS!?^3 %%";
    global.typer= 51;
    scr_blcon(mypart1.x - 320, mypart1.y - 120, 1);
    con_2= 2;
}
if(con_2 == 2 && !instance_exists(OBJ_WRITER )) {
    global.msg[0]= "* Mettaton.";
    con_2= -1;
    global.turntimer= 3;
}

/* */
/*  */
