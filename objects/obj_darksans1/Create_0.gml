dsprite= 1353;
usprite= 1362;
lsprite= 1367;
rsprite= 1363;
dtsprite= 1353;
utsprite= 1362;
ltsprite= 1367;
rtsprite= 1363;
scr_depth();
lafftrax= 0;
conversation= 0;
hspeed= 0.75;
global.interact= 1;
image_speed= 0.1;
hh= instance_create(0, 0, obj_musfadeout );
hh.fadespeed= 0.5;
uuu= instance_create(0, 0, obj_walknoise );
y= obj_mainchara.y - 1;
shakehand= 0;
murder= 0;
if(scr_murderlv() >= 2) murder= 1;


/*  */
