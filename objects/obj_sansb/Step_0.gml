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
    alarm[5]= 15;
    alarm[6]= 1;
    talked= 1;
    global.heard= 0;
}
if(talked == 1 && instance_exists(OBJ_WRITER )) {
    scr_textskip();
    if(alarm[5] <= 3) alarm[5]= 3;
}
if(global.hurtanim[myself] == 1) {
    shudder= 8;
    alarm[3]= global.damagetimer;
    global.hurtanim[myself]= 3;
}
if(global.hurtanim[myself] == 2) {
    with(dmgwriter) alarm[2]= 15;
    global.hurtanim[myself]= 0;
    mypart1.pause= 0;
    global.myfight= 0;
    global.mnfight= 1;
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
if(global.mnfight == 2 && normalfight == 1) {
    if(attacked == 0) {
        global.flag[271]= 1;
        if(global.sp < 5) global.sp= 5;
        global.turntimer= 10;
        timer_on= 1;
        if(mercy_death == 0) {
            if(hit_try < 13) {
                obj_heart.movement= 2;
                obj_heart.sprite_index= spr_heartblue ;
                if(part == 0) {
                    // obj_sansb_body
                    with(517) {
                        a_type= 0;
                        event_user(0);
                    }
                }
                if(part == 1) {
                    // obj_sansb_body
                    with(517) {
                        a_type= 3;
                        event_user(0);
                    }
                }
                if(part == 2) {
                    // obj_sansb_body
                    with(517) {
                        a_type= 23;
                        event_user(0);
                    }
                }
                if(part == 3) {
                    // obj_sansb_body
                    with(517) {
                        a_type= 6;
                        event_user(0);
                    }
                }
                if(part == 4) {
                    // obj_sansb_body
                    with(517) {
                        a_type= 7;
                        event_user(0);
                    }
                }
                if(part == 5) {
                    // obj_sansb_body
                    with(517) {
                        a_type= 8;
                        event_user(0);
                    }
                }
                if(part == 6) {
                    // obj_sansb_body
                    with(517) {
                        a_type= 17;
                        event_user(0);
                    }
                }
                if(part == 7) {
                    // obj_sansb_body
                    with(517) {
                        a_type= 15;
                        event_user(0);
                    }
                }
                if(part == 8) {
                    // obj_sansb_body
                    with(517) {
                        a_type= 18;
                        event_user(0);
                    }
                }
                if(part == 9) {
                    // obj_sansb_body
                    with(517) {
                        a_type= 1;
                        event_user(0);
                    }
                }
                if(part == 10) {
                    // obj_sansb_body
                    with(517) {
                        a_type= 5;
                        event_user(0);
                    }
                }
                if(part == 11) {
                    // obj_sansb_body
                    with(517) {
                        a_type= 21;
                        event_user(0);
                    }
                }
                if(part == 12) {
                    // obj_sansb_body
                    with(517) {
                        a_type= 16;
                        event_user(0);
                    }
                }
                if(part >= 13) {
                    b_choose= choose(0, 1, 2, 3);
                    if(b_choose == 0) {
                        // obj_sansb_body
                        with(517) {
                            a_type= 1;
                            event_user(0);
                        }
                    }
                    if(b_choose == 1) {
                        // obj_sansb_body
                        with(517) {
                            a_type= 5;
                            event_user(0);
                        }
                    }
                    if(b_choose == 2) {
                        // obj_sansb_body
                        with(517) {
                            a_type= 21;
                            event_user(0);
                        }
                    }
                    if(b_choose == 3) {
                        // obj_sansb_body
                        with(517) {
                            a_type= 16;
                            event_user(0);
                        }
                    }
                }
                if(global.border == 39) {
                    obj_heart.y= global.idealborder[3] - 70;
                    obj_heart.vspeed= 2;
                }
            }
            if(hit_try >= 14 && hit_try < 23 && nx == 1) {
                global.turntimer= 20;
                timer_on= 0;
                obj_heart.movement= 1;
                obj_heart.sprite_index= spr_heart ;
                if(part == 0) {
                    // obj_sansb_body
                    with(517) {
                        a_type= 12;
                        event_user(0);
                    }
                    timer_on= 1;
                }
                if(part == 1) {
                    shadow= instance_create(0, 0, obj_sansshadowgen );
                    shadow.level= 1;
                    shadow.shadow_max= 5;
                }
                if(part == 2) {
                    // obj_sansb_body
                    with(517) {
                        smasher= 1;
                        smashlv= 0;
                        smashcon= 0;
                    }
                }
                if(part == 3) {
                    // obj_sansb_body
                    with(517) {
                        smasher= 1;
                        smashlv= 1;
                        smashcon= 0;
                    }
                }
                if(part == 4) {
                    // obj_sansb_body
                    with(517) {
                        a_type= 13;
                        event_user(0);
                    }
                    timer_on= 1;
                }
                if(part == 5) {
                    // obj_sansb_body
                    with(517) {
                        a_type= 22;
                        event_user(0);
                    }
                    timer_on= 1;
                }
                if(part == 6) {
                    shadow= instance_create(0, 0, obj_sansshadowgen );
                    with(shadow) alarm[0]= 4;
                    shadow.level= 2;
                    shadow.shadow_max= 6;
                }
                if(part == 7) {
                    // obj_sansb_body
                    with(517) {
                        smasher= 1;
                        smashlv= 2;
                        smashcon= 0;
                    }
                }
                if(part >= 8) {
                    if(c_choose == 1) {
                        // obj_sansb_body
                        with(517) {
                            smasher= 1;
                            smashlv= 2;
                            smashcon= 0;
                        }
                    }
                    if(c_choose == 2) {
                        shadow= instance_create(0, 0, obj_sansshadowgen );
                        with(shadow) alarm[0]= 4;
                        shadow.level= 2;
                        shadow.shadow_max= 6;
                    }
                    if(c_choose == 3) {
                        // obj_sansb_body
                        with(517) {
                            a_type= 13;
                            event_user(0);
                        }
                        timer_on= 1;
                    }
                }
            }
            if(hit_try == 23) {
                global.border= -1;
                // obj_sansb_body
                with(517) lac= 4;
                // obj_borderparent
                with(757) instaborder= 1;
                timer_on= 0;
                obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2);
                obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;
            }
            if(hit_try == 14 && nx == 0) {
                nx= 1;
                mercymod= -10000;
                caster_resume(global.batmusic);
                part= -1;
                shadow= instance_create(0, 0, obj_sansshadowgen );
                shadow.level= 0;
                shadow.shadow_max= 5;
                timer_on= 0;
            }
        } else  {
            mercymod= -999999;
            timer_on= 0;
            obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
            obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;
            obj_heart.sprite_index= spr_heart ;
            obj_heart.movement= 1;
            // obj_sansb_body
            with(517) {
                a_type= 20;
                event_user(0);
            }
        }
        turns++;
        part++;
        if(hit_try < 4 && mycommand >= 0)
            global.msg[0]= "* Just keep attacking.";
        if(hit_try >= 4 && mycommand >= 0)
            global.msg[0]= "* Sans\\'s movements grow a&  little wearier.";
        if(hit_try >= 8 && mycommand >= 0)
            global.msg[0]= "* Sans\\'s movements seem to be&  slower.";
        if(hit_try >= 13 && mycommand >= 0)
            global.msg[0]= "* Felt like a turning point.";
        if(global.km >= 0)
            global.msg[0]= "* You felt your sins crawling&  on your back.";
        if(global.km >= 10)
            global.msg[0]= "* You felt your sins weighing&  on your neck.";
        if(global.km >= 20)
            global.msg[0]= "* KARMA coursing through your&  veins.";
        if(global.km >= 30) global.msg[0]= "* Doomed to death of KARMA!";
        if(hit_try == 15 && mycommand >= 0)
            global.msg[0]= "* The REAL battle finally begins.";
        if(hit_try >= 19 && mycommand >= 0)
            global.msg[0]= "* Reading this doesn\\'t seem&  like the best use of time.";
        if(hit_try >= 20 && mycommand >= 0)
            global.msg[0]= "* Sans is starting to look&  really tired.";
        if(hit_try >= 21 && mycommand >= 0)
            global.msg[0]= "* Sans is preparing something.";
        if(hit_try >= 22 && mycommand >= 0)
            global.msg[0]= "* Sans is getting ready to&  use his special attack.";
        attacked= 1;
    }
    if(mercymod == 999999) {
        obj_heart.speed= 0;
        global.msg[0]= "* Sans is sparing you.";
        global.turntimer= -1;
        global.mnfight= 3;
    }
    whatiheard= -1;
}
if(global.myfight == 2 && whatiheard != -1 && global.heard == 0) {
    if(whatiheard == 0) {
        global.msc= 0;
        if(hit_try > 0) {
            global.msg[0]= "* SANS 1 ATK 1 DEF&* The easiest enemy^1.&* Can only deal 1 damage./";
            global.msg[1]= "* Can\\'t keep dodging forever^1.&* Keep attacking./^";
        } else 
            global.msg[0]= "* SANS 1 ATK 1 DEF&* The easiest enemy^1.&* Can only deal 1 damage./^";
        OBJ_WRITER.halt= 3;
        iii= instance_create(global.idealborder[0], global.idealborder[2], OBJ_WRITER );
        with(iii) halt= 0;
        whatiheard= 9;
    }
    global.heard= 1;
}
if(global.myfight == 4 && global.mercyuse == 0) {
    script_execute(scr_mercystandard );
    if(mercy < 0) mercy_death= 1;
}
if(mercymod == 222 && !instance_exists(OBJ_WRITER )) {
    script_execute(scr_mercystandard );
    if(mercy < 0) mercy_death= 1;
}
if(con == 1 && skip == 0) {
    // OBJ_WRITER
    with(782) instance_destroy();
    global.mnfight= 99;
    global.myfight= 99;
    obj_heart.visible= 0;
    global.sp= 5;
}
if(con == 1 && skip == 1) {
    global.mnfight= 99;
    global.myfight= 99;
    caster_loop(global.batmusic, 0.9, 0.95);
    global.sp= 5;
    // OBJ_WRITER
    with(782) instance_destroy();
    with(mypart1) fac= 20;
}
if(con == 2) {
    global.msc= 0;
    global.typer= 107;
    global.msg[0]= "it\\'s a beautiful&day outside./";
    global.msg[1]= "birds are singing^1,&flowers are&blooming.../";
    global.msg[2]= "on days like these^1,&kids like you.../%%";
    if(intro == 1) {
        global.msg[0]= "it\\'s a beautiful&day outside./";
        global.msg[1]= "birds are singing^1,%%";
    }
    if(intro >= 2) global.msg[0]= "ready?/%%";
    con= 3;
    scr_blcon_x(x + 120, y);
}
if(con == 3 && !instance_exists(OBJ_WRITER )) {
    con= 5;
    alarm[4]= 10;
    if(intro >= 1) alarm[4]= 2;
}
if(con == 6) {
    caster_stop(birdnoise);
    snd_play(snd_noise );
    blk= scr_marker(-10, -10, 996);
    blk.image_xscale= 999;
    blk.image_yscale= 999;
    blk.depth= -9999;
    global.bmenuno= 999;
    // obj_borderparent
    with(757) instaborder= 1;
    global.border= -1;
    global.idealborder[0]= 240;
    global.idealborder[1]= 400;
    global.idealborder[2]= global.idealborder[3] - 160;
    obj_heart.x= global.idealborder[0] + 75;
    obj_heart.y= global.idealborder[2] + 75;
    con= 7;
    alarm[4]= 8;
    if(intro >= 1) alarm[4]= 2;
}
if(con == 8) {
    global.faceemotion= 5;
    global.flag[271]= 1;
    obj_heart.visible= 1;
    with(blk) instance_destroy();
    snd_play(snd_noise );
    normalfight= 0;
    global.myfight= -1;
    global.mnfight= 2;
    con= 9;
    obj_borderparent.visible= 1;
    alarm[4]= 20;
    if(intro >= 1) {
        con= 11;
        alarm[4]= -1;
    }
}
if(con == 10) {
    global.typer= 108;
    global.msg[0]= "Should&be&burning&in hell./%%";
    con= 11;
    scr_blcon_x(x + 120, y - 30);
    blcon.sprite_index= spr_blconsm ;
}
if(con == 11 && !instance_exists(OBJ_WRITER )) {
    // obj_sansb_body
    with(517) fac= 1;
    con= 12;
}
if(p_cut == 1) {
    caster_stop(cutsfx);
    caster_play(cutsfx, 0.8, 1.4);
    snd_stop(20);
    snd_play(snd_arrow );
    p_cut= 0;
}
if(p_power == 1) {
    dopower= 0;
    if(global.osflavor == 2 && hit_try >= 23) dopower= 1;
    if(dopower == 0) {
        caster_stop(beam_up_sfx);
        caster_play(beam_up_sfx, 0.8, 1.2);
    }
    p_power= 0;
}
if(p_beam == 1) {
    caster_stop(beamsfx);
    caster_play(beamsfx, 0.8, 1.2);
    if(global.osflavor == 1) caster_stop(beamsfx_a);
    caster_play(beamsfx_a, 0.6, 1.2);
    p_beam= 0;
}
if(timer_on == 1 && global.turntimer <= 0) {
    if(hit_try >= 15 && hit_try < 23) instance_create(0, 0, obj_menubone_maker );
    global.mnfight= 3;
    global.movement= 0;
    timer_on= 0;
    // obj_bonestab
    with(502) instance_destroy();
    // obj_sans_shaker
    with(512) instance_destroy();
    // obj_bonewall_normal
    with(500) instance_destroy();
    // obj_bonewall
    with(501) instance_destroy();
    // obj_boneplat
    with(515) instance_destroy();
    // obj_sans_bonebul
    with(499) instance_destroy();
    // obj_gasterblaster
    with(498) instance_destroy();
    // obj_boneloop_v
    with(503) instance_destroy();
    // obj_gasterbl_gen
    with(518) instance_destroy();
    // obj_3platgen
    with(514) instance_destroy();
}
if(drama == 1 && instance_exists(OBJ_WRITER ) && OBJ_WRITER.stringno == 2) {
    d_music= caster_load("music/chokedup.ogg");
    caster_loop(d_music, 0.8, 0.9);
    drama= 2;
}
if(global.debug == 1 && keyboard_check_pressed(81) && hit_try < 12) {
    hit_try= 12;
    hit_reached= 11;
}
if(global.debug == 1 && keyboard_check_pressed(69) && hit_try < 22) {
    hit_try= 22;
    hit_reached= 21;
}

/* */
/*  */
