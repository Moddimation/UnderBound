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
facing= 0;
conversation= 0;
direction= 180;
if(global.plot > 8) instance_destroy();
else  {
    instance_create(0, 0, obj_musfadeout );
    global.typer= 4;
    global.facechoice= 1;
    global.msc= 221;
    instance_create(0, 0, obj_dialoguer );
    global.interact= 1;
    conversation= 1;
}

/* */
/*  */
