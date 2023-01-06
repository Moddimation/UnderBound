if(global.facechoice == 3)
    draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, 16777215, 1);
if(global.faceemotion == 0) face= 771;
if(global.faceemotion == 1) face= 779;
if(global.faceemotion == 2) face= 775;
if(global.faceemotion == 3) face= 780;
if(global.faceemotion == 4) face= 772;
if(global.faceemotion == 5) face= 781;
if(global.faceemotion == 6) face= 782;
if(global.faceemotion == 7) face= 773;
if(global.faceemotion == 8) face= 778;
if(global.faceemotion == 9) face= 774;
if(global.facechoice == 0) sprite_index= spr_papdate ;
if(global.facechoice == 1) sprite_index= spr_papdate_cool ;
if(global.facechoice == 2) sprite_index= spr_papdate_coy ;
if(global.facechoice == 3) sprite_index= spr_papdate_omg ;
if(global.facechoice == 4) sprite_index= spr_papdate_bookread ;
if(global.facechoice == 5) sprite_index= spr_papdate_bookhold ;
draw_sprite_ext(face, face_index, x + 40, y - 2, 2, 2, 0, 16777215, 1);
face_index+= face_speed;
if(global.facechoice != 3)
    draw_sprite_ext(sprite_index, image_index, x, y, 2, 2, 0, 16777215, 1);
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
if(global.facechoice == 1) {
    draw_sprite_ext(spr_papdate_spaghetti , present, x, y - 16, 2, 2, 0, 16777215, 1);
    draw_sprite_ext(spr_papdate_coolhat , image_index, x, y + haty - 16, 2, 2, 0, 16777215, 1);
}
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

/* */
/*  */
