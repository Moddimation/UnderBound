scr_monstersetup();
image_speed= 0;
part1= 1673;
mypart1= instance_create(x, y, part1);
mypart1.pause= 0;
mypart1.face= 10;
alarm[9]= 8;
hurtanim= 0;
hurtsound= 42;
talked= 0;
whatiheard= -1;
attacked= 0;
killed= 0;
global.heard= 0;
takedamage= 0;
mercymod= -999999;
sha= 0;
shb= 0;
talkt= 0;
totalmercy= 0;
mercyno= 0;
st= instance_create(x + 46, y - 30, obj_strangetangle );
ht= 100;
wd= 100;

/* */
/*  */
