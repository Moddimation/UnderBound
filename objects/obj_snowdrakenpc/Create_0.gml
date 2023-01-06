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
if(scr_enemynpc1() != 1) instance_destroy();
if(global.flag[7] == 1) {
    instance_create(x + 40, y - 8, obj_npc_room );
    instance_create(x + 100, y, obj_snowdrakedad );
}

/* */
/*  */
