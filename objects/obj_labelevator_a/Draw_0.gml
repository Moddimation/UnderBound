if(blacktime == 0) {
    if(dt == 1) {
        draw_set_color(0);
        draw_rectangle(-20, -20, 1010, 1010, 0);
        draw_sprite_ext(thispic, 0, hshake, vshake, 0.5, 0.5, 0, image_blend, 1);
    }
    redsiner+= 1 + rs_speed;
    if(hyperboys == 1) redsiner+= 1 + rs_speed;
    hshake= random(shakevalue) - random(shakevalue);
    vshake= random(shakevalue) - random(shakevalue);
    image_blend= make_color_rgb(255, 210 + sin(redsiner / 12) * 45, 210 + sin(redsiner / 12) * 45);
    shakevalue+= 0.008;
    rs_speed+= 0.01;
    if(hyperboys == 1) {
        shakevalue+= 0.008;
        rs_speed+= 0.01;
    }
    if(shakevalue > 5) {
        w+= 0.01;
        if(hyperboys == 1) w+= 0.01;
    } else  caster_set_volume(sfx, vol);
    if(w > 0) {
        pit+= 0.01;
        caster_set_pitch(sfx, pit);
        vol-= 0.01;
        caster_set_volume(sfx, vol);
        if(hyperboys == 1) {
            pit+= 0.01;
            caster_set_pitch(sfx, pit);
            vol-= 0.01;
            caster_set_volume(sfx, vol);
        }
        draw_set_alpha(w);
        draw_set_color(16777215);
        draw_rectangle(-10, -10, 999, 999, 0);
        draw_set_alpha(1);
        if(w > 1.5) {
            if(hyperboys == 0) {
                caster_stop(sfx);
                caster_play(expl, 1, 1);
                blacktime= 1;
            }
            if(hyperboys == 1) {
                caster_free(-3);
                global.entrance= 24;
                global.interact= 0;
                global.flag[480]= 0;
                instance_create(0, 0, obj_persistentfader );
                room_goto(216);
            }
        }
    }
}
if(blacktime == 1) {
    draw_set_color(0);
    draw_rectangle(-20, -20, 1010, 1010, 0);
    w+= 0.01;
    if(w > 2.6) {
        caster_free(-3);
        global.entrance= 24;
        room_goto(243);
    }
}
if(con == 2 && hyperboys == 0) {
    global.msc= 0;
    global.typer= 5;
    global.msg[0]= " WARNING! WARNING^6!%";
    global.msg[1]= " ELEVATOR LOSING POWER^6!%";
    global.msg[2]= " EM TETHER STABILITY LOST^6!%";
    global.msg[3]= " ALTITUDE DROPPING^6!%%";
    instance_create(40, 10, OBJ_WRITER );
    con= 3;
}
if(dt == 0) {
    thispic= sprite_create_from_screen_x(0, 0, 640, 480, 0, 0, 0, 0);
    dt= 1;
}


/*  */
