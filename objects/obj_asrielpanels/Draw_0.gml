if(active == 1) {
    if(on < 3)
        draw_sprite_ext(sprite_index, image_index, 120, 56, 2, 2, 0, 16777215, image_alpha);
    if(on == 1 && image_alpha < 1)
        image_alpha+= 0.06;
    if(on == 0 && image_alpha > 0) {
        if(image_index < 4) image_alpha-= 0.06;
        else  {
            on= 2;
            memtimer= 250;
            wht= 0;
        }
    }
    memtimer++;
    if(memtimer == 120) on= 0;
    if(memtimer == 138) image_index++;
    if(memtimer == 141) {
        on= 1;
        memtimer= 0;
    }
    if(on == 2) {
        wht+= 0.02;
        draw_set_alpha(wht);
        draw_set_color(16777215);
        draw_rectangle(-10, -10, 999, 999, 0);
        draw_set_alpha(1);
        if(wht > 1.18) {
            on= 3;
            global.battlegroup= 256;
            global.flag[501]= 3;
            room_goto(306);
        }
    }
    if(on == 3) {
        wht-= 0.05;
        draw_set_alpha(wht);
        draw_set_color(16777215);
        draw_rectangle(-10, -10, 999, 999, 0);
        draw_set_alpha(1);
        if(wht < 0) on= 4;
    }
    xtimer++;
    qual= 0;
    if(xtimer == 2263) qual= 1;
    if(caster_is_playing(global.batmusic) == 0 && caster_is_playing(global.batmusic2) == 0)
        qual= 1;
    if(qual == 1) {
        xtimer= 2266;
        caster_loop(global.batmusic2, thisvol, 0.85);
    }
}

