if(active == 2) instance_destroy();
goalx= obj_mainchara.x + 7;
goaly= obj_mainchara.y + 15;
if(room == 93) goalx= obj_mainchara.x + 400;
move_towards_point(goalx + gax, goaly, 5);
active= 1;
rot= direction;
friction= -0.3;
snd_play(snd_arrow );
r= sprite_width / 2;

/* */
/*  */
