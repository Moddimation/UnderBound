if(x > global.idealborder[0] && keyboard_check(37))
    x-= 4;
if(x < global.idealborder[1] - 16 && keyboard_check(39))
    x+= 4;
if(y > global.idealborder[2] && keyboard_check(38))
    y-= 4;
if(y < global.idealborder[3] - 16 && keyboard_check(40))
    y+= 4;
shot= 0;
if(!instance_exists(obj_heartshot ) || charge < 0)
    shot= 1;
if(keyboard_check_pressed(90) && shot == 1) {
    instance_create(x + 4, y + 2, obj_heartshot );
    charge= 30;
}
charge--;
global.testinv--;
if(global.testinv > 0) image_speed= 1;
else  {
    image_speed= 0;
    image_index= 0;
}


/*  */
