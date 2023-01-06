if(global.debug == 1) {
    htest++;
    if(htest > 2) {
        instance_create(0, 200 + random(280), obj_f_handgun );
        htest= 0;
    }
}


/*  */
