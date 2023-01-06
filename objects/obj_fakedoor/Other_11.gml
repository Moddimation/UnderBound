snd_play(snd_bluh );
global.interact= 1;
open= 1;
visible= 1;
obj_mainchara.cutscene= 1;
with(instance_position(x + 10, y + 20, 4)) instance_destroy();
scr_shake(2, 2, 2);
global.interact= 1;
alarm[5]= 30;
myinteract= 0;


/*  */
