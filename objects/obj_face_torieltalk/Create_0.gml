event_inherited();
image_speed= 0.25;
if(instance_exists(obj_face_sans )) {
    // obj_face_sans
    with(776) instance_destroy();
}
if(instance_exists(obj_face_undyne )) {
    // obj_face_undyne
    with(777) instance_destroy();
}
if(instance_exists(obj_face_papyrus )) {
    // obj_face_papyrus
    with(775) instance_destroy();
}
if(instance_exists(obj_face_alphys )) {
    // obj_face_alphys
    with(770) instance_destroy();
}
if(instance_exists(obj_face_asgore )) {
    // obj_face_asgore
    with(771) instance_destroy();
}
if(global.faceemotion == 99) {
    instance_create(x, y, obj_face_torglasses );
    global.faceemotion= 0;
}
if(global.faceemotion == 0 && sprite_index != real(1986))
    sprite_index= real(1986);
if(global.faceemotion == 1 && sprite_index != real(2004))
    sprite_index= real(2004);
if(global.faceemotion == 2 && sprite_index != real(1990))
    sprite_index= real(1990);
if(global.faceemotion == 3 && sprite_index != real(1999))
    sprite_index= real(1999);
if(global.faceemotion == 4 && sprite_index != real(2000))
    sprite_index= real(2000);
if(global.faceemotion == 6 && sprite_index != real(1991))
    sprite_index= real(1991);
if(global.faceemotion == 7 && sprite_index != real(1993))
    sprite_index= real(1993);
if(global.faceemotion == 8 && sprite_index != real(1996))
    sprite_index= real(1996);
if(global.faceemotion == 9 && sprite_index != real(1987))
    sprite_index= real(1987);


/*  */
