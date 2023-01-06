visible= 0;
i= 0;
while(i < 8) {
    g= instance_create(x, y, obj_gunshot_star );
    g.image_angle= 20 * i;
    g.siner= 45 * i;
    g.image_blend= image_blend;
    i++;
}
g2= instance_create(x, y, obj_gunshot_2 );
g2.image_blend= image_blend;
shotno++;
alarm[4]= 3;


/*  */
