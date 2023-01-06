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
    alarm[5]= 120;
    alarm[6]= 1;
    talked= 1;
    global.heard= 0;
}
if(keyboard_multicheck_pressed(13) && alarm[5] > 5 && alarm[5] < 119 && obj_lborder.x == global.idealborder[0] && alarm[6] < 0)
    alarm[5]= 2;
if(global.hurtanim[myself] == 1) {
    shudder= 16;
    alarm[3]= global.damagetimer;
    global.hurtanim[myself]= 3;
}
if(global.hurtanim[myself] == 2) {
    global.monsterhp[myself]-= takedamage;
    with(dmgwriter) alarm[2]= 15;
    if(global.monsterhp[myself] >= 1) {
        mypart1= instance_create(x, y, part1);
        mypart2= instance_create(x, y, part2);
        global.hurtanim[myself]= 0;
        image_index= 0;
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
    pop= scr_monstersum();
    global.turntimer= 172;
    global.firingrate= 15;
    if(mycommand <= 50 && scr_monstersum() > 1) {
        gen= instance_create(0, 0, blt_whiteax );
        gen.dmg= global.monsteratk[myself];
        gen= instance_create(0, 0, blt_whiteax );
        gen.dmg= global.monsteratk[myself];
        global.border= 8;
    } else  {
        global.turntimer= 200;
        gen= instance_create(0, 0, obj_loopdog );
        global.border= 9;
    }
    gen.myself= myself;
    if(mycommand >= 0) global.msg[0]= "* Dogamy is brokenhearted.";
    attacked= 1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* DOGAMY - ATK 14 DEF 5&* Husband of Dogaressa.&* Knows only what he smells./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        if(smell == 0) {
            global.msg[0]= "* The Dogs sniff you again.../";
            global.msg[1]= "* But you smell just as&  weird as before!/^";
        }
        if(smell == 1) {
            global.msg[0]= "* The Dogs sniff you again.../";
            global.msg[1]= "* After rolling in the dirt^1,&  you smell all right!/^";
        }
        if(smell >= 2)
            global.msg[0]= "* The Dogs already know you&  smell fine./^";
        if(scr_monstersum() == 1)
            global.msg[0]= "* Dogamy won\\'t even lift&  up his snout./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        if(smell == 1) obj_dogeparent.smell= 2;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        if(scr_monstersum() == 1)
            global.msg[0]= "* Dogamy just growls at&  you./^";
        else  {
            if(smell < 2)
                global.msg[0]= "* The Dogs are too suspicious&  of your smell./^";
            if(smell == 2 || smell == 3) {
                global.msg[0]= "* You pet Dogamy./^";
                smell= 3;
            }
            if(smell == 3 && obj_womandog.smell == 3) {
                obj_dogeparent.mercymod= 999;
                global.flag[140]= 1;
            }
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 4) {
        global.msc= 0;
        global.msg[0]= "* You roll around in the&  dirt and snow./";
        global.msg[1]= "* You smell like a weird&  puppy./^";
        if(smell == 0) obj_dogeparent.smell= 1;
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

/* */
/*  */
