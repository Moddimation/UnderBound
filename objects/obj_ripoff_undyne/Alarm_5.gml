with(blconwd) instance_destroy();
with(blcon) instance_destroy();
talked= 0;
global.mnfight= 2;
global.border= 18;
if(obj_heart.sprite_index == 39) {
    global.border= 12;
    event_user(2);
}

