draw_set_color(255);
draw_rectangle(a_x, a_y, a_x2, a_y2, 1);
gh= collision_rectangle(a_x, a_y, a_x2, a_y2, 581, 0, 1);
if(gh != -4) {
    if(gh.con == 1) draw_circle(10, 10, 4, 0);
    if(gh.con == 2) draw_circle(30, 10, 4, 0);
}
with(gh) {
    if(con != 3 && con != 4 && big == 0) {
        event_user(3);
        speed= 0;
    }
}
if(off == 1) {
    vol-= 0.0125;
    caster_set_volume(expl, vol);
}

