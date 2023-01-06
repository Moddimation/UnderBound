draw_sprite_ext(sprite_index, image_index, xstart + random(r), ystart + random(r), image_xscale, image_yscale, 0, 16777215, 1);
if(atk != 3)
    draw_sprite_ext(spr_temface , image_index, facex + random(r), facey + random(r), image_xscale, image_yscale, 0, 16777215, 1);
if(r < 2) r+= 0.01;
if(atk > 0) r= 0;
facetime++;
if(facetime > 300 && facex < x + 100)
    facex+= 0.01;
if(atk == 3) {
    if(smuggy < 100) smuggy++;
    draw_sprite_part_ext(250, 0, 0, 0, 100, smuggy, x + 100, y, 1, 1, 16777215, 1);
}

/* */
/*  */
