ini_open("undertale.ini");
ini_write_real("Mettaton", "BossMet", 1);
ini_close();
ratings= instance_create(20, 10, obj_ratingsmaster );
scr_monstersetup();
image_speed= 0;
if(instance_exists(obj_mettb_body )) {
    part1= 408;
    mypart1= 408;
} else  {
    part1= 408;
    mypart1= instance_create(240, 116, part1);
}
mypart1.depth= 10;
alarm[9]= 8;
hurtanim= 0;
hurtsound= 115;
talked= 0;
whatiheard= -1;
attacked= 0;
killed= 0;
global.heard= 0;
takedamage= 0;
mercymod= -100000;
sha= 0;
shb= 0;
obj_heart.shot= 1;
obj_heart.sprite_index= spr_heartyellow_flip ;
con= 0;
i= 0;
repeat(99)  {
    global.failure[i]= 0;
    i++;
}
global.attacktype= 26;
global.specialdam[0]= 0;
global.specialdam[1]= 0;
global.specialdam[2]= 0;
turns= 0;
qualify= 0;
ht= 200;
wd= 200;
// obj_battlebg
with(185) instance_destroy();

/* */
/*  */
