myinteract= 0;
con= 0;
heartx= 0;
hearty= 0;
trigger= 0;
dirdir= 0;
ourx= 0;
oury= 0;
rectaur= 0;
rect= 0;
obj_mainchara.cutscene= 1;
if(room == 243 || room == 261) {
    fake= scr_marker(x, y, sprite_index);
    fake.depth= depth;
    instance_destroy();
}

