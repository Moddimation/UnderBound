if(global.flag[8] == 1 || global.flag[7] == 1) instance_destroy();
global.flag[15]= 1;
alldead= 0;
global.encounter= 0;
factor= 240;
desto= 0;
if(global.flag[423] < 2 && global.flag[426] < 4) factor= 80;
if(scr_murderlv() >= 12) factor= 70;
script_execute(scr_steps , factor, 50, 40, 205);
if(scr_enemynpc3() == 1) instance_destroy();


/*  */
