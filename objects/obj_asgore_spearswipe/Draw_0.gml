if(image_index >= 5 && image_index < 6) {
    if(type[curamt] == 1) {
        draw_set_color(16754964);
        draw_rectangle(global.idealborder[0], global.idealborder[2], global.idealborder[1], global.idealborder[3], 0);
    }
    if(type[curamt] == 2) {
        draw_set_color(4235519);
        draw_rectangle(global.idealborder[0], global.idealborder[2], global.idealborder[1], global.idealborder[3], 0);
    }
}
draw_sprite_ext(spr_asgore_swipe_nospear , image_index, x, y, image_xscale, image_yscale, 0, 16777215, 1);
if(type[curamt] == 0) image_blend= 255;
if(type[curamt] == 1) image_blend= 16754964;
if(type[curamt] == 2) image_blend= 4235519;
draw_sprite_ext(spr_asgore_swipe_spear , image_index, x, y, image_xscale, image_yscale, 0, image_blend, 1);


/*  */
