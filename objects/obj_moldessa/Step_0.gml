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
if(global.mnfight == 2 && attacked == 0) {
    global.turntimer= 150;
    if(mercymod < 100 || scr_monstersum() >= 2) {
        if(mycommand >= 0 && mycommand <= 50) {
            global.firingrate= 7;
            if(global.monster[0] + global.monster[1] + global.monster[2] == 3)
                global.firingrate*= 2.7;
            if(global.monster[0] + global.monster[1] + global.monster[2] == 2)
                global.firingrate*= 1.8;
            gen= instance_create(0, 0, obj_1sidegen );
            gen.bullettype= 3;
        } else  {
            global.firingrate= 15;
            if(global.monster[0] + global.monster[1] + global.monster[2] == 3)
                global.firingrate*= 2.7;
            if(global.monster[0] + global.monster[1] + global.monster[2] == 2)
                global.firingrate*= 1.8;
            gen= instance_create(0, 0, obj_1sidegen );
            gen.bullettype= 2;
        }
        gen.myself= myself;
    } else  {
        if(scr_monstersum() == 1) {
            global.mnfight= 3;
            global.turntimer= -1;
        }
    }
    if(mycommand >= 0)
        global.msg[0]= "* Moldessa\\'s face rearranges&  it";
    if(mycommand >= 40)
        global.msg[0]= "* Moldessa tries to make its&  face look like a movie-&  star\\'s^1, but it shifts apart.";
    if(mycommand >= 70)
        global.msg[0]= "* Moldessa hides behind its ears^3.&* ... arms?";
    if(mycommand >= 90)
        global.msg[0]= "* Smells like twelve-week-old&  gummy bears.";
    whatiheard= -1;
    if(global.monsterhp[myself] < 15)
        global.msg[0]= "* Moldessa\\'s face falls apart.";
    if(mercymod > 15)
        global.msg[0]= "* Moldessa\\'s face looks... happy?";
    attacked= 1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* MOLDESSA - ATK 27 DEF 23&* Can\\'t decide on a face^1.&* Can\\'t see friend from foe./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 3) {
        if(global.goldreward[3] < 8)
            global.goldreward[3]+= 2;
        global.msc= 0;
        global.msg[0]= "* You encourage Moldessa to try&  a new look^1.&* Its face shifts.../^";
        with(mypart1) event_user(0);
        with(mypart1) facego= 1;
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        global.msg[0]= "* You adjust Moldessa\\'s face./^";
        if(mercymod < 100)
            global.msg[0]= "* You adjust Moldessa\\'s face^1.&* It seems to be happy with its&  new look./^";
        else  global.msg[0]= "* You adjust Moldessa\\'s face./^";
        with(mypart1) facego= 0;
        mercymod= 100;
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 4) {
        global.msc= 0;
        if(global.hp < global.maxhp && lie == 0) {
            lie= 1;
            global.hp+= 2;
            snd_play(snd_heal_c );
        }
        if(scr_monstersum() >= 2) {
            global.msg[0]= "* You lie down and rest^1.&* Moldessa tucks you in with&  a blanket of moss./";
            global.msg[1]= "* While you were sleeping^1, the&  other monsters get bored./^";
            pre_m= mercymod;
            // obj_monsterparent
            with(605) {
                if(mercymod < 90) mercymod= 90;
            }
            mercymod= pre_m;
        } else 
            global.msg[0]= "* You lie down and rest^1.&* Moldessa tucks you in with&  a blanket of moss./^";
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
if(mercymod == 222 && !instance_exists(OBJ_WRITER )) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}

/* */
/*  */
