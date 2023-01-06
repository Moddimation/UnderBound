ini_open("undertale.ini");
global.fplot= ini_read_real("FFFFF", "P", 0);
global.floss= ini_read_real("FFFFF", "D", 0);
ini_close();
global.inbattle= 0;
if(global.fplot == 0) room_goto_next();
else  room_goto(295);

