scr_monstersetup(0, 0, 0, 0, 0);
image_speed= 0;
part1= 260;
mypart1= instance_create(x, y, part1);
agent= instance_create(x, y + 3, obj_agentbody );
hurtanim= 0;
hurtsound= 43;
talked= 0;
whatiheard= -1;
attacked= 0;
killed= 0;
global.heard= 0;
takedamage= 0;
mercymod= 5;
sha= 0;
shb= 0;
flex= 0;
alphaup= 0;
emotion= 0;
encourage= 0;
creep= 0;
badnote[0]= caster_load("music/shyren/badnote1.ogg");
badnote[1]= caster_load("music/shyren/badnote2.ogg");
badnote[2]= caster_load("music/shyren/badnote3.ogg");
note[0]= caster_load("music/shyren/note1.ogg");
note[1]= caster_load("music/shyren/note2.ogg");
note[2]= caster_load("music/shyren/note3.ogg");
note[3]= caster_load("music/shyren/note4.ogg");
note[4]= caster_load("music/shyren/note5.ogg");
note[5]= caster_load("music/shyren/note6.ogg");
longnote[0]= caster_load("music/shyren/singF.ogg");
longnote[1]= caster_load("music/shyren/singG.ogg");
ht= 100;
wd= 100;

/* */
/*  */
