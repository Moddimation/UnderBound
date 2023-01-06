fun= 0;
if(file_exists("undertale.ini")) {
    fun= 1;
    ini_open("undertale.ini");
    tr= ini_read_real("EndF", "EndF", -1);
    if(tr >= 2) fun= 0;
}
menu= 0;
menu_engage= 0;
buffer= 5;
if(obj_time.j_ch > 0 && !joystick_has_pov(obj_time.j_ch))
    global.joypad_dir= 1;
r_line= "RESETTED...";
o_o= 0;
siner= 0;
r_buffer= 0;
intro= 0;
weather= 0;
if(fun == 1) {
    extreme2= 0;
    extreme= 0;
    rectile= 0;
    intro= 1;
    menu_engage= -1;
    weather= 1;
    month= current_month;
    if(month == 12 || month == 1 || month == 2)
        weather= 1;
    if(month == 3 || month == 4 || month == 5) weather= 2;
    if(month == 6 || month == 7 || month == 8) weather= 3;
    if(month == 9 || month == 10 || month == 11)
        weather= 4;
    harp= caster_load("music/harpnoise.ogg");
    if(weather == 1)
        weathermusic= caster_load("music/options_winter.ogg");
    if(weather == 2 || weather == 4)
        weathermusic= caster_load("music/options_fall.ogg");
    if(weather == 3)
        weathermusic= caster_load("music/options_summer.ogg");
}

