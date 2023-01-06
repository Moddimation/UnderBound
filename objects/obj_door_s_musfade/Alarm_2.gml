global.entrance= 19;
instance_create(0, 0, obj_persistentfader );
if(room == 97) room_goto(99);
if(room == 99) room_goto(116);
if(room == 76) room_goto(68);
if(room == 119) room_goto(122);
if(room == 122) room_goto(119);
if(room == 116) room_goto(99);
if(room == 99) room_goto(116);
if(room == 101) room_goto(104);
if(room == 104) room_goto(101);
if(room == 156) room_goto(213);
if(room == 157) room_goto(213);
if(room == 187) room_goto(213);
if(room == 214) room_goto(213);
if(room == 168) room_goto(213);
if(room == 169) room_goto(213);
if(room == 213) {
    if(global.flag[398] == 0) room_goto(214);
    if(global.flag[398] == 1) room_goto(156);
    if(global.flag[398] == 2) room_goto(157);
    if(global.flag[398] == 3) room_goto(168);
    if(global.flag[398] == 4) room_goto(169);
    if(global.flag[398] == 5) room_goto(187);
}
if(room == 212) room_goto(215);
if(room == 216) room_goto(215);
if(room == 215) {
    if(global.flag[431] == 0) room_goto(212);
    if(global.flag[431] == 1) room_goto(216);
}
if(room == 232) room_goto(235);
if(room == 235) room_goto(232);
if(room == 141) room_goto(242);
if(room == 242) room_goto(141);
if(room == 246) room_goto(261);
if(room == 261) room_goto(246);
if(room == 43) room_goto(44);
if(room == 44) room_goto(43);
if(room == 183) room_goto(314);
if(room == 80) room_goto(68);
if(room == 68) room_goto(80);
if(room == 217) room_goto(230);
if(room == 230) room_goto(217);
if(room == 269) room_goto(268);


/*  */
