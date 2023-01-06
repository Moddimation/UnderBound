global.starton9= 1;
buffer= 3;
z_index= 0;
x_index= 0;
c_index= 0;
s_snare= caster_load("music/drum/snare.ogg");
s_kick= caster_load("music/drum/kick.ogg");
s_cymbal= caster_load("music/drum/cymbal.ogg");
s_cuica= caster_load("music/drum/cuica.ogg");
s_cuica2= caster_load("music/drum/cuica2.ogg");
fun= 0;
if(file_exists("undertale.ini")) {
    fun= 1;
    ini_open("undertale.ini");
    tr= ini_read_real("EndF", "EndF", -1);
    if(tr >= 2) fun= 0;
}
image_speed= 0;
borderl= 60;
borderr= 260;
borderu= 140;
if(fun == 0) tile_layer_hide(1100000);

