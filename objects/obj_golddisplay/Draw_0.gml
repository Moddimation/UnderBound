xx= __view_get( e__VW.XView, view_current );
yy= __view_get( e__VW.YView, view_current ) + 10;
f= 188;
yf= 8;
draw_set_color(16777215);
draw_rectangle(16 + xx + f, 74 + yy + yf, 116 + xx + f, 127 + yy + yf, 0);
draw_set_color(0);
draw_rectangle(19 + xx + f, 77 + yy + yf, 113 + xx + f, 124 + yy + yf, 0);
draw_set_font(2);
draw_set_color(16777215);
draw_text(30 + xx + f, 90 + yy, string_hash_to_newline("$ - " + string(global.gold) + "G"));
scr_itemroom();
draw_text(30 + xx + f, 110 + yy, string_hash_to_newline("SPACE - " + string(itemhold) + "/8"));
if(!instance_exists(OBJ_WRITER )) instance_destroy();


/*  */
