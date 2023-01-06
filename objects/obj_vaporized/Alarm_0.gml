if(finishedreading == 0) {
    i= 0;
    while(i < wd / 2) {
        mychar= string_char_at(mydata, myread);
        if(mychar == "1")
            instance_create(x + i * 2 - 2, y + line * 4, obj_blkpxltall );
        myread++;
        i++;
    }
    if(myvapor == 0) {
        line++;
        i= 0;
        while(i < wd / 2) {
            mychar= string_char_at(mydata, myread);
            if(mychar == "1")
                instance_create(x + i * 2 - 2, y + line * 4, obj_blkpxltall );
            myread++;
            i++;
        }
    }
    line++;
    if(line > ht / 2 - 4) finishedreading= 1;
    else  {
        alarm[0]= 1 + myvapor;
        if(myvapor > 1) snd_play(snd_chug );
    }
}

/* */
/*  */
