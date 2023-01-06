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
        pop= scr_monstersum();
        global.turntimer= 150;
        global.firingrate= 7;
        if(pop == 3) global.firingrate*= 2.4;
        if(pop == 2) global.firingrate*= 1.7;
        if(asleep == 0) {
            if(mycommand > 75 && pop == 1) {
                global.turntimer= 150;
                gen= instance_create(x, y, obj_hammergen );
            } else  {
                global.firingrate= 9;
                gen= instance_create(global.idealborder[0] + c_borderwidth(0) / 2 - 20, global.idealborder[2] - 40, obj_skyorb );
            }
        }
        if(mycommand >= 0)
            global.msg[0]= "* Knight Knight smashes her&  morningstar.";
        if(mycommand >= 25)
            global.msg[0]= "* Knight Knight breathes deeply.";
        if(mycommand >= 50)
            global.msg[0]= "* Knight Knight watches quietly.";
        if(mycommand >= 75)
            global.msg[0]= "* Knight Knight\\'s armor emits&  a dark sheen.";
        if(mycommand >= 90) global.msg[0]= "* Smells like stardust.";
        if(asleep > 0) global.msg[0]= "* Knight Knight is snoring.";
        attacked= 1;
    }
    if(asleep == 1 && pop == 1) {
        attacked= 1;
        global.turntimer= -1;
        global.mnfight= 3;
    }
    whatiheard= -1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* KNIGHT KNIGHT - ATK 36 DEF 36&* This megaton mercenary wields&  the Good Morningstar./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        global.msg[0]= "* You ask Knight Knight about&  her day^1.&* There\\'s no response./^";
        talk++;
        if(talk == 3)
            global.msg[0]= "* You ask Knight Knight about&  her day./^";
        if(asleep == 1) {
            global.msg[0]= "* You talk to Knight Knight^1.&* She hums something in&  her sleep.../^";
            talk= 0;
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        mercymod+= 20;
        if(sleepy == 0) {
            global.msg[0]= "* You sing an old lullaby^1.&* Knight Knight starts to look&  sleepy.../^";
            if(global.flag[81] == 2)
                global.msg[0]= "* You sing Shyren\\'s song^1.&* Knight Knight starts to look&  sleepy.../^";
        }
        if(sleepy == 1)
            global.msg[0]= "* You keep singing^1.&* Knight Knight closes its&  eyes a bit.../^";
        if(asleep == 1)
            global.msg[0]= "* You keep singing^1.&* Nothing happened./^";
        if(sleepy > 1 && asleep == 0) {
            global.msg[0]= "* You keep singing^1.&* Knight Knight falls asleep./^";
            mercymod= 200;
            asleep= 1;
            global.monsterdef[myself]= -30;
        }
        sleepy++;
        if(global.flag[81] == 2) sleepy++;
        if(sleepy > 0) mypart1.asleep= 1;
        if(asleep == 1) mypart1.asleep= 2;
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


/*  */
