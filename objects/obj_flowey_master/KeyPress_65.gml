if(global.debug == 1) {
    if(!instance_exists(obj_floweyx_flamethrower )) {
        instance_create(110, 140, obj_floweyx_flamethrower );
        instance_create(530, 140, obj_floweyx_flamethrower );
    } else  obj_floweyx_flamethrower.con= 3;
}


/*  */
