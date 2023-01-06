con= 1;
mc= instance_create(120, 20, obj_mainchara );
mc.visible= 0;
q= 20;
if(global.flag[45] != 4 && global.flag[67] <= 0 && global.flag[350] != 1 && global.kills < 10)
    q= 0;
if(global.flag[45] != 4 && global.kills >= 10) q= 1;
if(global.flag[45] != 4 && (global.flag[67] == 1 || global.flag[350] == 1))
    q= 1;
if(global.flag[45] == 4 && global.flag[350] != 1) q= 2;
if(global.flag[45] == 4 && global.flag[350] == 1 && global.flag[425] == 0)
    q= 3;
if(global.flag[45] == 4 && global.flag[350] == 1 && global.flag[425] == 1 && global.flag[67] != 1)
    q= 4;
if(global.flag[45] == 4 && global.flag[350] == 1 && global.flag[425] == 1 && global.flag[67] == 1)
    q= 5;
if(global.flag[45] == 4 && global.flag[350] == 1 && global.flag[425] == 1 && global.flag[67] == 1 && global.kills == 4)
    q= 6;
if(scr_murderlv() >= 12 && global.flag[425] == 1) q= 7;
if(q == 0 || q == 1 || q == 2 || q == 4)
    global.currentsong= caster_load("music/z_ending.ogg");
if(q == 3) global.currentsong= caster_load("music/mtgameshow.ogg");
if(q == 5) global.currentsong= caster_load("music/wind.ogg");
if(q == 6 || q == 20)
    global.currentsong= caster_load("music/dogsong.ogg");
global.interact= 1;
musiccon= 0;


/*  */
