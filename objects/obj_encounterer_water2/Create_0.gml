alldead= 0;
global.encounter= 0;
script_execute(scr_steps , 360, 30, 18, 204);
if(scr_murderlv() >= 10 && global.flag[27] == 0) script_execute(scr_steps , 60, 20, 18, 204);
if(global.flag[204] == 0 && global.plot > 121) instance_destroy();


/*  */
