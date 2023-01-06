// obj_battlebg
with(185) instance_destroy();
scr_monstersetup();
image_speed= 0;
part1= 529;
mypart1= instance_create(x, y, part1);
alarm[9]= 8;
hurtanim= 0;
hurtsound= 35;
talked= 0;
whatiheard= -1;
attacked= 0;
killed= 0;
global.heard= 0;
takedamage= 0;
mercymod= -100;
sha= 0;
shb= 0;
turns= 0;
flex= 0;
hug= 0;
hum= 0;
ht= 200;
wd= 100;

