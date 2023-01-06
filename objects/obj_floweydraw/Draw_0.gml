show_debug_message("Flowey draw event")
if(instance_exists(obj_uborder )) {
    depth= 5;
    draw_set_color(0);
    draw_rectangle(obj_uborder.x + 5, obj_uborder.y + 5, obj_rborder.x, obj_dborder.y, 0);
} else show_debug_message("Flowey N: no border")
draw_sprite(spr_hpname , 0, 270, 400);
draw_set_color(255);
draw_rectangle(310, 400, 310 + global.maxhp * 1.2, 420, 0);
draw_set_color(65535);
draw_rectangle(310, 400, 310 + global.hp * 1.2, 420, 0);
draw_set_color(16777215);
draw_set_font(7);
hpwrite= string(global.hp);
if(global.hp < 10) hpwrite= "0" + string(global.hp);
draw_text(200, 400, string_hash_to_newline("LV " + string(global.lv)));
draw_text(330 + global.maxhp * 1.2, 400, string_hash_to_newline(hpwrite + " / " + string(global.maxhp)));
show_debug_message("Flowey draw event end")


/*  */
