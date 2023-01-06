__view_set( e__VW.Visible, 1, 0 );
if(fakedrawer == 1 && instance_exists(OBJ_WRITER )) {
    __view_set( e__VW.Visible, 1, 1 );
    draw_set_color(16777215);
    draw_rectangle(xx + 16, yy + 160, xx + 304, yy + 235, 0);
    draw_set_color(0);
    draw_rectangle(xx + 19, yy + 163, xx + 301, yy + 232, 0);
}

/* */
/*  */
