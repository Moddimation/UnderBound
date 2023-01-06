alarm[0]= global.firingrate;
bx= instance_create(x, y, obj_blackboxtest );
bx.vspeed= 8;
obj_blackboxtest.dmg= floor(global.hp / 2);
if(global.hp < 2) {
    global.turntimer= -1;
    // obj_blackboxtest
    with(675) instance_destroy();
}


/*  */
