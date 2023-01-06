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
        if(mycommand >= 50) {
            global.turntimer= 190;
            gen= instance_create(0, 0, obj_randomhandgen );
            gen.factor= 35;
            gen.dmg= 9;
        } else  {
            global.turntimer= 180;
            gen= instance_create(0, 0, obj_cfiregen );
            gen.diff= 1;
            gen.dmg= 9;
        }
        turnoff= 1;
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
        global.msg[0]= "* You tell the Lost Soul that&  you have to go if you\\'re&  going to free everyone./";
        global.msg[1]= "* Something is stirring within&  her.../^";
        if(totalmercy >= 4) {
            global.msg[1]= "* Something stirs within her..^1.&* It\\'s all flooding back!/%%";
            saved= 1;
            global.mnfight= 5;
            if(obj_ripoff_asgore.mercyno == 0) {
                global.msg[1]= "* Suddenly^1, her memories are&  flooding back!/";
                global.msg[2]= "* Seeing her remember you^1, the&  male Lost Soul tried hard&  to remember you^1, too!/%%";
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
        global.msg[0]= "* You refuse to fight the Lost&  Soul./";
        global.msg[1]= "* Something about this&  is so familiar to her.../^";
        if(totalmercy >= 4) {
            global.msg[1]= "* Suddenly^1, the memories are&  flooding back!/%%";
            saved= 1;
            global.mnfight= 5;
            if(obj_ripoff_asgore.mercyno == 0) {
                global.msg[1]= "* Suddenly^1, her memories are&  flooding back!/";
                global.msg[2]= "* Seeing her remember you^1, the&  male Lost Soul tried hard&  to remember you^1, too!/%%";
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
        global.msg[0]= "* You hug the Lost Soul and&  tell her that you\\'re going&  to see her again./";
        global.msg[1]= "* Something about this&  is so familar to her.../^";
        if(totalmercy >= 4) {
            global.msg[1]= "* Suddenly^1, the memories are&  flooding back!/%%";
            saved= 1;
            global.mnfight= 5;
            if(obj_ripoff_asgore.mercyno == 0) {
                global.msg[1]= "* Suddenly^1, her memories are&  flooding back!/";
                global.msg[2]= "* Seeing her remember you^1, the&  male Lost Soul tried hard&  to remember you^1, too!/%%";
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
        if(global.flag[46] == 1)
            global.msg[0]= "* You tell the Lost Soul you&  prefer butterscotch instead&  of cinnamon./";
        if(global.flag[46] == 0)
            global.msg[0]= "* You tell the Lost Soul you&  prefer cinnamon instead&  of butterscotch./";
        global.msg[1]= "* Somehow^1, she faintly recalls&  hearing this before.../^";
        if(totalmercy >= 4) {
            global.msg[1]= "* Suddenly^1, her memories&  are flooding back!/%%";
            saved= 1;
            global.mnfight= 5;
            if(obj_ripoff_asgore.mercyno == 0) {
                global.msg[1]= "* Suddenly^1, her memories are&  flooding back!/";
                global.msg[2]= "* Seeing her remember you^1, the&  male Lost Soul tried hard&  to remember you^1, too!/%%";
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
if(global.mnfight == 5 && !instance_exists(OBJ_WRITER )) {
    if(saved == 1) {
        if(global.hp < global.maxhp) {
            global.hp= global.maxhp;
            snd_play(snd_heal_c );
        }
        // obj_strangetangle
        with(1662) instance_destroy();
        global.faceemotion= 0;
        instance_create(0, 0, obj_flasher );
        snd_play(snd_break2 );
        saved= 2;
        alarm[11]= 3;
        // obj_ripoff_asgore
        with(563) mypart1.face= 0;
    }
    if(saved == 3) {
        global.faceemotion= 0;
        global.msc= 0;
        global.typer= 8;
        global.msg[0]= "Your fate is up to&you now!/%%";
        scr_blcon_x(160, 20);
        // obj_ripoff_asgore
        with(563) {
            global.msc= 0;
            global.typer= 63;
            global.msg[0]= "You are our future!     /%%";
            scr_blcon_x(160, 140);
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
        global.flag[508]= 1;
        room_restart();
    }
}
if(turnoff == 1 && global.turntimer <= 0) {
    dont= 0;
    global.turntimer= -1;
    turnoff= 0;
    global.mnfight= 3;
    global.myfight= -1;
}

/* */
/*  */
