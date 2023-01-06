draw_set_color(16777215);
draw_rectangle(__view_get( e__VW.XView, view_current ) + 16, __view_get( e__VW.YView, view_current ) + 6, __view_get( e__VW.XView, view_current ) + 304, __view_get( e__VW.YView, view_current ) + 32, 0);
draw_set_color(0);
draw_rectangle(__view_get( e__VW.XView, view_current ) + 19, __view_get( e__VW.YView, view_current ) + 9, __view_get( e__VW.XView, view_current ) + 301, __view_get( e__VW.YView, view_current ) + 29, 0);
draw_set_font(2);
draw_set_color(16777215);
draw_text(30, 11, string_hash_to_newline("* Press [Z] repeatedly to stir!"));
if(keyboard_multicheck_pressed(0)) {
    stir++;
    pot.image_index++;
}
stime++;
if(stime > 90 && stir <= 70 && sval == 0) {
    sval= 1;
    global.msc= 0;
    global.facechoice= 5;
    global.typer= 37;
    global.faceemotion= 1;
    global.msg[0]= "* Stir harder^2!%%";
    gg= instance_create(0, 0, obj_dialoguer );
    gg.side= 1;
}
if(stime > 150 && stir <= 70 && sval == 1) {
    sval= 2;
    global.msc= 0;
    global.facechoice= 5;
    global.typer= 37;
    global.faceemotion= 2;
    global.msg[0]= "* HARDER^2!%%";
    gg= instance_create(0, 0, obj_dialoguer );
    gg.side= 1;
}
if(stime > 210 && stir <= 70 && sval == 2) {
    sval= 3;
    global.msc= 0;
    global.facechoice= 5;
    global.typer= 37;
    global.faceemotion= 6;
    global.msg[0]= "* HARDER!!!^2!%%";
    gg= instance_create(0, 0, obj_dialoguer );
    gg.side= 1;
}
if((stime > 300 || stir > 70) && !instance_exists(OBJ_WRITER )) {
    sval= 99;
    global.msc= 0;
    global.facechoice= 5;
    global.typer= 37;
    global.faceemotion= 6;
    global.msg[0]= "* Ugh^1, let me do it!/%%";
    gg= instance_create(0, 0, obj_dialoguer );
    gg.side= 1;
    obj_undynedate_inside.con= 210;
    instance_destroy();
}

/* */
/*  */
