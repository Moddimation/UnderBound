if(create >= 0) {
    draw_sprite_ext(spr_blackbox_o_shatter , 0, x + 10, y + 10, 1 + create / 10, 1 + create / 10, create * 10, 16777215, 1 - create / 10);
    create--;
}
if(create < 0)
    draw_sprite(sprite_index, image_index, curx, cury);
if(curx > x) curx-= 5;
if(curx < x) curx+= 5;
if(cury > y) cury-= 5;
if(cury < y) cury+= 5;


/*  */
