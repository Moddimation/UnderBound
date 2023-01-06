if(global.mnfight == 3) attacked= 0;
if(alarm[5] > 0) {
    if(global.monster[0] == 1 && global.monsterinstance[0].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[0].alarm[5];
    if(global.monster[1] == 1 && global.monsterinstance[1].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[1].alarm[5];
    if(global.monster[2] == 1 && global.monsterinstance[2].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[2].alarm[5];
}
if(global.mnfight == 1) {
    if(talked == 2 && instance_exists(OBJ_WRITER ))
        scr_textskip();
    if(talked == 2 && !instance_exists(OBJ_WRITER )) {
        event_user(2);
        talked= 3;
    }
    if(talked == 0) {
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
    global.monsterhp[myself]-= takedamage;
    if(hitplot >= 10) global.monsterhp[myself]= 0;
    with(dmgwriter) alarm[2]= 15;
    if(global.monsterhp[myself] >= 1) {
        global.hurtanim[myself]= 0;
        mypart1.pause= 0;
        global.myfight= 0;
        global.mnfight= 1;
    } else  {
        global.myfight= 0;
        global.mnfight= 1;
    }
}
if(global.hurtanim[myself] == 5) {
    global.damage= 0;
    instance_create(x + sprite_width / 2 - 10, y - 24, obj_dmgwriter );
    // obj_dmgwriter
    with(189) alarm[2]= 30;
    global.myfight= 0;
    global.mnfight= 1;
    global.hurtanim[myself]= 0;
}
if(global.mnfight == 2) {
    if(attacked == 0) {
        if(talked == 3) talked= 0;
        pop= scr_monstersum();
        global.turntimer= 180;
        global.firingrate= 10;
        if(p_mode == 0) {
            if(myplot == 0 || myplot == 1) {
                with(mypart1) {
                    global.turntimer= 170;
                    back= 1;
                    tailtype= 1;
                    armtype= 0;
                    tail_t= 0;
                    tailsiner= 8;
                }
            }
            if(myplot == 2) {
                with(mypart1) {
                    back= 1;
                    tailtype= 1;
                    armtype= 0;
                    tail_t= 0.3;
                    tailsiner= 8;
                }
            }
            if(myplot == 3) {
                with(mypart1) {
                    global.turntimer= 240;
                    intense= 0;
                    back= 1;
                    tailtype= 0;
                    armtype= 1;
                    tail_t= 0;
                    tailsiner= 0;
                    diff= 3;
                }
            }
            if(myplot == 4) {
                with(mypart1) {
                    global.turntimer= 240;
                    intense= 1;
                    back= 1;
                    tailtype= 0;
                    armtype= 1;
                    tail_t= 0;
                    tailsiner= 0;
                    diff= 3;
                }
            }
            if(myplot >= 5) {
                with(mypart1) {
                    global.turntimer= 270;
                    intense= 0;
                    back= 1;
                    tailtype= 1;
                    armtype= 1;
                    tail_t= -0.2;
                    tailsiner= 8;
                    diff= 3;
                }
            }
        }
        if(mycommand >= 0) global.msg[0]= "* The enemy looks nervous.";
        if(mycommand >= 20) global.msg[0]= "* The enemy looks anxious.";
        if(mycommand >= 40)
            global.msg[0]= "* The enemy taps his fingers&  together like jackhammers.";
        if(mycommand >= 60) global.msg[0]= "* The enemy looks perturbed.";
        if(mycommand >= 72)
            global.msg[0]= "* The enemy tries to copy your&  movements so it fits in.";
        if(mycommand >= 86)
            global.msg[0]= "* The enemy uses a hypnotizing&  3D-tush-wiggle attack.";
        if(mycommand >= 96) global.msg[0]= "* Smells... furry.";
        if(mercymod > 100) global.msg[0]= "* Are we good here!?.";
        if(global.monsterhp[myself] <= global.monstermaxhp[myself] / 4)
            global.msg[0]= "* The enemy is apologizing to&  its visions of the Reaper.";
        attacked= 1;
    }
    if(mercymod == 999999) {
        global.turntimer= -1;
        global.mnfight= 3;
    }
    whatiheard= -1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* SO SORRY&* This creature is definitely&  in the wrong time and space!/^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        ch= 0;
        ch= choose(0, 1, 2, 3, 4);
        if(ch == 0)
            global.msg[0]= "* You wave^1.&* They\\'re a bit preoccupied./^";
        if(ch == 1)
            global.msg[0]= "* You say hello^1.&* They\\'re a bit preoccupied./^";
        if(ch == 2)
            global.msg[0]= "* You smile^1.&* They\\'re a bit preoccupied./^";
        if(ch == 3)
            global.msg[0]= "* You cough^1.&* They\\'re a bit preoccupied./^";
        if(ch == 4)
            global.msg[0]= "* You weep^1.&* They\\'re a bit preoccupied./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        global.msg[0]= "* You execute some action./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 4) {
        global.msc= 0;
        global.msg[0]= "* You execute some action./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    global.heard= 1;
}
if(global.myfight == 4 && global.mercyuse == 0) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}
if(n_con == 1 && !instance_exists(OBJ_WRITER )) {
    global.border= 0;
    global.typer= 1;
    obj_heart.x= -200;
    obj_heart.y= 900;
    obj_heart.visible= 0;
    global.myfight= -5;
    global.mnfight= 0;
}
if(mercymod == 222 && !instance_exists(OBJ_WRITER ))
    instance_destroy();
if(global.turntimer <= 0 && global.mnfight == 2) {
    global.mnfight= 3;
    with(mypart1) back= 0;
}
if(d_con == 1 && !instance_exists(OBJ_WRITER )) {
    global.faceemotion= 4;
    global.flag[20]= 0;
    with(mypart1) pause= 1;
    with(mypart1) intense= 0;
    with(mypart1) hspeed= -2;
    hspeed= -1;
    d_con= 2;
    alarm[10]= 80;
    // obj_doodlebug
    with(454) instance_destroy();
}
if(d_con == 2) {
    // obj_doodlebug_body
    with(453) image_alpha-= 0.02;
}
if(d_con == 3) {
    hspeed= 0;
    with(mypart1) hspeed= 0;
    alarm[10]= 30;
    d_con= 4;
}
if(d_con == 5) {
    audio_stop_sound(global.batmusic);
    global.msc= 0;
    global.typer= 33;
    global.msg[0]= "\\\\E0Oh^1, and.../";
    global.msg[1]= "\\\\E1About all this./";
    global.msg[2]= "\\\\E4Um./";
    global.msg[3]= "\\\\E2Sorry./%%";
    scr_blcon_x(x + 170, y + 20);
    blcon.depth= -1500;
    writer.depth= -1600;
    d_con= 6;
}
if(d_con == 6 && !instance_exists(OBJ_WRITER )) {
    visible= 0;
    sprite_index= spr_sorry_d ;
    killed= 1;
    x+= 19;
    x-= 70;
    y-= 24;
    global.border= 0;
    global.typer= 1;
    obj_heart.x= -200;
    obj_heart.y= 900;
    obj_heart.visible= 0;
    global.myfight= -5;
    global.mnfight= 0;
    instance_destroy();
}
if(p_con == 2) {
    global.monstertype[1]= 81;
    global.monstertype[2]= 81;
    global.monsterinstance[1]= instance_create(26, 88, obj_doodlebug );
    global.monsterinstance[2]= instance_create(526, 88, obj_doodlebug );
    with(global.monsterinstance[2]) specialmessage= 1;
    p_con= 3;
    alarm[4]= 50;
}
if(p_con == 1 && !instance_exists(OBJ_WRITER )) {
    global.faceemotion= 1;
    snd_play(snd_break2 );
    fl= instance_create(0, 0, obj_flasher );
    fl.depth= -2000;
    p_con= 2;
    global.mnfight= -6;
}
if(p_con == 4) {
    global.msg[0]= "\\\\E1Uuuuhhhh, oh no!!&That\\'s a little too&real!/%%";
    global.typer= 111;
    scr_blcon_x(x + 170, y + 20);
    blcon.depth= -1500;
    writer.depth= -1600;
    p_con= 5;
}
if(p_con == 5 && !instance_exists(OBJ_WRITER )) {
    global.flag[20]= 0;
    p_con= 0;
    global.mnfight= 2;
}

/* */
/*  */
