draw_sprite_ext(spr_rotdial , 0, 169, 45, 1, 1, -stir * 6, 16777215, 1);
draw_set_color(16777215);
draw_rectangle(__view_get( e__VW.XView, view_current ) + 16, __view_get( e__VW.YView, view_current ) + 6, __view_get( e__VW.XView, view_current ) + 304, __view_get( e__VW.YView, view_current ) + 32, 0);
draw_set_color(0);
draw_rectangle(__view_get( e__VW.XView, view_current ) + 19, __view_get( e__VW.YView, view_current ) + 9, __view_get( e__VW.XView, view_current ) + 301, __view_get( e__VW.YView, view_current ) + 29, 0);
draw_set_font(2);
draw_set_color(16777215);
draw_text(30, 11, string_hash_to_newline("* Hold [RIGHT] to turn up the heat!"));
if(keyboard_check(39)) {
    stir++;
    jingle++;
    if(jingle > 10) {
        caster_play(rot, 0.5, 1);
        jingle= 0;
    }
}
if(keyboard_check(37)) wrong= 1;
stime++;
if(wrong == 1 && wrongval == 0 && !instance_exists(OBJ_WRITER )) {
    caster_set_pitch(fire, 0.8);
    caster_set_volume(fire, 0.55);
    wrongval= 1;
    global.msc= 0;
    global.facechoice= 5;
    global.typer= 37;
    global.faceemotion= 1;
    global.msg[0]= "* Left^1? You fool^2!%";
    global.msg[1]= "\\\\E6* THIS BURNER ONLY&  GOES ONE WAY!!^2!%%";
    gg= instance_create(0, 0, obj_dialoguer );
    gg.side= 1;
}
if(stir > 50 && sval == 0) {
    caster_set_pitch(fire, 0.9);
    caster_set_volume(fire, 0.6);
    with(pot) event_user(0);
    sval++;
}
if(stir > 100 && sval == 1 && !instance_exists(OBJ_WRITER )) {
    caster_set_pitch(fire, 1);
    caster_set_volume(fire, 0.66);
    with(pot) event_user(0);
    sval= 2;
    global.msc= 0;
    global.facechoice= 5;
    global.typer= 37;
    global.faceemotion= 1;
    global.msg[0]= "* Hotter^2!%%";
    gg= instance_create(0, 0, obj_dialoguer );
    gg.side= 1;
}
if(stir > 150 && sval == 2) {
    caster_set_pitch(fire, 1.1);
    caster_set_volume(fire, 0.72);
    with(pot) event_user(0);
    sval++;
}
if(stir > 200 && sval == 3 && !instance_exists(OBJ_WRITER )) {
    caster_set_pitch(fire, 1.2);
    caster_set_volume(fire, 0.78);
    with(pot) event_user(0);
    sval= 4;
    global.msc= 0;
    global.facechoice= 5;
    global.typer= 37;
    global.faceemotion= 1;
    global.msg[0]= "* HOTTER^1, DARNIT^2!%%";
    gg= instance_create(0, 0, obj_dialoguer );
    gg.side= 1;
}
if(stir > 250 && sval == 4) {
    caster_set_pitch(fire, 1.3);
    caster_set_volume(fire, 0.83);
    with(pot) event_user(0);
    sval++;
}
if(stir > 300 && sval == 5 && !instance_exists(OBJ_WRITER )) {
    caster_set_pitch(fire, 1.4);
    caster_set_volume(fire, 0.87);
    with(pot) event_user(0);
    sval= 6;
    global.msc= 0;
    global.facechoice= 5;
    global.typer= 37;
    global.faceemotion= 1;
    global.msg[0]= "* HOTTER!!!!!!^2!%%";
    gg= instance_create(0, 0, obj_dialoguer );
    gg.side= 1;
}
if(stir > 360 && sval < 99 && !instance_exists(OBJ_WRITER )) {
    stir= 360;
    caster_stop(global.currentsong);
    caster_set_pitch(fire, 1.7);
    caster_set_volume(fire, 0.95);
    with(pot) event_user(0);
    sval= 99;
    global.msc= 0;
    global.facechoice= 5;
    global.typer= 37;
    global.faceemotion= 1;
    global.msg[0]= "* Wait^1, that\\'s too ^1- %%";
    gg= instance_create(0, 0, obj_dialoguer );
    gg.side= 1;
    obj_undynedate_inside.con= 250;
    instance_destroy();
}
if(stime > 500 && sval < 99 && !instance_exists(OBJ_WRITER )) {
    sval= 101;
    global.msc= 0;
    global.facechoice= 5;
    global.typer= 37;
    global.faceemotion= 1;
    global.msg[0]= "* Ugh^1, let me do it!/%%";
    gg= instance_create(0, 0, obj_dialoguer );
    gg.side= 1;
}
if(sval == 101 && !instance_exists(OBJ_WRITER )) {
    caster_stop(global.currentsong);
    caster_set_pitch(fire, 1.7);
    caster_set_volume(fire, 0.95);
    sval= 102;
    while(pot.level < 8) {
        with(pot) event_user(0);
    }
    global.msc= 0;
    global.facechoice= 5;
    global.typer= 37;
    global.faceemotion= 1;
    global.msg[0]= "* See!^1?&* This is how you ^1-%%";
    gg= instance_create(0, 0, obj_dialoguer );
    gg.side= 1;
    obj_undynedate_inside.con= 250;
    instance_destroy();
}

/* */
/*  */
