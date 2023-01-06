global.border= 3;
global.flag[15]= 1;
global.flag[16]= 1;
global.flag[370]= 1;
SCR_BORDERSETUP();
instance_create(0, 0, obj_battlerquick );
obj_undynespear.active= 2;
if(instance_exists(obj_uspeargen ))
    obj_uspeargen.alarm[0]+= 30;

/* */
/*  */
