event_inherited();
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
image_speed= 0.25;
u[0]= 2046;
u[1]= 2049;
u[2]= 2050;
u[3]= 2051;
u[4]= 2052;
u[5]= 2053;
u[6]= 2054;
u[7]= 2055;
u[8]= 2056;
u[9]= 2057;
u[10]= 2058;
u[11]= 2059;
u[12]= 2060;
u[13]= 2061;
u[14]= 2062;
u[15]= 2063;
u[16]= 2064;
u[17]= 2065;
u[18]= 2066;
u[19]= 2067;
u[20]= 2068;
u[21]= 2069;
u[22]= 2070;
u[23]= 2071;
u[24]= 2072;
u[25]= 2073;
sprite_index= u[global.faceemotion];
if(global.flag[430] == 1)
    sprite_index= u[global.faceemotion + 10];
if(global.flag[430] == 2)
    sprite_index= u[global.faceemotion + 15];
if(global.flag[430] == 4) {
    image_index= global.faceemotion;
    sprite_index= spr_alphysface_new ;
}


/*  */
