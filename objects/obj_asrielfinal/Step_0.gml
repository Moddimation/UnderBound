if(global.mnfight == 3) attacked= 0;
if(alarm[5] > 0) {
    if(global.monster[0] == 1 && global.monsterinstance[0].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[0].alarm[5];
    if(global.monster[1] == 1 && global.monsterinstance[1].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[1].alarm[5];
    if(global.monster[2] == 1 && global.monsterinstance[2].alarm[5] > alarm[5])
        alarm[5]= global.monsterinstance[2].alarm[5];
}
if(global.mnfight == 1) {
    if(talked == 1 && !instance_exists(blconwd)) event_user(2);
    if(talked == 0) {
        event_user(3);
        talked= 1;
        global.heard= 0;
    }
    if(talked == 2) talked= 0;
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
        if(global.flag[501] < 3) mypart1.ucon= 1;
        else  {
            if(turns == 0) {
                mypart1.u_gen= 2;
                mypart1.ucon= 1;
            }
            if(turns == 1) {
                mypart1.u_gen= 3;
                mypart1.ucon= 1;
            }
            if(turns == 2 || turns == 3 || turns == 4 || turns == 5) {
                global.turntimer= 120;
                global.firingrate= 2;
                gen= instance_create(0, 0, obj_1sidegen );
                gen.myself= myself;
                gen.dmg= 1;
                gen.bullettype= 9;
            }
            if(turns == 6) mypart1.bcon= 1;
            if(turns >= 7) mercymod= -12;
            if(turns >= 11) mercymod= 999999;
            turns++;
        }
        global.msg[0]= "* The whole world is ending.";
        total= global.flag[505] + global.flag[506] + global.flag[507] + global.flag[508];
        if(total == 1)
            global.msg[0]= "* You feel something faintly&  resonating within ASRIEL.";
        if(total == 2)
            global.msg[0]= "* You feel something&  resonating within ASRIEL.";
        if(total == 3)
            global.msg[0]= "* You feel something strongly&  resonating within ASRIEL.";
        if(total == 4)
            global.msg[0]= "* You feel your friends\\' SOULs&  resonating within ASRIEL!";
        if(turns > 0) global.msg[0]= "* ...";
        attacked= 1;
    }
    if(mercymod == -12 || mercymod == 999999) {
        global.turntimer= -1;
        global.mnfight= 3;
    }
    whatiheard= -1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(global.flag[501] > 2) {
        global.myfight= 0;
        global.mnfight= 1;
    }
    if(global.flag[501] == 2 && whatiheard == 0) {
        global.msc= 0;
        savecon_a= 1;
        OBJ_WRITER.halt= 3;
        global.msg[0]= "* Strangely^1, as your friends&  remembered you.../";
        global.msg[1]= "* Something else began resonating&  within the SOUL^1, stronger&  and stronger./";
        global.msg[2]= "* It seems that there\\'s still&  one last person that needs&  to be saved./";
        global.msg[3]= "* But who...?/";
        global.msg[4]= "* .../";
        global.msg[5]= "* Suddenly^1, you realize./";
        global.msg[6]= "* You reach out and call&  their name./%%";
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    if(global.flag[501] == 1) {
        if(whatiheard == 0) {
            global.msc= 0;
            if(global.flag[505] == 0) {
                event_user(0);
                nextbattle= 87;
            } else  event_user(1);
            OBJ_WRITER.halt= 3;
            iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
            with(iii) halt= 0;
            whatiheard= 9;
        }
        if(whatiheard == 3) {
            global.msc= 0;
            if(global.flag[506] == 0) {
                event_user(0);
                nextbattle= 89;
            } else  event_user(1);
            OBJ_WRITER.halt= 3;
            iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
            with(iii) halt= 0;
        }
        if(whatiheard == 1 || whatiheard == 4) {
            global.msc= 0;
            if(global.flag[507] == 0) {
                event_user(0);
                nextbattle= 88;
            } else  event_user(1);
            OBJ_WRITER.halt= 3;
            iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
            with(iii) halt= 0;
        }
        if(whatiheard == 2 || whatiheard == 5) {
            global.msc= 0;
            if(global.flag[508] == 0) {
                event_user(0);
                nextbattle= 90;
            } else  event_user(1);
            OBJ_WRITER.halt= 3;
            iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
            with(iii) halt= 0;
        }
    }
    if(global.flag[501] == 0 && whatiheard == 0) {
        if(global.tempvalue[12] >= 4) {
            with(mypart1) darker= 1;
            songcon= 1;
            global.msc= 0;
            global.msg[0]= "* Can\\'t move your body^1.&* Nothing happened./";
            global.msg[1]= "* You struggle..^1.&* Nothing happened./";
            global.msg[2]= "* You tried to reach your&  SAVE file^1.&* Nothing happened./";
            global.msg[3]= "* You tried again to reach&  your SAVE file^1.&* Nothing happened./";
            global.msg[4]= "* Seems SAVING the game really&  is impossible./";
            if(!file_exists("file0")) {
                global.msg[2]= "* SAVING over ASRIEL\\'s file&  seems like the only way to&  defeat him.../";
                global.msg[3]= "* But^1, having never SAVED&  before^1, you lack the power&  to do it./";
                global.msg[4]= "* Seems SAVING the game really&  is impossible./";
            }
            global.msg[5]= "* .../";
            global.msg[6]= "* But.../";
            global.msg[7]= "* Maybe^1, with what little&  power you have.../";
            global.msg[8]= "* You can SAVE something else./%%";
            OBJ_WRITER.halt= 3;
            iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
            iii.depth= -1020;
            with(iii) halt= 0;
            whatiheard= 9;
        } else  {
            global.tempvalue[12]++;
            global.msc= 0;
            global.msg[0]= "* Can\\'t move your body./^";
            OBJ_WRITER.halt= 3;
            iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
            with(iii) halt= 0;
        }
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
if(songcon == 1) {
    vol= caster_get_volume(global.batmusic);
    vol-= 0.04;
    caster_set_volume(global.batmusic, vol);
    if(vol <= 0.04) {
        vol= 0;
        caster_free(global.batmusic);
        songcon= 2;
    }
}
if(songcon == 3) {
    with(mypart1) darker= 0;
    snd_play(snd_break2 );
    songcon= -1;
}
if(songcon == 2 && !instance_exists(OBJ_WRITER )) {
    global.heard= 0;
    global.mercy= 1;
    global.flag[501]= 1;
    global.mnfight= 0;
    global.myfight= 0;
    global.bmenuno= 0;
    instance_create(0, 0, obj_flasher );
    global.hp= global.maxhp;
    obj_talkbt.spec= 1;
    obj_talkbt.sprite_index= spr_savebt ;
    songcon= 3;
    global.batmusic= caster_load("music/xpart_2.ogg");
    caster_loop(global.batmusic, 0.8, 0.95);
    global.msg[0]= "* !?!?";
}
if(gocon == 1 && !instance_exists(OBJ_WRITER )) {
    if(gotimer == 0) instance_create(0, 0, obj_screenwhiter );
    gotimer++;
    if(gotimer == 34) {
        global.battlegroup= nextbattle;
        gocon= 0;
        room_restart();
    }
}
if(savecon_a > 0) {
    vol= caster_get_volume(global.batmusic);
    vol-= 0.04;
    caster_set_volume(global.batmusic, vol);
    if(vol <= 0.04) {
        vol= 0;
        caster_free(global.batmusic);
    }
    if(savecon_a == 1 && !instance_exists(OBJ_WRITER )) {
        savecon_a= 2;
        blcon= instance_create(400, 50, obj_blconwdflowey );
        global.msc= 0;
        global.msg[0]= "Huh^1? What are you&doing...!?";
        global.faceemotion= 2;
        global.typer= 86;
        blconwd= instance_create(blcon.x + 25, blcon.y + 10, OBJ_NOMSCWRITER );
        blcon.depth= -2000;
        blconwd.depth= -2200;
    }
    if(savecon_a == 2) savecon_a_x++;
    if(savecon_a_x == 70) {
        sw= instance_create(0, 0, obj_screenwhiter );
        sw.ex= 1;
    }
    if(savecon_a_x == 138) room_goto(332);
}
if(endcon == 1) {
    sw= instance_create(0, 0, obj_screenwhiter );
    sw.ex= 2;
    endcon= 3;
    alarm[11]= 136;
}


/*  */
