global.goldreward[myself]= 100 + round(global.flag[382] / 2);
if(global.goldreward[myself] >= 999)
    global.goldreward[myself]= 999;
global.flag[59]+= round(global.flag[382] / 2);
with(mypart1) instance_destroy();
caster_stop(global.batmusic);
global.flag[27]= 1;
scr_monsterdefeat();
global.monster[0]= 0;
instance_destroy();

