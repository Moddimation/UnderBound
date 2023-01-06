draw_sprite(sprite_index, image_index, x, y);
draw_set_color(0);
draw_rectangle(0, 0, 1200, bbox_top, 0);
draw_rectangle(0, 1200, 1200, bbox_bottom, 0);
draw_rectangle(0, 0, bbox_left, 1200, 0);
draw_rectangle(bbox_right, 0, 1200, 1200, 0);

