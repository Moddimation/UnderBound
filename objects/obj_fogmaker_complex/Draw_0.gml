dr++;
if(dr > 3) {
    fog_r++;
    dr= 0;
}
fog_alpha= obj_mainchara.x / room_width;
i= 0;
j= 0;
repeat(3)  {
    repeat(32)  {
        tfr= fog_r + i + j * 2;
        if(tfr >= 40) tfr-= 40;
        draw_sprite_part_ext(1933, 0, tfr, 0, 20, 80, i * 20, j * 80, 1, 1, 16777215, fog_alpha);
        i++;
    }
    j++;
    i= 0;
}
if(fog_r >= 40) fog_r-= 40;

