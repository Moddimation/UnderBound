draw_set_color(16777215);
draw_set_font(10);
savetimer--;
loadtimer--;
if(savetimer > 0) {
    draw_set_color(65535);
    sta= (10 + savetimer) / 20;
    if(sta > 1) sta= 1;
    draw_set_alpha(sta);
    if(fileset == 2) draw_text_transformed(20, 430, string_hash_to_newline("FILE 2 SAVED"), 3, 3, 0);
    if(fileset == 3) draw_text_transformed(20, 430, string_hash_to_newline("FILE 3 SAVED"), 3, 3, 0);
    if(fileset == 6) draw_text_transformed(20, 430, string_hash_to_newline("FILE 6 SAVED"), 3, 3, 0);
}
if(loadtimer > 0) {
    sta= (10 + loadtimer) / 20;
    if(sta > 1) sta= 1;
    draw_set_alpha(sta);
    if(fileset == 3 || fileset == 4 || fileset == 5 || fileset == 6) {
        if(fileset == 3)
            draw_text_transformed(20 + flx, 430 + fly, string_hash_to_newline("FILE 3 LOADED"), 3, 3, 0);
        if(fileset == 4) draw_text_transformed(20, 430, string_hash_to_newline("FILE 4 LOADED"), 3, 3, 0);
        if(fileset == 5) draw_text_transformed(20, 430, string_hash_to_newline("LOAD FAILED"), 3, 3, 0);
        if(fileset == 6) draw_text_transformed(20, 430, string_hash_to_newline("FILE 6 LOADED"), 3, 3, 0);
    } else  draw_text_transformed(20, 430, string_hash_to_newline("FILE 2 LOADED"), 3, 3, 0);
}
if(darkmode == 1) {
    obj_vsflowey_heart.depth= -25;
    if(darkvalue < 1) darkvalue+= 0.05;
    draw_set_alpha(darkvalue);
    if(darkvalue == 1) darkmode= 2;
}
if(darkmode == 3) {
    if(darkvalue > 0) darkvalue-= 0.05;
    else  {
        obj_vsflowey_heart.depth= 10;
        darkmode= 0;
        darkvalue= 0;
    }
    draw_set_alpha(darkvalue);
}
if(darkmode > 0) {
    draw_set_color(0);
    draw_rectangle(-20, -20, 700, 500, 0);
}
draw_set_alpha(1);
if(pd == 1) {
    if(soulpitch > 0) {
        soulpitch-= 0.02;
        caster_set_pitch(mus_soul[global.soul_rescue], soulpitch);
        caster_set_volume(mus_soul[global.soul_rescue], soulpitch);
    } else  {
        caster_stop(mus_soul[global.soul_rescue]);
        soulpitch= 1;
        pd= -1;
    }
}
if(drawhp == 1) {
    draw_set_color(128);
    draw_rectangle(295, 450, 345, 470, 0);
    draw_set_color(65535);
    if(global.my_hp > 0) draw_rectangle(295, 450, 295 + global.my_hp, 470, 0);
}
if(dcon > 0) {
    if(destroyercon == 1) {
        destroyercon= 2;
        alarm[10]= 1;
    }
    if(dcon == 2) {
        snd_play(snd_heavydamage );
        // obj_floweyx_tv
        with(1587) event_user(1);
        dcon= 3;
        alarm[4]= 30;
    }
    if(dcon == 4) {
        snd_play(snd_heavydamage );
        // obj_floweyx_tv
        with(1587) event_user(1);
        dcon= 5;
        alarm[4]= 60;
    }
    if(dcon == 6) {
        sfx_glock= caster_load("music/f_glock.ogg");
        sfx_shake= caster_load("music/f_destroyed.ogg");
        caster_loop(sfx_shake, 0.7, 0.9);
        lsh= instance_create(0, 0, obj_vsflowey_shaker );
        lsh.decay= 0;
        dcon= 7;
        alarm[4]= 45;
    }
    if(dcon == 8) {
        dcon= 10;
        global.typer= 75;
        global.msg[0]= "* No... NO!!!/";
        global.msg[1]= "* This CAN\\'T be&  happening!!!/";
        global.msg[2]= "* You... YOU.../%%";
        global.msg[3]= "%%%";
        // obj_flowey_writer
        with(1598) instance_destroy();
        tw= instance_create(170, 300, obj_flowey_writer );
    }
    if(dcon == 10 && !instance_exists(tw)) {
        dcon= 11;
        alarm[4]= 30;
    }
    if(dcon >= 2 && dcon <= 12) {
        // obj_flowey_fightbt
        with(1596) instance_destroy();
    }
    if(dcon == 12) {
        global.soul_rescue= 0;
        global.my_hp= 50;
        loadtimer= 90;
        fileset= 3;
        global.my_hp= 50;
        obj_vsflowey_heart.move= 1;
        obj_vsflowey_heart.depth= -4;
        obj_vsflowey_heart.x= 314;
        obj_vsflowey_heart.y= 422;
        obj_vsflowey_heart.special= 1;
        obj_vsflowey_heart.sprite_index= spr_ourheart ;
        // obj_floweyx_tv
        with(1587) tvmode= 10;
        caster_stop(-3);
        caster_play(sfx_glock, 1, 1);
        // obj_flowey_writer
        with(1598) instance_destroy();
        __view_set( e__VW.XView, 0, 0 );
        __view_set( e__VW.YView, 0, 0 );
        // obj_vsflowey_shaker
        with(1582) instance_destroy();
        // obj_floweybodyparent
        with(1586) {
            siner= 0;
            desperate= 0;
            frozen= 0;
        }
        // obj_floweydmgwriter
        with(1599) {
            dmg= 0;
            apparenthp= global.floweymaxhp;
        }
        dcon= 13;
        alarm[4]= 90;
    }
    if(dcon == 14) {
        global.typer= 76;
        global.msg[0]= "* You^2 IDIOT^5. %%";
        // obj_flowey_writer
        with(1598) instance_destroy();
        dcon= 15;
        tw2= instance_create(170, 300, obj_flowey_writer );
    }
    if(dcon == 15 && !instance_exists(tw2)) {
        // obj_floweydmgwriter
        with(1599) instance_destroy();
        dcon= 16;
        alarm[4]= 15;
    }
    if(dcon == 17) {
        // obj_floweyx_tv
        with(1587) tvmode= 20;
        fileset= 3;
        destroyercon= 1;
        dcon= 18;
    }
    if(dcon == 20) {
        // obj_floweyx_tv
        with(1587) tvmode= 21;
        obj_vsflowey_heart.move= 0;
        dcon= 20.1;
        alarm[4]= 50;
    }
    if(dcon == 21.1) {
        obj_vsflowey_heart.move= 0;
        sfg= instance_create(obj_vsflowey_heart.x + 8, obj_vsflowey_heart.y + 8, obj_spinbullet_final_gen );
        fileset= 6;
        savetimer= 20;
        dcon= 21;
        alarm[4]= 40;
    }
    if(dcon == 22) {
        obj_vsflowey_heart.move= 1;
        mus_worry= caster_load("music/yourbestfriend_3.ogg");
        caster_loop(mus_worry, 0.85, 0.9);
        dcon= 23;
        alarm[4]= 20;
    }
    if(dcon == 24) {
        global.typer= 76;
        global.msg[0]= "* Hee hee hee./";
        global.msg[1]= "* Did you REALLY&  think.../";
        global.msg[2]= "* You could&  defeat ME!?/";
        global.msg[3]= "\\\\E5* I am the GOD of&  this world./";
        global.msg[4]= "\\\\E6* And YOU?/";
        global.msg[5]= "* You\\'re HOPELESS./";
        global.msg[6]= "* Hopeless and&  alone.../";
        global.msg[7]= "\\\\E0* Golly^1, that\\'s&  right!/";
        global.msg[8]= "\\\\E7* Your WORTHLESS&  friends.../";
        global.msg[9]= "\\\\E8* ... can\\'t save&  you now./";
        global.msg[10]= "\\\\E1* Call for help^1.&* I dare you./";
        global.msg[11]= "\\\\E5* Cry into the&  darkness!/";
        global.msg[12]= "\\\\E8" + chr(ord("\"")) + "Mommy^1! Daddy^1!" + chr(ord("\"")) + "&" + chr(ord("\"")) + "Somebody help!" + chr(ord("\"")) + "/";
        global.msg[13]= "\\\\E5* See what good&  it does you!/%%";
        global.msg[14]= "%%%";
        // obj_flowey_writer
        with(1598) instance_destroy();
        dcon= 25;
        tw2= instance_create(130, 280, obj_flowey_writer );
    }
    if(dcon == 25) {
        if(instance_exists(obj_flowey_writer )) {
            if(intent_hit > 20 && obj_flowey_writer.stringno < 2) {
                obj_flowey_writer.mystring[2]= "* You..^1. uh.../";
                obj_flowey_writer.mystring[3]= "\\\\E4* Would you STOP that?/";
                obj_flowey_writer.mystring[4]= "\\\\E6* Anyway^1, YOU!/";
            }
            if(obj_flowey_writer.stringno == 3) {
                // obj_floweyx_tv
                with(1587) {
                    if(tvmode != 11) {
                        tvmode= 11;
                        overnoiser= 6;
                    }
                }
            }
            if(obj_flowey_writer.stringno == 5) {
                // obj_floweyx_tv
                with(1587) {
                    if(tvmode != 12) {
                        tvmode= 12;
                        overnoiser= 6;
                    }
                }
            }
            if(obj_flowey_writer.stringno == 6) {
                // obj_floweyx_tv
                with(1587) tvmode= 13;
            }
            if(obj_flowey_writer.stringno == 7) {
                // obj_floweyx_tv
                with(1587) {
                    if(tvmode != 11) {
                        tvmode= 11;
                        overnoiser= 6;
                    }
                }
            }
        }
        if(!instance_exists(obj_flowey_writer )) {
            obj_spinbullet_huge.depth= 30;
            ap= instance_create(obj_vsflowey_heart.x + 45, obj_vsflowey_heart.y + 8, obj_centeract_parent );
            ap.sprite_index= spr_actbt_center_hole ;
            ap.depth= 20;
            dcon= 30;
        }
    }
    if(dcon == 31) {
        // obj_floweyx_tv
        with(1587) tvmode= 11;
        global.faceemotion= 3;
        global.typer= 77;
        global.msg[0]= "(You called for help.^4) %%";
        global.msg[1]= "%%%";
        // obj_flowey_writer
        with(1598) instance_destroy();
        tw2= instance_create(130, 280, obj_flowey_writer );
        dcon= 33;
        alarm[4]= 160;
    }
    if(dcon == 34) {
        caster_stop(-3);
        global.typer= 76;
        global.msg[0]= "* .../";
        global.msg[1]= "\\\\E0* But nobody came./";
        global.msg[2]= "\\\\E2* Boy^1!&* What a shame!/";
        global.msg[3]= "\\\\E7* Nobody else.../";
        global.msg[4]= "* Is gonna get to&  see you DIE!!!/%%";
        global.msg[5]= "%%%";
        // obj_flowey_writer
        with(1598) instance_destroy();
        dcon= 35;
        tw2= instance_create(130, 280, obj_flowey_writer );
    }
    if(dcon == 35) {
        if(instance_exists(obj_flowey_writer ) && obj_flowey_writer.stringno == 4) {
            // obj_floweyx_tv
            with(1587) {
                if(tvmode != 21) {
                    tvmode= 21;
                    overnoiser= 6;
                }
            }
        }
        if(!instance_exists(obj_flowey_writer )) {
            // obj_floweyx_tv
            with(1587) tvmode= 20;
            caster_play(sfx_laugh, 1, 1);
            // obj_spinbullet_final_gen
            with(1647) alarm[1]= 1;
            // obj_spinbullet_huge
            with(1648) trick= 1;
            dcon= 36;
        }
    }
    if(dcon == 40) {
        caster_stop(sfx_laugh);
        global.facemotion= 0;
        // obj_floweyx_tv
        with(1587) tvmode= 22;
        dcon= 41;
        alarm[4]= 120;
    }
    if(dcon == 42) {
        global.typer= 76;
        global.msg[0]= "* What^4? %";
        global.msg[1]= "\\\\E1* How\\'d you...^4? %";
        global.msg[2]= "\\\\E2* Well^1, I\\'ll jus^4t%%";
        global.msg[5]= "%%%";
        // obj_flowey_writer
        with(1598) instance_destroy();
        dcon= 43;
        tw2= instance_create(130, 280, obj_flowey_writer );
    }
    if(dcon == 43 && !instance_exists(obj_flowey_writer )) {
        global.faceemotion= 3;
        fileset= 5;
        loadtimer= 70;
        dcon= 44;
        alarm[4]= 100;
    }
    if(dcon == 45) {
        global.typer= 76;
        global.msg[0]= "\\\\E4* Wh..^4. %";
        global.msg[1]= "* Where are my&  powers!^5? %%";
        global.msg[5]= "%%%";
        // obj_flowey_writer
        with(1598) instance_destroy();
        dcon= 47;
        tw2= instance_create(130, 280, obj_flowey_writer );
    }
    if(dcon == 47 && !instance_exists(obj_flowey_writer )) {
        // obj_floweybodyparent
        with(1586) frozen= 1;
        instance_create(0, 0, obj_6flasher );
        snd_play(snd_break2_c );
        global.soul_rescue= 6;
        dcon= 48;
        alarm[4]= 45;
        s6= instance_create(0, 0, obj_6soul_lastcutscene );
    }
    if(dcon == 49) {
        global.typer= 76;
        global.msg[0]= "\\\\E5* The souls...^5? %";
        global.msg[1]= "* What are they&  doing^5? %%";
        global.msg[5]= "%%%";
        // obj_flowey_writer
        with(1598) instance_destroy();
        dcon= 50;
        tw2= instance_create(130, 280, obj_flowey_writer );
    }
    if(dcon == 50 && !instance_exists(obj_flowey_writer )) {
        // obj_floweyx_tv
        with(1587) tvmode= 99;
        instance_create(0, 0, obj_6flasher );
        snd_play(snd_break2_c );
        // obj_floweybodyparent
        with(1586) frozen= 1;
        sh2= instance_create(0, 0, obj_vsflowey_shaker );
        sh2.shakex= 10;
        sh2.shakey= 10;
        sh2.decay= 0;
        with(s6) con= 1;
        m_destroy= caster_load("music/f_destroyed3.ogg");
        caster_loop(m_destroy, 1, 1);
        global.typer= 76;
        global.msg[0]= "* NO!^1! NO!!!!^4! %";
        global.msg[1]= "* YOU CAN\\'T DO&  THAT!!^4! %";
        global.msg[2]= "* YOU\\'RE SUPPOSED&  TO OBEY ME!^4! %";
        global.msg[3]= "* STOP!!^1!&  STOP IT!!!!^4! %%";
        global.msg[4]= "%%%";
        // obj_flowey_writer
        with(1598) instance_destroy();
        dcon= 51;
        tw2= instance_create(130, 280, obj_flowey_writer );
    }
    if(dcon == 51 && !instance_exists(obj_flowey_writer )) {
        // obj_floweyx_tv
        with(1587) tvmode= 100;
        global.typer= 74;
        global.msg[0]= "* STOOOOPPPP!!!!!";
        global.msg[4]= "%%%";
        pp= 0;
        // obj_flowey_writer
        with(1598) instance_destroy();
        dcon= 52;
        whiter_maker= 2;
        tw2= instance_create(130, 280, obj_flowey_writer );
    }
    if(dcon == 52) {
        depth= -90;
        pp+= 0.008;
        draw_set_alpha(pp / 1.5);
        draw_set_color(16777215);
        draw_rectangle(-10, -10, 900, 900, 0);
        caster_set_pitch(m_destroy, 1 + pp);
        caster_set_volume(m_destroy, 1 - pp / 2);
        draw_set_alpha(1);
        if(pp > 2) {
            ini_open("undertale.ini");
            ini_write_real("FFFFF", "E", 1);
            ini_write_real("FFFFF", "F", 0);
            ini_close();
            if(file_exists("flowey.exe")) file_rename("flowey.exe", "undertale.exe");
            drkdrk= 0;
            dcon= 53;
        }
    }
    if(dcon == 53) {
        caster_stop(m_destroy);
        dcon= 54;
        alarm[4]= 120;
    }
    if(dcon == 54 || dcon == 55) {
        draw_set_color(16777215);
        draw_rectangle(-10, -10, 900, 900, 0);
        draw_set_color(0);
        drkdrk+= 0.01;
        draw_set_alpha(drkdrk);
        draw_rectangle(-10, -10, 999, 999, 0);
        draw_set_alpha(1);
        if(drkdrk >= 1.1) {
            drkdrk_px= scr_marker(-10, -10, 996);
            drkdrk_px.image_xscale= 900;
            drkdrk_px.image_yscale= 900;
        }
    }
    if(dcon >= 51) {
        // obj_floweybodyparent
        with(1586) {
            frozen= 1;
            siner+= 1 + random(0.5);
            md= 1;
            image_blend= make_color_hsv(abs(sin(siner / 30)) * 512, 255, 255);
            blend2= make_color_hsv(abs(sin(siner / 30)) * 512, 255, 255);
            flash= -1;
            x= xstart + random(15) - random(15);
            y= ystart + random(15) - random(15);
            if(object_index == 1655) {
                y-= 80;
                if(x > 320) x-= 40;
                if(x < 320) x+= 40;
            }
        }
    }
}
if(introcon > 0) {
    if(introcon == 1) {
        obj_vsflowey_heart.x= 314;
        obj_vsflowey_heart.y= 422;
        bgsiner= 0;
        dividefactor= 1;
        bganimer= 1;
        if(introskip == 0) {
            mus_intro= caster_load("music/f_intro.ogg");
            caster_play(mus_intro, 1, 1);
        }
        __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (480) );
        ny= __view_get( e__VW.YView, 0 );
        hy= obj_vsflowey_heart.y;
        obj_vsflowey_heart.y+= 480;
        __background_set_colour( 128 );
        obj_vsflowey_heart.move= 0;
        obj_floweyx_tv.tvmode= 25;
        obj_floweyx_tv.siner= 0;
        // obj_floweybodyparent
        with(1586) {
            desperate= 0;
            image_blend= 0;
            grgrgrgr= 0;
            blend2= 0;
            flash= 99;
        }
        introcon= 2;
        alarm[5]= 440;
        if(introskip == 1) alarm[5]= 1;
    }
    if(bganimer == 1) {
        bgsiner++;
        __background_set_colour( make_color_rgb(abs(sin(bgsiner / 8) * 130 / dividefactor), 0, 0) );
    }
    if(introcon == 2) {
        if(introskip == 0) ny-= 1.09090909090909;
        if(introskip == 1) ny-= 480;
        __view_set( e__VW.YView, 0, floor(ny) );
        obj_vsflowey_heart.y= hy + floor(ny);
    }
    if(introcon == 3) {
        dividefactor= 1;
        obj_floweyx_tv.tvmode= 24;
        introcon= 4;
        alarm[5]= 70;
        if(introskip == 1) alarm[5]= 1;
        __view_set( e__VW.YView, 0, 0 );
        obj_vsflowey_heart.y= floor(obj_vsflowey_heart.y);
    }
    if(introcon == 5) {
        fadevalue= 0;
        obj_floweyx_tv.tvmode= 19;
        obj_vsflowey_heart.move= 1;
        introcon= 5.1;
        alarm[5]= 95;
        if(introskip == 1) alarm[5]= 1;
    }
    if(introcon == 6.1) {
        dividefactor+= 9;
        fadevalue++;
        ib= make_color_rgb(fadevalue * 25.5, fadevalue * 25.5, fadevalue * 25.5);
        obj_floweybodyparent.image_blend= ib;
        obj_floweybodyparent.blend2= ib;
        if(fadevalue >= 10) {
            __background_set_colour( 0 );
            introcon= 7;
            alarm[5]= 20;
        }
        // obj_floweybodyparent
        with(1586) frozen= 4;
    }
    if(introcon == 8) {
        sh= instance_create(0, 0, obj_vsflowey_shaker );
        sh.decay= 0;
        caster_stop(-3);
        caster_play(sfx_laugh, 1, 1);
        obj_floweyx_mouth.laugh= 1;
        obj_floweyx_tv.tvmode= 20;
        introcon= 9;
        alarm[5]= 180;
    }
    if(introcon == 10) {
        with(sh) instance_destroy();
        __view_set( e__VW.XView, 0, 0 );
        __view_set( e__VW.YView, 0, 0 );
        obj_floweyx_mouth.laugh= 0;
        obj_floweyx_tv.tvmode= 21;
        introcon= 11;
        alarm[5]= 20;
    }
    if(introcon == 12) {
        // obj_floweybodyparent
        with(1586) {
            frozen= 0;
            desperate= 1;
        }
        event_user(10);
        obj_floweyx_tv.tvmode= 0;
        introcon= -1;
    }
    if(introskip == 1) {
        draw_set_color(0);
        draw_set_alpha((10 - fadevalue) / 10);
        draw_rectangle(-10, -10, 999, 999, 0);
        if(fadevalue < 10) obj_floweyx_tv.tvmode= 26;
        draw_set_alpha(1);
    }
}
if(turnturn == 0 && introcon == 2) {
    turnturn= 1;
    obj_floweybodyparent.visible= 1;
    draw_set_color(0);
    draw_rectangle(-10, -10, 999, 999, 0);
    draw_sprite(spr_ourheart , 0, obj_vsflowey_heart.x, obj_vsflowey_heart.y);
}
if(global.debug == 1) {
    draw_set_color(65535);
    draw_text(room_width - 60, room_height - 40, string_hash_to_newline("debug"));
}


/*  */
