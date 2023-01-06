global.interact= 1;
if(keyboard_check(27)) game_end();
window_set_caption(" ");
if(con == 1) {
    global.typer= 106;
    global.facechoice= 0;
    global.msc= 888;
    con= 2;
    writer= instance_create(10, 150, OBJ_WRITER );
}
if(con == 2 && !instance_exists(OBJ_WRITER )) {
    con= 3;
    alarm[4]= 180;
}
if(con == 4) {
    global.typer= 106;
    global.facechoice= 0;
    global.msc= 890;
    con= 5;
    writer= instance_create(10, 150, OBJ_WRITER );
}
if(con == 5 && !instance_exists(OBJ_WRITER )) {
    if(file_exists("system_information_962"))
        file_delete("system_information_962");
    gx= file_text_open_write("system_information_963");
    file_text_write_string(gx, "b");
    file_text_close(gx);
    if(global.steam_int == 1) {
        if(steam_file_exists("system_information_962"))
            steam_file_delete("system_information_962");
        steam_file_write_file("system_information_962", "system_information_962");
    }
    caster_free(-3);
    instance_create(0, 0, obj_whitefader );
    con= 6;
    alarm[4]= 20;
}
if(con == 7) game_end();

/* */
/*  */
