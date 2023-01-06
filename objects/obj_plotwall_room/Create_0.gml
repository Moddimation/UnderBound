phase= 0;
plotrating= 0;
scale= 1;
if(room == 24) plotrating= 13;
if(room == 25) {
    plotrating= 14;
    scale= 0;
}
if(room == 26) plotrating= 15;
if(room == 57) plotrating= 48;
if(room == 58) plotrating= 52;
if(room == 59) plotrating= 55;
if(scale == 1) image_yscale= 400;
if(scale == 0) image_xscale= 400;
if(global.plot > plotrating) instance_destroy();

