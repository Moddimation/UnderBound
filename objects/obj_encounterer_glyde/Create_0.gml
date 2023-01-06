alldead= 0;
global.encounter= 0;
script_execute(scr_steps , 3600, 150, 16, 203);
if(global.flag[203] == 0 && global.plot > 100) instance_destroy();
if(global.flag[7] == 1) instance_destroy();
if(global.flag[283] == 1) instance_destroy();


/*  */
