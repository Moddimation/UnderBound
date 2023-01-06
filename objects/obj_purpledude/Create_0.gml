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
con= 0;
if(global.plot < 110) instance_destroy();
if(scr_murderlv() >= 8 && global.flag[27] == 0) y= 900;
if(global.entrance == 24) {
    global.interact= 1;
    con= 20;
    visible= 0;
    obj_mainchara.visible= 0;
    obj_mainchara.x= x;
    obj_mainchara.y= y - 15;
}

