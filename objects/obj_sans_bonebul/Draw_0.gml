siner++;
z_h= sin(siner * z_b) * z_a;
y= yinit + z_h;
if(type == 0 || type == 1) {
    event_user(10);
    if(width > 0) {
        if(type == 0) image_blend= 16777215;
        if(type == 1) image_blend= 16754964;
        draw_sprite_part_ext(657, 0, le, 0, width, 6, x + le, y, 1, 1, image_blend, 1);
        if(type == 0) draw_set_color(16777215);
        if(type == 1) draw_set_color(16754964);
        draw_rectangle(x + 2 + rc_le, y + 5, x + 8 - rc_cut, global.idealborder[3] - 6, 0);
        if(width > 0 && collision_rectangle(x + 2 + rc_le, y + 5, x + 8 - rc_cut, global.idealborder[3] - 6, 743, 0, 1))
            event_user(2);
        draw_sprite_part_ext(659, 0, le, 0, width, 6, x + le, global.idealborder[3] - 6, 1, 1, image_blend, 1);
    }
}
if(type == 2) {
    event_user(10);
    if(width > 0) {
        draw_sprite_part(657, 0, le, 0, width, 6, x + le, global.idealborder[2] + 6);
        draw_set_color(16777215);
        draw_rectangle(x + 2 + rc_le, global.idealborder[2] + 11, x + 8 - rc_cut, y, 0);
        if(width > 0 && collision_rectangle(x + 2 + rc_le, global.idealborder[2] + 11, x + 8 - rc_cut, y, 743, 0, 1))
            event_user(2);
        draw_sprite_part(659, 0, le, 0, width, 6, x + le, y);
    }
}
if(x < 0 && hspeed < 0) instance_destroy();
if(x > 640 && hspeed > 0) instance_destroy();

