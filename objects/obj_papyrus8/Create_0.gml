if(global.plot > 100) instance_destroy();
else  {
    global.flag[68]= 0;
    conversation= 0;
    image_yscale= 999;
}
look= 0;
spinagain= 0;
murder= 0;
if(scr_murderlv() >= 7 && global.flag[27] == 0) murder= 1;

