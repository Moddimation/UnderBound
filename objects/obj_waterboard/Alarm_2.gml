using= 7;
move_snap(20, 20);
block= instance_position(x + 10, y + 10, 820);
if(block != -4) {
    if(instance_exists(obj_bellblossom )) {
        obj_bellblossom.block2= block;
        // obj_bellblossom
        with(1111) event_user(0);
    }
    block.x= 0;
    block.y= 0;
}
using= 99;
image_speed= 0;
image_index= 6;
depth= 800000;

/* */
/*  */
