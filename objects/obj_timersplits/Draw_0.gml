split[splitno]++;
draw_set_color(255);
draw_set_font(2);
draw_set_halign(0);
i= 0;
while(i < splitno + 1) {
    draw_text(__view_get( e__VW.XView, 0 ) + 10, __view_get( e__VW.YView, 0 ) + 10 + i * 15, string_hash_to_newline(split[i]));
    i++;
}

