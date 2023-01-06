if(blue == 1) draw_set_color(16754964);
if(blue == 2) draw_set_color(4235519);
if(x <= global.idealborder[1] && x > global.idealborder[0])
    draw_rectangle(x, global.idealborder[2] + 2, x + 5, global.idealborder[3], 0);
if(collision_rectangle(x, global.idealborder[2] + 2, x + 5, global.idealborder[3], 748, 0, 1))
    event_user(0);
if(collision_rectangle(x, global.idealborder[2] + 2, x + 5, global.idealborder[3], 743, 0, 1))
    event_user(0);
if(global.turntimer < 2) instance_destroy();

