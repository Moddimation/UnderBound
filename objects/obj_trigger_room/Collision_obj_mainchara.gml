if(room == 88 && global.plot < 107) {
    global.plot= 107;
    instance_create(40, 340, obj_stalkerflowey );
}
if(room == 131 && global.plot < 119) {
    global.plot= 119;
    instance_create(140, 420, obj_stalkerflowey );
    obj_echoflower.xxx= 1;
}
if(room == 116 && global.flag[94] > 0 && global.flag[95] == 0 && global.interact == 0) {
    global.interact= 1;
    global.battlegroup= 46;
    instance_create(0, 0, obj_battler );
}
if(room == 154 && global.interact == 0) {
    global.interact= 1;
    obj_cookshowevent.con= 50;
}
instance_destroy();

/* */
/*  */
