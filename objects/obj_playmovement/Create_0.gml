con= 0;
drawtext= 0;
drawtext2= 0;
string1= "Oh my love        ";
string2= "Please run away   ";
image_yscale= 100;
if(global.plot > 166) instance_destroy();
else  {
    __view_set( e__VW.YView, 0, 120 );
    obj_mainchara.cutscene= 1;
    __view_set( e__VW.Object, 0, -4 );
}
mainmove= 0;
frantic= 0;
alarm[10]= 15;
lastmove= 0;
lastx= obj_mainchara.x;
lasty= obj_mainchara.y;
unfrantic= 0;
face2= 0;
touch= 0;
already= 0;
ini_open("undertale.ini");
already= ini_read_real("Mett", "O", -1);
ini_close();
skip= 0;

