if(global.weapon == 3) instance_create(x - 16, y, obj_targetchoice );
if(global.weapon == 13 || global.weapon == 45 || global.weapon == 51 || global.weapon == 52) {
    r= round(random(1));
    if(r == 0) instance_create(x - 16, y, obj_targetchoice );
    if(r == 1) instance_create(x + 570, y, obj_targetchoice );
}
if(global.weapon == 14 || global.weapon == 47) {
    r= round(random(1));
    if(r == 0) instance_create(x - 16, y, obj_targetchoicefist );
    if(r == 1) instance_create(x + 570, y, obj_targetchoicefist );
}

/* */
/*  */
