scr_monsterdefeat(0, 0, 0, 0, 0);
global.monster[0]= 1;
// obj_battlecontroller
with(154) visible= 0;
global.xp+= 150;
script_execute(scr_levelup );
global.border= 0;
SCR_BORDERSETUP();
// obj_hpname
with(183) instance_destroy();
// obj_battlebg
with(185) instance_destroy();
// obj_btparent
with(755) instance_destroy();
// obj_borderparent
with(757) instance_destroy();

/* */
/*  */
