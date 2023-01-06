direction= point_direction(x, y, obj_heart.x + 8, obj_heart.y + 8);
image_angle= direction;
if(ystart < obj_heart.y + 8) {
    image_angle+= (x - obj_heart.x + 8) / 1.5;
    overall++;
}
if(ystart > obj_heart.y + 8) {
    image_angle-= (x - obj_heart.x + 8) / 1.5;
    overall--;
}
direction= image_angle;
siner++;
x= xstart + lengthdir_x(sin(siner / 2) * 4, direction);
y= ystart + lengthdir_y(sin(siner / 2) * 2, direction) + sin(overall / 4) * 6;

