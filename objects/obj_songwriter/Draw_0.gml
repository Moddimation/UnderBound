if(active == 1) {
    visible= 1;
    if(off == 0 && alpha < 2.2) {
        alpha+= 0.05;
        if(gggg == 1) alpha+= 0.1;
    }
    draw_set_font(myfont);
    draw_set_color(16777215);
    draw_set_alpha(alpha);
    draw_text(x, y, string_hash_to_newline(newstring));
}
if(off == 1) {
    alpha-= 0.05;
    if(gggg == 1) alpha-= 0.05;
    if(alpha < 0.1) instance_destroy();
}
draw_set_alpha(1);

