if(instance_exists(obj_mainchara )) {
    x1= obj_mainchara.x - 10;
    x2= obj_mainchara.x + 30;
    y1= obj_mainchara.y - 5;
    y2= obj_mainchara.y + 35;
    draw_sprite_ext(spr_darkhalo_big , 0, x1, y1, 1, 1, 0, 16777215, glowamt);
    draw_set_alpha(glowamt);
    draw_set_color(0);
    draw_set_alpha(1);
    if(glowamt < 0.98) {
        if(global.plot > 117) glowamt+= 0.001;
        else  glowamt+= 0.003;
    }
}


/*  */
