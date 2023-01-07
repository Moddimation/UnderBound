
sprite_index= global.bulletappearance;
mydirection= global.bulletvariable[6];
mydirectionalspeed= global.bulletvariable[7];
gravity= global.bulletvariable[3];
gravity_direction= global.bulletvariable[4];
friction= global.bulletvariable[5];
instance_create(x, y, blt_gen );
action_set_motion(mydirection, mydirectionalspeed);
if(sprite_index == 157) image_speed= 0;




