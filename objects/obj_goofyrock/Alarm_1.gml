// obj_mainchara
with(1570) uncan= 0;
global.interact= 0;
conversation++;
path_speed= 0;
obj_mainchara.speed= 0;
if(conversation == 9) {
    // obj_spikes_room
    with(1350) image_index= 1;
}
if(conversation > 13) {
    global.flag[33]= 1;
    x= 280;
    conversation= 15;
    // obj_spikes_room
    with(1350) image_index= 1;
}

