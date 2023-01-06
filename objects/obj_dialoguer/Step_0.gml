if(!instance_exists(writer)) instance_destroy();
else  {
    if(keyboard_multicheck_pressed(1)) {
        if(writer.halt == 0 && global.typer != 10) {
            global.flag[25]++;
            writer.stringpos= string_length(writer.originalstring);
        }
        keyboard_clear(16);
    }
}
if(global.facechange == 2) global.facechange= 0;
if(global.facechange == 1 && global.facechoice == 0) {
    if(instance_exists(writer)) {
        writer.x= xx + 30;
        writer.writingx= writer.x;
    }
    if(!instance_exists(obj_face )) {
        // obj_face
        with(774) instance_destroy();
    }
    global.facechange= 2;
}
if(global.facechange == 1 && instance_exists(writer)) {
    writer.x= xx + 68;
    writer.writingx= writer.x + 20;
    if(global.facechoice == 1 && !instance_exists(obj_face_torieltalk ) && !instance_exists(obj_face_torielblink ))
        script_execute(scr_facechoice );
    if(global.facechoice == 2 && !instance_exists(obj_face_floweytalk ))
        script_execute(scr_facechoice );
    if(global.facechoice == 3 && !instance_exists(obj_face_sans ))
        script_execute(scr_facechoice );
    if(global.facechoice == 4 && !instance_exists(obj_face_papyrus ))
        script_execute(scr_facechoice );
    if(global.facechoice == 5 && !instance_exists(obj_face_undyne ))
        script_execute(scr_facechoice );
    if(global.facechoice == 6 && !instance_exists(obj_face_alphys ))
        script_execute(scr_facechoice );
    if(global.facechoice == 7 && !instance_exists(obj_face_asgore ))
        script_execute(scr_facechoice );
    if(global.facechoice == 8 && !instance_exists(obj_face_mettaton ))
        script_execute(scr_facechoice );
    if(global.facechoice == 9 && !instance_exists(obj_face_asriel ))
        script_execute(scr_facechoice );
    global.facechange= 2;
}


/*  */
