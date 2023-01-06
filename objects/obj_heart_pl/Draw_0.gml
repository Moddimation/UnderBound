draw_sprite(sprite_index, image_index, x, y);
draw_set_color(16777215);
draw_rectangle(global.idealborder[0], global.idealborder[2], global.idealborder[1], global.idealborder[3], 1);
draw_set_color(255);
if(shot == 1)
    draw_rectangle(x + 6, y + 23, x + 10, y + 26, 0);

