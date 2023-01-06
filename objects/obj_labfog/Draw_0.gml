xx+= xxspeed;
yy+= yyspeed;
if(xx > __view_get( e__VW.XView, 0 ) + 200)
    xx-= sprite_width;
if(xx < __view_get( e__VW.XView, 0 ) - 200)
    xx+= sprite_width;
if(yy > __view_get( e__VW.YView, 0 ) + 200)
    yy-= sprite_height;
if(yy < __view_get( e__VW.YView, 0 ) - 200)
    yy+= sprite_height;
draw_sprite_ext(sprite_index, 0, xx, yy, 1, 1, 0, 16777215, image_alpha);
draw_sprite_ext(sprite_index, 0, xx - sprite_width, yy - sprite_height, 1, 1, 0, 16777215, image_alpha);
draw_sprite_ext(sprite_index, 0, xx + sprite_width, yy - sprite_height, 1, 1, 0, 16777215, image_alpha);
draw_sprite_ext(sprite_index, 0, xx - sprite_width, yy + sprite_height, 1, 1, 0, 16777215, image_alpha);
draw_sprite_ext(sprite_index, 0, xx + sprite_width, yy + sprite_height, 1, 1, 0, 16777215, image_alpha);
draw_sprite_ext(sprite_index, 0, xx + sprite_width, yy, 1, 1, 0, 16777215, image_alpha);
draw_sprite_ext(sprite_index, 0, xx - sprite_width, yy, 1, 1, 0, 16777215, image_alpha);
draw_sprite_ext(sprite_index, 0, xx, yy + sprite_height, 1, 1, 0, 16777215, image_alpha);
draw_sprite_ext(sprite_index, 0, xx, yy - sprite_height, 1, 1, 0, 16777215, image_alpha);
if(image_alpha == 1 && instance_exists(obj_mainchara ))
    draw_sprite_ext(obj_mainchara.sprite_index, obj_mainchara.image_index, obj_mainchara.x, obj_mainchara.y, 1, 1, 0, 0, 0.3);


/*  */
