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
if(room == 159 && scr_murderlv() >= 12) {
    ff= instance_create(80, 100, obj_kitchenforcefield );
    ff.image_yscale= 3;
}
if(scr_enemynpc3() != 1) instance_destroy();
if(scr_murderlv() >= 12) instance_destroy();

/* */
/*  */
