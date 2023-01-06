if(con == 0 && global.interact == 0 && global.flag[91] < 4) {
    global.interact= 1;
    con= 1;
    mkid.sprite_index= mkid.dtsprite;
    mkid.image_speed= 0.25;
    remember= mkid.follow;
    mkid.follow= 0;
    mkid.speed= 0;
    global.flag[91]= 4;
    global.facechoice= 0;
    if(obj_mainchara.y > 908) obj_mainchara.y= 908;
    if(obj_mainchara.y < 864) obj_mainchara.y= 864;
    global.msg[0]= "* Ummm^1, maybe she wouldn\\'t beat&  up the teachers.../";
    global.msg[1]= "* She\\'s too cool to ever&  hurt an innocent person!/%%";
    scr_regulartext();
}
if(con == 1 && !instance_exists(OBJ_WRITER )) {
    if(obj_mainchara.y > 908) obj_mainchara.y= 908;
    if(obj_mainchara.y < 864) obj_mainchara.y= 864;
    mkid.follow= remember;
    global.interact= 0;
    con= 2;
    mkid.image_speed= 0;
}

/* */
/*  */
