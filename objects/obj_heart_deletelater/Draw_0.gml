draw_sprite(sprite_index, image_index, x, y);
draw_set_color(16777215);
draw_rectangle(global.idealborder[0], global.idealborder[2], global.idealborder[1], global.idealborder[3], 1);
if(keyboard_check(39) && x < global.idealborder[1] - 16)
    x+= 4;
if(keyboard_check(37) && x > global.idealborder[0])
    x-= 4;
if(keyboard_check(40) && y < global.idealborder[3] - 16)
    y+= 4;
if(keyboard_check(38) && y > global.idealborder[2])
    y-= 4;


/*  */
