global.entrance= 24;
instance_create(0, 0, obj_persistentfader );
if(room == 19) room_goto(21);
if(room == 21) room_goto(19);
if(room == 27) room_goto(23);
if(room == 28) room_goto(31);
if(room == 31) room_goto(28);
if(room == 32) {
    if(global.flag[7] == 0) caster_free(global.currentsong2);
    room_goto(38);
}
if(room == 38) room_goto(32);
if(room == 33) room_goto(37);
if(room == 37) room_goto(33);
if(room == 240) room_goto(236);
if(room == 232) room_goto(235);
if(room == 235) room_goto(232);
if(room == 221) room_goto(225);
if(room == 225) room_goto(221);
if(room == 68) room_goto(69);
if(room == 63) room_goto(66);
if(room == 66) room_goto(63);
if(room == 95) room_goto(97);
if(room == 97) room_goto(95);
if(room == 99) room_goto(123);
if(room == 123) room_goto(99);
if(room == 116) room_goto(99);
if(room == 171) room_goto(176);
if(room == 176) room_goto(171);
if(room == 181) room_goto(187);
if(room == 187) room_goto(181);
if(room == 182) room_goto(313);
if(room == 205) room_goto(198);
if(room == 198) room_goto(205);
if(room == 196) room_goto(204);
if(room == 204) room_goto(196);
if(room == 199) room_goto(206);
if(room == 201) room_goto(207);
if(room == 206) room_goto(199);
if(room == 207) room_goto(201);
if(room == 200) room_goto(208);
if(room == 208) room_goto(200);
if(room == 202) room_goto(209);
if(room == 209) room_goto(202);
if(room == 268) room_goto(94);
if(room == 95) room_goto(94);
if(room == 94) {
    gox= 0;
    fsx= 0;
    if(global.flag[5] == 66 && file_exists("undertale.ini")) {
        ini_open("undertale.ini");
        fsx= ini_read_real("General", "fun", 0);
        if(fsx == 66 && global.flag[5] == 66) {
            gox= 1;
            global.flag[5]= 0;
            ini_write_real("General", "fun", 0);
        }
        ini_close();
    }
    if(gox == 1) room_goto(268);
    if(gox == 0) room_goto(95);
}


/*  */
