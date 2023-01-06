draw_rectangle_color(x, y, x + 100, y + 20, 255, 65535, 32768, 255, 0);
draw_set_color(16777215);
draw_rectangle(x - 2, y - 2, x + 102, y + 22, 1);
draw_set_font(1);
draw_text(x - 10, y - 40, string_hash_to_newline("REEL IT IN!"));
draw_set_color(0);
draw_rectangle(x + 100, y, x + 60 - sin(siner / 10) * 40, y + 20, 0);
siner++;

