death= 0;
if(file_exists("system_information_963")) death= 1;
type= 0;
dogamt= 0;
if(global.flag[512] == 1) type= 1;
if(type == 0) noise= caster_load("music/intronoise.ogg");
song= caster_load("music/musicbox.ogg");
timer= 0;
photo_alpha= 0;
ini_open("undertale.ini");
curf= ini_read_real("EndF", "EndF", 0);
if(curf == 0) ini_write_real("EndF", "EndF", 1);
ini_close();

