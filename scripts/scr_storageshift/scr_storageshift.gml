function scr_storageshift(argument0, argument1, argument2) {
	global.flag[argument2 + 10]= argument1;
	i= argument0;
	while(i < 10) {
	    global.flag[i + argument2]= global.flag[i + argument2 + 1];
	    i++;
	}
	script_execute(scr_itemnameb );
	script_execute(scr_storagename , 300);



}
