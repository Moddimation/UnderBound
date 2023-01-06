scr_monstersetup(0, 0, 0, 0, 0);
image_speed= 0;
// obj_battlebg
with(185) instance_destroy();
gen= 4;
part1= 231;
mypart1= instance_create(x, y, part1);
hurtanim= 0;
hurtsound= 43;
talked= 0;
whatiheard= -1;
attacked= 0;
killed= 0;
global.heard= 0;
takedamage= 0;
mercymod= 0;
insult= 0;
close= 0;
dogignore= 0;
pet= 0;
global.vaporspeed= 0;
hotcha= 0;
flirto= 0;
flirt2= 0;
stalk= 0;
conversation= 0;
prevhp= global.monsterhp[myself];
talkify= 0;
global.batmusic2= caster_load("music/papyrusboss.ogg");
truefight= 0;
fighto= -1;
xfight= 0;
dontcancel= 0;
bonetalk= 0;
bonetalk2= 0;
bonetalk3= 0;
bonetalk4= 0;
hearthp= global.hp;
hearthp2= global.hp;
xxtalk= 0;
if(global.flag[67] < 0) {
    truefight= 1;
    conversation= 1;
}
if(global.flag[67] == -2) global.flag[67]= -3;
if(global.flag[67] == -1) global.flag[67]= -2;
if(global.flag[67] == 0) global.flag[67]= -1;
global.flag[68]= 1;
ht= sprite_height;
wd= sprite_width;
murder= 0;
if(scr_murderlv() >= 7) {
    murder= 1;
    global.flag[290]= 1;
    global.monsterdef[myself]= -20000;
    dontcancel= 0;
    alarm[8]= -2;
    bonetalk3= 2;
    mercymod= 8000;
}
blcon= 8589458454;
blconwd= 584589485934;

