global.flag[15]= 1;
if(cl == 0) {
    battleno= choose(64, 65);
    if(global.flag[423] == 0) battleno= 64;
    if(global.flag[423] == 1) battleno= 65;
    if(global.flag[423] == 2) battleno= 68;
    if(global.flag[419] == 1 && battleno == 68) battleno= 61;
    global.battlegroup= battleno;
    global.border= 0;
    other.x= other.xprevious;
    other.y= other.yprevious;
    instance_create(0, 0, obj_battleblcon );
    cl= 1;
    global.flag[423]++;
    instance_destroy();
}


/*  */
