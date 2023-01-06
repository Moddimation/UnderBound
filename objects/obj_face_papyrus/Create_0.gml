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
if(global.faceemotion == 0 && sprite_index != real(2008))
    sprite_index= real(2008);
if(global.faceemotion == 1 && sprite_index != real(2010))
    sprite_index= real(2010);
if(global.faceemotion == 2 && sprite_index != real(2012))
    sprite_index= real(2012);
if(global.faceemotion == 3 && sprite_index != real(2013))
    sprite_index= real(2013);
if(global.faceemotion == 4 && sprite_index != real(2011))
    sprite_index= real(2011);
if(global.faceemotion == 5 && sprite_index != real(2013))
    sprite_index= real(2009);
if(global.faceemotion == 6 && sprite_index != real(2014))
    sprite_index= real(2014);
if(global.faceemotion == 7 && sprite_index != real(2015))
    sprite_index= real(2015);
if(global.faceemotion == 8 && sprite_index != real(2016))
    sprite_index= real(2016);
if(global.faceemotion == 9 && sprite_index != real(2017))
    sprite_index= real(2017);


/*  */
