global.facing= 0;
obj_mainchara.hspeed= 0;
obj_mainchara.image_index= 0;
obj_mainchara.image_speed= 0;
t= 2;
dog1= instance_create(obj_mainchara.x - 34, room_height - 40, obj_mandog_actor );
dog2= instance_create(obj_mainchara.x + 20, room_height - 40, obj_womandog_actor );
dog1.vspeed= -1;
dog2.vspeed= -1;
alarm[2]= 142;


/*  */
