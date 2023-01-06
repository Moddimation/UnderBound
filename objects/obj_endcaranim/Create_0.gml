cary= 0;
car_index= 0;
siner= 0;
image_speed= 0.5;
bgx= 0;
x= -150;
hspeed= 2;
sans= instance_create(-420, 100, obj_npc_marker );
sans.sprite_index= spr_sans_trike ;
sans.image_speed= 0.5;
sans.visible= 1;
sans.hspeed= 2;
birb= scr_marker(-100, 10, 1596);
birb.depth= 1100000;
birb.hspeed= 2;
birb.image_speed= 0.2;
birb.image_xscale= -1;
timer= 0;
td= 0;
caster_play(429, 1, 1);
global.inbattle= 0;


/*  */
