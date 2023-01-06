draw_sprite(sprite_index, image_index, x, y);
if(w_active == 1) {
    obj_mainchara.visible= 0;
    w_timer++;
    if(w_timer < 30) {
        if(xx > thisx - 10) xx--;
        draw_sprite(spr_maincharal_water , floor(w_timer / 3), xx, obj_mainchara.y);
    }
    if(w_timer >= 30 && w_timer < 120) {
        pour_index+= 0.2;
        draw_sprite(spr_mainchara_pourwater , floor(pour_index), xx, obj_mainchara.y);
        if(pour_index >= 5.8) pour_index= 4.2;
    }
    if(w_timer >= 120) {
        pour_index+= 0.2;
        if(pour_index <= 7.8)
            draw_sprite(spr_mainchara_pourwater , floor(pour_index), xx, obj_mainchara.y);
        else  {
            if(xx < thisx) {
                xx++;
                draw_sprite(spr_maincharal_water , floor(w_timer / 3), xx, obj_mainchara.y);
            } else  {
                global.flag[366]= 0;
                // obj_watercooler
                with(1298) havewater= 0;
                obj_mainchara.visible= 1;
                // obj_mainchara
                with(1570) {
                    lsprite= 1046;
                    usprite= 1044;
                    dsprite= 1043;
                    rsprite= 1045;
                }
                w_active= 0;
                con= 11;
            }
        }
    }
}

/* */
/*  */
