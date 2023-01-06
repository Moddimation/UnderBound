draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, 16777215, image_alpha);
if(rotspeed == 0) {
    xoff= lengthdir_x(25, direction);
    yoff= lengthdir_y(25, direction);
    draw_line(x - xoff / 2, y - yoff / 2, x + xoff, y + yoff);
}
if(global.turntimer < 1) instance_destroy();

