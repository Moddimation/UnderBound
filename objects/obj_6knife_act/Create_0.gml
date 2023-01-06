anger= choose(4, -4);
sp= choose(-1, 1);
image_angle= 0;
image_speed= 0;
type= 0;
j= 0;
while(j < 6) {
    i= 0;
    while(i < 7) {
        kn= instance_create(-sprite_width * 4 + sprite_width * i, -sprite_width * 2 + sprite_width * j, obj_6knife );
        kn.relx= kn.xstart - x;
        kn.rely= kn.ystart - y;
        i++;
    }
    j++;
}
// obj_flowey_bulletmaster
with(1584) soulmax+= 90;
visible= 0;
alarm[0]= 1;
con= 0;


/*  */
