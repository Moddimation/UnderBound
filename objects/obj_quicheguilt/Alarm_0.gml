alarm[0]= 2;
if(global.inbattle == 0 && nowroom != room && global.interact == 0 && global.flag[17] == 0 && instance_exists(obj_mainchara )) {
    qtimer++;
    if(qtimer > 90) {
        guilt= 1;
        alarm[0]= -1;
    }
}

/* */
/*  */
