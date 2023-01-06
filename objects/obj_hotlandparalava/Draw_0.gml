maximum= room_width / 20;
xx[4]+= 0.25;
i= -1;
while(i < maximum + 1) {
    draw_sprite_ext(spr_hotlandlava , 0, i * 20 + xx[4], room_height - 80, 1, 1, 0, 16777215, 0.5);
    lastx= i * 20 + xx[4];
    i++;
}
if(xx[4] >= 20) xx[4]-= 20;
xx[3]+= 0.5;
i= -1;
while(i < maximum + 1) {
    draw_sprite_ext(spr_hotlandlava , 0, i * 20 + xx[3], room_height - 68, 1, 1, 0, 16777215, 0.75);
    lastx= i * 20 + xx[3];
    i++;
}
if(xx[3] >= 20) xx[3]-= 20;
xx[2]+= 0.8;
i= -1;
while(i < maximum + 1) {
    draw_sprite(spr_hotlandlava , 0, i * 20 + xx[2], room_height - 54);
    lastx= i * 20 + xx[2];
    i++;
}
if(xx[2] >= 20) xx[2]-= 20;
xx[1]+= 0.9;
i= -1;
while(i < maximum + 1) {
    draw_sprite(spr_hotlandlava , 0, i * 20 + xx[1], room_height - 38);
    lastx= i * 20 + xx[1];
    i++;
}
if(xx[1] >= 20) xx[1]-= 20;
xx[0]++;
i= -1;
while(i < maximum + 1) {
    draw_sprite(spr_hotlandlava , 0, i * 20 + xx[0], room_height - 20);
    lastx= i * 20 + xx[0];
    i++;
}
if(xx[0] >= 20) xx[0]-= 20;


/*  */
