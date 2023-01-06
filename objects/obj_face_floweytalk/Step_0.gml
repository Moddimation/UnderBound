if(global.faceemotion == 0 && sprite_index != real(166))
    sprite_index= real(166);
if(global.faceemotion == 1 && sprite_index != real(170))
    sprite_index= real(170);
if(global.faceemotion == 2 && sprite_index != real(171))
    sprite_index= real(171);
if(global.faceemotion == 3 && sprite_index != real(172))
    sprite_index= real(172);
if(global.faceemotion == 4 && sprite_index != real(179))
    sprite_index= real(179);
if(global.faceemotion == 5 && sprite_index != real(175))
    sprite_index= real(175);
if(room == 43) {
    if(global.faceemotion == 6 && sprite_index != real(175))
        sprite_index= real(176);
    if(global.faceemotion == 7 && sprite_index != real(175))
        sprite_index= real(177);
    if(global.faceemotion == 8 && sprite_index != real(175))
        sprite_index= real(167);
}
if(instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.halt != 0) {
        image_speed= 0;
        image_index= 0;
    } else  image_speed= 0.2;
}


/*  */
