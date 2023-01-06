if(global.mnfight == 3) {
    attacked= 0;
    obj_heart.movement= 0;
}
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
        if(turns == 0) {
            obj_heart.movement= 2;
            obj_heart.vspeed= -1;
            obj_heart.jumpstage= 2;
            global.turntimer= 240;
            global.border= 5;
            gen= instance_create(global.idealborder[0] - 40, global.idealborder[3] - 30, blt_sizebone );
            gen.hspeed= 4;
            gen= instance_create(global.idealborder[0] - 40, global.idealborder[3] - 80, blt_topbone );
            gen.hspeed= 4;
            gen= instance_create(global.idealborder[0] - 60, global.idealborder[3] - 30, blt_sizebone );
            gen.hspeed= 4;
            gen= instance_create(global.idealborder[0] - 60, global.idealborder[3] - 80, blt_topbone );
            gen.hspeed= 4;
            gen= instance_create(global.idealborder[0] - 170, global.idealborder[3] - 60, blt_sizebone );
            gen.hspeed= 4;
            gen= instance_create(global.idealborder[0] - 170, global.idealborder[3] - 110, blt_topbone );
            gen.hspeed= 4;
            gen= instance_create(global.idealborder[0] - 190, global.idealborder[3] - 60, blt_sizebone );
            gen.hspeed= 4;
            gen= instance_create(global.idealborder[0] - 190, global.idealborder[3] - 110, blt_topbone );
            gen.hspeed= 4;
            gen= instance_create(global.idealborder[0] - 320, global.idealborder[3] - 90, blt_sizebone );
            gen.hspeed= 4;
            gen.blue= 1;
            gen= instance_create(global.idealborder[1] + 480, global.idealborder[3] - 60, blt_sizebone );
            gen.hspeed= -4;
            gen= instance_create(global.idealborder[1] + 700, global.idealborder[3] - 30, blt_sizebone );
            gen.hspeed= -4;
            gen= instance_create(global.idealborder[1] + 700, global.idealborder[3] - 80, blt_topbone );
            gen.hspeed= -4;
            gen= instance_create(global.idealborder[0] - 700, global.idealborder[3] - 30, blt_sizebone );
            gen.hspeed= 4;
            gen= instance_create(global.idealborder[0] - 700, global.idealborder[3] - 80, blt_topbone );
            gen.hspeed= 4;
        }
        if(turns > 0) {
            if(mycommand >= 50) {
                obj_heart.movement= 2;
                obj_heart.vspeed= -1;
                obj_heart.jumpstage= 2;
                global.turntimer= 220;
                global.border= 5;
                gen= instance_create(global.idealborder[1] + 60, global.idealborder[3] - 80, blt_sizebone );
                gen.hspeed= -5;
                gen.blue= 1;
                gen= instance_create(global.idealborder[1] + 140, global.idealborder[3] - 20, blt_sizebone );
                gen.hspeed= -5;
                gen.blue= 0;
                gen= instance_create(global.idealborder[1] + 220, global.idealborder[3] - 80, blt_sizebone );
                gen.hspeed= -5;
                gen.blue= 1;
                gen= instance_create(global.idealborder[1] + 300, global.idealborder[3] - 20, blt_sizebone );
                gen.hspeed= -5;
                gen.blue= 0;
                gen= instance_create(global.idealborder[1] + 380, global.idealborder[3] - 80, blt_sizebone );
                gen.hspeed= -5;
                gen.blue= 1;
                gen= instance_create(global.idealborder[1] + 460, global.idealborder[3] - 20, blt_sizebone );
                gen.hspeed= -5;
                gen.blue= 0;
                gen= instance_create(global.idealborder[1] + 540, global.idealborder[3] - 80, blt_sizebone );
                gen.hspeed= -5;
                gen.blue= 1;
                gen= instance_create(global.idealborder[1] + 620, global.idealborder[3] - 20, blt_sizebone );
                gen.hspeed= -5;
                gen.blue= 0;
                gen= instance_create(global.idealborder[1] + 1250, global.idealborder[3] - 80, blt_sizebone );
                gen.hspeed= -7.5;
                gen.blue= 1;
                gen= instance_create(global.idealborder[1] + 1330, global.idealborder[3] - 20, blt_sizebone );
                gen.hspeed= -7.5;
                gen.blue= 0;
            } else  {
                obj_heart.movement= 2;
                obj_heart.vspeed= -1;
                obj_heart.jumpstage= 2;
                global.turntimer= 150;
                global.border= 5;
                gen= instance_create(global.idealborder[0] - 10, global.idealborder[3] - 20, blt_sizebone );
                gen.hspeed= 2;
                gen= instance_create(global.idealborder[0] - 110, global.idealborder[3] - 20, blt_sizebone );
                gen.hspeed= 2;
                gen= instance_create(global.idealborder[0] - 210, global.idealborder[3] - 20, blt_sizebone );
                gen.hspeed= 2;
                gen= instance_create(global.idealborder[0] - 310, global.idealborder[3] - 20, blt_sizebone );
                gen.hspeed= 2;
                gen= instance_create(global.idealborder[1] + 10, global.idealborder[3] - 20, blt_sizebone );
                gen.hspeed= -2;
                gen= instance_create(global.idealborder[1] + 110, global.idealborder[3] - 20, blt_sizebone );
                gen.hspeed= -2;
                gen= instance_create(global.idealborder[1] + 210, global.idealborder[3] - 20, blt_sizebone );
                gen.hspeed= -2;
                gen= instance_create(global.idealborder[1] + 310, global.idealborder[3] - 20, blt_sizebone );
                gen.hspeed= -2;
                blt_sizebone.speed= 4;
                global.turntimer= 150;
            }
        }
        turns= 1;
        global.msg[0]= "* The Lost Souls stand there.";
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
        // obj_monsterparent
        with(605) totalmercy++;
        mercyno++;
        global.msg[0]= "* You told the Lost Soul a bad&  pun about skeletons./";
        global.msg[1]= "* He seems to hate it..^1.&* But the other Lost Soul&  seems to like it./^";
        if(totalmercy >= 4) {
            global.msg[1]= "* Something about that bad&  joke..^1.&* It\\'s all flooding back!/%%";
            saved= 1;
            global.mnfight= 5;
            if(obj_ripoff_sans.mercyno == 0) {
                global.msg[1]= "* Suddenly^1, its memories are&  flooding back!/";
                global.msg[2]= "* Seeing how nicely you treated&  its brother^1, the other Lost&  Soul remembers^1, too!/%%";
            }
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        // obj_monsterparent
        with(605) totalmercy++;
        mercyno++;
        global.msg[0]= "* You asked the Lost Soul for&  help with a puzzle./";
        global.msg[1]= "* He doesn\\'t know why^1, but he&  really wants to help you./^";
        if(totalmercy >= 4) {
            global.msg[1]= "* Suddenly^1, the memories are&  flooding back!/%%";
            saved= 1;
            global.mnfight= 5;
            if(obj_ripoff_sans.mercyno == 0) {
                global.msg[1]= "* Suddenly^1, its memories are&  flooding back!/";
                global.msg[2]= "* Seeing how nicely you treated&  its brother^1, the other Lost&  Soul remembers^1, too!/%%";
            }
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        // obj_monsterparent
        with(605) totalmercy++;
        mercyno++;
        global.msg[0]= "* You asked the Lost Soul to&  cook something for you./";
        global.msg[1]= "* The Lost Soul is trying to&  hide its joy.../^";
        if(totalmercy >= 4) {
            global.msg[1]= "* Suddenly^1, the memories are&  flooding back!/%%";
            saved= 1;
            global.mnfight= 5;
            if(obj_ripoff_sans.mercyno == 0) {
                global.msg[1]= "* Suddenly^1, its memories are&  flooding back!/";
                global.msg[2]= "* Seeing how nicely you treated&  its brother^1, the other Lost&  Soul remembers^1, too!/%%";
            }
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 4) {
        global.msc= 0;
        // obj_monsterparent
        with(605) totalmercy++;
        mercyno++;
        global.msg[0]= "* You insulted the Lost Soul./";
        global.msg[1]= "* Somehow^1, it seems flattered&  by this./^";
        if(totalmercy >= 4) {
            global.msg[1]= "* Somehow^1, it\\'s flattered by&  this..^1. memories&  are flooding back!/%%";
            saved= 1;
            global.mnfight= 5;
            if(obj_ripoff_sans.mercyno == 0) {
                global.msg[1]= "* Suddenly^1, its memories are&  flooding back!/";
                global.msg[2]= "* Seeing how nicely you treated&  its brother^1, the other Lost&  Soul remembers^1, too!/%%";
            }
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
if(global.turntimer <= 2 && global.mnfight == 2) {
    obj_heart.vspeed= 0;
    obj_heart.jumpstage= 0;
    global.turntimer= -1;
    obj_heart.movement= 0;
    obj_heart.gravity= 0;
    obj_heart.vspeed= 0;
    global.mnfight= 3;
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
        part1.face= 0;
        // obj_ripoff_sans
        with(560) mypart1.face= 0;
        saved= 2;
        alarm[11]= 3;
    }
    if(saved == 3) {
        global.faceemotion= 9;
        global.msc= 0;
        global.typer= 22;
        global.msg[0]= " NO! WAIT!^1!& YOU\\'RE MY FRIEND^1!& I COULD NEVER&  CAPTURE YOU!!/%%";
        scr_blcon_x(200, 20);
        // obj_ripoff_sans
        with(560) {
            global.msc= 0;
            global.typer= 80;
            global.msg[0]= "nah^1, i\\'m rootin for&ya^1, kid.                                 /%%";
            scr_blcon_x(200, 140);
            blcon.sprite_index= spr_blconwdshrt_l ;
        }
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
        global.flag[507]= 1;
        room_restart();
    }
}

/* */
/*  */
