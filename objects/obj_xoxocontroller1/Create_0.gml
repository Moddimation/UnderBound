vic= 0;
fvic= 0;
image_speed= 0;
if(scr_murderlv() >= 4 && global.flag[27] == 0) {
    if(global.plot < 57) global.plot= 57;
    if(room == 63 && global.plot < 63) global.plot= 63;
}

