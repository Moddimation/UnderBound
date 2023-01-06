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
direction= 270;
talkedto= 0;
image_speed= 0;
open= 0;
scr_depth();
mysolid= instance_create(214, 52, obj_solidsmall );
if(global.flag[92] > 0) open= 1;
if(global.flag[92] > 3) {
    open= 2;
    with(mysolid) instance_destroy();
}
con= 0;

/* */
/*  */
