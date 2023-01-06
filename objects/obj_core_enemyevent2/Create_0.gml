global.flag[200]= 205;
image_xscale= 6;
con= 0;
if(global.flag[7] == 1 || global.flag[8] == 1 || global.plot > 198) {
    instance_destroy();
    exit;
} else  {
    if(global.flag[417] == 1) instance_destroy();
    else  con= 1;
    exit;
}

