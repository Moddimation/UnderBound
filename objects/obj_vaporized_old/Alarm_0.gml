i= 0;
while(i < wd / 2) {
    if(draw_getpixel(x + i * 2, y + line * 2) == 16777215)
        instance_create(x + i * 2, y + line * 2, obj_blkpxlgrav );
    if(myvapor == 0 && draw_getpixel(x + i * 2, y + line * 2 + 2) == 16777215)
        instance_create(x + i * 2, y + line * 2 + 2, obj_blkpxlgrav );
    i++;
}
if(myvapor == 0) line++;
line++;
if(line > ht / 2) {
    instance_destroy();
    exit;
} else  {
    alarm[0]= 1 + myvapor;
    if(myvapor > 1) snd_play(snd_chug );
    exit;
}

/* */
/*  */
