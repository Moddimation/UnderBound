function scr_recoitem(argument0) {
	if(global.weapon == 47) script_execute(scr_recover , argument0 + 4);
	else  script_execute(scr_recover , argument0);
	global.item[8]= recovered;
	global.flag[260]= 1;
	if(maxedout == 1) global.item[8]= 9999;
	script_execute(scr_writetext , 11, "x", 0, 0);



}
