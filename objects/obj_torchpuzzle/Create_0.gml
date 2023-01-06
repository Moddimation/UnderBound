h= 0;
solved= 0;
if(room == 91 && global.plot > 108) {
    solved= 1;
    // obj_solidtall
    with(14) instance_destroy();
    i= 0;
    while(i < 12) {
        g= instance_create(440 + i * 20, 100, obj_proxglower );
        g= instance_create(440 + i * 20, 180, obj_proxglower );
        i++;
    }
    obj_proxglower.image_speed= 0.25;
    obj_proxglower.sprite_index= spr_smallstar ;
}

/* */
/*  */
