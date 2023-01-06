image_speed= 1;
ang= 6 * choose(1, -1);
size= 2;
image_xscale= 2;
image_yscale= 2;
siner= 0;
form= 0;
crit= 0;
pansfx= caster_load("music/sfx_frypan.ogg");
caster_play(pansfx, 1, 1);
i= 0;
while(i < 8) {
    g= instance_create(x, y, obj_frypan_star );
    g.direction= i * 360 / 8;
    g.image_blend= image_blend;
    i++;
}
alarm[6]= 70;
alarm[1]= 1;


/*  */
