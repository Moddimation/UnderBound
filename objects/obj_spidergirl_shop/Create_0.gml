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
direction= 0;
talkedto= 0;
image_speed= 0;
dis= 0;
if(global.plot > 163) dis= 1;
if(global.flag[397] == 1) dis= 1;
if(dis == 1) instance_destroy();

