siner++;
draw_sprite(sprite_index, image_index, x, y);
if(active != 2) {
    draw_set_alpha(abs(sin(siner / 3)) / 2 + 0.5);
    if(active == 0) {
        draw_set_alpha(0.3);
        image_speed= 0;
    } else  image_speed= 0.5;
    if(blue == 1) {
        draw_set_color(16754964);
        sprite_index= spr_lasermachine_b ;
    }
    if(blue == 2) {
        draw_set_color(4235519);
        sprite_index= spr_lasermachine_o ;
    }
    draw_rectangle(x + 8, y + 16, x + 11, y + 320, 0);
    if(active == 1 && activebuffer < 0 && collision_rectangle(x + 9, y + 18, x + 10, y + 320, 1570, 0, 1))
        event_user(0);
} else  sprite_index= spr_lasermachine_off ;
draw_set_alpha(1);
if(ex == 1 && !instance_exists(OBJ_WRITER )) {
    alarm[3]= 1;
    ex= 0;
}
activebuffer--;
if(active != 1) activebuffer= 1;


/*  */
