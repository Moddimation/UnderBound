siner_o++;
if(naming == 3) {
    if(mlevel > 0) draw_background(9, 0, -120);
    if(mlevel == 1 && fk == 0) draw_sprite(spr_flowey , 0, 147, 169);
    if(mlevel == 2) draw_sprite(spr_chairiel , 0, 125, 138);
    if(mlevel == 3) {
        draw_sprite(spr_chairiel_sleep , siner_o / 8, 125, 138);
        draw_sprite(spr_papyrus_d_darkbg , 0, 241, 151);
        draw_sprite(spr_sans_shrug1_dark , 0, 271, 164);
    }
    if(mlevel == 4) {
        draw_sprite(spr_chairiel_sleep , siner_o / 8, 125, 138);
        draw_sprite(spr_papyrus_cape_dark , 0, 243, 151);
        draw_sprite(spr_undyne_youremine_dark , 0, 240, 103);
        draw_sprite(spr_sans_shrug1_dark , 0, 63, 33);
    }
    if(mlevel == 5) {
        draw_sprite(spr_chairiel_sleep , siner_o / 8, 125, 138);
        draw_sprite(spr_alphys_d_dark , 0, 270, 167);
        draw_sprite(spr_papyrus_cape_dark , 0, 272, 132);
        draw_sprite(spr_undyne_youremine_dark , 0, 269, 84);
        draw_sprite(spr_out_to_lunch_sign , 0, 20, 169);
    }
    if(mlevel == 6) {
        draw_sprite(spr_toriel_d_dark , 0, 143, 138);
        draw_sprite(spr_papyrus_d_darkbg , 0, 119, 147);
        draw_sprite(spr_sans_d_dark , 0, 172, 161);
        draw_sprite(spr_undyne_d_dark , 0, 99, 136);
        draw_sprite(spr_alphys_d_dark2 , 0, 74, 158);
        draw_sprite(spr_asgore_d_dark , 0, 195, 130);
        draw_sprite(spr_napstablook_d , 0, 9, 157);
        draw_sprite(spr_mettex_dark , 0, 28, 139);
        draw_sprite(spr_mkid_d_dark , 0, 262, 162);
    }
}
script_execute(scr_namingscreen );
if(naming == 3) {
    draw_set_color(8421504);
    draw_set_font(3);
    draw_text(70, 232, string_hash_to_newline("UNDERTALE v1.001 (C) Toby Fox 2015"));
}


/*  */
