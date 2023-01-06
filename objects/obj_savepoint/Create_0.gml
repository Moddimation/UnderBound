myinteract= 0;
image_xscale= 1;
image_yscale= 1;
image_speed= 0.2;
if(global.flag[493] >= 12 && global.flag[7] == 0) {
    if(room == 219) instance_destroy();
    if(room == 232) instance_destroy();
    if(room == 231) instance_destroy();
    if(room == 216) instance_destroy();
    if(room == 235) instance_destroy();
}
if(room == 131 && (scr_murderlv() < 11 || global.flag[27] == 1 || global.plot > 119))
    instance_destroy();

