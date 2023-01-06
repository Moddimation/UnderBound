if(active == 1) {
    attacktimer++;
    timer++;
    if(attacktimer >= attacktimermax) {
        // obj_fx_bgen
        with(1583) event_user(2);
        attacktimer= -100;
        if(timer < maxtimer - 70) {
            attacktimer= -100;
            event_user(1);
        }
    }
    if(timer == atimer) {
        fightbt= instance_create(320, 420, obj_flowey_fightbt );
        alarm[5]= 110;
        if(global.battlephase == 6) {
            alarm[5]= 79;
            atimer+= 80;
        }
    }
    if(timer >= maxtimer && phase_s == 0 && global.battlephase < 6) {
        if(instance_exists(obj_flowey_fightbt )) {
            // obj_flowey_fightbt
            with(1596) instance_destroy();
        }
        phase_s= 1;
        alarm[4]= 155;
        // obj_flowey_master
        with(1585) {
            if(mustype == 3) {
                caster_stop(-3);
                caster_play(mus_endnote, 1, 1);
                mustype= 0;
            }
            caster_play(mus_alarm, 1, 1);
        }
        // obj_floweyx_tv
        with(1587) tvmode= 1;
        if(global.soul_rescue == 0) {
            // obj_floweypipetest
            with(1593) flash= 1;
        }
        if(global.soul_rescue == 1) {
            // obj_floweypipetest
            with(1593) flash= 2;
        }
        if(global.soul_rescue == 2) {
            // obj_floweypipetest_2
            with(1594) flash= 1;
        }
        if(global.soul_rescue == 3) {
            // obj_floweypipetest_2
            with(1594) flash= 2;
        }
        if(global.soul_rescue == 4) {
            // obj_floweypipetest_3
            with(1595) flash= 1;
        }
        if(global.soul_rescue == 5) {
            // obj_floweypipetest_3
            with(1595) flash= 2;
        }
    }
    if(phase_s == 2) {
        // obj_floweyx_tv
        with(1587) tvmode= 2;
        // obj_vsflowey_heart
        with(1581) move= 0;
        // obj_flowey_master
        with(1585) {
            caster_stop(-3);
            caster_loop(mus_noise, 1, 1);
            event_user(6);
        }
        idealhx= 314;
        idealhy= 400;
        if(global.soul_rescue == 2) idealhy= 450;
        nowhx= obj_vsflowey_heart.x;
        nowhy= obj_vsflowey_heart.y;
        nowhxadd= (idealhx - nowhx) / 40;
        nowhyadd= (idealhy - nowhy) / 40;
        phase_s= 3;
        alarm[4]= 40;
    }
    if(phase_s == 3) {
        obj_vsflowey_heart.x+= nowhxadd;
        obj_vsflowey_heart.y+= nowhyadd;
    }
    if(phase_s == 4) {
        obj_vsflowey_heart.x= idealhx;
        obj_vsflowey_heart.y= idealhy;
        obj_vsflowey_heart.move= 1;
        // obj_floweyx_tv
        with(1587) tvmode= 3;
        // obj_flowey_master
        with(1585) {
            caster_stop(-3);
            caster_loop(mus_soul[global.soul_rescue], 1, 1);
        }
        if(global.soul_rescue == 0) instance_create(0, 0, obj_6knife_act );
        if(global.soul_rescue == 1) {
            instance_create(room_width * 0.5, 0, obj_6glove_boss );
            instance_create(room_width * 0, -120, obj_6glove_boss );
            instance_create(room_width * 1, -120, obj_6glove_boss );
            instance_create(room_width * 0.5, -400, obj_6glove_boss );
            instance_create(room_width * 0, -520, obj_6glove_boss );
            instance_create(room_width * 1, -520, obj_6glove_boss );
            lg= instance_create(room_width * 0.5, -800, obj_6glove_boss );
            with(lg) event_user(6);
            instance_create(room_width * 0, -920, obj_6glove_boss );
            instance_create(room_width * 1, -920, obj_6glove_boss );
        }
        if(global.soul_rescue == 2) instance_create(0, 0, obj_6shoe_master );
        if(global.soul_rescue == 3) instance_create(0, 0, obj_6book_master );
        if(global.soul_rescue == 4) {
            instance_create(190, 260, obj_6pan );
            ppp= instance_create(415, 260, obj_6pan );
            ppp.spec= 1;
            instance_create(640, 260, obj_6pan );
        }
        if(global.soul_rescue == 5)
            instance_create(room_width / 2, room_height / 2, obj_6gun );
        if(global.soul_rescue > 5) instance_create(0, 0, obj_6knife_act );
        phase_s= 5;
    }
    if(phase_s == 5) {
        soultimer++;
        if(soultimer >= soulmax) {
            idealhx= 314;
            idealhy= 400;
            if(global.soul_rescue == 6) idealhy= 280;
            nowhx= obj_vsflowey_heart.x;
            nowhy= obj_vsflowey_heart.y;
            nowhxadd= (idealhx - nowhx) / 40;
            nowhyadd= (idealhy - nowhy) / 40;
            obj_vsflowey_heart.move= 0;
            // obj_floweyx_tv
            with(1587) tvmode= 2;
            // obj_6parent
            with(1601) instance_destroy();
            // obj_flowey_master
            with(1585) {
                caster_stop(-3);
                caster_loop(mus_noise, 1, 1);
            }
            phase_s= 6;
            alarm[4]= 20;
            // obj_floweypipetest
            with(1593) flash= 0;
            // obj_floweypipetest_2
            with(1594) flash= 0;
            // obj_floweypipetest_3
            with(1595) flash= 0;
            if(global.soul_rescue == 6) {
                phase_s= 20;
                alarm[4]= 40;
            }
            global.battlephase++;
            if(global.battlephase >= 6) global.battlephase= 0;
        }
    }
    if(phase_s == 6 || phase_s == 8) {
        obj_vsflowey_heart.x+= nowhxadd;
        obj_vsflowey_heart.y+= nowhyadd;
    }
    if(phase_s == 7) {
        // obj_flowey_master
        with(1585) event_user(6);
        phase_s= 8;
        alarm[4]= 20;
    }
    if(phase_s == 9) {
        obj_vsflowey_heart.x= idealhx;
        obj_vsflowey_heart.y= idealhy;
        obj_vsflowey_heart.move= 1;
        phase_s= 10;
    }
    if(phase_s == 10) {
        // obj_floweyx_tv
        with(1587) tvmode= 0;
        // obj_flowey_master
        with(1585) caster_stop(-3);
        instance_create(0, 0, obj_flowey_bulletmaster );
        instance_destroy();
    }
    if(phase_s == 20 || phase_s == 24 || phase_s == 26) {
        obj_vsflowey_heart.x+= nowhxadd;
        obj_vsflowey_heart.y+= nowhyadd;
    }
    if(phase_s == 21) {
        obj_vsflowey_heart.x= idealhx;
        obj_vsflowey_heart.y= idealhy;
        obj_vsflowey_heart.move= 1;
        // obj_floweyx_tv
        with(1587) tvmode= 5;
        caster_stop(-3);
        instance_create(0, 0, obj_6soul_helpcutscene );
        // obj_flowey_master
        with(1585) caster_play(mus_finale1_l, 1, 1);
        alarm[4]= 308;
        alarm[4]= 615;
        phase_s= 22;
    }
    if(phase_s == 23) {
        idealhx= 314;
        idealhy= 400;
        nowhx= obj_vsflowey_heart.x;
        nowhy= obj_vsflowey_heart.y;
        nowhxadd= (idealhx - nowhx) / 40;
        nowhyadd= (idealhy - nowhy) / 40;
        obj_vsflowey_heart.move= 0;
        // obj_floweyx_tv
        with(1587) tvmode= 2;
        // obj_flowey_master
        with(1585) caster_loop(mus_noise, 1, 1);
        phase_s= 24;
        alarm[4]= 20;
        global.battlephase= 6;
    }
    if(phase_s == 25) {
        // obj_flowey_master
        with(1585) event_user(6);
        phase_s= 26;
        alarm[4]= 20;
    }
    if(phase_s == 27) {
        obj_vsflowey_heart.x= idealhx;
        obj_vsflowey_heart.y= idealhy;
        obj_vsflowey_heart.move= 1;
        phase_s= 10;
        global.msg[0]= "* Flowey\\'s DEFENSE&  dropped to 0^4! %%";
        global.msg[2]= "%%%";
        global.typer= 70;
        instance_create(180, 300, obj_flowey_writer );
        // obj_floweybodyparent
        with(1586) desperate= 0;
        // obj_floweybodyparent
        with(1586) wimpy= 1;
    }
    if(timer > maxtimer + 120) {
        if(instance_exists(obj_floweybullet_parent )) {
            // obj_floweybullet_parent
            with(1627) instance_destroy();
        }
        // obj_floweyx_flipeye
        with(1589) {
            md= 0;
            con= 0;
        }
        // obj_floweyx_lefteye
        with(1591) {
            md= 0;
            con= 0;
        }
    }
}


/*  */
