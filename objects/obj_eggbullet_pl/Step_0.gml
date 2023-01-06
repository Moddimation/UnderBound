image_angle= direction;
if(collision_rectangle(x, y, x + sprite_width, y + sprite_width, 739, 0, 1))
    instance_destroy();
if(y > room_height) instance_destroy();

