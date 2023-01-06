if(mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
    global.goldreward[3]+= 40;
if(mercymod == 250) global.flag[54]= 2;
if(killed == 1) global.flag[54]= 1;
if(killed == 0) global.flag[27]= 1;
global.plot= 60;
scr_monsterdefeat(0, 0, 0, 0, 0);
with(mypart1) instance_destroy();

