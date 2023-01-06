scr_monstersetup();
image_speed= 0;
instance_create(0, 0, obj_roundedge );
part1= 569;
mypart1= instance_create(x, y, obj_asriel_body );
alarm[9]= 8;
hurtanim= 0;
hurtsound= 42;
talked= 0;
whatiheard= -1;
attacked= 0;
killed= 0;
global.heard= 0;
takedamage= 0;
mercymod= -99999999999999;
sha= 0;
shb= 0;
image_xscale= 2;
image_yscale= 2;
turns= 0;
global.flag[500]= 1;
global.seriousbattle= 1;
global.hope= 0;
hoped= 0;
dreamed= 0;
say= 0;
global.flag[20]= 0;
turns= global.flag[504] - 3;
if(turns < 0) turns= 0;
trcon= 0;
ht= 200;
wd= 100;


/*  */
