s+= 1.5;
fire= instance_create(global.idealborder[0] + (global.idealborder[1] - global.idealborder[0]) / 2 + cos(off / 6) * 20, 130 + sin(off / 5) * 12 + sin(off / 5) * 12, obj_sinefire_asghelix );
fire.sf= 3.5;
fire.vspeed= 4;
fire.s= s;
side++;
if(side >= 4) side= choose(-2, -1);
if(side <= 1) fire.sv= 10;
if(side >= 1) fire.sv= -10;
alarm[0]= 5;
off++;
fire.vspeed+= sin(off / 6) * 0.2;

/* */
/*  */