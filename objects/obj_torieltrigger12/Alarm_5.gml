if(turts == 0) obj_toroverworld3.direction= 0;
if(turts == 1) obj_toroverworld3.direction= 90;
if(turts == 9) obj_toroverworld3.direction= 0;
if(turts == 10) {
    // obj_toroverworld3
    with(861) path_start(path_walkdown , 4, 0, path_action_stop );
}
if(turts == 13) conversation= 8;
alarm[5]= 12;
turts++;

/* */
/*  */
