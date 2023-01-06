global.flag[10]= 0;
global.flag[11]= 0;
global.flag[12]= 0;
global.flag[13]= 0;
global.entrance= 0;
obj_mainchara.depth= -600;
battle= 1;
if(room == 220) battle= 2;
if(room == 221) battle= 2;
if(room == 222) battle= 2;
if(room == 225) battle= 2;
if(battle == 1 && !instance_exists(obj_battler ))
    instance_create(0, 0, obj_battler );
if(battle == 2 && !instance_exists(obj_battlerstory ))
    instance_create(0, 0, obj_battlerstory );
instance_destroy();


/*  */
