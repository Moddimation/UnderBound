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
        global.firingrate= 10;
        if(pop == 3) global.firingrate*= 2.5;
        if(pop == 2) global.firingrate*= 1.8;
        global.turntimer= 10;
        if(turns == 1) {
            global.attacktype= 36;
            instance_create(0, 0, obj_mettattackgen );
        }
        if(turns == 0) {
            global.specialdam[1]= 0;
            global.attacktype= 40;
            instance_create(0, 0, obj_mettattackgen );
        }
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
        global.msg[0]= "* You tell the Lost Soul that&  you\\'ll continue to&  support her./";
        global.msg[1]= "* Something about the way you&  said that is familiar to&  her./^";
        if(mercyno >= 3) {
            global.msg[1]= "* Suddenly^1, she remembers..^1.&* It\\'s all flooding back!/%%";
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
        global.msg[0]= "* You call the Lost Soul on&  the phone..^1.&* She starts to sweat./";
        global.msg[1]= "* She doesn\\'t know why^1, but&  this all seems very&  familiar.../^";
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
        global.msg[0]= "* You ask the Lost Soul what&  her favorite cartoon is./";
        global.msg[1]= "* She can barely hold back&  from giving you an enormous&  answer.../^";
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
        global.msg[0]= "* You ask the Lost Soul for&  help on a quiz question./";
        global.msg[1]= "* She barely holds back from&  giving you the answer.../^";
        if(mercyno >= 3) {
            global.msg[1]= "* Suddenly^1, memories are&  flooding back!/%%";
            saved= 1;
            global.mnfight= 5;
        }
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
        global.faceemotion= 5;
        global.msc= 0;
        global.typer= 74;
        part1.noanim= 1;
        part1.spearalpha= 0;
        global.msg[0]= " No^1, that\\'s not true^1!& My friends like me^1!& And I like you^1,& too!/%%";
        scr_blcon_x(x + 110, y);
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
        global.flag[506]= 1;
        room_restart();
    }
}

/* */
/*  */
