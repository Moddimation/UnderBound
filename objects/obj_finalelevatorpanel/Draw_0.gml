draw_sprite(sprite_index, image_index, x, y);
if(myinteract == 1 && global.interact == 0 && con == 0) {
    global.interact= 1;
    con= 5;
    if(global.flag[431] == 0) global.flag[431]= 1;
    else  global.flag[431]= 0;
}
if(con == 1) {
    global.facechoice= 0;
    global.typer= 5;
    global.msc= 0;
    global.msg[0]= "* Please select a location./%%";
    instance_create(0, 0, obj_dialoguer );
    con= 2;
    buffer= 5;
}
if(con == 2 && !instance_exists(OBJ_WRITER )) {
    buffer--;
    draw_set_color(16777215);
    draw_rectangle(__view_get( e__VW.XView, view_current ) + 16, __view_get( e__VW.YView, view_current ) + 5, __view_get( e__VW.XView, view_current ) + 304, __view_get( e__VW.YView, view_current ) + 80, 0);
    draw_set_color(0);
    draw_rectangle(__view_get( e__VW.XView, view_current ) + 19, __view_get( e__VW.YView, view_current ) + 8, __view_get( e__VW.XView, view_current ) + 301, __view_get( e__VW.YView, view_current ) + 77, 0);
    draw_set_color(16777215);
    draw_set_font(2);
    if(global.flag[398] != 0)
        draw_text(__view_get( e__VW.XView, 0 ) + 50, __view_get( e__VW.YView, 0 ) + 15, string_hash_to_newline("Left Floor 1"));
    else  draw_text(__view_get( e__VW.XView, 0 ) + 50, __view_get( e__VW.YView, 0 ) + 15, string_hash_to_newline("Cancel"));
    if(global.flag[398] != 1)
        draw_text(__view_get( e__VW.XView, 0 ) + 160, __view_get( e__VW.YView, 0 ) + 15, string_hash_to_newline("Right Floor 1"));
    else 
        draw_text(__view_get( e__VW.XView, 0 ) + 160, __view_get( e__VW.YView, 0 ) + 15, string_hash_to_newline("Cancel"));
    if(global.flag[398] != 2)
        draw_text(__view_get( e__VW.XView, 0 ) + 160, __view_get( e__VW.YView, 0 ) + 35, string_hash_to_newline("Right Floor 2"));
    else 
        draw_text(__view_get( e__VW.XView, 0 ) + 160, __view_get( e__VW.YView, 0 ) + 35, string_hash_to_newline("Cancel"));
    if(trigger > 0) {
        if(global.flag[398] != 3)
            draw_text(__view_get( e__VW.XView, 0 ) + 50, __view_get( e__VW.YView, 0 ) + 35, string_hash_to_newline("Left Floor 2"));
        else  draw_text(__view_get( e__VW.XView, 0 ) + 50, __view_get( e__VW.YView, 0 ) + 35, string_hash_to_newline("Cancel"));
    }
    if(trigger > 0) {
        if(global.flag[398] != 4)
            draw_text(__view_get( e__VW.XView, 0 ) + 50, __view_get( e__VW.YView, 0 ) + 55, string_hash_to_newline("Left Floor 3"));
        else  draw_text(__view_get( e__VW.XView, 0 ) + 50, __view_get( e__VW.YView, 0 ) + 55, string_hash_to_newline("Cancel"));
    }
    if(trigger > 1) {
        if(global.flag[398] != 5)
            draw_text(__view_get( e__VW.XView, 0 ) + 160, __view_get( e__VW.YView, 0 ) + 55, string_hash_to_newline("Right Floor 3"));
        else 
            draw_text(__view_get( e__VW.XView, 0 ) + 160, __view_get( e__VW.YView, 0 ) + 55, string_hash_to_newline("Cancel"));
    }
    draw_sprite(spr_heartsmall , 0, __view_get( e__VW.XView, 0 ) + 30 + heartx * 110, __view_get( e__VW.YView, 0 ) + 20 + 20 * hearty);
    if(buffer < 0) {
        if(keyboard_check_pressed(38) && hearty > 0)
            hearty--;
        if(keyboard_check_pressed(40) && hearty < 2) {
            if(heartx == 0) {
                if(hearty == 1 && trigger > 0) hearty++;
                if(hearty == 0 && trigger > 0) hearty++;
            }
            if(heartx == 1) {
                if(hearty == 1 && trigger > 1) hearty++;
                if(hearty == 0) hearty++;
            }
        }
        if(keyboard_check_pressed(39) && heartx == 0) {
            if(hearty == 0) heartx++;
            if(hearty == 1) heartx++;
            if(hearty == 2 && trigger > 1) heartx++;
        }
        if(keyboard_check_pressed(37) && heartx == 1) {
            if(hearty == 0) heartx--;
            if(hearty == 1 && trigger > 0) heartx--;
            if(hearty == 2 && trigger > 1) heartx--;
        }
        if(keyboard_multicheck_pressed(0)) {
            con= 5;
            if(heartx == 0 && hearty == 0) {
                if(global.flag[398] != 0) global.flag[398]= 0;
                else  con= 15;
            }
            if(heartx == 1 && hearty == 0) {
                if(global.flag[398] != 1) global.flag[398]= 1;
                else  con= 15;
            }
            if(heartx == 1 && hearty == 1) {
                if(global.flag[398] != 2) global.flag[398]= 2;
                else  con= 15;
            }
            if(heartx == 0 && hearty == 1) {
                if(global.flag[398] != 3) global.flag[398]= 3;
                else  con= 15;
            }
            if(heartx == 0 && hearty == 2) {
                if(global.flag[398] != 4) global.flag[398]= 4;
                else  con= 15;
            }
            if(heartx == 1 && hearty == 2) {
                if(global.flag[398] != 5) global.flag[398]= 5;
                else  con= 15;
            }
        }
    }
}
if(con == 5) {
    snd_play(snd_item );
    con= 6;
    alarm[4]= 15;
}
if(con == 7) {
    rect= 1;
    global.facing= 0;
    snd_play(snd_bell );
    con= 8;
    alarm[4]= 11;
}
if(con == 9) {
    snd_play(snd_noise );
    if(global.flag[432] == 0)
        elev= caster_load("music/elevator_last.ogg");
    if(global.flag[432] == 1) elev= caster_load("music/elevator.ogg");
    xx= __view_get( e__VW.XView, 0 );
    yy= __view_get( e__VW.YView, 0 );
    siner= 0;
    con= 10;
    intense= 0.5;
    alarm[4]= 15;
}
if(con == 11) {
    con= 12;
    if(global.flag[432] == 0) alarm[4]= 560;
    if(global.flag[432] == 1) alarm[4]= 110;
    caster_play(elev, 1, 1);
    if(room == 242) {
        con= 12;
        alarm[4]= -1;
        alarm[8]= 85;
    }
}
if(con == 12) {
    obj_mainchara.cutscene= 1;
    __view_set( e__VW.Object, 0, -4 );
    siner++;
    if(alarm[4] > 20 && intense < 1.5)
        intense+= 0.02;
    if(alarm[8] > 1 && intense < 0.6)
        intense+= 0.01;
    else  {
        if(intense > 0) intense-= 0.1;
    }
    __view_set( e__VW.XView, 0, xx + sin(siner / 1.3) * intense );
    __view_set( e__VW.YView, 0, yy + sin(siner / 0.9) * intense );
}
if(con == 13) {
    __view_set( e__VW.XView, 0, xx );
    __view_set( e__VW.YView, 0, yy );
    rect= 2;
    con= 14;
    snd_play(snd_bell );
    alarm[4]= 11;
}
if(con == 15) {
    global.flag[432]= 1;
    global.facing= 0;
    snd_play(snd_noise );
    global.interact= 0;
    con= 0;
    scr_tempsave();
    myinteract= 0;
}
if(rect == 1) {
    if(rectaur < 20) rectaur+= 2;
    draw_set_color(0);
    draw_rectangle(140, 180, 140 + rectaur, 250, 0);
    draw_rectangle(180, 180, 180 - rectaur, 250, 0);
    if(room == 261) {
        draw_rectangle(0, 120, 100, 120 + rectaur, 0);
        draw_rectangle(0, 160, 100, 260 - rectaur, 0);
    }
}
if(rect == 2) {
    if(rectaur > 0) rectaur-= 2;
    draw_set_color(0);
    draw_rectangle(140, 180, 140 + rectaur, 250, 0);
    draw_rectangle(180, 180, 180 - rectaur, 250, 0);
}
if(con == 25) {
    caster_free(elev);
    __view_set( e__VW.XView, 0, xx );
    __view_set( e__VW.YView, 0, yy );
    con= 26;
    alarm[4]= 45;
}
if(con == 27) {
    instance_create(0, 0, obj_labelevator_a );
    con= 28;
}


/*  */
