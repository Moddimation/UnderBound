if(global.plot >= 35) instance_destroy();
else  {
    snap= caster_load("music/sticksnap.ogg");
    broken= 0;
    if(global.flag[47] >= 2) {
        image_index= 1;
        broken= 1;
    }
    if(global.flag[275] >= 1) {
        image_index= 1;
        broken= 1;
    }
    image_speed= 0;
    instance_create(2650, 0, obj_creeptree_sansmaker );
    instance_create(2725, 0, obj_creeptree_stickbreak );
    instance_create(3400, 0, obj_creeptree1 );
    instance_create(3440, 0, obj_creeptree1 );
    instance_create(4040, 0, obj_creeptree1 );
}
myinteract= 0;

/* */
/*  */
