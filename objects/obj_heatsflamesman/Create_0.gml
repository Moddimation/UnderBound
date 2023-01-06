dsprite= 1219;
usprite= 1219;
lsprite= 1219;
rsprite= 1219;
dtsprite= 1219;
utsprite= 1219;
ltsprite= 1219;
rtsprite= 1219;
myinteract= 0;
facing= 0;
direction= 0;
talkedto= 0;
image_speed= 0;
if(global.flag[434] > 0) sprite_index= spr_heatsf_shock ;
if(room == 157 && global.plot >= 166) instance_destroy();
if(scr_murderlv() >= 12) instance_destroy();
if(global.flag[425] == 1) instance_destroy();


/*  */
