alldead= 0;
global.encounter= 0;
if(global.entrance == 1) script_execute(scr_steps , 160, 30, 16, 203);
else  script_execute(scr_steps , 300, 30, 16, 203);
if(global.flag[203] == 0 && global.plot > 100) instance_destroy();


/*  */
