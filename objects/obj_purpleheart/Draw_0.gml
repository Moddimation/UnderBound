draw_set_color(8388736);
if(type == 0) {
    i= 0;
    while(i < yamt) {
        draw_line(xmid - xlen, yzero + yspace * i + yoff, xmid + xlen, yzero + yspace * i + yoff);
        i++;
    }
}
draw_sprite(sprite_index, image_index, x, y);

