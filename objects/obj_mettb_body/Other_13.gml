dance= 0;
noleg= 1;
falllegl= instance_create(x + 90 - xoffl - 32, y + 120 + yoffl - legh - sin(siner / 2) * 0.05, obj_fallofflimb );
falllegl.image_xscale= 2;
falllegl.image_yscale= 2;
falllegl.sprite_index= leglsprite;
falllegr= instance_create(x + 90 + xoffr - 200, y + 120 + yoffr - legh - sin(siner / 2) * 0.05, obj_fallofflimb );
falllegr.image_xscale= -2;
falllegr.image_yscale= 2;
falllegr.x+= 200;
falllegr.sprite_index= legrsprite;

/* */
/*  */
