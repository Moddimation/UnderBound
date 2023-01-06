if(frame == 0) {
    draw_set_alpha(1);
    draw_set_color(16777215);
    draw_rectangle(-10, -10, 999, 999, 0);
}
if(frame == 1) {
    draw_set_alpha(0.75);
    draw_set_color(16777215);
    draw_rectangle(-10, -10, 999, 999, 0);
}
if(frame == 2) {
    draw_set_alpha(0.5);
    draw_set_color(16777215);
    draw_rectangle(-10, -10, 999, 999, 0);
}
if(frame == 3) {
    draw_set_alpha(0.25);
    draw_set_color(16777215);
    draw_rectangle(-10, -10, 999, 999, 0);
}
if(frame == 4) instance_destroy();
frame++;
draw_set_alpha(1);

