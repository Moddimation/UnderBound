myinteract= 0;
facing= 0;
direction= 0;
talkedto= 0;
image_speed= 0;
dm= 0;
if(scr_murderlv() >= 8) dm= 1;
if(global.plot < 122) dm= 1;
if(global.flag[350] == 1) dm= 1;
if(dm == 1) {
    instance_destroy();
    exit;
} else  {
    spec= 0;
    exit;
}

