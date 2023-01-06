if(instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.halt == 0) face_speed= 0.25;
    else  {
        face_index= 0;
        face_speed= 0;
    }
} else  {
    face_index= 0;
    face_speed= 0;
}
if(global.faceemotion == 8) face_speed= 0.13;
draw_set_color(16777215);
if(choicer == 1) {
    if(choice == 0)
        draw_sprite(spr_heart , 0, global.idealborder[0] + 40, global.idealborder[2] + 60);
    if(choice == 1)
        draw_sprite(spr_heart , 0, global.idealborder[0] + 300, global.idealborder[2] + 60);
    if(keyboard_check_pressed(39) || keyboard_check_pressed(37)) {
        if(choice == 0) choice= 1;
        else  choice= 0;
    }
    if(keyboard_multicheck_pressed(0)) choicer= 2;
}
if(fadeouter == 1) {
    if(fadeamt < 1) fadeamt+= 0.04;
    draw_set_color(0);
    draw_set_alpha(fadeamt);
    draw_rectangle(-10, -10, 999, 999, 0);
    draw_set_alpha(1);
}
if(fadeouter == 2) {
    if(fadeamt > 0) fadeamt-= 0.04;
    else  fadeouter= 0;
    draw_set_color(0);
    draw_set_alpha(fadeamt);
    draw_rectangle(-10, -10, 999, 999, 0);
    draw_set_alpha(1);
}


/*  */
