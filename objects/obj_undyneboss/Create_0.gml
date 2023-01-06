scr_monstersetup(0, 0, 0, 0, 0);
image_speed= 0;
part1= 273;
mypart1= instance_create(x, y, part1);
hurtanim= 0;
hurtsound= 43;
talked= 0;
whatiheard= -1;
attacked= 0;
killed= 0;
global.heard= 0;
takedamage= 0;
image_speed= 0;
mercymod= -9999999999;
joketold= 0;
sha= 0;
siner= 0;
// obj_battlebg
with(185) instance_destroy();
instance_create(0, 0, obj_boxsiner );
green= 0;
darkify= 0;
con= 0;
greenlock= 0;
songplayed= 0;
revert= 0;
lesson= 1;
order= 1;
rating= 16;
prevhp= global.hp;
hitno= 0;
damagecause= 0;
borderspec= 0;
ratingb= 0;
defadjust= 0;
died= 0;
blconx= x + 180;
blcony= y + 10;
shakify= 0;
uncancel= 0;
hitfirst= 0;
berserk= 0;
mercied= 0;
global.flag[99]++;
if(global.flag[99] == 1) {
    global.flag[351]= 1500;
    if(global.flag[98] == 2) global.flag[351]= 1400;
}
if(global.flag[99] == 2) global.faceemotion= 1;
if(global.flag[99] == 3) global.faceemotion= 4;
if(global.flag[99] > 3) global.faceemotion= 5;
global.monsterhp[myself]= global.flag[351];
ht= 200;
wd= 250;

/* */
/*  */
