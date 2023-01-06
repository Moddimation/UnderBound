if(killed == 0) global.flag[27]= 1;
if(mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
    global.goldreward[3]+= 50;
scr_monsterdefeat(0, 0, 0, 0, 0);
with(mypart1) instance_destroy();

