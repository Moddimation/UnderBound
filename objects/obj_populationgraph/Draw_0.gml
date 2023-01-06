if(tough == 0) {
    draw_set_color(4235519);
    i= 0;
    while(i < 7) {
        draw_line_width(x + i * 10 - off, y + point[i], x + i * 10 + 10 - off, y + point[i + 1], 2);
        i++;
    }
    off++;
    if(off > 9) {
        i= 0;
        while(i < 7) {
            point[i]= point[i + 1];
            i++;
        }
        point[7]= random(50);
        off= 0;
    }
    draw_set_color(16777215);
    draw_rectangle(x - 10, y - 20, x + 70, y + 60, 1);
    draw_set_font(1);
    draw_text(x - 20, y - 50, string_hash_to_newline("POPULATION"));
}
if(tough == 1) {
    draw_set_color(255);
    i= 0;
    while(i < 7) {
        draw_line_width(x + i * 10 - off, y + point[i], x + i * 10 + 10 - off, y + point[i + 1], 2);
        i++;
    }
    off+= 3;
    if(off > 9) {
        i= 0;
        while(i < 7) {
            point[i]= point[i + 1];
            i++;
        }
        point[7]= random(80);
        off= 0;
    }
    draw_set_color(16777215);
    draw_rectangle(x - 10, y - 20, x + 70, y + 100, 1);
    draw_set_font(1);
    draw_text(x - 20, y - 50, string_hash_to_newline("TENSION"));
}

