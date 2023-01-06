if(frozen == 0) siner++;
if(flash == 0) {
    image_blend= 16777215;
    blend2= 16777215;
}
if(flash == 1) {
    draw_set_alpha(sin(siner / 3) / 2);
    draw_ellipse_color(x - 45, y + 40, x + 45, y - 40, 32768, 0, 0);
    draw_set_alpha(1);
    image_blend= make_color_rgb(100 - sin(siner / 3) * 100, 255, 100 - sin(siner / 3) * 100);
}
if(flash == 2) {
    draw_set_alpha(sin(siner / 3) / 2);
    draw_ellipse_color(x - 45 + op, y + 40, x + 45 + op, y - 40, 65535, 0, 0);
    draw_set_alpha(1);
    blend2= make_color_rgb(230, 230, 130 - sin(siner / 3) * 120);
}
if(global.debug == 1) {
    if(keyboard_check_pressed(67)) {
        if(flash == 0) flash= 2;
        else  {
            flash= 0;
            blend2= 8421504;
        }
    }
    if(keyboard_check_pressed(88)) {
        if(flash == 0) flash= 1;
        else  {
            flash= 0;
            image_blend= 8421504;
        }
    }
}
i= 0;
while(i < 16) {
    offx= x + sin((i - 34) / 3) * 45;
    offy= y + cos((i - 34) / 3) * 40 + cos((i + siner) / 6) * 8;
    offs= sin((siner + i * 4) / 6) * 2;
    if(offs > 1) offs= (offs - 1) / 3;
    else  offs= 0;
    if(global.soul_rescue < 5)
        draw_sprite_ext(sprite_index, image_index, offx, offy, 1 + offs, 1 + offs, i * 20 + 50, image_blend, 1);
    else 
        draw_sprite_ext(sprite_index, image_index, offx, offy, 1, 1, i * 20 + 50, 8421504, 1);
    i++;
}
i= 0;
while(i < 16) {
    offx2= x - sin((i - 34) / 3) * 45 + op;
    offy2= y + cos((i - 34) / 3) * 40 + cos((i + siner) / 6) * 8;
    offs2= sin((siner + i * 4) / 6) * 2;
    if(offs2 > 1) offs2= (offs2 - 1) / 3;
    else  offs2= 0;
    if(global.soul_rescue < 6)
        draw_sprite_ext(sprite_index, image_index, offx2, offy2, 1 + offs2, 1 + offs2, i * -20 - 50, blend2, 1);
    else 
        draw_sprite_ext(sprite_index, image_index, offx2, offy2, 1, 1, i * -20 - 50, 8421504, 1);
    i++;
}


/*  */
