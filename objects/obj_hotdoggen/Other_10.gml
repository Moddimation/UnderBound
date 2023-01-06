hdno= 0;
oncheck= 0;
parent= 1570;
while(instance_position(parent.x + 10, parent.y - hdno * 4, 1273))
    hdno++;
hd= instance_create(parent.x + 10, parent.y - hdno * 4, obj_hotdog );
hd.parent= 1570;
hd.friction= 1 - hdno * 0.1;
hd.relative= hdno * 4;
if(negf == 0 && hd.friction < 0.1) hd.friction= 0.1;


/*  */
