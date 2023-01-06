remx= obj_vsflowey_heart.x;
remy= obj_vsflowey_heart.y;
bb= sprite_create_from_screen_x(0, 0, 640, 480, 0, 0, 0, 0);
caster_free(-3);
// all
with(-3) {
    x= -500;
    y= -500;
}
// obj_flowey_writer
with(1598) instance_destroy();
instance_deactivate_all(1);
x= remx;
y= remy;
drawbb= 1;
alarm[0]= 20;
image_speed= 0;
gmusic= caster_load("music/gameover.ogg");
dingus= 0;
currentvol= 1;
con= 0;

