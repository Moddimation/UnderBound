draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, 16777215, 1);
siner++;
draw_sprite_ext(spr_spidertelegram , image_index, x - 4, y - 2, 2, 2, sin(siner / 10) * 10, 16777215, 1);
if(con == 0 && x < 570) {
    hspeed+= 0.2;
    if(hspeed >= 0) {
        hspeed= 0;
        con= 1;
    }
}
if(con == 2) {
    hspeed++;
    if(x > 700) instance_destroy();
}

/* */
/*  */
