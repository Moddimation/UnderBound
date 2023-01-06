i= 0;
while(i < wd / 2) {
    if(file_text_read_string(file) == "1")
        instance_create(x + i * 2 - 2, y + line * 4, obj_blkpxl0tall );
    file_text_readln(file);
    i++;
}
if(myvapor == 0) {
    line++;
    i= 0;
    while(i < wd / 2) {
        if(file_text_read_string(file) == "1")
            instance_create(x + i * 2, y + line * 4, obj_blkpxl0tall );
        file_text_readln(file);
        i++;
    }
}
line++;
if(line > ht / 2 - 4) {
    file_text_close(file);
    instance_destroy();
    exit;
} else  {
    alarm[0]= 1 + myvapor;
    if(myvapor > 1) snd_play(snd_chug );
    exit;
}

/* */
/*  */
