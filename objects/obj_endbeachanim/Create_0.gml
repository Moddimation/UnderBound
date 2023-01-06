alphys= instance_create(44, 52, obj_npc_marker );
alphys.image_speed= 0.2;
alphys.sprite_index= spr_alphys_gameboy ;
alphys.visible= 1;
alphys.depth= depth + 1;
headsprite= 2439;
head_index= 0;
headx= 0;
heady= 0;
image_speed= 0;
con= 0;
timer= -120;
active= 1;
shuffle= 0;
x--;
image_index= 1;
crack= 0;
ctime= 0;
caster_play(global.endsong[3], 1, 1);
global.inbattle= 0;
o= scr_marker(18, 175, 2428);
o.depth= 200000;
o.image_speed= 0.1;
r= scr_marker(113, 145, 2427);
r.depth= 200000;
r.image_speed= 0.25;
l= scr_marker(23, 131, 2426);
l.depth= 200000;
l.image_speed= 0.2;


/*  */
