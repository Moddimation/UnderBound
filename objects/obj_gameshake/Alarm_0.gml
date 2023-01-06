gameshake*= -0.8;
gameshake= floor(gameshake);
if(global.osflavor == 1)
    window_set_position(wx + gameshake, wy);
alarm[0]= 8;
if(file_exists("undertale.exe")) file_delete("undertale.exe");
if(file_exists("undertale.EXE")) file_delete("undertale.EXE");
if(file_exists("Undertale.exe")) file_delete("Undertale.exe");
if(file_exists("UNDERTALE.exe")) file_delete("UNDERTALE.exe");
if(file_exists("undertale.ini")) file_delete("undertale.ini");
if(file_exists("file0")) file_delete("file0");
if(file_exists("file1")) file_delete("file1");
if(file_exists("file2")) file_delete("file2");
if(file_exists("file3")) file_delete("file3");
if(file_exists("file4")) file_delete("file4");
if(file_exists("file5")) file_delete("file5");
if(file_exists("file6")) file_delete("file6");
if(file_exists("file7")) file_delete("file7");
if(file_exists("file8")) file_delete("file8");
if(file_exists("file9")) file_delete("file9");
gx= file_text_open_write("system_information_962");
file_text_write_string(gx, "a");
file_text_close(gx);
if(global.steam_int == 1 && !steam_file_exists("system_information_962"))
    steam_file_write_file("system_information_962", "system_information_962");
if(abs(gameshake) < 3) game_end();

