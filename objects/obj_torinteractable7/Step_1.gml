scr_depth(0, 0, 0, 0, 0);
if(global.flag[7] == 0) {
    if(instance_exists(obj_face_torieltalk ))
        image_index= obj_face_torieltalk.image_index;
    else  image_index= 0;
}
if(global.flag[7] == 1) {
    if(instance_exists(obj_face_asriel ))
        image_index= obj_face_asriel.image_index;
    else  image_index= 0;
}
script_execute(scr_npcdir , 2);

/* */
/*  */
