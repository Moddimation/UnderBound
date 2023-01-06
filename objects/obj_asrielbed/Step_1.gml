if(jump == 1 && obj_mainchara.path_position == 1) {
    instance_create(0, 0, obj_unfader );
    alarm[2]= 60;
    jump= 2;
}
if(jump == 3 && obj_mainchara.path_position == 1) {
    global.interact= 0;
    myinteract= 0;
    jump= 0;
    __background_set( e__BG.Visible, 2, 0 );
    obj_solidsmall.solid= 1;
    global.phasing= 0;
}


/*  */
