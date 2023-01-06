siner= 0;
xprev3= x;
yprev3= y;
xprev2= x;
yprev2= y;
xprev4= xprev3;
yprev4= yprev3;
num= 5;
size= 0.8;
alarm[0]= 1;
alarm[1]= 6;
bounces= 0;
pb= 0;
maxer= 0;
visible= 0;
image_xscale= maxer + sin(siner / 6) * 0.1;
image_yscale= maxer + sin(siner / 6) * 0.1;
dt= instance_create(x, y, obj_dentata_full );
instance_create(x, y, obj_eyewarning );
// obj_flowey_master
with(1585) caster_play(sfx_generate, 1, 1);
image_blend= merge_color(32768, 16777215, 0.3);

/* */
/*  */
