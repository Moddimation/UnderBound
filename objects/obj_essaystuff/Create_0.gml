mystring= " ";
alarm[0]= 450;
con= 0;
cantype= 1;
// obj_mettattackgen
with(414) instance_destroy();
draw_on= 1;
dotimer= 0;
global.border= 0;
endbuffer= 180;
if(file_exists("undertale.ini")) {
    ini_open("undertale.ini");
    essaynum= ini_read_real("MTT", "EssayNo", 0);
    ini_close();
}
if(essaynum == 1) endbuffer= 150;
if(essaynum == 2) endbuffer= 120;
if(essaynum >= 3) endbuffer= 100;

