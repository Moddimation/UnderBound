if(!instance_exists(myobject)) {
    instance_destroy();
    exit;
} else  {
    if(bounce == 0 && instance_exists(myobject)) {
        remvspeed= myobject.vspeed;
        remgravity= myobject.gravity;
        myobject.gravity_direction= 270;
        myobject.vspeed= -bounceamt;
        myobject.gravity= grav;
        nowy= myobject.y;
        bounce= 1;
    }
    if(bounce == 1 && myobject.y >= nowy - myobject.vspeed) {
        myobject.y= nowy;
        myobject.gravity= remgravity;
        myobject.vspeed= remvspeed;
        instance_destroy();
    }
    exit;
}

