murder= 0;
if(scr_murderlv() >= 10) murder= 1;
instance_create(0, 0, obj_fader );
vol= 0.8;
if(global.flag[7] == 0) {
    shopmus= caster_load("music/shop.ogg");
    caster_loop(shopmus, vol, 0.93);
    if(murder == 1) caster_set_pitch(shopmus, 0.2);
}
menumax= 3;
menu= 0;
menuc[0]= 0;
menuc[1]= 0;
menuc[2]= 0;
menuc[3]= 0;
menuc[4]= 0;
item0pic= 34;
item1pic= 34;
item2pic= 34;
item3pic= 34;
item[0]= 37;
item[1]= 41;
item[2]= 44;
item[3]= 45;
sell= 0;
bought= 0;
mainmessage= 0;
itemcost[0]= 25;
itemcost[1]= 18;
itemcost[2]= 30;
itemcost[3]= 55;
minimenuy= 120;
global.typer= 23;
draw_set_font(2);
sidemessage= 0;
selling= 0;
global.msc= 0;
glow= 0;
shx= 130;
instance_create(shx, 44, obj_shopkeeper2 );
soldo= 0;
global.faceemotion= 0;

/* */
/*  */
