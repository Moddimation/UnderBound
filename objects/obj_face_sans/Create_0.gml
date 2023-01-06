event_inherited();
image_speed= 0.25;
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
if(instance_exists(obj_face_torieltalk )) {
    // obj_face_torieltalk
    with(765) instance_destroy();
}
if(instance_exists(obj_face_torielblink )) {
    // obj_face_torielblink
    with(767) instance_destroy();
}
if(instance_exists(obj_torbody )) {
    // obj_torbody
    with(764) instance_destroy();
}
if(instance_exists(obj_face_mettaton )) {
    // obj_face_mettaton
    with(773) instance_destroy();
}
if(global.faceemotion == 0 && sprite_index != real(2018))
    sprite_index= real(2018);
if(global.faceemotion == 1 && sprite_index != real(2022))
    sprite_index= real(2022);
if(global.faceemotion == 2 && sprite_index != real(2019))
    sprite_index= real(2019);
if(global.faceemotion == 3 && sprite_index != real(2020))
    sprite_index= real(2020);
if(global.faceemotion == 4 && sprite_index != real(2021))
    sprite_index= real(2021);


/*  */
