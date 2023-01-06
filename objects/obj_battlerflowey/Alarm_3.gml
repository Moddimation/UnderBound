global.currentroom= room;
instance_create(0, 0, obj_fader );
if(room != 307) {
    room_goto(307);
    room_persistent= 1;
}
if(room == 77) room_goto(317);
if(instance_exists(obj_alabdoor_l )) room_goto(318);


/*  */
