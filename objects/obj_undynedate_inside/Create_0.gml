table= scr_marker(177, 115, 1490);
with(table) scr_depth();
piano= scr_marker(60, 100, 1489);
with(piano) scr_depth();
sword= scr_marker(obj_solidthin.x, obj_solidthin.y - 34, 1484);
with(sword) scr_depth();
teacup= scr_marker(104, 57, 1482);
with(teacup) scr_depth();
con= 1;
global.interact= 1;
alarm[4]= 40;
caster_free(-3);
global.facing= 2;
papyrus= instance_create(120, 140, obj_papyrus_actor );
papyrus.sprite_index= papyrus.usprite;
papyrus.fun= 1;
papyrus.image_speed= 0;
undyne= instance_create(140, 80, obj_undyne_actor );
undyne.sprite_index= undyne.dtsprite;
con= 1;
if(con == 104) {
    global.currentsong= caster_load("music/undynetruetheme.ogg");
    caster_loop(global.currentsong, 0.9, 1);
    global.phasing= 1;
    con= 104;
    undyne.x= 208;
    undyne.y= 10;
    __view_set( e__VW.Object, 0, -4 );
    obj_mainchara.cutscene= 1;
    obj_mainchara.x= 200;
    obj_mainchara.y= 140;
}

/* */
/*  */
