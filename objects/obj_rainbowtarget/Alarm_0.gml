gig= instance_create(x, -10, obj_rainbowbolt );
gig.giga= giga;
if(giga == 1) {
    // obj_rainbowbolt_realgen
    with(586) event_user(1);
    gig.image_xscale= 4;
    gig.ss= -2;
} else  {
    // obj_rainbowbolt_realgen
    with(586) event_user(0);
}
instance_destroy();

/* */
/*  */
