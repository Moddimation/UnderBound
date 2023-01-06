if(global.mnfight == 3) attacked= 0;
if(global.myfight == 0 && global.mnfight == 0) eat= 0;
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
        pop= scr_monstersum();
        global.turntimer= 150;
        if(mycommand < 50) {
            global.firingrate= 4;
            if(global.monster[0] + global.monster[1] + global.monster[2] > 1)
                global.firingrate= 7;
            if(global.monster[0] + global.monster[1] + global.monster[2] == 3)
                global.firingrate= 11;
            gen= instance_create(0, 0, obj_1sidegen );
            if(eat == 1) gen.specgreen= 1;
            gen.bullettype= 6;
        }
        if(mycommand >= 50) {
            global.firingrate= 12;
            if(global.monster[0] + global.monster[1] + global.monster[2] == 2)
                global.firingrate= 22;
            if(global.monster[0] + global.monster[1] + global.monster[2] == 3)
                global.firingrate= 30;
            gen= instance_create(0, 0, obj_1sidegen );
            if(eat == 1) gen.specgreen= 1;
            gen.bullettype= 5;
        }
        gen.myself= myself;
        gen.dmg= global.monsteratk[myself];
        if(mycommand >= 0) global.msg[0]= "* Parsnik has a hissy fit.";
        if(mycommand >= 25)
            global.msg[0]= "* Parsnik\\'s snakes shift to&  change hairstyles^1.&* Mohawk^1. Ponytail^1. Undercut.";
        if(mycommand >= 50)
            global.msg[0]= "* Parsnik completely closes its&  mouth^1.&* It looks short and weird.";
        if(mycommand >= 75)
            global.msg[0]= "* Snakes play with a beach ball.";
        if(mycommand >= 90) global.msg[0]= "* Smells like tasty snakes.";
        if(mercymod > 100) global.msg[0]= "* Parsnik seems satisfied.";
        if(global.monsterhp[myself] <= global.monstermaxhp[myself] / 4)
            global.msg[0]= "* The snakes are wilting.";
        attacked= 1;
    }
    if(mercymod == 999999) {
        global.turntimer= -1;
        global.mnfight= 3;
    }
    whatiheard= -1;
}
if(whatiheard == 1 && !instance_exists(OBJ_WRITER )) {
    script_execute(scr_mercystandard );
    if(mercy < 8) {
        killed= 0;
        instance_destroy();
    }
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* PARSNIK - ATK 30 DEF 28&* This cobrafied carrot has&  a headful of tasty snakes./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 3) {
        global.myfight= 0;
        global.mnfight= 1;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        script_execute(scr_mercystandard );
        global.msg[0]= "* You tried to eat Parsnik^1,&  but it wasn\\'t weakened&  enough./^";
        if(mercy < 8) {
            global.msg[0]= "* You start eating snakes like&  they\\'re spaghetti.&* You recovered 5 HP!/^";
            instance_create(0, 0, obj_foodsound );
            script_execute(scr_recover , 5);
            mypart1.pause= 1;
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 4) {
        eat= 1;
        global.msc= 0;
        global.msg[0]= "* Parsnik mishears you and fires&  a series of tasty snakes./^";
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
