image_speed= 0;
rsprite= 2421;
lsprite= 2424;
dsprite= 2417;
usprite= 2419;
sprite_index= spr_asriel_armcry ;
con= 1;
timer= 0;
alarm[4]= 200;
powered= 0;
emerge= 0;
instance_create(0, 0, obj_overworldcontroller );
mc_real= instance_create(x, y + 60, obj_mainchara );
mc_real.visible= 0;
mc_real.cutscene= 1;
mc= scr_marker(x, y + 60, 1044);
mc.image_speed= 0;
mc.depth= depth + 3;
global.facing= 2;
global.interact= 1;
thisy= ystart;
musicbox= caster_load("music/musicbox.ogg");
xpart= caster_load("music/xpart_back.ogg");


/*  */
