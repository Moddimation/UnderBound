image_xscale= 2;
image_yscale= 2;
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
if(shock == 0) {
    facespr= 1986;
    if(global.faceemotion == 0) facespr= 1986;
    if(global.faceemotion == 1) facespr= 1990;
    if(global.faceemotion == 2) facespr= 1991;
    if(global.faceemotion == 3) facespr= 1996;
    if(global.faceemotion == 4) facespr= 2004;
    if(global.faceemotion == 5) facespr= 1993;
    if(global.faceemotion == 6) facespr= 2285;
    if(global.faceemotion == 7) facespr= 2283;
    if(global.faceemotion == 9) facespr= 2284;
    if(global.faceemotion == 10) facespr= 2288;
    if(global.faceemotion == 11) facespr= 2282;
    if(global.faceemotion == 12) facespr= 2287;
    if(global.faceemotion == 13) facespr= 2289;
    if(global.faceemotion == 14) facespr= 2286;
    if(global.faceemotion == 15) facespr= 2290;
    draw_sprite_ext(facespr, 0, x + 40, y - 52, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
}
if(shock == 1)
    draw_sprite_ext(spr_face_torieldie , 0, x + 40, y - 52, image_xscale, image_yscale, image_angle, image_blend, image_alpha);

/* */
/*  */
