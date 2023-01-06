con= 0;
if(global.plot > 207 || global.flag[7] == 1) instance_destroy();
else  {
    if(global.plot == 207) {
        y= -100;
        con= 50;
        asg= instance_create(580, 120, obj_asgore_actor );
    } else  {
        asg= instance_create(180, 120, obj_asgore_actor );
        asg.sprite_index= asg.dtsprite;
    }
}
image_xscale= 3;


/*  */
