if(x < -100) {
    if(__view_get( e__VW.XView, 0 ) < 0) __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (4) );
    else  __view_set( e__VW.XView, 0, 0 );
}
if(x > -440 && td == 0) {
    td= 1;
    t1= instance_create(10, __view_get( e__VW.YView, 0 ) + 20, obj_creditsword );
    t1.text= "ASGORE";
    t1.text2= "by Toby";
}
if(x > 0 && td == 1) {
    t2= instance_create(10, __view_get( e__VW.YView, 0 ) + 120, obj_creditsword );
    t2.text= "MONSTER#KID";
    t2.text2= "by#Magnolia Porter";
    td= 2;
}
if(x >= 195 && con == 0) {
    hspeed= 0;
    x= 198;
    con= 1;
    sprite_index= spr_mkid_trip_r ;
    image_index= 0;
    image_speed= 0.25;
    asg.sprite_index= spr_asgore_shears_sad ;
    asg.image_speed= 0;
    asg.image_index= 0;
    alarm[5]= -1;
}
if(con == 1 && image_index >= 19) {
    image_speed= 0;
    con= 2;
    alarm[4]= 30;
}
if(y < 360 && td == 2) {
    with(t1) fader= 1;
    with(t2) fader= 1;
    td= 3;
}
if(instance_exists(t3) && t3.y > __view_get( e__VW.YView, 0 ) + 84)
    t3.y= __view_get( e__VW.YView, 0 ) + 84;
if(con == 3) {
    asg.sprite_index= spr_asgore_shears ;
    asg.image_speed= 0.1;
    alarm[5]= 10;
    x+= 13;
    sprite_index= spr_mkid_u ;
    image_speed= 0.2;
    vspeed= -1;
    con= 4;
}
if(con == 4) {
    if(__view_get( e__VW.YView, 0 ) > 0) __view_set_pp( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) - 1 );
    else  {
        vspeed= -0.5;
        image_speed= 0.1;
        if(instance_exists(t3)) t3.fader= 1;
        else  {
            vol-= 0.01;
            caster_set_volume(-3, vol);
            __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (2) );
            if(__view_get( e__VW.XView, 0 ) < -200) room_goto(283);
        }
    }
}


/*  */
