draw_set_color(16777215);
xprev2= x - (x - xprevious) * 2;
yprev2= y - (y - yprevious) * 2;
draw_sprite_ext(sprite_index, image_index, xprev2, yprev2, image_xscale - 0.6, image_yscale - 0.6, image_angle, 16777215, 0.3);
draw_sprite_ext(sprite_index, image_index, xprevious, yprevious, image_xscale - 0.3, image_yscale - 0.3, image_angle, 16777215, 0.6);
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, 16777215, 1);

