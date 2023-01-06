if(mercymod > 80 && mercymod < 400) global.flag[52]= 2;
if(killed == 1) global.flag[52]= 1;
if(killed == 0) global.flag[27]= 1;
global.plot= 41;
wd= 134;
scr_monsterdefeat(0, 0, 0, 0, 0);
with(mypart1) instance_destroy();
with(mypart2) instance_destroy();
with(mypart3) instance_destroy();
with(mypart4) instance_destroy();
global.goldreward[3]= 30;

