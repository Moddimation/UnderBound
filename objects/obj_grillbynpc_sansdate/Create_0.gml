dsprite= 1353;
usprite= 1362;
lsprite= 1367;
rsprite= 1363;
dtsprite= 1353;
utsprite= 1362;
ltsprite= 1367;
rtsprite= 1363;
myinteract= 0;
facing= 0;
direction= 90;
talkedto= 0;
image_speed= 0;
con= 0;
if(global.flag[89] != 1) instance_destroy();
else  {
    con= 1;
    visible= 1;
    rimshot= caster_load("music/rimshot.ogg");
    whoopee= caster_load("music/whoopee.ogg");
    mystery= caster_load("music/mysteriousroom2.ogg");
}
scr_depth();
burg= 0;
curvol= 1;
counter= scr_marker(92, 65, 1199);
counter.depth= 199990;

