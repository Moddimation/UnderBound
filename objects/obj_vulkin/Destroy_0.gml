if(mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself]) {
    global.goldreward[3]+= 40;
    global.flag[148]= 1;
}
scr_monsterdefeat(0, 0, 0, 0, 0);
with(mypart1) instance_destroy();

