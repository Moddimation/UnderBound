instance_create(0, 0, obj_persistentfader );
if(room == 68 && x < 1000) room_goto(311);
if(room == 68 && x > room_width - 80) room_goto(81);
if(room == 81) room_goto(68);
if(room == 65) {
    room_goto(265);
    exit;
} else  {
    if(room == 265) {
        room_goto(65);
        exit;
    } else  {
        if(room == 99) room_goto(116);
        if(room == 116) room_goto(99);
        if(room == 124) room_goto(312);
        if(room == 182) room_goto(313);
        if(room == 181) room_goto(187);
        if(room == 187) room_goto(181);
        if(room == 188) room_goto(183);
        if(room == 183) room_goto(188);
        if(room == 220) room_goto(226);
        if(room == 226) room_goto(220);
        if(room == 232) room_goto(235);
        if(room == 235) room_goto(232);
        if(room == 128) room_goto(315);
        exit;
    }
}


/*  */
