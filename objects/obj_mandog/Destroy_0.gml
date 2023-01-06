if(mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
    global.goldreward[3]+= 30;
if(mercymod > 80 && mercymod < 400) global.flag[53]= 2;
if(killed == 1) global.flag[53]= 1;
if(killed == 0) global.flag[27]= 1;
global.plot= 50;
scr_monsterdefeat(0, 0, 0, 0, 0);
with(mypart1) instance_destroy();
with(mypart2) instance_destroy();

