function scr_itemget(argument0) {
	i= 0;
	loop= 1;
	noroom= 0;
	global.item[8]= 999;
	while(loop == 1) {
	    if(global.item[i] == 0) {
	        global.item[i]= argument0;
	        break;
	    } else  {
	        if(i == 8) {
	            script_execute(scr_itemnospace );
	            break;
	        } else  i++;
	    }
	}
	script_execute(scr_itemnameb );
	script_execute(scr_itemname );



}
