if(type == 1) image_alpha-= 0.04;
if(image_alpha < 0.08) instance_destroy();
draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, image_angle, 16777215, image_alpha);
if(con == 999999) {
    if(con > 0 && con < 3) {
        image_alpha-= 0.02;
        draw_set_color(0);
        draw_rectangle(200, 150, 500, 240, 0);
        draw_set_color(16777215);
        draw_set_font(10);
        draw_text_transformed(200, 180, string_hash_to_newline("You called for help..."), 2, 2, 0);
    }
    if(con == 2) {
        type= 1;
        // obj_6book_wordbullet
        with(1622) event_user(5);
        con= 2.1;
        alarm[4]= 50;
    }
    if(con == 3.1) {
        // obj_6book_wordbullet
        with(1622) event_user(4);
        con= 3;
    }
}

