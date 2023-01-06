con= 0;
asg= instance_create(130, 145, obj_asgore_actor );
global.interact= 1;
caster_free(-3);
global.currentsong= caster_load("music/barrier.ogg");
caster_loop(global.currentsong, 0.8, 0.8);
if(global.tempvalue[10] > 0) con= 10;
global.facing= 2;
global.border= 0;
SCR_BORDERSETUP();


/*  */
