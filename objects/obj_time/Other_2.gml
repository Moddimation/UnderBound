SCR_GAMESTART(0, 0, 0, 0, 0);
time= 0;
image_speed= 0;
jjjjjj= 0;
repeat(20)  {
    global.tempvalue[jjjjjj]= 0;
    jjjjjj++;
}
ini_open("undertale.ini");
fskip= ini_read_real("FFFFF", "E", -1);
ftime= ini_read_real("FFFFF", "F", -1);
true_end= ini_read_real("EndF", "EndF", -1);
ini_close();
sksk= 0;
if(ftime == 1) {
    sksk= 1;
    room_goto(room_f_start);
}
if(true_end == 1 && sksk == 0) {
    sksk= 1;
    room_goto(room_flowey_regret);
}
if(fskip >= 1 && sksk == 0) {
    global.filechoice= 8;
    scr_load();
    if(fskip == 1) room_goto(room_flowey_endchoice);
    if(fskip == 2) room_goto(room_castle_exit);
} else  {
    if(sksk == 0) room_goto_next();
}
if(file_exists("system_information_962") && !file_exists("system_information_963"))
    room_goto(room_nothingness);
global.osflavor= 1;
if(os_type != 0) global.osflavor= 2;

