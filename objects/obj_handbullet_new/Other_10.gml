if(moved == 0) {
    alarm[0]= -1;
    i= 0;
    while(i < cn) {
        with(c[i]) {
            move_towards_point(obj_heart.x + 6, obj_heart.y + 6, 2);
            friction= -0.2;
        }
        i++;
    }
    moved= 1;
}
image_alpha-= 0.2;
if(image_alpha < -0.4) instance_destroy();

