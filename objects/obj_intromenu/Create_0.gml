siner_o= 0;
selected= 65;
charname= "";
naming= 3;
selected2= 0;
selected3= 0;
q= 0;
name= "";
ini_open("undertale.ini");
if(ini_section_exists("General")) {
    name= ini_read_string("General", "Name", "");
    love= ini_read_real("General", "Love", 0);
    time= ini_read_real("General", "Time", 0);
    kills= ini_read_real("General", "Kills", 0);
    roome= ini_read_real("General", "Room", 0);
}
hasname= 0;
if(name != "") hasname= 1;
if(hasname == 1) global.charname= name;
ini_close();
ini_open("undertale.ini");
m2= file_exists("file0");
m3= ini_read_real("Toriel", "TK", 0);
m4= ini_read_real("Toriel", "TS", 0);
pd= ini_read_real("Papyrus", "PD", 0);
ud= ini_read_real("Undyne", "UD", 0);
ad= ini_read_real("Alphys", "AD", 0);
fd= ini_read_real("F7", "F7", 0);
fk= ini_read_real("Flowey", "K", 0);
truereset= ini_read_real("EndF", "EndF", 0);
ini_close();
mlevel= 0;
if(m2 > 0) {
    if(m2 > 0) mlevel= 1;
    if(m4 > 0) mlevel= 2;
    if(pd > 0 && mlevel == 2) mlevel= 3;
    if(ud > 0 && mlevel == 3) mlevel= 4;
    if(ad > 0 && mlevel == 4) mlevel= 5;
    if(fd > 0 && mlevel == 5) mlevel= 6;
}
if(truereset > 0) mlevel= 7;
if(mlevel == 0) menusong= 219;
if(mlevel == 1) menusong= 220;
if(mlevel == 2) menusong= 221;
if(mlevel == 3) menusong= 222;
if(mlevel == 4) menusong= 223;
if(mlevel == 5) menusong= 224;
if(mlevel == 6) menusong= 225;
if(mlevel == 7) menusong= 219;
if(mlevel >= 0 && mlevel <= 6) caster_loop(menusong, 0.6, 1);
if(mlevel == 7) caster_loop(menusong, 0.1, 0.1);

