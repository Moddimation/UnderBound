siner++;
if(image_xscale == 1) draw_sprite(spr_waterfall_singletop , siner / 5, x, y);
if(image_xscale > 1) {
    draw_sprite(spr_waterfall_bright_lt , siner / 5, x, y);
    i= 1;
    while(i < image_xscale + 1) {
        if(i < image_xscale) {
            draw_sprite(spr_waterfall_bright_mt , siner / 5, x + i * 20, y);
            i++;
        } else  {
            draw_sprite(spr_waterfall_bright_rt , siner / 5, x + i * 20 - 20, y);
            break;
        }
    }
}
if(image_yscale > 1 && image_xscale == 1) {
    i= 1;
    while(i <= image_yscale) {
        draw_sprite(spr_waterfall_bright_mm , siner / 5, x, y + i * 20);
        i++;
    }
}
if(image_yscale > 1 && image_xscale > 1) {
    j= 1;
    while(j <= image_yscale) {
        if(j < image_yscale)
            draw_sprite(spr_waterfall_bright_lm , siner / 5, x, y + j * 20);
        if(j == image_yscale)
            draw_sprite(spr_waterfall_bright_bl , siner / 5, x, y + j * 20 - 20);
        i= 1;
        while(i <= image_xscale) {
            if(j < image_yscale) {
                if(i == image_xscale)
                    draw_sprite(spr_waterfall_bright_rm , siner / 5, x + i * 20 - 20, y + j * 20);
                else 
                    draw_sprite(spr_waterfall_bright_mm , siner / 5, x + i * 20, y + j * 20);
            }
            if(j == image_yscale) {
                if(i == image_xscale)
                    draw_sprite(spr_waterfall_bright_br , siner / 5, x + i * 20 - 20, y + j * 20 - 20);
                else 
                    draw_sprite(spr_waterfall_bright_bm , siner / 5, x + i * 20, y + j * 20 - 20);
            }
            i++;
        }
        j++;
    }
}


/*  */
