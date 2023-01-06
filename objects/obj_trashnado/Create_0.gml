siner1= 0;
siner2= 120;
siner3= 240;
siner4= 0;
siner5= 120;
sinerx= 0;
i= 0;
while(i < 3) {
    tspr1[i]= choose(1635, 1636);
    trash1[i]= instance_create(x, y, obj_npc_marker );
    if(instance_exists(trash1[i])) {
        trash1[i].sprite_index= tspr1[i];
        with(trash1[i]) scr_depth();
    }
    i++;
}
i= 0;
while(i < 3) {
    tspr2[i]= choose(1635, 1636);
    trash2[i]= instance_create(x, y, obj_npc_marker );
    if(instance_exists(trash2[i])) {
        trash2[i].sprite_index= tspr2[i];
        with(trash2[i]) scr_depth();
    }
    i++;
}
i= 0;
while(i < 3) {
    tspr3[i]= choose(1635, 1636, 1635, 1286);
    trash3[i]= instance_create(x, y, obj_npc_marker );
    if(instance_exists(trash3[i])) {
        trash3[i].sprite_index= tspr3[i];
        with(trash3[i]) scr_depth();
    }
    i++;
}
i= 0;
while(i < 3) {
    tspr4[0]= choose(1635);
    tspr4[1]= choose(1615);
    tspr4[2]= choose(1284);
    trash4[i]= instance_create(x, y, obj_npc_marker );
    if(instance_exists(trash4[i])) {
        trash4[i].sprite_index= tspr4[i];
        with(trash4[i]) scr_depth();
    }
    i++;
}
i= 0;
while(i < 3) {
    if(global.flag[497] < 2) {
        tspr5[0]= choose(1635);
        tspr5[1]= choose(1615);
        tspr5[2]= choose(1637);
    } else  {
        tspr5[0]= choose(1635);
        tspr5[2]= choose(1637);
        tspr5[1]= choose(1615, 1635, 1615, 1518);
    }
    trash5[i]= instance_create(x, y, obj_npc_marker );
    if(instance_exists(trash5[i])) {
        trash5[i].sprite_index= tspr5[i];
        with(trash5[i]) image_speed= 0.2;
        with(trash1[i]) scr_depth();
    }
    i++;
}
obj_npc_marker.visible= 1;
// obj_npc_marker
with(1363) {
    if(depth < 100) depth= 100;
}

/* */
/*  */
