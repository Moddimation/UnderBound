myinteract= 0;
mychip= instance_create(x + sprite_width, y, obj_npc_marker );
mychip.image_index= 0;
mychip.depth= depth + 1;
mychip.sprite_index= spr_chipdoor_chippart ;
mychip.image_speed= 0;
mychip.visible= 1;
image_speed= 0.2;
if(global.flag[374] == 1 && room == 148) sprite_index= spr_chipdoor_green ;
if(global.flag[399] == 1 && room == 171) sprite_index= spr_chipdoor_green ;
did= 0;
if(global.plot > 132 && room == 148) did= 1;
if(global.plot > 163 && room == 171) did= 1;
if(did == 1) {
    event_user(1);
    x-= 20;
}


/*  */
