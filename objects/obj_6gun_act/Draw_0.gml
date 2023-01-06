draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, 16777215, image_alpha);
if(con > 0 && con < 3) {
    image_alpha-= 0.02;
    draw_set_color(16777215);
    draw_rectangle(106, 346, 534, 404, 0);
    draw_set_color(0);
    draw_rectangle(110, 350, 530, 400, 0);
    draw_set_color(16777215);
    draw_set_font(10);
    global.typer= 70;
    global.msg[0]= "* You called for help...";
    global.msg[1]= "%%%";
    if(!instance_exists(obj_flowey_writer ))
        instance_create(110, 340, obj_flowey_writer );
}
if(con == 2) {
    type= 1;
    // obj_flowey_master
    with(1585) pd= 1;
    // obj_6gun
    with(1609) event_user(5);
    con= 2.1;
    alarm[4]= 50;
}
if(con == 3) {
    global.soul_rescue= 6;
    ini_open("undertale.ini");
    ini_write_real("FFFFF", "P", 7);
    ini_close();
    // obj_6gun_bullet
    with(1607) event_user(4);
}
if(con == 3.1) {
    // obj_flowey_writer
    with(1598) instance_destroy();
    snd_play(snd_break2_c );
    instance_create(0, 0, obj_6flasher );
    // obj_flowey_master
    with(1585) caster_play(mus_saved, 0.8, 0.9);
    // obj_flowey_bulletmaster
    with(1584) soultimer= soulmax - 150;
    // obj_6gun
    with(1609) event_user(4);
    con= 3;
}


/*  */
