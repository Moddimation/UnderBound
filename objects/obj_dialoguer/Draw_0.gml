if(side == 0) {
    yy= __view_get( e__VW.YView, view_current );
    if(instance_exists(writer) && writer.writingy > yy + 80)
        writer.writingy-= 155;
    if(instance_exists(obj_face ) && obj_face.y > yy + 80)
        obj_face.y-= 155;
    draw_set_color(16777215);
    draw_rectangle(__view_get( e__VW.XView, view_current ) + 16, __view_get( e__VW.YView, view_current ) + 5, __view_get( e__VW.XView, view_current ) + 304, __view_get( e__VW.YView, view_current ) + 80, 0);
    draw_set_color(0);
    draw_rectangle(__view_get( e__VW.XView, view_current ) + 19, __view_get( e__VW.YView, view_current ) + 8, __view_get( e__VW.XView, view_current ) + 301, __view_get( e__VW.YView, view_current ) + 77, 0);
} else  {
    yy= __view_get( e__VW.YView, view_current );
    if(instance_exists(writer) && writer.writingy < yy + 80)
        writer.writingy+= 155;
    if(instance_exists(obj_face ) && obj_face.y < yy + 80)
        obj_face.y+= 155;
    draw_set_color(16777215);
    draw_rectangle(__view_get( e__VW.XView, view_current ) + 16, __view_get( e__VW.YView, view_current ) + 160, __view_get( e__VW.XView, view_current ) + 304, __view_get( e__VW.YView, view_current ) + 235, 0);
    draw_set_color(0);
    draw_rectangle(__view_get( e__VW.XView, view_current ) + 19, __view_get( e__VW.YView, view_current ) + 163, __view_get( e__VW.XView, view_current ) + 301, __view_get( e__VW.YView, view_current ) + 232, 0);
}
count= 1;


/*  */
