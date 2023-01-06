scr_depth(0, 0, 0, 0, 0);
t= 0;
image_speed= 0;
dsprite= 1103;
usprite= 1112;
lsprite= 1108;
rsprite= 1107;
dtsprite= 1105;
utsprite= 1111;
ltsprite= 1110;
rtsprite= 1109;
myinteract= 0;
facing= 3;
conversation= 0;
direction= 270;
path_start(path_torielwalk1 , 0, 0, path_action_restart );
if(global.plot > 1) instance_destroy();

/* */
/*  */
