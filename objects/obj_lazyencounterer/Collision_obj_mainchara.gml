if(cl == 0) {
    global.battlegroup= battleno;
    global.border= 0;
    other.x= other.xprevious;
    other.y= other.yprevious;
    instance_create(0, 0, obj_battleblcon );
    cl= 1;
    global.flag[408]++;
    instance_destroy();
}


/*  */
