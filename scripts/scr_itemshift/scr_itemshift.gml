function scr_itemshift(argument0, argument1) {
	global.item[8]= argument1;
	i= argument0;
	while(i < 8) {
	    global.item[i]= global.item[i + 1];
	    i++;
	}
	script_execute(scr_itemnameb );
	script_execute(scr_itemname );



}
