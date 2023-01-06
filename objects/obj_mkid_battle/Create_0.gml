scr_monstersetup();
image_speed= 0;
part1= 283;
mypart1= instance_create(x, y, part1);
alarm[9]= 8;
hurtanim= 0;
hurtsound= 96;
talked= 0;
whatiheard= -1;
attacked= 0;
killed= 0;
global.heard= 0;
takedamage= 0;
mercymod= 10;
sha= 0;
shb= 0;
ht= 100;
wd= 100;
mercymod= 999999;
con= 0;
global.flag[20]= 0;
// obj_battlebg
with(185) instance_destroy();

