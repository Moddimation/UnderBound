obj_spinbullet_friendscene.targetx= targetx;
obj_spinbullet_friendscene.targety= targety;
if(spec == 0) {
    // obj_spinbullet_friendscene
    with(1665) move_towards_point(targetx, targety, 15);
    instance_destroy();
}
if(spec == 2) {
    // obj_spinbullet_friendscene
    with(1665) move_towards_point(targetx, targety, 0.8);
    alarm[0]= 90;
}

