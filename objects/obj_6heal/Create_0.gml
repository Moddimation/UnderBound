image_blend= 65280;
if(instance_exists(obj_6soul_helpcutscene )) depth= -14;
image_alpha= 0;
sprite_index= choose(2231, 2222, 2214, 2219, 2210, 2209);
if(sprite_index != 2231) {
    image_xscale= 2;
    image_yscale= 2;
}
image_speed= 0;
image_angle= random(360);
vspeed= 2.5 + random(1);


/*  */
