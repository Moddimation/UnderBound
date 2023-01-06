myinteract= 0;
x+= sprite_width;
mychip= instance_create(x - 6, y, obj_npc_marker );
mychip.image_index= 1;
mychip.depth= depth + 1;
mychip.sprite_index= spr_chipdoor_chippart ;
mychip.image_speed= 0;
mychip.visible= 1;
image_xscale= -1;
image_speed= 0.2;
if(global.flag[375] == 1 && room == 148) sprite_index= spr_chipdoor_green ;
if(global.flag[400] == 1 && room == 171) sprite_index= spr_chipdoor_green ;
did= 0;
if(global.plot > 132 && room == 148) did= 1;
if(global.plot > 163 && room == 171) did= 1;
if(did == 1) x+= 20;


/*  */
