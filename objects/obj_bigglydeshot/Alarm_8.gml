move_towards_point(obj_heart.x + 8, obj_heart.y + 8, 9);
i= 0;
while(i < 5) {
    gl= instance_create(x, y, obj_glydeshot );
    if(instance_exists(gl))
        gl.direction= direction - 28 + i * 14;
    i++;
}
i= 0;
while(i < 5) {
    gl= instance_create(x, y, obj_glydeshot );
    if(instance_exists(gl)) {
        gl.direction= direction - 28 + i * 14;
        gl.speed-= 1.5;
    }
    i++;
}
i= 0;
while(i < 5) {
    gl= instance_create(x, y, obj_glydeshot );
    if(instance_exists(gl)) {
        gl.direction= direction - 28 + i * 14;
        gl.speed-= 3;
    }
    i++;
}
// obj_glydeshot
with(225) friction= 0;


/*  */
