i= 0;
while(i < wd / 2) {
    if(draw_getpixel(x + i * 2, y + line * 2) == 16777215)
        file_text_write_string(file, "1");
    else  file_text_write_string(file, "0");
    i++;
}
if(myvapor == 0) line++;
line++;
if(line > ht / 2) {
    file_text_write_string(file, "2");
    file_text_close(file);
    instance_destroy();
    exit;
} else  {
    alarm[0]= 1 + myvapor;
    exit;
}

