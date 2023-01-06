if(global.flag[6] == 0 && mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself]) {
    global.goldreward[3]+= 50;
    global.flag[151]= 1;
}
if(global.flag[6] == 1 && mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
    global.goldreward[3]+= 4;
x+= 10;
y+= 10;
scr_monsterdefeat(0, 0, 0, 0, 0);
with(mypart1) instance_destroy();

