global.flag[7]= 1;
global.interact= 1;
thisblend= merge_color(0, 4235519, 0.2);
obj_readablesolid.image_blend= thisblend;
obj_readablesolid.direction= 90;
obj_readablesolid.image_speed= 0;
obj_readablesolid.fun= 1;
obj_mainchara.visible= 0;
mc= scr_marker(obj_mainchara.x, obj_mainchara.y, 1044);
mc.depth= obj_mainchara.depth;
mc.image_blend= thisblend;
con= 1;
blk= 2.3;
pap= 1314;
tor= 1311;
asg= 1316;
und= 1313;
sans= 1312;
al= 1315;
pap.sprite_index= spr_papyrus_u ;
tor.sprite_index= spr_toriel_u ;
asg.sprite_index= spr_asgore_u ;
al.sprite_index= spr_alphys_u ;
sans.sprite_index= spr_sans_u ;
und.sprite_index= spr_undyne_u ;
o_music= caster_load("music/leave.ogg");

/* */
/*  */
