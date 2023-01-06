con= 0;
if(global.flag[7] == 1) instance_destroy();
if(global.flag[277] == 1) instance_destroy();
type= 0;
if(global.flag[5] >= 40 && global.flag[5] <= 45) type= 1;
if(global.flag[5] > 45 && global.flag[5] <= 50) type= 2;
if(global.debug == 1) type= choose(1, 2);
if(type == 0) instance_destroy();
if(global.plot >= 120) instance_destroy();

