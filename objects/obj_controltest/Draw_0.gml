z_index= 0;
x_index= 0;
c_index= 0;
buffer--;
if(buffer < 0) {
    if(keyboard_multicheck(0)) z_index= 2;
    else  {
        if(z_index == 1) z_index= 3;
    }
    if(keyboard_multicheck_pressed(0)) {
        if(fun == 1) {
            image_index++;
            caster_play(s_snare, 1, 1);
        }
        z_index= 1;
    }
    if(keyboard_multicheck(1)) x_index= 2;
    else  {
        if(x_index == 1) x_index= 3;
    }
    if(keyboard_multicheck_pressed(1)) {
        if(fun == 1) {
            image_index++;
            caster_play(s_kick, 1, 1);
        }
        x_index= 1;
    }
    if(keyboard_multicheck(2)) c_index= 2;
    else  {
        if(c_index == 1) c_index= 3;
    }
    if(keyboard_multicheck_pressed(2)) {
        if(fun == 1) {
            image_index++;
            caster_play(s_cymbal, 1, 1);
        }
        c_index= 1;
    }
    if(keyboard_check_pressed(82) && fun == 1) {
        image_index++;
        caster_play(s_cuica, 1, 1);
    }
    if(keyboard_check_pressed(69) && fun == 1) {
        image_index++;
        caster_play(s_cuica2, 1, 1);
    }
}
draw_sprite_ext(spr_test_zbutton , z_index, 80, 30, 2, 2, 0, 16777215, 1);
draw_sprite_ext(spr_test_xbutton , x_index, 140, 30, 2, 2, 0, 16777215, 1);
draw_sprite_ext(spr_test_cbutton , c_index, 200, 30, 2, 2, 0, 16777215, 1);
if(fun == 1)
    draw_sprite(sprite_index, image_index, x, y);
else  {
    draw_set_color(32768);
    draw_circle(x + 16, y + 16, 16, 1);
    draw_circle(x + 16, y + 16, 14, 1);
    draw_circle(x + 16, y + 16, 12, 1);
    draw_set_color(0);
    draw_circle(x + 16, y + 16, 17, 1);
    draw_circle(x + 16, y + 16, 15, 1);
    draw_circle(x + 16, y + 16, 13, 1);
}
draw_set_color(16777215);
i= 0;
while(i < 6) {
    draw_rectangle(borderl - i, borderu - i, borderr + i, 300, 1);
    i++;
}
if(keyboard_check(37)) x-= 3;
if(keyboard_check(39)) x+= 3;
if(keyboard_check(40)) y+= 3;
if(keyboard_check(38)) y-= 3;
if(x <= borderl) x= borderl;
if(x >= borderr - 32) x= borderr - 32;
if(y <= borderu) y= borderu;
if(y >= 240) room_goto(288);


/*  */
