i= 0;
while(i < 6) {
    draw_sprite_ext(spr_6book , image_index, 100, -170 + 170 * i + booky, 2, 2, 0, 16777215, 1);
    draw_sprite_ext(spr_6book , image_index, 540, 170 * i + booky2, -2, -2, 0, 16777215, 1);
    i++;
}
booky+= 4;
booky2-= 4;
if(booky > 170) booky-= 170;
if(booky2 < -170) booky2+= 170;
if(con > 0 && con < 3) {
    image_alpha-= 0.02;
    draw_set_color(16777215);
    draw_rectangle(4, 4, 140, 230, 0);
    draw_set_color(0);
    draw_rectangle(8, 8, 136, 226, 0);
    draw_set_color(16777215);
    draw_set_font(10);
    global.typer= 70;
    global.msg[0]= "You&called&for&help&...";
    global.msg[1]= "%%%";
    if(!instance_exists(obj_flowey_writer ))
        instance_create(14, 4, obj_flowey_writer );
}
if(con == 2) {
    // obj_flowey_master
    with(1585) pd= 1;
    type= 1;
    // obj_6book_wordbullet
    with(1622) event_user(5);
    con= 2.1;
    alarm[4]= 50;
}
if(con == 3) {
    global.soul_rescue= 4;
    ini_open("undertale.ini");
    ini_write_real("FFFFF", "P", 5);
    ini_close();
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
    // obj_6book_wordbullet
    with(1622) event_user(4);
    con= 3;
}
if(obj_vsflowey_heart.x < 245) obj_vsflowey_heart.x= 245;
if(obj_vsflowey_heart.x > 382) obj_vsflowey_heart.x= 382;
if(obj_vsflowey_heart.y < 138) obj_vsflowey_heart.y= 138;


/*  */
