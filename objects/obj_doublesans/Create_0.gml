dsprite= 1353;
usprite= 1362;
lsprite= 1367;
rsprite= 1363;
dtsprite= 1353;
utsprite= 1362;
ltsprite= 1367;
rtsprite= 1363;
myinteract= 0;
facing= 0;
direction= 270;
talkedto= 0;
image_speed= 0;
if(global.plot > 64) instance_destroy();
gone= 0;
if(global.flag[413] > 0) gone= 1;
if(global.flag[67] == 1) gone= 1;
if(gone == 1) instance_destroy();

