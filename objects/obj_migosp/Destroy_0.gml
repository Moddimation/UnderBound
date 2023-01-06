scr_monsterdefeat(0, 0, 0, 0, 0);
if(mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself]) {
    global.goldreward[3]+= 2;
    global.flag[135]= 1;
}

