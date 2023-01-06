dingus++;
if(global.plot == 23 && dingus == 2) {
    instance_create(140, 90, obj_toroverworld3 );
    obj_toroverworld3.facing= 2;
    obj_toroverworld3.direction= 90;
}
if(conversation == 2 && !instance_exists(obj_dialoguer )) {
    // obj_toroverworld3
    with(861) path_start(path_walkup , 4, 0, path_action_stop );
    global.plot= 24;
    global.interact= 0;
    instance_destroy();
}
if(instance_exists(obj_toroverworld3 ) && conversation == 1) {
    global.interact= 1;
    myinteract= 3;
    global.typer= 4;
    global.facechoice= 1;
    global.faceemotion= 6;
    global.msc= 0;
    global.msg[0]= "* Do not try to stop me./";
    global.msg[1]= "* This is your final&  warning./%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 2;
}

/* */
/*  */
