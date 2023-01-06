x+= 180;
i= 0;
while(i < 10) {
    type[i]= 1;
    i++;
}
type[0]= 1;
type[1]= choose(1, 2);
type[2]= 2;
type[3]= choose(1, 2);
type[4]= 1;
type[5]= choose(1, 2);
amt= 2;
curamt= 0;
initswipewait= 8;
swipewait= 0;
swipetimer= 0;
image_speed= 0;
image_xscale= 2;
image_yscale= 2;
con= 0;
quick= 0;
cutspeed= 0.5;
hitted= 0;
cutsfx= caster_load("music/sfx_cinematiccut.ogg");
cutsfxN= 0;
cutsfxI[0]= cutsfx;
obj_asgorespear.visible= 0;
cutsdone= 0;

