visible= 1;
y= obj_mainchara.y + 3;
x= obj_mainchara.x - 24;
if(global.entrance == 1) x= obj_mainchara.x - 24;
if(global.entrance == 2) x= obj_mainchara.x + 24;
rsprite= 1383;
lsprite= 1382;
usprite= 1384;
dsprite= 1381;
if(global.plot > 112) instance_destroy();
follow= 1;
image_speed= 0;
con= 0;
speedup= 0;
depth= obj_mainchara.depth;
look= 0;

