global.interact= 3;
alarm[2]= 30;
alarm[4]= 1;
global.flag[201]= global.kills;
heartdraw= 0;
on= 0;
clap= 0;
depp= -600;
claptimer= 2;
if(global.flag[15] == 0) {
    caster_set_volume(global.currentsong, 0);
    caster_pause(global.currentsong);
}
tb= instance_create(0, 0, obj_tempblack );


/*  */
