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
        global.msg[0]= "* You tell the Lost Soul that&  you\\'re going to save&  everyone./";
        global.msg[1]= "* Something stirs deep within&  him./^";
        if(totalmercy >= 4) {
            global.msg[1]= "* Something stirs within him..^1.&* It\\'s all flooding back!/%%";
            // obj_ripoff_toriel
            with(562) saved= 1;
            global.mnfight= 5;
            if(obj_ripoff_toriel.mercyno == 0) {
                global.msg[1]= "* Suddenly^1, his memories are&  flooding back!/";
                global.msg[2]= "* Seeing how nice you are^1, the&  female Lost Soul\\'s memories&  returned^1, too!/%%";
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
        global.msg[0]= "* You tell the Lost Soul that&  you won\\'t hurt him^1, no&  matter what./";
        global.msg[1]= "* Something about this&  is so familiar to him.../^";
        if(totalmercy >= 4) {
            global.msg[1]= "* Suddenly^1, the memories are&  flooding back!/%%";
            // obj_ripoff_toriel
            with(562) saved= 1;
            global.mnfight= 5;
            if(obj_ripoff_toriel.mercyno == 0) {
                global.msg[1]= "* Suddenly^1, his memories are&  flooding back!/";
                global.msg[2]= "* Seeing how nice you are^1, the&  female Lost Soul\\'s memories&  returned^1, too!/%%";
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
        global.msg[0]= "* You stare deep into the&  eyes of the Lost Soul./";
        global.msg[1]= "* He remembers the gaze of&  humans past.../^";
        if(totalmercy >= 4) {
            global.msg[1]= "* Suddenly^1, the memories are&  flooding back!/%%";
            // obj_ripoff_toriel
            with(562) saved= 1;
            global.mnfight= 5;
            if(obj_ripoff_toriel.mercyno == 0) {
                global.msg[1]= "* Suddenly^1, his memories are&  flooding back!/";
                global.msg[2]= "* Seeing how nice you are^1, the&  female Lost Soul\\'s memories&  returned^1, too!/%%";
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
        global.msg[0]= "* You hug the Lost Soul./";
        global.msg[1]= "* It seems like his aggression&  is slowly melting away.../^";
        if(totalmercy >= 4) {
            global.msg[1]= "* Suddenly^1, his memories&  are flooding back!/%%";
            // obj_ripoff_toriel
            with(562) saved= 1;
            global.mnfight= 5;
            if(obj_ripoff_toriel.mercyno == 0) {
                global.msg[1]= "* Suddenly^1, his memories are&  flooding back!/";
                global.msg[2]= "* Seeing how nice you are^1, the&  female Lost Soul\\'s memories&  returned^1, too!/%%";
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

/* */
/*  */
