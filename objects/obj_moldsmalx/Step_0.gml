if(global.mnfight == 3) attacked= 0;
scr_blconmatch();
if(global.mnfight == 1 && talked == 0) {
    alarm[5]= 60;
    alarm[6]= 1;
    talked= 1;
    global.heard= 0;
}
if(keyboard_multicheck_pressed(13) && alarm[5] > 5 && obj_lborder.x == global.idealborder[0] && alarm[6] < 0)
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
        visible= 0;
        mypart1= instance_create(x, y, part1);
        mypart1.stage= stage;
        global.hurtanim[myself]= 0;
        image_index= 0;
        scalevalue= 0.01;
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
    if(stage == 0) {
        if(global.turntimer < 10) global.turntimer= 10;
        if(mycommand >= 0 && mycommand <= 50) {
            global.firingrate= 90;
            if(global.monster[0] + global.monster[1] + global.monster[2] == 3)
                global.firingrate*= 2;
            if(global.monster[0] + global.monster[1] + global.monster[2] == 2)
                global.firingrate*= 1.5;
            gen= instance_create(0, 0, obj_1sidegen );
            gen.bullettype= 3;
        } else  {
            global.firingrate= 90;
            if(global.monster[0] + global.monster[1] + global.monster[2] == 3)
                global.firingrate*= 2;
            if(global.monster[0] + global.monster[1] + global.monster[2] == 2)
                global.firingrate*= 1.5;
            gen= instance_create(0, 0, obj_1sidegen );
            gen.bullettype= 2;
        }
        gen.myself= myself;
    }
    if(stage == 1) {
        pop= scr_monstersum();
        if(mycommand >= 0 && mycommand <= 50) {
            global.turntimer= 180;
            global.firingrate= 40;
            if(pop == 2) global.firingrate*= 1.1;
            if(pop == 3) global.firingrate*= 1;
            instance_create(0, 0, obj_8smallgen );
        } else  {
            global.turntimer= 180;
            global.firingrate= 35;
            if(pop == 2) global.firingrate= 34;
            if(pop == 3) global.firingrate*= 0.6;
            instance_create(0, 0, obj_stalkergen );
        }
    }
    if(stage == 0) {
        if(mycommand >= 0) global.msg[0]= "* Moldsmal sits motionless.";
        if(mycommand >= 30) global.msg[0]= "* Moldsmal is very normal.";
        if(mycommand >= 70)
            global.msg[0]= "* Moldsmal is having quiet&  time.";
        if(mycommand >= 90) global.msg[0]= "* Smells like a bait shop.";
        if(global.monsterhp[myself] < 15)
            global.msg[0]= "* Quite impossible.";
    }
    if(stage == 1) {
        if(mycommand >= 0) global.msg[0]= "* Moldbygg needs some distance.";
        if(mycommand >= 30) global.msg[0]= "* Moldbygg gyrates reservedly.";
        if(mycommand >= 70)
            global.msg[0]= "* Moldbygg mills about in the&  corner.";
        if(mycommand >= 90) global.msg[0]= "* Smells like a bait shop.";
        if(mercymod > 100)
            global.msg[0]= "* Moldbygg seems comfortable&  with your presence.";
        if(global.monsterhp[myself] < 30)
            global.msg[0]= "* Moldbygg has seen better days.";
    }
    attacked= 1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        if(stage == 0)
            global.msg[0]= "* MOLDSMAL? - ATK 6 DEF 0&* It\\'s a slime mold...?/^";
        if(stage == 1)
            global.msg[0]= "* MOLDBYGG - ATK 18 DEF 18&* One size greater than&  Moldaverage./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        if(stage == 0)
            global.msg[0]= "* You approach Moldsmal.&* Suddenly...!/^";
        if(stage == 1)
            global.msg[0]= "* You lie down.&* Moldbygg lies down too.&* Moldbygg understands life now./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        if(stage == 0)
            global.msg[0]= "* You wiggle your hips.&* Suddenly...!/^";
        if(stage == 1) {
            global.msg[0]= "* You hug Moldbygg.&* Gross slime covers you.&* Your SPEED decreased./^";
            if(global.sp > 3) global.sp--;
            if(instance_exists(obj_woshua )) {
                obj_woshua.slime= 1;
                obj_woshua.clean= 0;
            }
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 4) {
        global.msc= 0;
        if(stage == 0) global.msg[0]= "* Wrong message!/^";
        if(stage == 1) {
            global.flag[144]= 1;
            global.msg[0]= "* You don\\'t hug Moldbygg.&* It appreciates your respect&  of its boundaries./^";
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        mercymod= 200;
    }
    global.heard= 1;
}
if(global.myfight == 4 && global.mercyuse == 0) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}

/* */
/*  */
