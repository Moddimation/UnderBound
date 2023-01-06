dr++;
if(dr > 3) {
    fog_r++;
    dr= 0;
}
if(s == 0) fog_alpha= obj_mainchara.x / 440;
if(fog_alpha > 1 && s == 0 && global.plot > 99)
    fog_alpha= 1 + 1 - fog_alpha;
i= 0;
j= 0;
repeat(3)  {
    repeat(13)  {
        draw_sprite_part_ext(1933, 0, fog_r, 0, 80, 80, i * 80, j * 80, 1, 1, 16777215, fog_alpha);
        i++;
    }
    j++;
    i= 0;
}
if(fog_r >= 80) fog_r-= 80;

