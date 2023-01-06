global.entrance= 20;
instance_create(0, 0, obj_persistentfader );
if(room == 68) room_goto(71);
if(room == 71) room_goto(68);
if(room == 95) room_goto(99);
if(room == 97) room_goto(99);
if(room == 99) room_goto(95);
if(room == 101) room_goto(104);
if(room == 104) room_goto(101);
if(room == 116) room_goto(124);
if(room == 124) room_goto(116);
if(room == 148) room_goto(153);
if(room == 162) room_goto(159);
if(room == 159) room_goto(162);
if(room == 153) room_goto(148);
if(room == 155) room_goto(148);
if(room == 171) room_goto(174);
if(room == 174) room_goto(171);
if(room == 246) room_goto(250);
if(room == 250) room_goto(246);
if(room == 251) room_goto(254);
if(room == 254) room_goto(251);
if(room == 139) room_goto(214);
if(room == 214) room_goto(139);
if(room == 78) room_goto(76);
if(room == 79) room_goto(76);
if(room == 76) {
    if(global.flag[497] <= 1) room_goto(79);
    else  room_goto(78);
}


/*  */
