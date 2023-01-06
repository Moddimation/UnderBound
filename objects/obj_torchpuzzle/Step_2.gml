if(h >= 3 && solved == 0) {
    if(room == 91) {
        // obj_solidtall
        with(14) instance_destroy();
    }
    solved= 1;
    if(global.plot < 109) global.plot= 109;
    i= 0;
    while(i < 12) {
        g= instance_create(440 + i * 20, 100, obj_proxglower );
        g= instance_create(440 + i * 20, 180, obj_proxglower );
        i++;
    }
    obj_proxglower.image_speed= 0.25;
    obj_proxglower.sprite_index= spr_smallstar ;
}
h= 0;

/* */
/*  */
