if(global.mnfight == 4 && attacked == 1) {
    if(hitno > 0) {
        if(hitno == 1) rating++;
        if(hitno > 1) rating+= 2;
        if(berserk == 1) rating--;
    } else  {
        if(rating >= 10 && lesson > 5) rating-= 2;
        else  {
            if(rating > 8) rating--;
        }
        if(berserk == 1 && rating > 6) rating--;
    }
    attacked= 0;
    global.mnfight= 5;
    if(global.border == 12) global.border= 13;
    SCR_BORDERSETUP();
    alarm[7]= 10;
    if(instance_exists(obj_undynesiner2 )) {
        // obj_undynesiner2
        with(262) event_user(1);
    }
}
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
    with(dmgwriter) alarm[2]= 15;
    if(global.monsterhp[myself] >= 1) {
        global.hurtanim[myself]= 0;
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
        global.turntimer= 180;
        global.firingrate= 10;
        if(pop == 3) global.firingrate*= 2.5;
        if(pop == 2) global.firingrate*= 1.8;
        hitno= 0;
        xx= room_width / 2;
        yy= room_height / 2;
        if(obj_heart.sprite_index == 39) {
            gen= instance_create(xx, yy, obj_spearblocker );
            if(turns == 0) lesson= -50;
            if(turns == 1) lesson= -51;
            gen.lesson= lesson;
            gen.rating= rating;
            gen.dmg= global.monsteratk[myself];
            with(gen) event_user(1);
        }
        if(turns == 0) turns= 1;
        global.msg[0]= "* The Lost Soul stands there.";
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
        mercyno++;
        global.msg[0]= "* You tapped the Lost Soul&  lightly./";
        global.msg[1]= "* Something about the way you&  fight is familiar to her.../^";
        if(mercyno >= 3) {
            global.msg[1]= "* Something about the way you&  fight..^1.&* It\\'s all flooding back!/%%";
            saved= 1;
            global.mnfight= 5;
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        mercyno++;
        global.msg[0]= "* You asked the Lost Soul to&  teach you how to cook./";
        global.msg[1]= "* She doesn\\'t know why^1, but&  she kind of wants to&  teach you how.../^";
        if(mercyno >= 3) {
            global.msg[1]= "* Suddenly^1, the memories are&  flooding back!/%%";
            saved= 1;
            global.mnfight= 5;
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        mercyno++;
        global.msg[0]= "* You gave the Lost Soul a big&  smile^1, like you remember&  she likes to do./";
        global.msg[1]= "* For some reason^1, she sort&  of wants to smile back.../^";
        if(mercyno >= 3) {
            global.msg[1]= "* Suddenly^1, the memories are&  flooding back!/%%";
            saved= 1;
            global.mnfight= 5;
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 4) {
        global.msc= 0;
        mercyno++;
        global.msg[0]= "* You clashed against the Lost&  Soul with all of your might./";
        global.msg[1]= "* She feels your fighting&  spirit..^1.&* It\\'s familiar somehow./^";
        if(mercyno >= 3) {
            global.msg[1]= "* She recognizes your fighting&  spirit..^1. suddenly^1, memories&  are flooding back!/%%";
            saved= 1;
            global.mnfight= 5;
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    global.heard= 1;
}
if(greenlock == 1 && global.mnfight > 0) {
    if(obj_heart.sprite_index == 39) obj_heart.y= obj_uborder.y + 34;
    else  greenlock= 0;
} else  greenlock= 0;
if(darkify == 1) {
    if(pseudodarker.image_alpha < 0.5)
        pseudodarker.image_alpha+= 0.04;
    else  darkify= 2;
    obj_borderparent.image_alpha= 1 - pseudodarker.image_alpha;
}
if(darkify == 3) {
    if(pseudodarker.image_alpha > 0)
        pseudodarker.image_alpha-= 0.04;
    obj_borderparent.image_alpha= 1 - pseudodarker.image_alpha;
    if(pseudodarker.image_alpha <= 0) {
        darkify= 0;
        with(pseudodarker) instance_destroy();
    }
}
if(global.mnfight == 3 && darkify > 0 && darkify != 3)
    darkify= 3;
if(obj_heart.sprite_index == 39 && global.mnfight == 2)
    obj_heart.movement= 3;
if(global.myfight == 4 && global.mercyuse == 0) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}
if(mercymod == 222 && !instance_exists(OBJ_WRITER )) {
    script_execute(scr_mercystandard );
    if(mercy < 0) instance_destroy();
}
if(global.mnfight == 5 && !instance_exists(OBJ_WRITER )) {
    if(saved == 1) {
        if(global.hp < global.maxhp) {
            global.hp= global.maxhp;
            snd_play(snd_heal_c );
        }
        // obj_strangetangle
        with(1662) instance_destroy();
        instance_create(0, 0, obj_flasher );
        snd_play(snd_break2 );
        saved= 2;
        alarm[11]= 3;
    }
    if(saved == 3) {
        global.faceemotion= 9;
        global.msc= 0;
        global.typer= 39;
        part1.noanim= 1;
        part1.spearalpha= 0;
        global.msg[0]= "Well^1, some humans&are OK^1, I guess!/%%";
        scr_blcon_x(x + 80, y);
        saved= 4;
    }
    if(saved == 4 && !instance_exists(OBJ_WRITER )) {
        instance_create(-10, -10, obj_screenwhiter );
        saved= 5;
        instance_create(0, 0, obj_screenwhiter );
        alarm[11]= 34;
    }
    if(saved == 6) {
        global.battlegroup= 256;
        global.flag[505]= 1;
        room_restart();
    }
}

/* */
/*  */
