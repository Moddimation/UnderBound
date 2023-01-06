x= mypart1.x - 60;
y= mypart1.y;
if(global.mnfight == 3) {
    attacked= 0;
    global.hope= 0;
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
    if(mypart1.specialnormal == 0) alarm[6]= 16;
    else  alarm[6]= 1;
    with(mypart1) {
        if(specialnormal == 0) {
            snd_play(snd_spearappear );
            s_s= 0;
            if(aligncon == 0) aligncon= 1;
        }
    }
    if(turns == 2 || turns == 6 || turns == 10) {
        with(mypart1) s_s= 1;
    }
    talked= 1;
    global.heard= 0;
}
if(say == 1 && !instance_exists(blconwd)) {
    event_user(1);
    say= 0;
}
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
        if(mypart1.specialnormal == 1) {
            global.turntimer= 140;
            global.firingrate= 6;
            gen= instance_create(0, 0, obj_1sidegen );
            gen.myself= myself;
            gen.dmg= 8;
            if(global.hope == 1) {
                gen.dmg= 6;
                global.monsteratk[myself]= 6;
            }
            if(global.hope == 0) {
                gen.dmg= 8;
                global.monsteratk[myself]= 8;
            }
            gen.bullettype= 7;
        } else  {
            if(turns >= 8) mypart1.h_mode= 1;
            if(turns == 0 || turns == 4 || turns == 9) {
                with(mypart1) {
                    starcon= 1;
                    type= 0;
                }
            }
            if(turns == 1 || turns == 3 || turns == 8 || turns == 12) {
                with(mypart1) {
                    starcon= 1;
                    type= 1;
                }
            }
            if(turns == 2 || turns == 6 || turns == 10) {
                with(mypart1) {
                    bladecon= 1;
                    type= 1;
                }
            }
            if(turns == 5 || turns == 7 || turns == 11) {
                with(mypart1) {
                    guncon= 1;
                    type= 1;
                }
            }
            if(turns == 13) {
                with(mypart1) {
                    gonercon= 1;
                    type= 1;
                    global.hope= 2;
                }
            }
            turns++;
            if(global.flag[504] < turns) global.flag[504]= turns;
        }
        if(turns == 0 || turns == 4)
            global.msg[0]= "* Asriel readies " + chr(ord("\"")) + "STAR BLAZING." + chr(ord("\"")) + "";
        if(turns == 1 || turns == 3)
            global.msg[0]= "* Asriel charges " + chr(ord("\"")) + "SHOCKER&  BREAKER." + chr(ord("\"")) + "";
        if(turns == 2 || turns == 6)
            global.msg[0]= "* Asriel calls on " + chr(ord("\"")) + "CHAOS SABER." + chr(ord("\"")) + "";
        if(turns == 5 || turns == 7)
            global.msg[0]= "* Asriel readies " + chr(ord("\"")) + "CHAOS BUSTER." + chr(ord("\"")) + "";
        if(turns == 9)
            global.msg[0]= "* Asriel readies " + chr(ord("\"")) + "GALACTA&  BLAZING." + chr(ord("\"")) + "";
        if(turns == 10)
            global.msg[0]= "* Asriel calls on " + chr(ord("\"")) + "CHAOS SLICER." + chr(ord("\"")) + "";
        if(turns == 8 || turns == 12)
            global.msg[0]= "* Asriel readies " + chr(ord("\"")) + "SHOCKER&  BREAKER II." + chr(ord("\"")) + "";
        if(turns == 11)
            global.msg[0]= "* Asriel readies " + chr(ord("\"")) + "CHAOS&  BLASTER." + chr(ord("\"")) + "";
        if(turns == 13) global.msg[0]= "* Asriel readies " + chr(ord("\"")) + "HYPER GONER." + chr(ord("\"")) + "";
        if(turns == 14)
            global.msg[0]= "* Asriel is glowing with a&  strange power.";
        if(mypart1.specialnormal == 1) global.msg[0]= "* It\\'s the end.";
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
        if(mypart1.specialnormal == 1)
            global.msg[0]= "* ASRIEL DREEMURR \\\\z4   ATK \\\\z4   DEF&* Legendary being made of every&  SOUL in the underground./^";
        if(mypart1.specialnormal == 0)
            global.msg[0]= "* ASRIEL DREEMURR \\\\z4   ATK \\\\z4   DEF&* The Absolute GOD of Hyperdeath!/^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(whatiheard == 3) {
        global.msc= 0;
        global.hope= 1;
        global.msg[0]= "* You held on to your hopes..^1.&* You reduced how much DAMAGE&  you\\'ll take this turn!/^";
        if(hoped > 0)
            global.msg[0]= "* You kept holding on^1.&* DAMAGE reduced!/^";
        hoped++;
        if(global.hp < global.maxhp) {
            global.hp++;
            snd_play(snd_heal_c );
        }
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 1) {
        global.msc= 0;
        repeat(8)  scr_itemget(55);
        global.msg[0]= "* You think about why you\\'re&  here now.../";
        global.msg[1]= "* You can feel the empty&  space in your inventory&  get smaller and smaller!/^";
        if(dreamed > 0)
            global.msg[0]= "* Your items fill up with&  dreams./^";
        if(global.hp < global.maxhp) {
            global.hp+= 4;
            if(global.hp > global.maxhp) global.hp= global.maxhp;
            snd_play(snd_heal_c );
        }
        dreamed++;
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
    }
    if(whatiheard == 4) {
        global.msc= 0;
        global.msg[0]= "* You execute some action./^";
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
if(global.mnfight == 5) {
    if(trcon == 0) {
        blcon= instance_create(x + 120, y, obj_blconwdflowey );
        global.msg[0]= "\\\\E0... even after that&attack^1, you\\'re still&standing in my way...?/";
        global.msg[1]= "\\\\M1W\\\\E0ow..^1.&You really ARE&something special./";
        global.msg[2]= "\\\\M0B\\\\E3ut don\\'t get&cocky./";
        global.msg[3]= "\\\\E0Up until now^1, I\\'ve&only been using&a fraction of my&REAL power!/";
        global.msg[4]= "\\\\E2Let\\'s see what good&your DETERMINATION&is against THIS!!/%%";
        global.msc= 0;
        global.typer= 68;
        global.typer= 86;
        blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_NOMSCWRITER );
        trcon= 1;
    }
    if(trcon == 1) {
        if(instance_exists(OBJ_WRITER )) {
            if(OBJ_WRITER.stringno == 1) caster_set_volume(global.currentsong, 0.75);
            if(OBJ_WRITER.stringno == 2) caster_set_volume(global.currentsong, 0.5);
            if(OBJ_WRITER.stringno == 3) caster_set_volume(global.currentsong, 0.25);
            if(OBJ_WRITER.stringno == 4) caster_set_volume(global.currentsong, 0);
        }
        if(!instance_exists(blconwd)) {
            // obj_asriel_body
            with(569) transform= 1;
            caster_free(-3);
            bright= caster_load("music/sfx/sfx_spellcast.ogg");
            caster_play(bright, 0.24, 0.2);
            caster_play(bright, 0.24, 0.3);
            caster_play(bright, 0.24, 0.4);
            caster_play(bright, 0.24, 0.5);
            caster_play(bright, 0.24, 0.6);
            caster_play(bright, 0.24, 0.65);
            shakeamt= 0;
            trcon= 2;
            alarm[10]= 67;
            with(blcon) instance_destroy();
            sw= instance_create(0, 0, obj_screenwhiter );
            sw.ex= 1;
        }
    }
    if(trcon == 2) {
        if(shakeamt < 9) shakeamt+= 0.25;
        __view_set( e__VW.XView, 0, 0 + random(shakeamt) - random(shakeamt) );
        __view_set( e__VW.YView, 0, 0 + random(shakeamt) - random(shakeamt) );
    }
    if(trcon == 3) {
        __view_set( e__VW.XView, 0, 0 );
        __view_set( e__VW.YView, 0, 0 );
        trcon= 6;
        alarm[10]= 150;
    }
    if(trcon == 7) {
        caster_free(-3);
        global.flag[15]= 1;
        global.battlegroup= 256;
        room_restart();
    }
}


/*  */
