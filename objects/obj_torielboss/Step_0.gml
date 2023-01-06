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
    if(global.monsterhp[myself] > 0) alarm[5]= 15;
    if(mercymod == -49) alarm[5]= 400;
    alarm[6]= 2;
    talked= 1;
    global.heard= 0;
}
if(keyboard_multicheck_pressed(13)) {
    if(conversation < 13 && alarm[5] > 5 && obj_lborder.x == global.idealborder[0] && alarm[6] < 0)
        alarm[5]= 2;
    if(conversation >= 13 && conversation != 99 && instance_exists(OBJ_NOMSCWRITER ) && OBJ_NOMSCWRITER.stringpos >= string_length(OBJ_NOMSCWRITER.mystring[0]))
        alarm[5]= 2;
}
if(global.hurtanim[myself] == 1) {
    shudder= 16;
    alarm[3]= global.damagetimer;
    if(global.damage > 100) shudder= 32;
    global.hurtanim[myself]= 3;
}
if(global.hurtanim[myself] == 2) {
    global.monsterhp[myself]-= takedamage;
    with(dmgwriter) alarm[2]= 15;
    if(global.damage > 100) {
        with(dmgwriter) alarm[2]= 60;
    }
    if(global.monsterhp[myself] <= 150)
        global.monsterdef[myself]= -140;
    if(global.monsterhp[myself] >= 1) {
        global.hurtanim[myself]= 0;
        if(conversation < 13) {
            if(global.hp > 2) sprite_index= spr_torielboss ;
            if(global.hp <= 2) sprite_index= spr_torielboss_side ;
        }
        image_index= 0;
        global.myfight= 0;
        global.mnfight= 1;
    } else  {
        global.myfight= 0;
        global.mnfight= 1;
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
    global.turntimer= 160;
    if(global.hp > 2 && conversation < 13) {
        if(global.flag[6] == 0) {
            if(mycommand >= 0 && mycommand <= 20) {
                global.turntimer= 140;
                global.firingrate= 5;
                gen= instance_create(0, 0, obj_1sidegen );
                gen.bullettype= 7;
            }
            if(mycommand > 20 && mycommand <= 40) {
                global.turntimer= 140;
                global.firingrate= 2;
                gen= instance_create(0, 0, obj_1sidegen );
                gen.bullettype= 8;
            }
            if(mycommand > 80 && mycommand <= 100) {
                global.turntimer= 200;
                global.firingrate= 2;
                gen= instance_create(global.idealborder[0] - 45, global.idealborder[2] + 5, blt_handbullet1 );
                if(global.hp > 6) gen.dmg= 5;
            }
            if(mycommand > 60 && mycommand <= 80) {
                global.turntimer= 200;
                global.firingrate= 2;
                gen= instance_create(global.idealborder[0] - 45, global.idealborder[2] + 5, blt_handbullet1 );
                gen.x1= 1;
                if(global.hp > 6) gen.dmg= 5;
                gen2= instance_create(global.idealborder[1] + 5, global.idealborder[3] - 15, blt_handbullet2 );
                if(global.hp > 6) gen2.dmg= 5;
            }
            if(mycommand > 40 && mycommand <= 60) {
                global.turntimer= 140;
                global.firingrate= 6;
                gen= instance_create(0, 0, obj_1sidegen );
                gen.bullettype= 10;
            }
        } else  {
            if(mycommand >= 0 && mycommand <= 20) {
                global.turntimer= 160;
                global.firingrate= 4;
                gen= instance_create(0, 0, obj_1sidegen );
                gen.bullettype= 7;
            }
            if(mycommand > 20 && mycommand <= 40) {
                global.turntimer= 160;
                global.firingrate= 1;
                gen= instance_create(0, 0, obj_1sidegen );
                gen.bullettype= 8;
            }
            if(mycommand > 80 && mycommand <= 100) {
                global.turntimer= 200;
                global.firingrate= 1;
                gen= instance_create(global.idealborder[0] - 45, global.idealborder[2] + 5, blt_handbullet1 );
                if(global.hp > 6) gen.dmg= 6;
            }
            if(mycommand > 60 && mycommand <= 80) {
                global.turntimer= 200;
                global.firingrate= 1;
                gen= instance_create(global.idealborder[0] - 45, global.idealborder[2] + 5, blt_handbullet1 );
                gen.x1= 1;
                if(global.hp > 6) gen.dmg= 6;
                gen2= instance_create(global.idealborder[1] + 5, global.idealborder[3] - 15, blt_handbullet2 );
                if(global.hp > 6) gen2.dmg= 6;
            }
            if(mycommand > 40 && mycommand <= 60) {
                global.turntimer= 160;
                global.firingrate= 5;
                gen= instance_create(0, 0, obj_1sidegen );
                gen.bullettype= 10;
            }
        }
    } else  {
        if(global.monsterhp[myself] > 150)
            global.monsterdef[myself]= -15;
        global.turntimer= 140;
        global.firingrate= 2;
        gen= instance_create(0, 0, obj_1sidegen );
        if(conversation < 13) instance_create(x, y, obj_torgen );
        gen.bullettype= 9;
    }
    if(conversation > 13) {
        global.turntimer= 1;
        global.monsterdef[myself]= -2000;
    }
    if(global.flag[202] >= 20) global.monsterdef[myself]= -9999;
    gen.myself= myself;
    gen.dmg= global.monsteratk[myself];
    if(mycommand >= 0)
        global.msg[0]= "* Toriel prepares a magical&  attack.";
    if(mycommand >= 30) global.msg[0]= "* Toriel looks through you.";
    if(mycommand >= 70) global.msg[0]= "* Toriel is acting aloof.";
    if(mycommand >= 90) global.msg[0]= "* Toriel takes a deep breath.";
    if(conversation > 13) global.msg[0]= "* ...";
    attacked= 1;
}
if(whatiheard == 3 && !instance_exists(OBJ_WRITER )) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        global.msg[0]= "* TORIEL - ATK 80 DEF 80&* Knows best for you./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 3) {
        tt++;
        global.msc= 0;
        global.msg[0]= "* You couldn\\'t think of&  any conversation&  topics./^";
        ini_open("undertale.ini");
        TK= ini_read_real("Toriel", "TK", 0);
        ini_close();
        if(tt > 1)
            global.msg[0]= "* You tried to think&  of something to say&  again^1, but.../^";
        if(tt > 2)
            global.msg[0]= "* Ironically^1, talking does not&  seem to be the solution&  to this situation./^";
        if(TK > 0) {
            global.msg[0]= "* You thought about telling&  Toriel that you saw&  her die./";
            global.msg[1]= "* But...&* That\\'s creepy./";
            global.msg[2]= "* Can you show mercy without&  fighting or running&  away...?/^";
        }
        if(TK > 0 && tt > 1)
            global.msg[0]= "* Can you show mercy&  without running away...?/^";
        if(global.flag[202] >= 20) global.msg[0]= "* Not worth talking to./^";
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
if(destroyed == 1) {
    if(global.faceemotion == 0) {
        sprite_index= spr_torielboss_kneel ;
        global.typer= 12;
    }
    if(global.faceemotion == 1) {
        sprite_index= spr_torielboss_kneelanguish ;
        global.typer= 13;
    }
    if(global.faceemotion == 2) {
        sprite_index= spr_torielboss_kneelanguish2 ;
        global.typer= 14;
    }
    if(global.faceemotion == 3) {
        sprite_index= spr_torielboss_kneelsmile ;
        global.typer= 15;
    }
    if(global.faceemotion == 4) {
        sprite_index= spr_torielboss_murdered ;
        image_speed= 0;
        image_index= 0;
        global.typer= 13;
    }
    if(global.faceemotion == 5) image_index= 1;
    if(instance_exists(OBJ_WRITER )) {
        // OBJ_WRITER
        with(782) script_execute(SCR_TEXTTYPE , global.typer);
    }
    global.facechange= 1;
}
if(conversation == 99 && !instance_exists(OBJ_WRITER )) {
    if(instance_exists(OBJ_NOMSCWRITER )) {
        with(blconwd) instance_destroy();
    }
    if(instance_exists(obj_blconsm )) {
        with(blcon) instance_destroy();
    }
    if(instance_exists(obj_blconwdflowey )) {
        // obj_blconwdflowey
        with(187) instance_destroy();
    }
    if(global.flag[6] == 0) {
        obj_battlecontroller.runaway= 1;
        conversation= 56;
        global.flag[45]= 5;
        alarm[2]= 20;
        instance_create(0, 0, obj_unfader );
    } else  {
        tr= instance_create(x, y, obj_torboss_2ndtime );
        tr.sprite_index= spr_torielboss_side ;
        visible= 0;
        conversation= -20;
    }
}

/* */
/*  */
