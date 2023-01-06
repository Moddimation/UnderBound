// obj_battlebg
with(185) instance_destroy();
scr_monstersetup();
image_speed= 0;
part1= 551;
mypart1= instance_create(x, y, part1);
alarm[9]= 8;
hurtanim= 0;
hurtsound= 42;
talked= 0;
whatiheard= -1;
attacked= 0;
killed= 0;
global.heard= 0;
takedamage= 0;
mercymod= -900;
sha= 0;
shb= 0;
pitch= 0.5;
alarm[0]= 160;
siner= 0;
sinepitcher= 1;
xlaugh= 0;
xheckle= 0;
joke= 0;
ht= 200;
wd= 200;

