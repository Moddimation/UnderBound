myinteract= 0;
facing= 0;
direction= 270;
talkedto= 0;
image_speed= 0.1;
carry= 0;
sinoid= 0;
clamp_r= 0;
right= 0;
if(global.flag[7] == 0) birdsong= caster_load("music/birdsong.ogg");
if(global.entrance == 20 && global.plot > 115) {
    x= 100;
    right= 1;
}
if(scr_murderlv() >= 10 && global.flag[27] == 0) y= 900;

