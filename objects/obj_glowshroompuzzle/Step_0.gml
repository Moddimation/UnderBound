i= 0;
glowtotal= 0;
while(instance_exists(instance_find(1101, i))) {
    if(instance_exists(instance_find(1101, i))) {
        q= instance_find(1101, i);
        if(q.glow == 0) glowtotal++;
    }
    i++;
}
i= 1;
repeat(5)  {
    if(glowtotal >= i) tile_layer_show(1000000 + i);
    else  tile_layer_hide(1000000 + i);
    i++;
}
if(glowtotal >= 4 && global.flag[270] == 0) global.flag[270]= 1;

