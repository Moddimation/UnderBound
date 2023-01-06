draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, 0, image_blend, image_alpha);
if(image_alpha > 0.8) {
    draw_set_color(16777215);
    draw_rectangle(bbox_left, bbox_top, bbox_right, bbox_bottom - 1, 0);
}
non= 1;

