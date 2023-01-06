if(killed == 0) {
    global.flag[281]= 2;
    global.goldreward[3]+= 100;
    x+= 19;
    y-= 24;
} else  global.flag[281]= 1;
scr_monsterdefeat(0, 0, 0, 0, 0);
with(mypart1) instance_destroy();

