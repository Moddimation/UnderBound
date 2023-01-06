if(global.debug == 1) {
    gx= file_text_open_write("system_information_962");
    file_text_write_string(gx, "a");
    file_text_close(gx);
    if(global.steam_int == 1 && !steam_file_exists("system_information_962"))
        steam_file_write_file("system_information_962", "system_information_962");
}

