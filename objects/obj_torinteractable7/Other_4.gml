ex= 0;
if(global.plot != 25) ex= 1;
if(global.flag[45] == 4) ex= 1;
if(global.flag[7] == 1) ex= 0;
if(ex == 1) instance_destroy();

