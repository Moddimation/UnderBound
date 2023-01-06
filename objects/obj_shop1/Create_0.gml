murder= 0;
if(scr_murderlv() >= 7) murder= 1;
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
item[0]= 14;
item[1]= 15;
item[2]= 19;
item[3]= 21;
sell= 0;
bought= 0;
mainmessage= 0;
itemcost[0]= 50;
itemcost[1]= 50;
itemcost[2]= 15;
if(global.plot > 100) itemcost[2]= 30;
if(global.plot > 121) itemcost[2]= 45;
if(global.plot > 199) itemcost[2]= 70;
itemcost[3]= 25;
if(murder == 1) {
    itemcost[0]= 0;
    itemcost[1]= 0;
    itemcost[2]= 0;
    itemcost[3]= 0;
}
minimenuy= 120;
global.typer= 23;
draw_set_font(2);
sidemessage= 0;
selling= 0;
global.msc= 0;
glow= 0;
shx= 130;
instance_create(18 + shx, 40, obj_shopeyes1 );
soldo= 0;
global.faceemotion= 0;
an= 0;
facespr[1]= 881;
facespr[2]= 880;
facespr[3]= 882;
facespr[4]= 879;
facespr[5]= 878;
facespr[6]= 877;
if(murder == 1) {
    // obj_shopeyes1
    with(1406) instance_destroy();
}

/* */
/*  */
