murder= 0;
if(scr_murderlv() >= 12) murder= 1;
instance_create(0, 0, obj_fader );
vol= 0.8;
if(global.flag[7] == 0) {
    shopmus= caster_load("music/date.ogg");
    caster_loop(shopmus, vol, 1);
    if(murder == 1) caster_set_pitch(shopmus, 0.25);
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
item[0]= 59;
item[1]= 49;
item[2]= 48;
item[3]= 60;
sell= 0;
bought= 0;
mainmessage= 0;
itemcost[0]= 25;
itemcost[1]= 350;
itemcost[2]= 350;
itemcost[3]= 600;
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
soldo= 0;
global.faceemotion= 0;
global.flag[20]= 0;
cattywriter= 1;
brattywriter= 2;
cwe= 0;
bwe= 0;
catty= 1407;
bratty= 1408;
if(murder == 1) obj_shopkeeper_catty.visible= 0;
if(murder == 1) obj_shopkeeper_bratty.visible= 0;
con= 0;

/* */
/*  */
