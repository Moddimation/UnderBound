alldead= 0;
global.encounter= 0;
script_execute(scr_steps , 120, 30, 16, 203);
if(room == 57 && global.flag[64] != 0) script_execute(scr_steps , 220, 30, 16, 203);
if(global.flag[203] == 0 && global.plot > 100) instance_destroy();
if(room == 67 && global.plot < 67) instance_destroy();


/*  */
