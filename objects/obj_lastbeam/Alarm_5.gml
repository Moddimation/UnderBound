snd_play(snd_hurt1 );
if(!instance_exists(obj_shaker )) instance_create(0, 0, obj_shaker );
if(hits == 0) global.hp= 1;
if(hits == 1) global.hp= 1;
if(hits == 2) global.hp= 0.9;
if(hits == 3) global.hp= 0.5;
if(hits == 4) global.hp= 0.1;
if(hits == 5) global.hp= 0.01;
if(hits == 6) global.flag[509]= 1;
if(hits == 7) global.flag[509]= 2;
if(hits == 8) global.flag[509]= 3;
if(hits == 9) global.flag[509]= 4;
hits++;
alarm[5]= 40;


/*  */
