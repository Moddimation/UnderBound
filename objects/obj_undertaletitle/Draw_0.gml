if(con == 0)
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, rot, 16777215, 1);
if(con == 1) {
    draw_set_color(16777215);
    draw_set_font(1);
    draw_text_transformed(90, 90, string_hash_to_newline("By Toby Fox"), 1, 1, 0);
}
if(con == 3) {
    global.entrance= 1;
    global.facing= 1;
    global.phone[0]= 0;
    global.phone[1]= 0;
    global.phone[2]= 0;
    global.phone[3]= 0;
    global.phone[4]= 0;
    global.phone[5]= 0;
    global.phone[6]= 0;
    global.phone[7]= 0;
    global.phone[0]= 206;
    instance_create(0, 0, obj_persistentfader );
    room_goto(44);
}

/* */
/*  */
