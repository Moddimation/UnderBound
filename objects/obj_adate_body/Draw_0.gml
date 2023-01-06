shaker= random(shake) - random(shake);
draw_sprite_ext(spr_adate_body , 0, x + shaker, y, 2, 2, 0, 16777215, image_alpha);
if(set == 0)
    draw_sprite_ext(spr_adate_head , global.faceemotion, x + shaker, y, 2, 2, 0, 16777215, image_alpha);
if(set == 1)
    draw_sprite_ext(spr_adate_head_2 , global.faceemotion, x + shaker, y, 2, 2, 0, 16777215, image_alpha);
draw_sprite_ext(spr_adate_arm , global.flag[20], x - 8 + shaker, y, 2, 2, 0, 16777215, image_alpha);
if(item == 1)
    draw_sprite_ext(spr_adate_item , aa, x, y + 68, 2, 2, 0, 16777215, image_alpha);
alarm[3]= 10;


/*  */
