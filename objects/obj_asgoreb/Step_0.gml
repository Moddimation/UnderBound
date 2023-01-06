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
    alarm[5]= 10;
    alarm[6]= 1;
    talked= 1;
    global.heard= 0;
}
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
    instance_create(x, y - 24, obj_dmgwriter );
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
        if(turns == 1) {
            global.turntimer= 110;
            gen= instance_create(0, 0, obj_handbulletgen );
            gen.type= 1;
        }
        if(turns == 2) {
            global.turntimer= 160;
            gen= instance_create(0, 0, obj_asgoreattackgen );
            gen.t= 1;
        }
        if(turns == 3) {
            global.turntimer= 180;
            gen= instance_create(0, 0, obj_sinefiregen_asg_lv2_usethis );
        }
        if(turns == 4) {
            global.turntimer= 9999;
            gen= instance_create(0, 0, obj_asgore_spearswipegen );
            gen.diff= 0;
        }
        if(turns == 5) {
            global.turntimer= 175;
            gen= instance_create(0, 0, obj_randomhandgen );
            gen.factor= 40;
        }
        if(turns == 6) {
            global.turntimer= 190;
            gen= instance_create(0, 0, obj_cfiregen );
            gen.diff= 0;
        }
        if(turns == 7) {
            global.turntimer= 160;
            gen= instance_create(0, 0, obj_firestormgen );
            gen.diff= 0;
            gen.lv= 1;
        }
        if(turns == 8) {
            global.turntimer= 9999;
            gen= instance_create(0, 0, obj_asgore_spearswipegen );
            gen.diff= 1;
        }
        if(turns == 9) {
            global.turntimer= 145;
            gen= instance_create(0, 0, obj_asgoreattackgen );
            gen.t= 2;
        }
        if(turns == 10) {
            global.turntimer= 190;
            gen= instance_create(0, 0, obj_randomhandgen );
            gen.factor= 35;
        }
        if(turns == 11) {
            global.turntimer= 180;
            gen= instance_create(0, 0, obj_cfiregen );
            gen.diff= 1;
        }
        if(turns == 12) {
            global.turntimer= 9999;
            gen= instance_create(0, 0, obj_asgore_spearswipegen );
            gen.diff= 1;
        }
        if(turns == 13) {
            global.turntimer= 140;
            gen= instance_create(0, 0, obj_firestormgen );
            gen.lv= 2;
        }
        if(turns == 14) {
            global.turntimer= 190;
            gen= instance_create(0, 0, obj_sinefiregen_asglv3 );
        }
        if(turns == 15) {
            global.turntimer= 175;
            gen= instance_create(0, 0, obj_cfiregen );
            gen.diff= 2;
        }
        if(turns == 16) {
            global.turntimer= 9999;
            gen= instance_create(0, 0, obj_asgore_spearswipegen );
            gen.diff= 2;
        }
        if(turns == 17) {
            global.turntimer= 173;
            gen= instance_create(0, 0, obj_randomhandgen );
            gen.factor= 30;
        }
        if(turns == 18) {
            global.turntimer= 188;
            gen= instance_create(0, 0, obj_cfiregen );
            gen.diff= 3;
        }
        if(turns == 19) {
            global.turntimer= 130;
            gen= instance_create(0, 0, obj_firestormgen );
            gen.lv= 3;
        }
        if(turns == 20) {
            global.turntimer= 9999;
            gen= instance_create(0, 0, obj_asgore_spearswipegen );
            gen.diff= 3;
        }
        if(turns == 21 || turns == 22) {
            if(global.monsterdef[myself] > -90)
                global.monsterdef[myself]-= 5;
            ch= choose(0, 1, 2, 3, 4);
            if(ch == 0) {
                global.turntimer= 188;
                gen= instance_create(0, 0, obj_cfiregen );
                gen.diff= 3;
            }
            if(ch == 1) {
                global.turntimer= 130;
                gen= instance_create(0, 0, obj_firestormgen );
                gen.lv= 3;
            }
            if(ch == 2) {
                global.turntimer= 173;
                gen= instance_create(0, 0, obj_randomhandgen );
                gen.factor= 30;
            }
            if(ch == 3) {
                global.turntimer= 190;
                gen= instance_create(0, 0, obj_sinefiregen_asglv3 );
            }
            if(ch == 4) {
                global.turntimer= 145;
                gen= instance_create(0, 0, obj_asgoreattackgen );
                gen.t= 2;
            }
        }
        if(turns >= 20 && global.monsterdef[myself] > -120)
            global.monsterdef[myself]-= 10;
        if(turns == 23) {
            global.turntimer= 9999;
            gen= instance_create(0, 0, obj_asgore_spearswipegen );
            gen.diff= 3;
            turns= 20;
        }
        turnoff= 1;
        toriel= 0;
        if(toriel == 1) {
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
        }
        gen.myself= myself;
        if(mycommand >= 0) global.msg[0]= "* ...";
        if(global.monsterhp[myself] <= global.monstermaxhp[myself] / 4)
            global.msg[0]= "* Asgore has low HP.";
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
        global.msg[0]= "* ASGORE 80 ATK 80 DEF /^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 3) {
        ini_open("undertale.ini");
        ky= ini_read_real("Asgore", "KillYou", 0);
        ini_close();
        global.msc= 0;
        global.msg[0]= "* But there was nothing to&  say./^";
        if(global.kills == 0) {
            if(talk_x == 0) {
                global.msg[0]= "* You quietly tell ASGORE&  you don\\'t want to fight&  him./";
                global.msg[1]= "* His hands tremble for a&  moment./^";
            }
            if(talk_x == 1) {
                global.msg[0]= "* You tell ASGORE that you&  don\\'t want to fight him./";
                global.msg[1]= "* His breathing gets funny&  for a moment./^";
            }
            if(talk_x == 2) {
                global.msg[0]= "* You firmly tell ASGORE to&  STOP fighting./";
                global.msg[1]= "* Recollection flashes in his&  eyes.../";
                global.msg[2]= "* ASGORE\\'s ATTACK dropped^1!&* ASGORE\\'s DEFENSE dropped!/^";
                global.monsteratk[myself]--;
                global.monsterdef[myself]-= 10;
            }
            if(talk_x >= 3 && talk_x != 8)
                global.msg[0]= "* Seems talking won\\'t do any&  more good./^";
            if(talk_x == 8) global.msg[0]= "* All you can do is FIGHT./^";
        }
        if(talk_x == 0 && ky > 0) {
            vari= "too many times&  to count";
            if(ky == 1) vari= "once before";
            if(ky == 2) vari= "twice before";
            if(ky == 3) vari= "three times";
            if(ky == 4) vari= "four times";
            if(ky == 5) vari= "five times";
            if(ky == 6) vari= "six times";
            if(ky == 7) vari= "seven times";
            if(ky == 8) vari= "eight times";
            if(ky == 9) vari= "nine times";
            global.msg[0]= "* You tell ASGORE that he\\'s&  killed you " + vari + "./";
            global.msg[1]= "* He nods sadly./^";
            if(ky > 4) global.msg[1]= "* He nods grievously./^";
            if(ky > 9) global.msg[1]= "* He nods pitifully./^";
        }
        talk_x++;
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
curatk= global.monsteratk[myself];
if(turnoff == 1 && global.turntimer <= 0) {
    dont= 0;
    global.turntimer= -1;
    turnoff= 0;
    global.mnfight= 3;
    global.myfight= -1;
}


/*  */
