if(global.mnfight == 3) attacked= 0;
if(alarm[5] > 0) {
    if(global.monster[0] == 1 && global.monsterinstance[0].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[0].alarm[5];
    if(global.monster[1] == 1 && global.monsterinstance[1].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[1].alarm[5];
    if(global.monster[2] == 1 && global.monsterinstance[2].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[2].alarm[5];
}
if(global.mnfight == 1 && talked == 0) {
    alarm[5]= 110;
    alarm[6]= 1;
    talked= 1;
    global.heard= 0;
}
if(keyboard_multicheck_pressed(13) && alarm[5] > 5 && obj_lborder.x == global.idealborder[0] && alarm[6] < 0)
    alarm[5]= 2;
if(global.hurtanim[myself] == 1) {
    shudder= 8;
    alarm[3]= global.damagetimer;
    global.hurtanim[myself]= 3;
}
if(global.hurtanim[myself] == 2) {
    global.monsterhp[myself]-= takedamage;
    with(dmgwriter) alarm[2]= 15;
    if(global.monsterhp[myself] >= 1) {
        global.hurtanim[myself]= 0;
        mypart1.pause= 0;
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
if(global.mnfight == 2) {
    if(attacked == 0) {
        global.turntimer= 150;
        global.firingrate= 6;
        if(global.monster[0] + global.monster[1] + global.monster[2] == 3)
            mycommand= 99;
        if(sad == 0) {
            if(mycommand >= 0) {
                global.firingrate= 2;
                gen= instance_create(0, 0, obj_1sidegen );
                gen.bullettype= 4;
            }
        } else  {
            global.turntimer= 45;
            gen= instance_create(0, 0, blt_roachdance );
        }
        gen.myself= myself;
        gen.dmg= global.monsteratk[myself];
        if(mycommand >= 0)
            global.msg[0]= "* Migospel is juggling balls&  of ants.";
        if(mycommand >= 30)
            global.msg[0]= "* Migospel makes a balloon animal&  out of bees^3.&* Shape: Pile of bees";
        if(mycommand >= 70)
            global.msg[0]= "* Migospel intentionally&  pratfalls^1.&* Twenty times.";
        if(mycommand >= 90)
            global.msg[0]= "* Smells like bug-flavored cotton&  candy.";
        if(mercymod > 20) global.msg[0]= "* Migospel\\'s facade is broken.";
        if(global.monsterhp[myself] < global.monstermaxhp[myself] / 3)
            global.msg[0]= "* Migospel\\'s clown aura fades.";
        attacked= 1;
    }
    whatiheard= -1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* MIGOSPEL - ATK 28 DEF 17&* This messed-up clownbug thinks&  battle\\'s a performance./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        global.msg[0]= "* Talking has no effect./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        global.heard= 1;
    }
}
if(global.myfight == 4 && global.mercyuse == 0) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}
if(mercymod == 222 && !instance_exists(OBJ_WRITER )) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}
pop= scr_monstersum();
if(pop == 1) {
    sad= 1;
    mercymod= 200;
    if(instance_exists(mypart1)) mypart1.sad= 1;
}

/* */
/*  */
